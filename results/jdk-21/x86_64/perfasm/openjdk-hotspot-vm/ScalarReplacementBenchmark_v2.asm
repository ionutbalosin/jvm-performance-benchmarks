# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.236 ns/op
# Warmup Iteration   2: 21.758 ns/op
# Warmup Iteration   3: 23.452 ns/op
# Warmup Iteration   4: 21.533 ns/op
# Warmup Iteration   5: 21.568 ns/op
Iteration   1: 22.587 ns/op
Iteration   2: 22.077 ns/op
Iteration   3: 21.741 ns/op
Iteration   4: 23.509 ns/op
Iteration   5: 22.765 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj":
  22.536 ±(99.9%) 2.615 ns/op [Average]
  (min, avg, max) = (21.741, 22.536, 23.509), stdev = 0.679
  CI (99.9%): [19.921, 25.151] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj:asm":
PrintAssembly processed: 133178 total address lines.
Perf output processed (skipped 67.566 seconds):
 Column 1: cycles (52560 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 645 

                       # {method} {0x00007f04ac478ae0} &apos;arg_escape_obj&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
                       #           [sp+0x40]  (sp of caller)
                       0x00007f05384f7fa0:   mov    0x8(%rsi),%r10d
                       0x00007f05384f7fa4:   movabs $0x7f04b7000000,%r11
                       0x00007f05384f7fae:   add    %r11,%r10
                       0x00007f05384f7fb1:   cmp    %r10,%rax
                       0x00007f05384f7fb4:   jne    0x00007f0537f85080           ;   {runtime_call ic_miss_stub}
                       0x00007f05384f7fba:   xchg   %ax,%ax
                       0x00007f05384f7fbc:   nopl   0x0(%rax)
                     [Verified Entry Point]
   3.71%               0x00007f05384f7fc0:   mov    %eax,-0x14000(%rsp)
   0.26%               0x00007f05384f7fc7:   push   %rbp
   3.71%               0x00007f05384f7fc8:   sub    $0x30,%rsp
   0.06%               0x00007f05384f7fcc:   cmpl   $0x1,0x20(%r15)
   0.09%               0x00007f05384f7fd4:   jne    0x00007f05384f819d           ;*synchronization entry
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@-1 (line 116)
   3.74%               0x00007f05384f7fda:   mov    %rsi,%rdi
   0.05%               0x00007f05384f7fdd:   mov    0x10(%rsi),%r10d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@9 (line 116)
   0.02%               0x00007f05384f7fe1:   cmp    $0x100000,%r10d
                       0x00007f05384f7fe8:   ja     0x00007f05384f8142
   0.04%               0x00007f05384f7fee:   movslq %r10d,%rcx                   ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 116)
   3.68%               0x00007f05384f7ff1:   mov    0xc(%rsi),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@5 (line 116)
   0.06%               0x00007f05384f7ff5:   lea    (%r8,%r8,1),%ebp
   0.00%               0x00007f05384f7ff9:   nopl   0x0(%rax)
   0.05%               0x00007f05384f8000:   cmp    $0x100000,%r10d
          ╭            0x00007f05384f8007:   ja     0x00007f05384f8105
   3.70%  │            0x00007f05384f800d:   add    $0x17,%rcx
   0.05%  │            0x00007f05384f8011:   mov    %rcx,%r9
   0.01%  │            0x00007f05384f8014:   and    $0xfffffffffffffff8,%r9
   0.05%  │            0x00007f05384f8018:   mov    0x1b8(%r15),%r11
   3.67%  │            0x00007f05384f801f:   mov    %r11,%rbx
   0.06%  │            0x00007f05384f8022:   add    %r9,%rbx
   0.03%  │            0x00007f05384f8025:   cmp    0x1c8(%r15),%rbx
          │╭           0x00007f05384f802c:   jae    0x00007f05384f8105
   0.07%  ││           0x00007f05384f8032:   mov    %rbx,0x1b8(%r15)
   3.61%  ││           0x00007f05384f8039:   mov    %r11,%rdi
   0.05%  ││           0x00007f05384f803c:   add    $0x10,%rdi
          ││           0x00007f05384f8040:   movq   $0x1,(%r11)
   0.21%  ││           0x00007f05384f8047:   prefetchw 0xc0(%rbx)
   3.83%  ││           0x00007f05384f804e:   movl   $0x22c0,0x8(%r11)            ;   {metadata({type array byte})}
   0.09%  ││           0x00007f05384f8056:   mov    %r10d,0xc(%r11)
   0.08%  ││           0x00007f05384f805a:   prefetchw 0x100(%rbx)
   2.59%  ││           0x00007f05384f8061:   prefetchw 0x140(%rbx)
   9.26%  ││           0x00007f05384f8068:   prefetchw 0x180(%rbx)
   7.71%  ││           0x00007f05384f806f:   shr    $0x3,%rcx
   0.04%  ││           0x00007f05384f8073:   add    $0xfffffffffffffffe,%rcx
   0.10%  ││           0x00007f05384f8077:   xor    %rax,%rax
   3.12%  ││           0x00007f05384f807a:   cmp    $0x8,%rcx
          ││╭          0x00007f05384f807e:   jg     0x00007f05384f8090
          │││          0x00007f05384f8080:   dec    %rcx
          │││╭         0x00007f05384f8083:   js     0x00007f05384f80d4
          ││││↗        0x00007f05384f8085:   mov    %rax,(%rdi,%rcx,8)
          │││││        0x00007f05384f8089:   dec    %rcx
          ││││╰        0x00007f05384f808c:   jge    0x00007f05384f8085
          ││││ ╭       0x00007f05384f808e:   jmp    0x00007f05384f80d4
   0.42%  ││↘│ │       0x00007f05384f8090:   vpxor  %ymm0,%ymm0,%ymm0
   0.08%  ││ │ │╭      0x00007f05384f8094:   jmp    0x00007f05384f80a6
   7.50%  ││ │ ││↗     0x00007f05384f8099:   vmovdqu %ymm0,(%rdi)
   0.91%  ││ │ │││     0x00007f05384f809d:   vmovdqu %ymm0,0x20(%rdi)
   0.93%  ││ │ │││     0x00007f05384f80a2:   add    $0x40,%rdi
   3.77%  ││ │ │↘│     0x00007f05384f80a6:   sub    $0x8,%rcx
          ││ │ │ ╰     0x00007f05384f80aa:   jge    0x00007f05384f8099
   3.65%  ││ │ │       0x00007f05384f80ac:   add    $0x4,%rcx
          ││ │ │  ╭    0x00007f05384f80b0:   jl     0x00007f05384f80be
          ││ │ │  │    0x00007f05384f80b2:   vmovdqu %ymm0,(%rdi)
          ││ │ │  │    0x00007f05384f80b6:   add    $0x20,%rdi
          ││ │ │  │    0x00007f05384f80ba:   sub    $0x4,%rcx
   0.06%  ││ │ │  ↘    0x00007f05384f80be:   add    $0x4,%rcx
          ││ │ │   ╭   0x00007f05384f80c2:   jle    0x00007f05384f80d4
          ││ │ │   │   0x00007f05384f80c4:   dec    %rcx
          ││ │ │   │↗  0x00007f05384f80c7:   vmovq  %xmm0,(%rdi)
          ││ │ │   ││  0x00007f05384f80cb:   add    $0x8,%rdi
          ││ │ │   ││  0x00007f05384f80cf:   dec    %rcx
          ││ │ │   │╰  0x00007f05384f80d2:   jge    0x00007f05384f80c7           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
          ││ │ │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 116)
   3.82%  ││ ↘ ↘   ↘   0x00007f05384f80d4:   nopl   0x0(%rax,%rax,1)
   0.01%  ││           0x00007f05384f80dc:   data16 data16 xchg %ax,%ax
          ││           0x00007f05384f80e0:   cmp    $0x100000,%r10d
          ││           0x00007f05384f80e7:   ja     0x00007f05384f814a
   0.00%  ││           0x00007f05384f80ed:   mov    $0x1,%eax
   3.80%  ││           0x00007f05384f80f2:   add    $0x30,%rsp
   0.01%  ││           0x00007f05384f80f6:   pop    %rbp
   0.09%  ││           0x00007f05384f80f7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││           0x00007f05384f80fe:   ja     0x00007f05384f8187
   3.64%  ││           0x00007f05384f8104:   ret    
          ↘↘           0x00007f05384f8105:   mov    %r8d,0xc(%rsp)
   0.01%               0x00007f05384f810a:   mov    %r10d,0x8(%rsp)
   0.01%               0x00007f05384f810f:   movabs $0x7f04b70022c0,%rsi         ;   {metadata({type array byte})}
                       0x00007f05384f8119:   mov    %rdi,(%rsp)
                       0x00007f05384f811d:   mov    %r10d,%edx
                       0x00007f05384f8120:   data16 xchg %ax,%ax
                       0x00007f05384f8123:   call   0x00007f0538057780           ; ImmutableOopMap {[0]=Oop }
                                                                                 ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 116)
                                                                                 ;   {runtime_call _new_array_Java}
                       0x00007f05384f8128:   nopl   0x318(%rax,%rax,1)           ;   {other}
                       0x00007f05384f8130:   mov    0x8(%rsp),%r10d
