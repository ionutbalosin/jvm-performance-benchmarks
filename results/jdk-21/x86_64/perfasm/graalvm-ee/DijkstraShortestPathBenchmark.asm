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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_list_binary_heap
# Parameters: (nodes = 8192)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 463.185 ms/op
# Warmup Iteration   2: 436.479 ms/op
# Warmup Iteration   3: 438.598 ms/op
# Warmup Iteration   4: 438.458 ms/op
# Warmup Iteration   5: 445.452 ms/op
Iteration   1: 448.353 ms/op
Iteration   2: 445.649 ms/op
Iteration   3: 445.841 ms/op
Iteration   4: 454.462 ms/op
Iteration   5: 454.477 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_list_binary_heap":
  449.756 ±(99.9%) 17.069 ms/op [Average]
  (min, avg, max) = (445.649, 449.756, 454.477), stdev = 4.433
  CI (99.9%): [432.688, 466.825] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_list_binary_heap:asm":
PrintAssembly processed: 278480 total address lines.
Perf output processed (skipped 67.215 seconds):
 Column 1: cycles (55139 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1052 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@97 (line 81)
              0x00007fb606dc38c0:   mov    %rsi,%r8
              0x00007fb606dc38c3:   mov    %eax,%r10d
              0x00007fb606dc38c6:   mov    %r10d,0x84(%rsp)             ;   {no_reloc}
              0x00007fb606dc38ce:   mov    %r8,0x28(%rsp)
              0x00007fb606dc38d3:   movl   $0xffffffff,0x80(%rsp)
              0x00007fb606dc38de:   mov    $0x0,%r9d
              0x00007fb606dc38e4:   mov    0xa8(%rsp),%rbx
              0x00007fb606dc38ec:   nopl   0x0(%rax)                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   1.26%   ↗  0x00007fb606dc38f0:   mov    0x10(%r8),%esi               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::hasNext@8 (line 1044)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@105 (line 81)
   1.55%   │  0x00007fb606dc38f4:   cmp    %r9d,%esi
           │  0x00007fb606dc38f7:   je     0x00007fb606dc4a0c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@110 (line 81)
   1.79%   │  0x00007fb606dc38fd:   mov    %r9d,0x7c(%rsp)
   0.95%   │  0x00007fb606dc3902:   cmp    0xc(%r8),%r10d
           │  0x00007fb606dc3906:   jne    0x00007fb606dc585f           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1094)
           │                                                            ; - java.util.ArrayList$Itr::next@1 (line 1049)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   1.19%   │  0x00007fb606dc390c:   cmp    %r9d,%esi
           │  0x00007fb606dc390f:   jle    0x00007fb606dc579d           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@17 (line 1051)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   1.56%   │  0x00007fb606dc3915:   mov    0x14(%r8),%esi               ; ImmutableOopMap {rsi=NarrowOop r8=Oop r13=Oop [40]=Oop [104]=Oop }
           │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   1.67%   │  0x00007fb606dc3919:   mov    0xc(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007fb606dc6108
   0.95%   │  0x00007fb606dc3920:   cmp    %r9d,%eax
           │  0x00007fb606dc3923:   jle    0x00007fb606dc5e2d           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@39 (line 1054)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   1.28%   │  0x00007fb606dc3929:   cmp    %r9d,%eax
           │  0x00007fb606dc392c:   jbe    0x00007fb606dc5d4a           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   1.48%   │  0x00007fb606dc3932:   shl    $0x3,%rsi                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@32 (line 1053)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   1.68%   │  0x00007fb606dc3936:   mov    0x10(%rsi,%r9,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   2.05%   │  0x00007fb606dc393b:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r8=Oop r13=Oop [40]=Oop [104]=Oop }
           │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   1.25%   │  0x00007fb606dc3940:   cmpl   $0x102b8e0,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007fb606dc612d
           │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/dijkstrashortestpath/adjacencylistbinaryheap/Node&apos;)}
  43.28%   │  0x00007fb606dc394b:   jne    0x00007fb606dc5c35           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@120 (line 81)
   1.27%   │  0x00007fb606dc3951:   mov    0x10(%r13),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=NarrowOop r8=Oop r13=Oop [40]=Oop [104]=Oop }
           │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   1.02%   │  0x00007fb606dc3955:   mov    0xc(,%rax,8),%edi            ; implicit exception: dispatches to 0x00007fb606dc6150
   1.31%   │  0x00007fb606dc395c:   mov    0xc(,%rsi,8),%edx            ;*getfield id {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@143 (line 83)
   2.14%   │  0x00007fb606dc3963:   cmp    %edx,%edi
           │  0x00007fb606dc3965:   jbe    0x00007fb606dc57d0           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@146 (line 83)
   1.38%   │  0x00007fb606dc396b:   mov    %r11d,%edi
   1.11%   │  0x00007fb606dc396e:   add    0x10(,%rsi,8),%edi           ;*getfield distance {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@129 (line 82)
   1.53%   │  0x00007fb606dc3975:   shl    $0x3,%rax                    ;*getfield distances {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@138 (line 83)
   1.53%   │  0x00007fb606dc3979:   mov    %r9d,%r14d
   1.37%   │  0x00007fb606dc397c:   inc    %r14d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@53 (line 1056)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   1.10%   │  0x00007fb606dc397f:   nop
   1.35%   │  0x00007fb606dc3980:   cmp    0x10(%rax,%rdx,4),%edi
          ╭│  0x00007fb606dc3984:   jl     0x00007fb606dc39a5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@147 (line 83)
   6.97%  ││  0x00007fb606dc398a:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r8=Oop r13=Oop [40]=Oop [104]=Oop }
          ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   1.01%  ││  0x00007fb606dc3991:   test   %eax,(%rsi)                  ;   {poll}
   1.33%  ││  0x00007fb606dc3993:   mov    %r9d,0x80(%rsp)
   1.45%  ││  0x00007fb606dc399b:   mov    %r14d,%r9d
   1.72%  ││  0x00007fb606dc399e:   xchg   %ax,%ax
   0.92%  │╰  0x00007fb606dc39a0:   jmp    0x00007fb606dc38f0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   0.02%  ↘   0x00007fb606dc39a5:   mov    %r14d,0x78(%rsp)
   0.01%      0x00007fb606dc39aa:   mov    0x18(%r13),%esi              ; ImmutableOopMap {rax=Oop rsi=NarrowOop r8=Oop r13=Oop [40]=Oop [104]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
              0x00007fb606dc39ae:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007fb606dc6173
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   0.00%      0x00007fb606dc39b5:   test   %eax,0x0(,%rcx,8)            ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {rax=Oop rcx=NarrowOop rsi=NarrowOop r8=Oop r13=Oop [40]=Oop [104]=Oop }
   0.02%      0x00007fb606dc39bc:   mov    %edi,0x10(%rax,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@161 (line 84)
              0x00007fb606dc39c0:   mov    0xc(,%rcx,8),%eax            ;*getfield head {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@1 (line 385)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
              0x00007fb606dc39c7:   shl    $0x3,%rsi                    ;*getfield objectPool {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@163 (line 86)
   0.00%      0x00007fb606dc39cb:   mov    %ecx,%r10d
   0.01%      0x00007fb606dc39ce:   shl    $0x3,%r10                    ;*getfield pool {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@1 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
              0x00007fb606dc39d2:   mov    %eax,%r11d
              0x00007fb606dc39d5:   shl    $0x3,%r11                    ;*getfield head {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@1 (line 385)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
              0x00007fb606dc39d9:   mov    %r11,%r8
   0.00%      0x00007fb606dc39dc:   nopl   0x0(%rax)
              0x00007fb606dc39e0:   jmp    0x00007fb606dc3a27           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@7 (line 387)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
              0x00007fb606dc39e5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fb606dc39f0:   data16 data16 xchg %ax,%ax
              0x00007fb606dc39f4:   nopl   0x0(%rax,%rax,1)
              0x00007fb606dc39fc:   data16 data16 xchg %ax,%ax          ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@14 (line 387)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
....................................................................................................
  90.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1052 
   1.78%            libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   1.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1052 
   1.20%            libjvm.so  G1RebuildRSAndScrubTask::G1RebuildRSAndScrubRegionClosure::do_heap_region 
   0.73%               kernel  [unknown] 
   0.50%            libjvm.so  G1RebuildRSAndScrubTask::G1RebuildRSAndScrubRegionClosure::do_heap_region 
   0.30%            libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<ObjArrayKlass, narrowOop> 
   0.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1052 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1052 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1052 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1052 
   0.11%            libjvm.so  OopOopIterateDispatch<G1CMOopClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1052 
   0.11%            libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   0.09%               kernel  [unknown] 
   0.09%            libjvm.so  OopOopIterateBoundedDispatch<G1CMOopClosure>::Table::oop_oop_iterate_bounded<ObjArrayKlass, narrowOop> 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1052 
   0.07%               kernel  [unknown] 
   0.07%            libjvm.so  G1CMTask::do_marking_step 
   0.07%               kernel  [unknown] 
   1.96%  <...other 399 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1052 
   1.89%            libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   1.82%               kernel  [unknown] 
   1.78%            libjvm.so  G1RebuildRSAndScrubTask::G1RebuildRSAndScrubRegionClosure::do_heap_region 
   0.30%            libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<ObjArrayKlass, narrowOop> 
   0.13%            libjvm.so  OopOopIterateBoundedDispatch<G1CMOopClosure>::Table::oop_oop_iterate_bounded<ObjArrayKlass, narrowOop> 
   0.11%            libjvm.so  OopOopIterateDispatch<G1CMOopClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   0.09%            libjvm.so  G1CMTask::process_grey_task_entry<true> 
   0.08%            libjvm.so  G1CMTask::do_marking_step 
   0.04%            libjvm.so  G1CMTask::drain_local_queue 
   0.04%            libjvm.so  G1CMTask::drain_global_stack 
   0.03%                       <unknown> 
   0.03%            libjvm.so  ClassLoaderData::oops_do 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%            libjvm.so  BitMap::find_first_bit_impl<0ul, false> 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __libc_write 
   0.28%  <...other 104 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.27%       jvmci, level 4
   4.66%            libjvm.so
   1.82%               kernel
   0.09%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.04%   libpthread-2.31.so
   0.03%                     
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_matrix
# Parameters: (nodes = 8192)

# Run progress: 50.00% complete, ETA 00:02:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 136.085 ms/op
# Warmup Iteration   2: 134.921 ms/op
# Warmup Iteration   3: 134.919 ms/op
# Warmup Iteration   4: 135.375 ms/op
# Warmup Iteration   5: 134.861 ms/op
Iteration   1: 134.016 ms/op
Iteration   2: 134.438 ms/op
Iteration   3: 134.386 ms/op
Iteration   4: 134.527 ms/op
Iteration   5: 134.317 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_matrix":
  134.337 ±(99.9%) 0.751 ms/op [Average]
  (min, avg, max) = (134.016, 134.337, 134.527), stdev = 0.195
  CI (99.9%): [133.586, 135.088] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_matrix:asm":
PrintAssembly processed: 269838 total address lines.
Perf output processed (skipped 67.005 seconds):
 Column 1: cycles (50860 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1055 

                                  0x00007ff5cadb609f:   nop
                                  0x00007ff5cadb60a0:   cmp    $0x7fffffff,%r11d
                                  0x00007ff5cadb60a7:   je     0x00007ff5cadb645b           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@97 (line 65)
                                  0x00007ff5cadb60ad:   add    %r11d,%r14d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@115 (line 68)
                                  0x00007ff5cadb60b0:   cmp    0x10(%r8,%r13,4),%r14d
          ╭                       0x00007ff5cadb60b5:   jl     0x00007ff5cadb60c5
          │                       0x00007ff5cadb60bb:   mov    %esi,%r13d
          │                       0x00007ff5cadb60be:   jmp    0x00007ff5cadb6070
   0.00%  │                       0x00007ff5cadb60c0:   mov    %esi,%r13d
          │                       0x00007ff5cadb60c3:   jmp    0x00007ff5cadb6070           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@127 (line 69)
          ↘                       0x00007ff5cadb60c5:   mov    %r14d,0x10(%r8,%r13,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@138 (line 70)
                                  0x00007ff5cadb60ca:   mov    %esi,%r13d
                                  0x00007ff5cadb60cd:   jmp    0x00007ff5cadb6070
   0.00%                          0x00007ff5cadb60cf:   mov    %r13d,%esi
                                  0x00007ff5cadb60d2:   mov    0x24(%rsp),%r11d
                                  0x00007ff5cadb60d7:   nopw   0x0(%rax,%rax,1)
   2.21%         ↗      ↗↗        0x00007ff5cadb60e0:   cmp    %esi,%r11d
           ╭     │      ││        0x00007ff5cadb60e3:   jle    0x00007ff5cadb6220           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │     │      ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@64 (line 64)
   1.05%   │     │      ││        0x00007ff5cadb60e9:   cmpb   $0x0,0x10(%rsi,%rax,8)
   2.03%   │╭    │      ││        0x00007ff5cadb60ee:   je     0x00007ff5cadb6150
   2.65%   ││    │↗↗    ││        0x00007ff5cadb60f4:   cmpb   $0x0,0x11(%rsi,%rax,8)
   1.88%   ││╭   │││    ││        0x00007ff5cadb60f9:   je     0x00007ff5cadb6188
   2.74%   │││   │││↗↗  ││        0x00007ff5cadb60ff:   nop
   1.36%   │││   │││││  ││        0x00007ff5cadb6100:   cmpb   $0x0,0x12(%rsi,%rax,8)
   1.86%   │││╭  │││││  ││        0x00007ff5cadb6105:   je     0x00007ff5cadb61c5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           ││││  │││││  ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
   2.76%   ││││  │││││↗↗││        0x00007ff5cadb610b:   lea    0x4(%rsi),%r13d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││  │││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@139 (line 64)
   1.28%   ││││  │││││││││        0x00007ff5cadb610f:   cmpb   $0x0,0x13(%rsi,%rax,8)
   1.78%   ││││╭ │││││││││        0x00007ff5cadb6114:   jne    0x00007ff5cadb6205           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││││ │││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
   1.14%   │││││ │││││││││        0x00007ff5cadb611a:   mov    0x1c(%r10,%rsi,4),%r14d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │││││ │││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
   3.85%   │││││ │││││││││        0x00007ff5cadb611f:   nop
   0.53%   │││││ │││││││││        0x00007ff5cadb6120:   test   %r14d,%r14d
           │││││ │││││││││        0x00007ff5cadb6123:   je     0x00007ff5cadb640d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │││││ │││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@86 (line 65)
   0.75%   │││││ │││││││││        0x00007ff5cadb6129:   mov    0x10(%r8,%rcx,4),%edx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │││││ │││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@94 (line 65)
   0.84%   │││││ │││││││││        0x00007ff5cadb612e:   cmp    $0x7fffffff,%edx
           │││││ │││││││││        0x00007ff5cadb6134:   je     0x00007ff5cadb640d           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │││││ │││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@97 (line 65)
   0.30%   │││││ │││││││││        0x00007ff5cadb613a:   add    %edx,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││ │││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@115 (line 68)
   0.56%   │││││ │││││││││        0x00007ff5cadb613d:   data16 xchg %ax,%ax
   0.66%   │││││ │││││││││        0x00007ff5cadb6140:   cmp    0x1c(%r8,%rsi,4),%r14d
           │││││╭│││││││││        0x00007ff5cadb6145:   jl     0x00007ff5cadb620d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@127 (line 69)
   1.73%   │││││││││││││││        0x00007ff5cadb614b:   mov    %r13d,%esi
   0.50%   ││││││╰││││││││        0x00007ff5cadb614e:   jmp    0x00007ff5cadb60e0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           ││││││ ││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
   1.01%   │↘││││ ││││││││        0x00007ff5cadb6150:   mov    0x10(%r10,%rsi,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
   1.34%   │ ││││ ││││││││        0x00007ff5cadb6155:   test   %r13d,%r13d
           │ ││││ ││││││││        0x00007ff5cadb6158:   je     0x00007ff5cadb63c5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@86 (line 65)
   0.51%   │ ││││ ││││││││        0x00007ff5cadb615e:   mov    0x10(%r8,%rcx,4),%r14d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@94 (line 65)
   0.51%   │ ││││ ││││││││        0x00007ff5cadb6163:   cmp    $0x7fffffff,%r14d
           │ ││││ ││││││││        0x00007ff5cadb616a:   je     0x00007ff5cadb63c5           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@97 (line 65)
   0.93%   │ ││││ ││││││││        0x00007ff5cadb6170:   add    %r14d,%r13d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@115 (line 68)
   0.53%   │ ││││ ││││││││        0x00007ff5cadb6173:   cmp    0x10(%r8,%rsi,4),%r13d       ;   {no_reloc}
           │ ││││ ╰│││││││        0x00007ff5cadb6178:   jge    0x00007ff5cadb60f4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  │││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@127 (line 69)
   0.01%   │ ││││  │││││││        0x00007ff5cadb617e:   mov    %r13d,0x10(%r8,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  │││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@138 (line 70)
   0.03%   │ ││││  ╰││││││        0x00007ff5cadb6183:   jmp    0x00007ff5cadb60f4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │ ││││   ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
   1.14%   │ ↘│││   ││││││        0x00007ff5cadb6188:   mov    0x14(%r10,%rsi,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │  │││   ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
   1.04%   │  │││   ││││││        0x00007ff5cadb618d:   test   %r13d,%r13d
           │  │││   ││││││        0x00007ff5cadb6190:   je     0x00007ff5cadb647e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │  │││   ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@86 (line 65)
   0.95%   │  │││   ││││││        0x00007ff5cadb6196:   mov    0x10(%r8,%rcx,4),%r14d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │  │││   ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@94 (line 65)
   0.50%   │  │││   ││││││        0x00007ff5cadb619b:   nopl   0x0(%rax,%rax,1)
   0.76%   │  │││   ││││││        0x00007ff5cadb61a0:   cmp    $0x7fffffff,%r14d
           │  │││   ││││││        0x00007ff5cadb61a7:   je     0x00007ff5cadb647e           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │  │││   ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@97 (line 65)
   0.29%   │  │││   ││││││        0x00007ff5cadb61ad:   add    %r14d,%r13d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │  │││   ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@115 (line 68)
   0.82%   │  │││   ││││││        0x00007ff5cadb61b0:   cmp    0x14(%r8,%rsi,4),%r13d
           │  │││   ╰│││││        0x00007ff5cadb61b5:   jge    0x00007ff5cadb60ff           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │  │││    │││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@127 (line 69)
   0.02%   │  │││    │││││        0x00007ff5cadb61bb:   mov    %r13d,0x14(%r8,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │  │││    │││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@138 (line 70)
   0.02%   │  │││    ╰││││        0x00007ff5cadb61c0:   jmp    0x00007ff5cadb60ff           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │  │││     ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
   1.14%   │  ↘││     ││││        0x00007ff5cadb61c5:   mov    0x18(%r10,%rsi,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │   ││     ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
   0.78%   │   ││     ││││        0x00007ff5cadb61ca:   test   %r13d,%r13d
           │   ││     ││││        0x00007ff5cadb61cd:   je     0x00007ff5cadb6434           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │   ││     ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@86 (line 65)
   0.76%   │   ││     ││││        0x00007ff5cadb61d3:   mov    0x10(%r8,%rcx,4),%r14d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │   ││     ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@94 (line 65)
   0.52%   │   ││     ││││        0x00007ff5cadb61d8:   nopl   0x0(%rax,%rax,1)
   0.98%   │   ││     ││││        0x00007ff5cadb61e0:   cmp    $0x7fffffff,%r14d
           │   ││     ││││        0x00007ff5cadb61e7:   je     0x00007ff5cadb6434           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │   ││     ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@97 (line 65)
   0.31%   │   ││     ││││        0x00007ff5cadb61ed:   add    %r14d,%r13d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │   ││     ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@115 (line 68)
   0.64%   │   ││     ││││        0x00007ff5cadb61f0:   cmp    0x18(%r8,%rsi,4),%r13d
           │   ││     ╰│││        0x00007ff5cadb61f5:   jge    0x00007ff5cadb610b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   ││      │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@127 (line 69)
   0.01%   │   ││      │││        0x00007ff5cadb61fb:   mov    %r13d,0x18(%r8,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │   ││      │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@138 (line 70)
   0.02%   │   ││      ╰││        0x00007ff5cadb6200:   jmp    0x00007ff5cadb610b
   1.45%   │   ↘│       ││        0x00007ff5cadb6205:   mov    %r13d,%esi
   1.09%   │    │       ╰│        0x00007ff5cadb6208:   jmp    0x00007ff5cadb60e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │    │        │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@127 (line 69)
   0.02%   │    ↘        │        0x00007ff5cadb620d:   mov    %r14d,0x1c(%r8,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │             │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@138 (line 70)
   0.03%   │             │        0x00007ff5cadb6212:   mov    %r13d,%esi
           │             ╰        0x00007ff5cadb6215:   jmp    0x00007ff5cadb60e0
           │                      0x00007ff5cadb621a:   nopw   0x0(%rax,%rax,1)
   0.01%   ↘                 ↗↗↗  0x00007ff5cadb6220:   cmp    %esi,%ebx
                          ╭  │││  0x00007ff5cadb6222:   jle    0x00007ff5cadb627c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                          │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@64 (line 64)
   0.01%                  │  │││  0x00007ff5cadb6228:   mov    %esi,%edx
                          │  │││  0x00007ff5cadb622a:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                          │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@139 (line 64)
   0.00%                  │  │││  0x00007ff5cadb622c:   cmpb   $0x0,0x10(%rsi,%rax,8)
   0.02%                  │╭ │││  0x00007ff5cadb6231:   jne    0x00007ff5cadb626f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
   0.00%                  ││ │││  0x00007ff5cadb6237:   mov    0x10(%r10,%rsi,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
                          ││ │││  0x00007ff5cadb623c:   nopl   0x0(%rax)
   0.00%                  ││ │││  0x00007ff5cadb6240:   test   %r13d,%r13d
                          ││ │││  0x00007ff5cadb6243:   je     0x00007ff5cadb63e8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@86 (line 65)
   0.00%                  ││ │││  0x00007ff5cadb6249:   mov    0x10(%r8,%rcx,4),%r14d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@94 (line 65)
   0.02%                  ││ │││  0x00007ff5cadb624e:   cmp    $0x7fffffff,%r14d
                          ││ │││  0x00007ff5cadb6255:   je     0x00007ff5cadb63e8           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@97 (line 65)
   0.01%                  ││ │││  0x00007ff5cadb625b:   add    %r14d,%r13d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@115 (line 68)
                          ││ │││  0x00007ff5cadb625e:   xchg   %ax,%ax
                          ││ │││  0x00007ff5cadb6260:   cmp    0x10(%r8,%rsi,4),%r13d
                          ││╭│││  0x00007ff5cadb6265:   jl     0x00007ff5cadb6273
   0.01%                  ││││││  0x00007ff5cadb626b:   mov    %edx,%esi
                          │││╰││  0x00007ff5cadb626d:   jmp    0x00007ff5cadb6220
                          │↘│ ││  0x00007ff5cadb626f:   mov    %edx,%esi
                          │ │ ╰│  0x00007ff5cadb6271:   jmp    0x00007ff5cadb6220           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@127 (line 69)
                          │ ↘  │  0x00007ff5cadb6273:   mov    %r13d,0x10(%r8,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@138 (line 70)
                          │    │                                                            ;   {no_reloc}
                          │    │  0x00007ff5cadb6278:   mov    %edx,%esi
                          │    ╰  0x00007ff5cadb627a:   jmp    0x00007ff5cadb6220
   0.00%                  ↘       0x00007ff5cadb627c:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rax=NarrowOop r8=Oop [0]=Oop [8]=Oop }
                                                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@145 (line 60)
   0.01%                          0x00007ff5cadb6283:   test   %eax,(%r10)                  ;   {poll}
   0.03%                          0x00007ff5cadb6286:   mov    0x10(%rsp),%ecx
                                  0x00007ff5cadb628a:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@145 (line 60)
                                  0x00007ff5cadb628c:   mov    0x14(%rsp),%esi
                                  0x00007ff5cadb6290:   mov    0x18(%rsp),%r14d
   0.00%                          0x00007ff5cadb6295:   mov    0x1c(%rsp),%r13d
                                  0x00007ff5cadb629a:   mov    (%rsp),%r11                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@26 (line 60)
                                  0x00007ff5cadb629e:   xchg   %ax,%ax
                                  0x00007ff5cadb62a0:   cmp    %ecx,%r13d
                                  0x00007ff5cadb62a3:   jg     0x00007ff5cadb5ea0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@33 (line 60)
                                  0x00007ff5cadb62a9:   mov    %r8,%rax                     ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@155 (line 76)
                                  0x00007ff5cadb62ac:   mov    0x40(%rsp),%rbp
                                  0x00007ff5cadb62b1:   add    $0x48,%rsp
....................................................................................................
  50.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1055 

                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                                  0x00007ff5cadb5ef3:   mov    %edx,%ecx
                                  0x00007ff5cadb5ef5:   mov    %edi,%r13d
                                  0x00007ff5cadb5ef8:   mov    %r10d,%edx
                                  0x00007ff5cadb5efb:   jmp    0x00007ff5cadb5ec0
                                  0x00007ff5cadb5efd:   mov    %edx,%edi
                                  0x00007ff5cadb5eff:   mov    %r13d,%r10d
                                  0x00007ff5cadb5f02:   data16 nopw 0x0(%rax,%rax,1)
                                  0x00007ff5cadb5f0c:   data16 data16 xchg %ax,%ax
   2.41%        ↗      ↗    ↗     0x00007ff5cadb5f10:   cmp    %edi,%r14d
          ╭     │      │    │     0x00007ff5cadb5f13:   jle    0x00007ff5cadb5fc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │      │    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@12 (line 83)
          │     │      │    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.08%  │     │      │    │     0x00007ff5cadb5f19:   nopl   0x0(%rax)
   2.71%  │     │      │    │     0x00007ff5cadb5f20:   cmpb   $0x0,0x10(%rdi,%rax,8)
   3.48%  │╭    │      │    │     0x00007ff5cadb5f25:   je     0x00007ff5cadb5f6d
   1.69%  ││    │↗↗    │    │     0x00007ff5cadb5f2b:   cmpb   $0x0,0x11(%rdi,%rax,8)
   0.81%  ││╭   │││    │    │     0x00007ff5cadb5f30:   je     0x00007ff5cadb5f7e
   4.47%  │││   │││↗↗  │    │     0x00007ff5cadb5f36:   data16 nopw 0x0(%rax,%rax,1)
   0.27%  │││   │││││  │    │     0x00007ff5cadb5f40:   cmpb   $0x0,0x12(%rdi,%rax,8)
   1.00%  │││╭  │││││  │    │     0x00007ff5cadb5f45:   je     0x00007ff5cadb5f96           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││  │││││  │    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
          ││││  │││││  │    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   4.56%  ││││  │││││↗↗│    │     0x00007ff5cadb5f4b:   lea    0x4(%rdi),%edx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          ││││  ││││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.36%  ││││  ││││││││    │     0x00007ff5cadb5f4e:   cmpb   $0x0,0x13(%rdi,%rax,8)
   4.50%  ││││╭ ││││││││    │     0x00007ff5cadb5f53:   jne    0x00007ff5cadb5fac           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
          │││││ ││││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.33%  │││││ ││││││││    │     0x00007ff5cadb5f59:   mov    0x1c(%r8,%rdi,4),%r13d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
          │││││ ││││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.73%  │││││ ││││││││    │     0x00007ff5cadb5f5e:   xchg   %ax,%ax
   0.00%  │││││ ││││││││    │     0x00007ff5cadb5f60:   cmp    %r13d,%r10d
          │││││╭││││││││    │     0x00007ff5cadb5f63:   jg     0x00007ff5cadb5fed           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
          ││││││││││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.53%  ││││││││││││││    │     0x00007ff5cadb5f69:   mov    %edx,%edi
   0.70%  ││││││╰│││││││    │     0x00007ff5cadb5f6b:   jmp    0x00007ff5cadb5f10           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
          ││││││ │││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.29%  │↘││││ │││││││    │     0x00007ff5cadb5f6d:   mov    0x10(%r8,%rdi,4),%edx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
          │ ││││ │││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.69%  │ ││││ │││││││    │     0x00007ff5cadb5f72:   cmp    %edx,%r10d
          │ ││││ ╰││││││    │     0x00007ff5cadb5f75:   jle    0x00007ff5cadb5f2b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││││  ││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
          │ ││││  ││││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.01%  │ ││││  ││││││    │     0x00007ff5cadb5f77:   mov    %edi,%ecx                    ;   {no_reloc}
          │ ││││  ││││││    │     0x00007ff5cadb5f79:   mov    %edx,%r10d
          │ ││││  ╰│││││    │     0x00007ff5cadb5f7c:   jmp    0x00007ff5cadb5f2b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ ││││   │││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
          │ ││││   │││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.34%  │ ↘│││   │││││    │     0x00007ff5cadb5f7e:   mov    0x14(%r8,%rdi,4),%edx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │││   │││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
          │  │││   │││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.18%  │  │││   │││││    │     0x00007ff5cadb5f83:   cmp    %edx,%r10d
          │  │││   ╰││││    │     0x00007ff5cadb5f86:   jle    0x00007ff5cadb5f36           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │││    ││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
          │  │││    ││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.00%  │  │││    ││││    │     0x00007ff5cadb5f88:   mov    %edi,%r10d
          │  │││    ││││    │     0x00007ff5cadb5f8b:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │││    ││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          │  │││    ││││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.01%  │  │││    ││││    │     0x00007ff5cadb5f8e:   mov    %r10d,%ecx
          │  │││    ││││    │     0x00007ff5cadb5f91:   mov    %edx,%r10d
          │  │││    ╰│││    │     0x00007ff5cadb5f94:   jmp    0x00007ff5cadb5f36           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │││     │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
          │  │││     │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.49%  │  ↘││     │││    │     0x00007ff5cadb5f96:   mov    0x18(%r8,%rdi,4),%edx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │   ││     │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
          │   ││     │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   3.47%  │   ││     │││    │     0x00007ff5cadb5f9b:   cmp    %edx,%r10d
          │   ││     ╰││    │     0x00007ff5cadb5f9e:   jle    0x00007ff5cadb5f4b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   ││      ││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
          │   ││      ││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.01%  │   ││      ││    │     0x00007ff5cadb5fa0:   lea    0x2(%rdi),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││      ││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          │   ││      ││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.00%  │   ││      ││    │     0x00007ff5cadb5fa4:   mov    %r10d,%ecx
          │   ││      ││    │     0x00007ff5cadb5fa7:   mov    %edx,%r10d
          │   ││      ╰│    │     0x00007ff5cadb5faa:   jmp    0x00007ff5cadb5f4b
   2.61%  │   ↘│       │    │     0x00007ff5cadb5fac:   mov    %edx,%edi
   0.30%  │    │       ╰    │     0x00007ff5cadb5fae:   jmp    0x00007ff5cadb5f10
          │    │            │     0x00007ff5cadb5fb3:   nopw   0x0(%rax,%rax,1)
          │    │            │     0x00007ff5cadb5fbc:   data16 data16 xchg %ax,%ax
   0.02%  ↘    │           ↗│↗↗   0x00007ff5cadb5fc0:   cmp    %edi,%r9d
               │        ╭  ││││   0x00007ff5cadb5fc3:   jbe    0x00007ff5cadb600b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │        │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@12 (line 83)
               │        │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.02%       │        │  ││││   0x00007ff5cadb5fc9:   mov    %edi,%edx
               │        │  ││││   0x00007ff5cadb5fcb:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │        │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
               │        │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.00%       │        │  ││││   0x00007ff5cadb5fcd:   cmpb   $0x0,0x10(%rdi,%rax,8)
   0.02%       │        │╭ ││││   0x00007ff5cadb5fd2:   jne    0x00007ff5cadb5ffe           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │        ││ ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
               │        ││ ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
               │        ││ ││││   0x00007ff5cadb5fd8:   mov    0x10(%r8,%rdi,4),%r13d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │        ││ ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
               │        ││ ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.00%       │        ││ ││││   0x00007ff5cadb5fdd:   data16 xchg %ax,%ax
               │        ││ ││││   0x00007ff5cadb5fe0:   cmp    %r13d,%r10d
               │        ││╭││││   0x00007ff5cadb5fe3:   jg     0x00007ff5cadb6002
               │        │││││││   0x00007ff5cadb5fe9:   mov    %edx,%edi
   0.00%       │        │││╰│││   0x00007ff5cadb5feb:   jmp    0x00007ff5cadb5fc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │        │││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
               │        │││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.01%       ↘        │││ │││   0x00007ff5cadb5fed:   lea    0x3(%rdi),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                        │││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
                        │││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.00%                │││ │││   0x00007ff5cadb5ff1:   mov    %edx,%edi
                        │││ │││   0x00007ff5cadb5ff3:   mov    %r10d,%ecx
                        │││ │││   0x00007ff5cadb5ff6:   mov    %r13d,%r10d
                        │││ ╰││   0x00007ff5cadb5ff9:   jmp    0x00007ff5cadb5f10
                        │↘│  ││   0x00007ff5cadb5ffe:   mov    %edx,%edi
                        │ │  ╰│   0x00007ff5cadb6000:   jmp    0x00007ff5cadb5fc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                        │ │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
                        │ │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                        │ ↘   │   0x00007ff5cadb6002:   mov    %edi,%ecx
                        │     │   0x00007ff5cadb6004:   mov    %r13d,%r10d
                        │     │   0x00007ff5cadb6007:   mov    %edx,%edi
                        │     ╰   0x00007ff5cadb6009:   jmp    0x00007ff5cadb5fc0
   0.00%                ↘         0x00007ff5cadb600b:   cmp    %ecx,%ebp
                                  0x00007ff5cadb600d:   jbe    0x00007ff5cadb653d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@82 (line 65)
                                  0x00007ff5cadb6013:   mov    0x10(%r11,%rcx,4),%r10d      ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@44 (line 90)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.01%                          0x00007ff5cadb6018:   test   %eax,0x0(,%r10,8)            ; implicit exception: deoptimizes
                                                                                            ; ImmutableOopMap {rax=NarrowOop r8=Oop r10=NarrowOop [0]=Oop [8]=Oop }
   0.51%                          0x00007ff5cadb6020:   cmp    $0x1,%ebx
                               ╭  0x00007ff5cadb6023:   jl     0x00007ff5cadb6048
                               │  0x00007ff5cadb6029:   mov    0xc(,%r10,8),%edi
                               │  0x00007ff5cadb6031:   mov    %edi,%edx
                               │  0x00007ff5cadb6033:   cmp    0x28(%rsp),%rdx
                               │  0x00007ff5cadb6038:   jbe    0x00007ff5cadb64d6
   0.00%                       │  0x00007ff5cadb603e:   xchg   %ax,%ax
                               │  0x00007ff5cadb6040:   test   %edi,%edi
                               │  0x00007ff5cadb6042:   je     0x00007ff5cadb654f           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
                               ↘  0x00007ff5cadb6048:   cmp    %ecx,%r9d
                                  0x00007ff5cadb604b:   jbe    0x00007ff5cadb6546           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@94 (line 65)
                                  0x00007ff5cadb6051:   mov    0x34(%rsp),%edi
                                  0x00007ff5cadb6055:   cmp    %ecx,%edi
                                  0x00007ff5cadb6057:   jbe    0x00007ff5cadb650a
                                  0x00007ff5cadb605d:   movb   $0x1,0x10(%rcx,%rax,8)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  47.69%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1055 
  47.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1055 
   0.17%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1055 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.80%  <...other 261 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1055 
   1.25%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  clock_gettime@plt 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  __strncmp_avx2 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  VMError::is_error_reported 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.48%       jvmci, level 4
   1.25%               kernel
   0.13%            libjvm.so
   0.06%         libc-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:05

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
DijkstraShortestPathBenchmark.adjacency_list_binary_heap         8192  avgt    5  449.756 ± 17.069  ms/op
DijkstraShortestPathBenchmark.adjacency_list_binary_heap:asm     8192  avgt           NaN             ---
DijkstraShortestPathBenchmark.adjacency_matrix                   8192  avgt    5  134.337 ±  0.751  ms/op
DijkstraShortestPathBenchmark.adjacency_matrix:asm               8192  avgt           NaN             ---