....................................................................................................
  82.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  82.52%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 645 
   8.50%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 691 
   0.60%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.59%                kernel  [unknown] 
   0.53%             libjvm.so  HeapRegionManager::par_iterate 
   0.39%             libc.so.6  __memset_avx2_unaligned_erms 
   0.34%             libjvm.so  G1CardSet::is_empty 
   0.30%                kernel  [unknown] 
   0.21%             libjvm.so  FreeListAllocator::reset 
   0.19%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.18%             libjvm.so  ObjAllocator::initialize 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%             libjvm.so  G1FromCardCache::clear 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                [vdso]  [unknown] 
   0.09%                kernel  [unknown] 
   4.54%  <...other 440 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.52%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 645 
   8.50%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 691 
   3.67%                kernel  [unknown] 
   0.60%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.53%             libjvm.so  HeapRegionManager::par_iterate 
   0.39%             libc.so.6  __memset_avx2_unaligned_erms 
   0.34%             libjvm.so  G1CardSet::is_empty 
   0.21%             libjvm.so  FreeListAllocator::reset 
   0.19%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.18%             libjvm.so  ObjAllocator::initialize 
   0.14%             libjvm.so  G1FromCardCache::clear 
   0.10%                [vdso]  [unknown] 
   0.09%             libjvm.so  G1MonotonicArena::slot_size 
   0.09%             libjvm.so  HeapRegion::unlink_from_list 
   0.08%             libjvm.so  FreeCSetClosure::do_heap_region 
   0.07%             libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.06%             libjvm.so  G1CodeRootSet::contains 
   0.06%             libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.06%             libjvm.so  OptoRuntime::new_array_C 
   0.06%             libjvm.so  oopFactory::new_typeArray 
   2.06%  <...other 239 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.02%           c2, level 4
   4.36%             libjvm.so
   3.67%                kernel
   0.74%             libc.so.6
   0.10%                [vdso]
   0.03%        hsdis-amd64.so
   0.03%           interpreter
   0.03%  ld-linux-x86-64.so.2
   0.02%                      
   0.00%           c1, level 3
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 25.00% complete, ETA 00:06:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.878 ns/op
# Warmup Iteration   2: 23.522 ns/op
# Warmup Iteration   3: 25.592 ns/op
# Warmup Iteration   4: 23.308 ns/op
# Warmup Iteration   5: 23.406 ns/op
Iteration   1: 23.354 ns/op
Iteration   2: 23.351 ns/op
Iteration   3: 23.348 ns/op
Iteration   4: 23.377 ns/op
Iteration   5: 23.443 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj":
  23.375 ±(99.9%) 0.153 ns/op [Average]
  (min, avg, max) = (23.348, 23.375, 23.443), stdev = 0.040
  CI (99.9%): [23.222, 23.528] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj:asm":
PrintAssembly processed: 130882 total address lines.
Perf output processed (skipped 67.140 seconds):
 Column 1: cycles (52653 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 681 

                         # {method} {0x00007f5a37478a00} &apos;branch_escape_obj&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark$HeavyWrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
                         #           [sp+0x30]  (sp of caller)
                         0x00007f5ac04f7a20:   mov    0x8(%rsi),%r10d
                         0x00007f5ac04f7a24:   movabs $0x7f5a3b000000,%r11
                         0x00007f5ac04f7a2e:   add    %r11,%r10
                         0x00007f5ac04f7a31:   cmp    %r10,%rax
                         0x00007f5ac04f7a34:   jne    0x00007f5abff85080           ;   {runtime_call ic_miss_stub}
                         0x00007f5ac04f7a3a:   xchg   %ax,%ax
                         0x00007f5ac04f7a3c:   nopl   0x0(%rax)
                       [Verified Entry Point]
   3.48%                 0x00007f5ac04f7a40:   mov    %eax,-0x14000(%rsp)
   0.26%                 0x00007f5ac04f7a47:   push   %rbp
   0.22%                 0x00007f5ac04f7a48:   sub    $0x20,%rsp
   3.28%                 0x00007f5ac04f7a4c:   cmpl   $0x1,0x20(%r15)
   0.09%                 0x00007f5ac04f7a54:   jne    0x00007f5ac04f7beb           ;*synchronization entry
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@-1 (line 100)
   0.22%                 0x00007f5ac04f7a5a:   mov    %rsi,0x8(%rsp)
   3.48%                 0x00007f5ac04f7a5f:   mov    0x10(%rsi),%edx              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@9 (line 100)
   0.02%                 0x00007f5ac04f7a62:   cmp    $0x100000,%edx
          ╭              0x00007f5ac04f7a68:   ja     0x00007f5ac04f7ba9
   0.07%  │              0x00007f5ac04f7a6e:   movslq %edx,%rcx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 100)
   0.20%  │              0x00007f5ac04f7a71:   mov    0xc(%rsi),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@5 (line 100)
   3.15%  │              0x00007f5ac04f7a75:   mov    %r10d,(%rsp)
   0.13%  │              0x00007f5ac04f7a79:   lea    (%r10,%r10,1),%r11d
   0.01%  │              0x00007f5ac04f7a7d:   mov    %r11d,0x4(%rsp)
   0.23%  │              0x00007f5ac04f7a82:   cmp    $0x100000,%edx
          │╭             0x00007f5ac04f7a88:   ja     0x00007f5ac04f7b85
   3.24%  ││             0x00007f5ac04f7a8e:   add    $0x17,%rcx
   0.04%  ││             0x00007f5ac04f7a92:   mov    %rcx,%r10
   0.02%  ││             0x00007f5ac04f7a95:   and    $0xfffffffffffffff8,%r10
   0.25%  ││             0x00007f5ac04f7a99:   mov    0x1b8(%r15),%r8
   3.30%  ││             0x00007f5ac04f7aa0:   mov    %r8,%r11
   0.05%  ││             0x00007f5ac04f7aa3:   add    %r10,%r11
   0.01%  ││             0x00007f5ac04f7aa6:   cmp    0x1c8(%r15),%r11
          ││╭            0x00007f5ac04f7aad:   jae    0x00007f5ac04f7b85
   0.25%  │││            0x00007f5ac04f7ab3:   mov    %r11,0x1b8(%r15)
   3.21%  │││            0x00007f5ac04f7aba:   mov    %r8,%rdi
   0.03%  │││            0x00007f5ac04f7abd:   add    $0x10,%rdi
   0.01%  │││            0x00007f5ac04f7ac1:   movq   $0x1,(%r8)
   0.51%  │││            0x00007f5ac04f7ac8:   prefetchw 0xc0(%r11)
   3.74%  │││            0x00007f5ac04f7ad0:   movl   $0x22c0,0x8(%r8)             ;   {metadata({type array byte})}
   0.11%  │││            0x00007f5ac04f7ad8:   mov    %edx,0xc(%r8)
   0.17%  │││            0x00007f5ac04f7adc:   prefetchw 0x100(%r11)
   2.48%  │││            0x00007f5ac04f7ae4:   prefetchw 0x140(%r11)
   8.98%  │││            0x00007f5ac04f7aec:   prefetchw 0x180(%r11)
   6.97%  │││            0x00007f5ac04f7af4:   shr    $0x3,%rcx
   0.06%  │││            0x00007f5ac04f7af8:   add    $0xfffffffffffffffe,%rcx
   0.25%  │││            0x00007f5ac04f7afc:   xor    %rax,%rax
   2.87%  │││            0x00007f5ac04f7aff:   cmp    $0x8,%rcx
          │││╭           0x00007f5ac04f7b03:   jg     0x00007f5ac04f7b15
          ││││           0x00007f5ac04f7b05:   dec    %rcx
          ││││╭          0x00007f5ac04f7b08:   js     0x00007f5ac04f7b59
          │││││↗         0x00007f5ac04f7b0a:   mov    %rax,(%rdi,%rcx,8)
          ││││││         0x00007f5ac04f7b0e:   dec    %rcx
          │││││╰         0x00007f5ac04f7b11:   jge    0x00007f5ac04f7b0a
          │││││ ╭        0x00007f5ac04f7b13:   jmp    0x00007f5ac04f7b59
   0.44%  │││↘│ │        0x00007f5ac04f7b15:   vpxor  %ymm0,%ymm0,%ymm0
   0.09%  │││ │ │╭       0x00007f5ac04f7b19:   jmp    0x00007f5ac04f7b2b
   6.94%  │││ │ ││↗      0x00007f5ac04f7b1e:   vmovdqu %ymm0,(%rdi)
   1.17%  │││ │ │││      0x00007f5ac04f7b22:   vmovdqu %ymm0,0x20(%rdi)
   1.11%  │││ │ │││      0x00007f5ac04f7b27:   add    $0x40,%rdi
   3.64%  │││ │ │↘│      0x00007f5ac04f7b2b:   sub    $0x8,%rcx
          │││ │ │ ╰      0x00007f5ac04f7b2f:   jge    0x00007f5ac04f7b1e
   3.31%  │││ │ │        0x00007f5ac04f7b31:   add    $0x4,%rcx
          │││ │ │  ╭     0x00007f5ac04f7b35:   jl     0x00007f5ac04f7b43
          │││ │ │  │     0x00007f5ac04f7b37:   vmovdqu %ymm0,(%rdi)
          │││ │ │  │     0x00007f5ac04f7b3b:   add    $0x20,%rdi
          │││ │ │  │     0x00007f5ac04f7b3f:   sub    $0x4,%rcx
   0.16%  │││ │ │  ↘     0x00007f5ac04f7b43:   add    $0x4,%rcx
   0.00%  │││ │ │   ╭    0x00007f5ac04f7b47:   jle    0x00007f5ac04f7b59
          │││ │ │   │    0x00007f5ac04f7b49:   dec    %rcx
          │││ │ │   │↗   0x00007f5ac04f7b4c:   vmovq  %xmm0,(%rdi)
          │││ │ │   ││   0x00007f5ac04f7b50:   add    $0x8,%rdi
          │││ │ │   ││   0x00007f5ac04f7b54:   dec    %rcx
          │││ │ │   │╰   0x00007f5ac04f7b57:   jge    0x00007f5ac04f7b4c           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
          │││ │ │   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 100)
   3.50%  │││ ↘ ↘   ↘ ↗  0x00007f5ac04f7b59:   mov    0x8(%rsp),%r10
   0.04%  │││         │  0x00007f5ac04f7b5e:   movzbl 0x14(%r10),%ebp              ;*getfield objectEscapes {reexecute=0 rethrow=0 return_oop=0}
          │││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@17 (line 104)
   0.32%  │││         │  0x00007f5ac04f7b63:   test   %ebp,%ebp
          │││         │  0x00007f5ac04f7b65:   jne    0x00007f5ac04f7bb1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@20 (line 104)
   0.14%  │││         │  0x00007f5ac04f7b67:   mov    0x18(%r10),%r10d
   3.47%  │││         │  0x00007f5ac04f7b6b:   mov    %r10,%rax
   0.00%  │││         │  0x00007f5ac04f7b6e:   shl    $0x3,%rax                    ;*getfield CACHED_WRAPPER {reexecute=0 rethrow=0 return_oop=0}
          │││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@29 (line 107)
   0.06%  │││         │  0x00007f5ac04f7b72:   add    $0x20,%rsp
   0.07%  │││         │  0x00007f5ac04f7b76:   pop    %rbp
   3.33%  │││         │  0x00007f5ac04f7b77:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││         │  0x00007f5ac04f7b7e:   ja     0x00007f5ac04f7bd5
   0.17%  │││         │  0x00007f5ac04f7b84:   ret    
   0.00%  │↘↘         │  0x00007f5ac04f7b85:   movabs $0x7f5a3b0022c0,%rsi         ;   {metadata({type array byte})}
   0.00%  │           │  0x00007f5ac04f7b8f:   mov    0x8(%rsp),%rbp
   0.00%  │           │  0x00007f5ac04f7b94:   data16 xchg %ax,%ax
          │           │  0x00007f5ac04f7b97:   call   0x00007f5ac0058080           ; ImmutableOopMap {rbp=Oop [8]=Oop }
          │           │                                                            ;*newarray {reexecute=0 rethrow=0 return_oop=1}
          │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
          │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 100)
          │           │                                                            ;   {runtime_call _new_array_Java}
   0.00%  │           │  0x00007f5ac04f7b9c:   nopl   0x30c(%rax,%rax,1)           ;   {other}
          │           │  0x00007f5ac04f7ba4:   mov    %rax,%r8
          │           ╰  0x00007f5ac04f7ba7:   jmp    0x00007f5ac04f7b59
          ↘              0x00007f5ac04f7ba9:   movslq %edx,%rcx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 100)
                         0x00007f5ac04f7bac:   jmp    0x00007f5ac04f7a71           ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  79.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 720 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@20 (line 194)
              0x00007f5ac04faeb5:   mov    0x38(%rsp),%r10
              0x00007f5ac04faeba:   nopw   0x0(%rax,%rax,1)
              0x00007f5ac04faec0:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f5ac04faf98
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@30 (line 196)
              0x00007f5ac04faec8:   mov    $0x1,%ebp
              0x00007f5ac04faecd:   test   %r11d,%r11d
          ╭   0x00007f5ac04faed0:   jne    0x00007f5ac04faf05           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@36 (line 197)
   3.17%  │↗  0x00007f5ac04faed2:   mov    0x40(%rsp),%rsi
   0.02%  ││  0x00007f5ac04faed7:   call   0x00007f5abff85380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
   0.54%  ││  0x00007f5ac04faedc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
   3.15%  ││  0x00007f5ac04faee4:   mov    0x38(%rsp),%r10
   0.28%  ││  0x00007f5ac04faee9:   movzbl 0x94(%r10),%r11d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@30 (line 196)
   0.66%  ││  0x00007f5ac04faef1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   3.13%  ││  0x00007f5ac04faef5:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   0.03%  ││  0x00007f5ac04faefc:   test   %eax,(%r10)                  ;   {poll}
   0.79%  ││  0x00007f5ac04faeff:   nop
   0.28%  ││  0x00007f5ac04faf00:   test   %r11d,%r11d
          │╰  0x00007f5ac04faf03:   je     0x00007f5ac04faed2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@36 (line 197)
          ↘   0x00007f5ac04faf05:   movabs $0x7f5ad64c8b90,%r10
              0x00007f5ac04faf0f:   call   *%r10
              0x00007f5ac04faf12:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007f5ac04faf1a:   mov    0x30(%rsp),%r10
              0x00007f5ac04faf1f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@40 (line 197)
....................................................................................................
  12.04%  <total for region 2>

....[Hottest Regions]...............................................................................
  79.37%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 681 
  12.04%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 720 
   0.61%             libjvm.so  HeapRegionManager::par_iterate 
   0.57%                kernel  [unknown] 
   0.53%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.36%             libjvm.so  G1CardSet::is_empty 
   0.32%             libc.so.6  __memset_avx2_unaligned_erms 
   0.26%                kernel  [unknown] 
   0.25%                kernel  [unknown] 
   0.25%             libjvm.so  FreeListAllocator::reset 
   0.20%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.19%             libjvm.so  ObjArrayAllocator::initialize 
   0.12%             libjvm.so  G1FromCardCache::clear 
   0.12%             libjvm.so  HeapRegion::hr_clear 
   0.11%             libjvm.so  TypeArrayKlass::allocate_common 
   0.09%                [vdso]  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%             libjvm.so  FreeCSetClosure::do_heap_region 
   0.08%                kernel  [unknown] 
   4.27%  <...other 409 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  79.37%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 681 
  12.04%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 720 
   3.18%                kernel  [unknown] 
   0.61%             libjvm.so  HeapRegionManager::par_iterate 
   0.53%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.36%             libjvm.so  G1CardSet::is_empty 
   0.32%             libc.so.6  __memset_avx2_unaligned_erms 
   0.25%             libjvm.so  FreeListAllocator::reset 
   0.20%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.19%             libjvm.so  ObjArrayAllocator::initialize 
   0.12%             libjvm.so  G1FromCardCache::clear 
   0.12%             libjvm.so  HeapRegion::hr_clear 
   0.11%             libjvm.so  TypeArrayKlass::allocate_common 
   0.09%                [vdso]  [unknown] 
   0.09%             libjvm.so  FreeCSetClosure::do_heap_region 
   0.07%             libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.07%             libjvm.so  G1CodeRootSet::clear 
   0.07%             libjvm.so  G1RebuildFreeListTask::work 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.06%             libjvm.so  G1MonotonicArena::slot_size 
   2.09%  <...other 215 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.41%           c2, level 4
   4.49%             libjvm.so
   3.18%                kernel
   0.69%             libc.so.6
   0.09%                [vdso]
   0.05%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.02%                      
   0.02%           interpreter
   0.01%         perf-4979.map
   0.00%           c1, level 3
   0.00%          runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 50.00% complete, ETA 00:04:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.014 ns/op
# Warmup Iteration   2: 5.766 ns/op
# Warmup Iteration   3: 6.958 ns/op
# Warmup Iteration   4: 5.849 ns/op
# Warmup Iteration   5: 5.915 ns/op
Iteration   1: 6.051 ns/op
Iteration   2: 5.968 ns/op
Iteration   3: 11.373 ns/op
Iteration   4: 11.137 ns/op
Iteration   5: 11.480 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape":
  9.202 ±(99.9%) 11.232 ns/op [Average]
  (min, avg, max) = (5.968, 9.202, 11.480), stdev = 2.917
  CI (99.9%): [≈ 0, 20.434] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape:asm":
PrintAssembly processed: 125356 total address lines.
Perf output processed (skipped 66.596 seconds):
 Column 1: cycles (51366 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 650 

                # {method} {0x00007f39d8478658} &apos;no_escape&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f3a684f7980:   mov    0x8(%rsi),%r10d
                0x00007f3a684f7984:   movabs $0x7f39e3000000,%r11
                0x00007f3a684f798e:   add    %r11,%r10
                0x00007f3a684f7991:   cmp    %r10,%rax
                0x00007f3a684f7994:   jne    0x00007f3a67f85080           ;   {runtime_call ic_miss_stub}
                0x00007f3a684f799a:   xchg   %ax,%ax
                0x00007f3a684f799c:   nopl   0x0(%rax)
              [Verified Entry Point]
  11.26%        0x00007f3a684f79a0:   sub    $0x18,%rsp
   0.14%        0x00007f3a684f79a7:   mov    %rbp,0x10(%rsp)
   3.13%        0x00007f3a684f79ac:   cmpl   $0x1,0x20(%r15)
   9.71%  ╭     0x00007f3a684f79b4:   jne    0x00007f3a684f79eb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@-1 (line 76)
   0.27%  │  ↗  0x00007f3a684f79ba:   mov    0xc(%rsi),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@5 (line 76)
   0.33%  │  │  0x00007f3a684f79be:   lea    (%r11,%r11,2),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@20 (line 77)
   2.00%  │  │  0x00007f3a684f79c2:   add    $0x10,%rsp
   9.49%  │  │  0x00007f3a684f79c6:   pop    %rbp
  10.31%  │ ↗│  0x00007f3a684f79c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
   0.00%  │╭││  0x00007f3a684f79ce:   ja     0x00007f3a684f79d5
   1.51%  ││││  0x00007f3a684f79d4:   ret    
          │↘╰│  0x00007f3a684f79d5:   movabs $0x7f3a684f79c7,%r10         ;   {internal_word}
          │  │  0x00007f3a684f79df:   mov    %r10,0x468(%r15)
          │  │  0x00007f3a684f79e6:   jmp    0x00007f3a67f8c000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f3a684f79eb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f3a684f79f0:   jmp    0x00007f3a684f79ba
                0x00007f3a684f79f5:   hlt    
                0x00007f3a684f79f6:   hlt    
                0x00007f3a684f79f7:   hlt    
              [Exception Handler]
                0x00007f3a684f79f8:   jmp    0x00007f3a68058200           ;   {no_reloc}
....................................................................................................
  48.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 687 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@20 (line 194)
              0x00007f3a684fb2b5:   mov    0x38(%rsp),%r10
              0x00007f3a684fb2ba:   nopw   0x0(%rax,%rax,1)
              0x00007f3a684fb2c0:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f3a684fb394
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@30 (line 196)
              0x00007f3a684fb2c8:   mov    $0x1,%ebp
              0x00007f3a684fb2cd:   test   %r11d,%r11d
          ╭   0x00007f3a684fb2d0:   jne    0x00007f3a684fb305           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@36 (line 197)
   3.18%  │↗  0x00007f3a684fb2d2:   mov    0x40(%rsp),%rsi
   0.07%  ││  0x00007f3a684fb2d7:   call   0x00007f3a67f85380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
   7.43%  ││  0x00007f3a684fb2dc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
   3.73%  ││  0x00007f3a684fb2e4:   mov    0x38(%rsp),%r10
   2.87%  ││  0x00007f3a684fb2e9:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@30 (line 196)
  15.79%  ││  0x00007f3a684fb2f1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
   3.06%  ││  0x00007f3a684fb2f5:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
   0.07%  ││  0x00007f3a684fb2fc:   test   %eax,(%r11)                  ;   {poll}
   3.44%  ││  0x00007f3a684fb2ff:   nop
   7.13%  ││  0x00007f3a684fb300:   test   %r10d,%r10d
          │╰  0x00007f3a684fb303:   je     0x00007f3a684fb2d2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@36 (line 197)
          ↘   0x00007f3a684fb305:   movabs $0x7f3a7d6c8b90,%r10
              0x00007f3a684fb30f:   call   *%r10
              0x00007f3a684fb312:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007f3a684fb31a:   mov    0x30(%rsp),%r10
              0x00007f3a684fb31f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@40 (line 197)
....................................................................................................
  46.77%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.16%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 650 
  46.77%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 687 
   0.75%                kernel  [unknown] 
   0.73%                kernel  [unknown] 
   0.37%                kernel  [unknown] 
   0.19%             libjvm.so  ElfSymbolTable::lookup 
   0.13%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%             libc.so.6  __vfprintf_internal 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%             libc.so.6  _IO_fwrite 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   2.34%  <...other 356 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.16%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 650 
  46.77%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 687 
   4.04%                kernel  [unknown] 
   0.19%             libjvm.so  ElfSymbolTable::lookup 
   0.06%             libc.so.6  __vfprintf_internal 
   0.05%        hsdis-amd64.so  print_insn 
   0.04%             libc.so.6  _IO_fwrite 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  xmlStream::write_text 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.02%                        <unknown> 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  _IO_setb 
   0.42%  <...other 131 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.93%           c2, level 4
   4.04%                kernel
   0.58%             libjvm.so
   0.31%             libc.so.6
   0.07%        hsdis-amd64.so
   0.02%                      
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.01%         perf-5047.map
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 75.00% complete, ETA 00:02:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.526 ns/op
# Warmup Iteration   2: 8.677 ns/op
# Warmup Iteration   3: 10.440 ns/op
# Warmup Iteration   4: 8.716 ns/op
# Warmup Iteration   5: 8.640 ns/op
Iteration   1: 8.686 ns/op
Iteration   2: 8.625 ns/op
Iteration   3: 8.567 ns/op
Iteration   4: 8.947 ns/op
Iteration   5: 8.781 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj":
  8.721 ±(99.9%) 0.574 ns/op [Average]
  (min, avg, max) = (8.567, 8.721, 8.947), stdev = 0.149
  CI (99.9%): [8.147, 9.295] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj:asm":
PrintAssembly processed: 131310 total address lines.
Perf output processed (skipped 67.363 seconds):
 Column 1: cycles (50897 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 696 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@20 (line 194)
              0x00007f1a304fe8b5:   mov    0x38(%rsp),%r10
              0x00007f1a304fe8ba:   nopw   0x0(%rax,%rax,1)
              0x00007f1a304fe8c0:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f1a304fe994
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@30 (line 196)
              0x00007f1a304fe8c8:   mov    $0x1,%ebp
              0x00007f1a304fe8cd:   test   %r11d,%r11d
          ╭   0x00007f1a304fe8d0:   jne    0x00007f1a304fe905           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@36 (line 197)
   0.01%  │↗  0x00007f1a304fe8d2:   mov    0x40(%rsp),%rsi
   0.02%  ││  0x00007f1a304fe8d7:   call   0x00007f1a2ff85380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
  30.30%  ││  0x00007f1a304fe8dc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
   0.03%  ││  0x00007f1a304fe8e4:   mov    0x38(%rsp),%r10
   0.03%  ││  0x00007f1a304fe8e9:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@30 (line 196)
   9.49%  ││  0x00007f1a304fe8f1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
   0.00%  ││  0x00007f1a304fe8f5:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
   0.01%  ││  0x00007f1a304fe8fc:   test   %eax,(%r11)                  ;   {poll}
   0.04%  ││  0x00007f1a304fe8ff:   nop
   9.31%  ││  0x00007f1a304fe900:   test   %r10d,%r10d
          │╰  0x00007f1a304fe903:   je     0x00007f1a304fe8d2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@36 (line 197)
          ↘   0x00007f1a304fe905:   movabs $0x7f1a468c8b90,%r10
              0x00007f1a304fe90f:   call   *%r10
              0x00007f1a304fe912:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007f1a304fe91a:   mov    0x30(%rsp),%r10
              0x00007f1a304fe91f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@40 (line 197)
....................................................................................................
  49.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 654 

             # {method} {0x00007f19a44787f8} &apos;no_escape_array_obj&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f1a304fa8a0:   mov    0x8(%rsi),%r10d
             0x00007f1a304fa8a4:   movabs $0x7f19af000000,%r11
             0x00007f1a304fa8ae:   add    %r11,%r10
             0x00007f1a304fa8b1:   cmp    %r10,%rax
             0x00007f1a304fa8b4:   jne    0x00007f1a2ff85080           ;   {runtime_call ic_miss_stub}
             0x00007f1a304fa8ba:   xchg   %ax,%ax
             0x00007f1a304fa8bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   9.33%     0x00007f1a304fa8c0:   mov    %eax,-0x14000(%rsp)
   0.25%     0x00007f1a304fa8c7:   push   %rbp
   0.01%     0x00007f1a304fa8c8:   sub    $0x20,%rsp
   9.26%     0x00007f1a304fa8cc:   cmpl   $0x1,0x20(%r15)
   0.09%     0x00007f1a304fa8d4:   jne    0x00007f1a304fa959           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@-1 (line 88)
   0.01%     0x00007f1a304fa8da:   mov    0xc(%rsi),%ebp               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@5 (line 88)
   9.36%     0x00007f1a304fa8dd:   mov    0x10(%rsi),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@9 (line 88)
   0.00%     0x00007f1a304fa8e1:   lea    0x0(,%rbp,2),%eax
   0.09%     0x00007f1a304fa8e8:   cmp    $0x100000,%r11d
          ╭  0x00007f1a304fa8ef:   ja     0x00007f1a304fa909           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@-1 (line 88)
   0.01%  │  0x00007f1a304fa8f1:   add    %ebp,%eax
   9.26%  │  0x00007f1a304fa8f3:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@30 (line 89)
          │  0x00007f1a304fa8f6:   add    $0x20,%rsp
   0.06%  │  0x00007f1a304fa8fa:   pop    %rbp
   0.01%  │  0x00007f1a304fa8fb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f1a304fa902:   ja     0x00007f1a304fa943
   9.45%  │  0x00007f1a304fa908:   ret    
          ↘  0x00007f1a304fa909:   mov    %eax,0x4(%rsp)
             0x00007f1a304fa90d:   mov    %r11d,(%rsp)
             0x00007f1a304fa911:   movabs $0x7f19af0022c0,%rsi         ;   {metadata({type array byte})}
             0x00007f1a304fa91b:   mov    %r11d,%edx
             0x00007f1a304fa91e:   nop
             0x00007f1a304fa91f:   call   0x00007f1a3005a300           ; ImmutableOopMap {}
                                                                       ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 137)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 88)
                                                                       ;   {runtime_call _new_array_Java}
....................................................................................................
  47.21%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.23%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 696 
  47.21%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 654 
   0.54%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%             libjvm.so  ElfSymbolTable::lookup 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.39%  <...other 242 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.23%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 696 
  47.21%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 654 
   3.00%                kernel  [unknown] 
   0.09%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  fileStream::write 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%                        <unknown> 
   0.24%  <...other 95 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.44%           c2, level 4
   3.00%                kernel
   0.32%             libjvm.so
   0.17%             libc.so.6
   0.03%        hsdis-amd64.so
   0.03%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%                [vdso]
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:08:12

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

Benchmark                                           (objectEscapes)  (size)  (value)  Mode  Cnt   Score    Error  Units
ScalarReplacementBenchmark.arg_escape_obj                     false     128        3  avgt    5  22.536 ±  2.615  ns/op
ScalarReplacementBenchmark.arg_escape_obj:asm                 false     128        3  avgt          NaN             ---
ScalarReplacementBenchmark.branch_escape_obj                  false     128        3  avgt    5  23.375 ±  0.153  ns/op
ScalarReplacementBenchmark.branch_escape_obj:asm              false     128        3  avgt          NaN             ---
ScalarReplacementBenchmark.no_escape                          false     128        3  avgt    5   9.202 ± 11.232  ns/op
ScalarReplacementBenchmark.no_escape:asm                      false     128        3  avgt          NaN             ---
ScalarReplacementBenchmark.no_escape_array_obj                false     128        3  avgt    5   8.721 ±  0.574  ns/op
ScalarReplacementBenchmark.no_escape_array_obj:asm            false     128        3  avgt          NaN             ---
