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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.114 ns/op
# Warmup Iteration   2: 13.555 ns/op
# Warmup Iteration   3: 13.938 ns/op
# Warmup Iteration   4: 13.479 ns/op
# Warmup Iteration   5: 13.656 ns/op
Iteration   1: 13.551 ns/op
Iteration   2: 13.646 ns/op
Iteration   3: 13.649 ns/op
Iteration   4: 13.589 ns/op
Iteration   5: 13.437 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj":
  13.574 ±(99.9%) 0.335 ns/op [Average]
  (min, avg, max) = (13.437, 13.574, 13.649), stdev = 0.087
  CI (99.9%): [13.240, 13.909] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj:asm":
PrintAssembly processed: 127690 total address lines.
Perf output processed (skipped 56.190 seconds):
 Column 1: cycles (50792 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 562 

                       # {method} {0x00007f531c47af38} &apos;arg_escape_obj&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
                       #           [sp+0x40]  (sp of caller)
                       0x00007f53a0638720:   mov    0x8(%rsi),%r10d
                       0x00007f53a0638724:   movabs $0x7f5327000000,%r11
                       0x00007f53a063872e:   add    %r11,%r10
                       0x00007f53a0638731:   cmp    %r10,%rax
                       0x00007f53a0638734:   jne    0x00007f53a00c4080           ;   {runtime_call ic_miss_stub}
                       0x00007f53a063873a:   xchg   %ax,%ax
                       0x00007f53a063873c:   nopl   0x0(%rax)
                     [Verified Entry Point]
   2.83%               0x00007f53a0638740:   mov    %eax,-0x14000(%rsp)
   5.11%               0x00007f53a0638747:   push   %rbp
   1.23%               0x00007f53a0638748:   sub    $0x30,%rsp
   0.29%               0x00007f53a063874c:   cmpl   $0x1,0x20(%r15)
   1.33%               0x00007f53a0638754:   jne    0x00007f53a063891d           ;*synchronization entry
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@-1 (line 118)
   1.60%               0x00007f53a063875a:   mov    %rsi,%rdi
   0.24%               0x00007f53a063875d:   mov    0x10(%rsi),%r10d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@9 (line 118)
   0.17%               0x00007f53a0638761:   cmp    $0x100000,%r10d
                       0x00007f53a0638768:   ja     0x00007f53a06388c2
   1.11%               0x00007f53a063876e:   movslq %r10d,%rcx                   ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 118)
   1.51%               0x00007f53a0638771:   mov    0xc(%rsi),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@5 (line 118)
   0.29%               0x00007f53a0638775:   lea    (%r8,%r8,1),%ebp
   0.04%               0x00007f53a0638779:   nopl   0x0(%rax)
   1.04%               0x00007f53a0638780:   cmp    $0x100000,%r10d
          ╭            0x00007f53a0638787:   ja     0x00007f53a0638885
   1.49%  │            0x00007f53a063878d:   add    $0x17,%rcx
   0.22%  │            0x00007f53a0638791:   mov    %rcx,%r9
   0.04%  │            0x00007f53a0638794:   and    $0xfffffffffffffff8,%r9
   1.27%  │            0x00007f53a0638798:   mov    0x1b8(%r15),%r11
   1.65%  │            0x00007f53a063879f:   mov    %r11,%rbx
   0.22%  │            0x00007f53a06387a2:   add    %r9,%rbx
   0.07%  │            0x00007f53a06387a5:   cmp    0x1c8(%r15),%rbx
          │╭           0x00007f53a06387ac:   jae    0x00007f53a0638885
   1.27%  ││           0x00007f53a06387b2:   mov    %rbx,0x1b8(%r15)
   1.75%  ││           0x00007f53a06387b9:   mov    %r11,%rdi
   0.12%  ││           0x00007f53a06387bc:   add    $0x10,%rdi
   0.01%  ││           0x00007f53a06387c0:   movq   $0x1,(%r11)
   5.61%  ││           0x00007f53a06387c7:   prefetchw 0xc0(%rbx)
   2.08%  ││           0x00007f53a06387ce:   movl   $0x22c0,0x8(%r11)            ;   {metadata({type array byte})}
   0.22%  ││           0x00007f53a06387d6:   mov    %r10d,0xc(%r11)
   0.85%  ││           0x00007f53a06387da:   prefetchw 0x100(%rbx)
   3.46%  ││           0x00007f53a06387e1:   prefetchw 0x140(%rbx)
   5.70%  ││           0x00007f53a06387e8:   prefetchw 0x180(%rbx)
   6.96%  ││           0x00007f53a06387ef:   shr    $0x3,%rcx
   0.25%  ││           0x00007f53a06387f3:   add    $0xfffffffffffffffe,%rcx
   1.23%  ││           0x00007f53a06387f7:   xor    %rax,%rax
   0.93%  ││           0x00007f53a06387fa:   cmp    $0x8,%rcx
          ││╭          0x00007f53a06387fe:   jg     0x00007f53a0638810
          │││          0x00007f53a0638800:   dec    %rcx
          │││╭         0x00007f53a0638803:   js     0x00007f53a0638854
          ││││↗        0x00007f53a0638805:   mov    %rax,(%rdi,%rcx,8)
          │││││        0x00007f53a0638809:   dec    %rcx
          ││││╰        0x00007f53a063880c:   jge    0x00007f53a0638805
          ││││ ╭       0x00007f53a063880e:   jmp    0x00007f53a0638854
   0.41%  ││↘│ │       0x00007f53a0638810:   vpxor  %ymm0,%ymm0,%ymm0
   0.36%  ││ │ │╭      0x00007f53a0638814:   jmp    0x00007f53a0638826
   5.01%  ││ │ ││↗     0x00007f53a0638819:   vmovdqu %ymm0,(%rdi)
   2.61%  ││ │ │││     0x00007f53a063881d:   vmovdqu %ymm0,0x20(%rdi)
   2.98%  ││ │ │││     0x00007f53a0638822:   add    $0x40,%rdi
   3.14%  ││ │ │↘│     0x00007f53a0638826:   sub    $0x8,%rcx
          ││ │ │ ╰     0x00007f53a063882a:   jge    0x00007f53a0638819
   1.80%  ││ │ │       0x00007f53a063882c:   add    $0x4,%rcx
          ││ │ │  ╭    0x00007f53a0638830:   jl     0x00007f53a063883e
          ││ │ │  │    0x00007f53a0638832:   vmovdqu %ymm0,(%rdi)
          ││ │ │  │    0x00007f53a0638836:   add    $0x20,%rdi
          ││ │ │  │    0x00007f53a063883a:   sub    $0x4,%rcx
   0.42%  ││ │ │  ↘    0x00007f53a063883e:   add    $0x4,%rcx
   0.00%  ││ │ │   ╭   0x00007f53a0638842:   jle    0x00007f53a0638854
          ││ │ │   │   0x00007f53a0638844:   dec    %rcx
          ││ │ │   │↗  0x00007f53a0638847:   vmovq  %xmm0,(%rdi)
          ││ │ │   ││  0x00007f53a063884b:   add    $0x8,%rdi
          ││ │ │   ││  0x00007f53a063884f:   dec    %rcx
          ││ │ │   │╰  0x00007f53a0638852:   jge    0x00007f53a0638847           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
          ││ │ │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 118)
   2.80%  ││ ↘ ↘   ↘   0x00007f53a0638854:   nopl   0x0(%rax,%rax,1)
          ││           0x00007f53a063885c:   data16 data16 xchg %ax,%ax
          ││           0x00007f53a0638860:   cmp    $0x100000,%r10d
          ││           0x00007f53a0638867:   ja     0x00007f53a06388ca
          ││           0x00007f53a063886d:   mov    $0x1,%eax
   2.76%  ││           0x00007f53a0638872:   add    $0x30,%rsp
          ││           0x00007f53a0638876:   pop    %rbp
   0.03%  ││           0x00007f53a0638877:   cmp    0x450(%r15),%rsp             ;   {poll_return}
   0.00%  ││           0x00007f53a063887e:   ja     0x00007f53a0638907
   3.22%  ││           0x00007f53a0638884:   ret    
   0.00%  ↘↘           0x00007f53a0638885:   mov    %r8d,0xc(%rsp)
                       0x00007f53a063888a:   mov    %r10d,0x8(%rsp)
   0.00%               0x00007f53a063888f:   movabs $0x7f53270022c0,%rsi         ;   {metadata({type array byte})}
                       0x00007f53a0638899:   mov    %rdi,(%rsp)
                       0x00007f53a063889d:   mov    %r10d,%edx
                       0x00007f53a06388a0:   data16 xchg %ax,%ax
                       0x00007f53a06388a3:   call   0x00007f53a0196780           ; ImmutableOopMap {[0]=Oop }
                                                                                 ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 118)
                                                                                 ;   {runtime_call _new_array_Java}
                       0x00007f53a06388a8:   nopl   0x318(%rax,%rax,1)           ;   {other}
                       0x00007f53a06388b0:   mov    0x8(%rsp),%r10d
....................................................................................................
  77.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 600 

              0x00007f53a063c035:   mov    0x38(%rsp),%r10
              0x00007f53a063c03a:   nopw   0x0(%rax,%rax,1)
              0x00007f53a063c040:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f53a063c114
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@30 (line 196)
              0x00007f53a063c048:   mov    $0x1,%ebp
              0x00007f53a063c04d:   test   %r11d,%r11d
          ╭   0x00007f53a063c050:   jne    0x00007f53a063c085           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@36 (line 197)
          │↗  0x00007f53a063c052:   mov    0x40(%rsp),%rsi
   0.02%  ││  0x00007f53a063c057:   call   0x00007f53a00c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual arg_escape_obj {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
   0.83%  ││  0x00007f53a063c05c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual arg_escape_obj {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
   0.00%  ││  0x00007f53a063c064:   mov    0x38(%rsp),%r10
   6.88%  ││  0x00007f53a063c069:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@30 (line 196)
   6.79%  ││  0x00007f53a063c071:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
          ││  0x00007f53a063c075:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
   0.10%  ││  0x00007f53a063c07c:   test   %eax,(%r11)                  ;   {poll}
   1.88%  ││  0x00007f53a063c07f:   nop
   1.73%  ││  0x00007f53a063c080:   test   %r10d,%r10d
          │╰  0x00007f53a063c083:   je     0x00007f53a063c052           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@36 (line 197)
          ↘   0x00007f53a063c085:   movabs $0x7f53b7ea2b90,%r10
              0x00007f53a063c08f:   call   *%r10
              0x00007f53a063c092:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007f53a063c09a:   mov    0x30(%rsp),%r10
              0x00007f53a063c09f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@40 (line 197)
....................................................................................................
  18.24%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 562 
  18.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 600 
   0.19%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.11%           libjvm.so  G1CardSet::reset_table_scanner 
   0.10%              kernel  [unknown] 
   0.09%        libc-2.31.so  __memset_avx2_erms 
   0.08%           libjvm.so  HeapRegionManager::par_iterate 
   0.07%              kernel  [unknown] 
   0.07%           libjvm.so  FreeListAllocator::reset 
   0.07%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.06%              kernel  [unknown] 
   0.06%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.06%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.06%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.06%           libjvm.so  HeapRegionClaimer::claim_region 
   0.05%              [vdso]  __vdso_clock_gettime 
   2.63%  <...other 494 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  77.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 562 
  18.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 600 
   1.20%              kernel  [unknown] 
   0.23%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.17%                      <unknown> 
   0.11%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.11%           libjvm.so  G1CardSet::reset_table_scanner 
   0.09%        libc-2.31.so  __memset_avx2_erms 
   0.09%           libjvm.so  FreeListAllocator::reset 
   0.08%           libjvm.so  HeapRegionManager::par_iterate 
   0.08%           libjvm.so  ObjArrayAllocator::initialize 
   0.08%              [vdso]  __vdso_clock_gettime 
   0.07%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.06%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.06%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.06%           libjvm.so  HeapRegionClaimer::claim_region 
   0.05%           libjvm.so  TypeArrayKlass::allocate_common 
   0.05%           libjvm.so  OptoRuntime::new_array_C 
   0.05%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.05%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   1.33%  <...other 196 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.96%         c2, level 4
   2.14%           libjvm.so
   1.20%              kernel
   0.30%        libc-2.31.so
   0.17%                    
   0.08%  libpthread-2.31.so
   0.08%              [vdso]
   0.04%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 25.00% complete, ETA 00:05:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.916 ns/op
# Warmup Iteration   2: 14.171 ns/op
# Warmup Iteration   3: 14.823 ns/op
# Warmup Iteration   4: 14.538 ns/op
# Warmup Iteration   5: 14.512 ns/op
Iteration   1: 14.600 ns/op
Iteration   2: 14.505 ns/op
Iteration   3: 14.509 ns/op
Iteration   4: 14.527 ns/op
Iteration   5: 14.630 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj":
  14.554 ±(99.9%) 0.220 ns/op [Average]
  (min, avg, max) = (14.505, 14.554, 14.630), stdev = 0.057
  CI (99.9%): [14.334, 14.774] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj:asm":
PrintAssembly processed: 129336 total address lines.
Perf output processed (skipped 56.252 seconds):
 Column 1: cycles (51077 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 581 

                        # {method} {0x00007fcb8047ae60} &apos;branch_escape_obj&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark$HeavyWrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
                        #           [sp+0x30]  (sp of caller)
                        0x00007fcc04639a20:   mov    0x8(%rsi),%r10d
                        0x00007fcc04639a24:   movabs $0x7fcb8b000000,%r11
                        0x00007fcc04639a2e:   add    %r11,%r10
                        0x00007fcc04639a31:   cmp    %r10,%rax
                        0x00007fcc04639a34:   jne    0x00007fcc040c4080           ;   {runtime_call ic_miss_stub}
                        0x00007fcc04639a3a:   xchg   %ax,%ax
                        0x00007fcc04639a3c:   nopl   0x0(%rax)
                      [Verified Entry Point]
   2.65%                0x00007fcc04639a40:   mov    %eax,-0x14000(%rsp)
   6.14%                0x00007fcc04639a47:   push   %rbp
   0.43%                0x00007fcc04639a48:   sub    $0x20,%rsp
   0.79%                0x00007fcc04639a4c:   cmpl   $0x1,0x20(%r15)
   1.57%                0x00007fcc04639a54:   jne    0x00007fcc04639beb           ;*synchronization entry
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@-1 (line 102)
   0.57%                0x00007fcc04639a5a:   mov    %rsi,0x8(%rsp)
   0.80%                0x00007fcc04639a5f:   mov    0x10(%rsi),%edx              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@9 (line 102)
   0.16%                0x00007fcc04639a62:   cmp    $0x100000,%edx
                        0x00007fcc04639a68:   ja     0x00007fcc04639ba9
   1.31%                0x00007fcc04639a6e:   movslq %edx,%rcx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 102)
   0.61%                0x00007fcc04639a71:   mov    0xc(%rsi),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@5 (line 102)
   0.75%                0x00007fcc04639a75:   mov    %r10d,(%rsp)
   3.02%                0x00007fcc04639a79:   lea    (%r10,%r10,1),%r11d
   0.18%                0x00007fcc04639a7d:   mov    %r11d,0x4(%rsp)
   0.54%                0x00007fcc04639a82:   cmp    $0x100000,%edx
          ╭             0x00007fcc04639a88:   ja     0x00007fcc04639b85
   0.50%  │             0x00007fcc04639a8e:   add    $0x17,%rcx
   1.55%  │             0x00007fcc04639a92:   mov    %rcx,%r10
   0.02%  │             0x00007fcc04639a95:   and    $0xfffffffffffffff8,%r10
   0.53%  │             0x00007fcc04639a99:   mov    0x1b8(%r15),%r8
   0.54%  │             0x00007fcc04639aa0:   mov    %r8,%r11
   1.40%  │             0x00007fcc04639aa3:   add    %r10,%r11
   0.02%  │             0x00007fcc04639aa6:   cmp    0x1c8(%r15),%r11
          │╭            0x00007fcc04639aad:   jae    0x00007fcc04639b85
   0.61%  ││            0x00007fcc04639ab3:   mov    %r11,0x1b8(%r15)
   0.51%  ││            0x00007fcc04639aba:   mov    %r8,%rdi
   1.58%  ││            0x00007fcc04639abd:   add    $0x10,%rdi
   0.01%  ││            0x00007fcc04639ac1:   movq   $0x1,(%r8)
   4.95%  ││            0x00007fcc04639ac8:   prefetchw 0xc0(%r11)
   1.04%  ││            0x00007fcc04639ad0:   movl   $0x22c0,0x8(%r8)             ;   {metadata({type array byte})}
   1.50%  ││            0x00007fcc04639ad8:   mov    %edx,0xc(%r8)
   0.41%  ││            0x00007fcc04639adc:   prefetchw 0x100(%r11)
   2.61%  ││            0x00007fcc04639ae4:   prefetchw 0x140(%r11)
   4.43%  ││            0x00007fcc04639aec:   prefetchw 0x180(%r11)
   5.53%  ││            0x00007fcc04639af4:   shr    $0x3,%rcx
   0.25%  ││            0x00007fcc04639af8:   add    $0xfffffffffffffffe,%rcx
   1.14%  ││            0x00007fcc04639afc:   xor    %rax,%rax
   0.50%  ││            0x00007fcc04639aff:   cmp    $0x8,%rcx
          ││╭           0x00007fcc04639b03:   jg     0x00007fcc04639b15
          │││           0x00007fcc04639b05:   dec    %rcx
          │││╭          0x00007fcc04639b08:   js     0x00007fcc04639b59
          ││││↗         0x00007fcc04639b0a:   mov    %rax,(%rdi,%rcx,8)
          │││││         0x00007fcc04639b0e:   dec    %rcx
          ││││╰         0x00007fcc04639b11:   jge    0x00007fcc04639b0a
          ││││ ╭        0x00007fcc04639b13:   jmp    0x00007fcc04639b59
   0.79%  ││↘│ │        0x00007fcc04639b15:   vpxor  %ymm0,%ymm0,%ymm0
   0.28%  ││ │ │╭       0x00007fcc04639b19:   jmp    0x00007fcc04639b2b
   4.69%  ││ │ ││↗      0x00007fcc04639b1e:   vmovdqu %ymm0,(%rdi)
   3.73%  ││ │ │││      0x00007fcc04639b22:   vmovdqu %ymm0,0x20(%rdi)
   2.07%  ││ │ │││      0x00007fcc04639b27:   add    $0x40,%rdi
   2.99%  ││ │ │↘│      0x00007fcc04639b2b:   sub    $0x8,%rcx
          ││ │ │ ╰      0x00007fcc04639b2f:   jge    0x00007fcc04639b1e
   1.41%  ││ │ │        0x00007fcc04639b31:   add    $0x4,%rcx
          ││ │ │  ╭     0x00007fcc04639b35:   jl     0x00007fcc04639b43
          ││ │ │  │     0x00007fcc04639b37:   vmovdqu %ymm0,(%rdi)
          ││ │ │  │     0x00007fcc04639b3b:   add    $0x20,%rdi
          ││ │ │  │     0x00007fcc04639b3f:   sub    $0x4,%rcx
   0.57%  ││ │ │  ↘     0x00007fcc04639b43:   add    $0x4,%rcx
          ││ │ │   ╭    0x00007fcc04639b47:   jle    0x00007fcc04639b59
          ││ │ │   │    0x00007fcc04639b49:   dec    %rcx
          ││ │ │   │↗   0x00007fcc04639b4c:   vmovq  %xmm0,(%rdi)
          ││ │ │   ││   0x00007fcc04639b50:   add    $0x8,%rdi
          ││ │ │   ││   0x00007fcc04639b54:   dec    %rcx
          ││ │ │   │╰   0x00007fcc04639b57:   jge    0x00007fcc04639b4c           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
          ││ │ │   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 102)
   2.68%  ││ ↘ ↘   ↘ ↗  0x00007fcc04639b59:   mov    0x8(%rsp),%r10
   0.07%  ││         │  0x00007fcc04639b5e:   movzbl 0x14(%r10),%ebp              ;*getfield objectEscapes {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@17 (line 106)
   0.84%  ││         │  0x00007fcc04639b63:   test   %ebp,%ebp
          ││         │  0x00007fcc04639b65:   jne    0x00007fcc04639bb1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@20 (line 106)
   0.70%  ││         │  0x00007fcc04639b67:   mov    0x18(%r10),%r10d
   1.92%  ││         │  0x00007fcc04639b6b:   mov    %r10,%rax
   0.00%  ││         │  0x00007fcc04639b6e:   shl    $0x3,%rax                    ;*getfield CACHED_WRAPPER {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@29 (line 109)
   0.02%  ││         │  0x00007fcc04639b72:   add    $0x20,%rsp
   0.67%  ││         │  0x00007fcc04639b76:   pop    %rbp
   1.96%  ││         │  0x00007fcc04639b77:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││         │  0x00007fcc04639b7e:   ja     0x00007fcc04639bd5
   0.33%  ││         │  0x00007fcc04639b84:   ret    
   0.00%  ↘↘         │  0x00007fcc04639b85:   movabs $0x7fcb8b0022c0,%rsi         ;   {metadata({type array byte})}
   0.00%             │  0x00007fcc04639b8f:   mov    0x8(%rsp),%rbp
   0.00%             │  0x00007fcc04639b94:   data16 xchg %ax,%ax
                     │  0x00007fcc04639b97:   call   0x00007fcc04189780           ; ImmutableOopMap {rbp=Oop [8]=Oop }
                     │                                                            ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 102)
                     │                                                            ;   {runtime_call _new_array_Java}
                     │  0x00007fcc04639b9c:   nopl   0x30c(%rax,%rax,1)           ;   {other}
                     │  0x00007fcc04639ba4:   mov    %rax,%r8
                     ╰  0x00007fcc04639ba7:   jmp    0x00007fcc04639b59
                        0x00007fcc04639ba9:   movslq %edx,%rcx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
....................................................................................................
  74.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 619 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@20 (line 194)
              0x00007fcc0463cab5:   mov    0x38(%rsp),%r10
              0x00007fcc0463caba:   nopw   0x0(%rax,%rax,1)
              0x00007fcc0463cac0:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fcc0463cb98
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@30 (line 196)
              0x00007fcc0463cac8:   mov    $0x1,%ebp
              0x00007fcc0463cacd:   test   %r11d,%r11d
          ╭   0x00007fcc0463cad0:   jne    0x00007fcc0463cb05           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@36 (line 197)
   0.50%  │↗  0x00007fcc0463cad2:   mov    0x40(%rsp),%rsi
   0.05%  ││  0x00007fcc0463cad7:   call   0x00007fcc040c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
   1.12%  ││  0x00007fcc0463cadc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
   1.77%  ││  0x00007fcc0463cae4:   mov    0x38(%rsp),%r10
   5.70%  ││  0x00007fcc0463cae9:   movzbl 0x94(%r10),%r11d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@30 (line 196)
   7.90%  ││  0x00007fcc0463caf1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   0.48%  ││  0x00007fcc0463caf5:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   0.13%  ││  0x00007fcc0463cafc:   test   %eax,(%r10)                  ;   {poll}
   0.92%  ││  0x00007fcc0463caff:   nop
   1.96%  ││  0x00007fcc0463cb00:   test   %r11d,%r11d
          │╰  0x00007fcc0463cb03:   je     0x00007fcc0463cad2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@36 (line 197)
          ↘   0x00007fcc0463cb05:   movabs $0x7fcc1a9bdb90,%r10
              0x00007fcc0463cb0f:   call   *%r10
              0x00007fcc0463cb12:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007fcc0463cb1a:   mov    0x30(%rsp),%r10
              0x00007fcc0463cb1f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@40 (line 197)
....................................................................................................
  20.53%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 581 
  20.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 619 
   0.26%              kernel  [unknown] 
   0.23%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.13%           libjvm.so  G1CardSet::reset_table_scanner 
   0.11%           libjvm.so  FreeListAllocator::reset 
   0.10%        libc-2.31.so  __memset_avx2_erms 
   0.10%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.09%           libjvm.so  HeapRegionManager::par_iterate 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%           libjvm.so  ObjArrayAllocator::initialize 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.05%           libjvm.so  HeapRegionClaimer::claim_region 
   0.05%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.05%              [vdso]  __vdso_clock_gettime 
   2.89%  <...other 534 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 581 
  20.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 619 
   1.49%              kernel  [unknown] 
   0.26%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.15%           libjvm.so  FreeListAllocator::reset 
   0.14%           libjvm.so  ObjArrayAllocator::initialize 
   0.13%           libjvm.so  G1CardSet::reset_table_scanner 
   0.10%        libc-2.31.so  __memset_avx2_erms 
   0.10%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.09%                      <unknown> 
   0.09%           libjvm.so  HeapRegionManager::par_iterate 
   0.08%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.06%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.05%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.05%           libjvm.so  HeapRegionClaimer::claim_region 
   0.05%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.05%              [vdso]  __vdso_clock_gettime 
   0.05%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.05%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.05%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   1.57%  <...other 223 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.37%         c2, level 4
   2.55%           libjvm.so
   1.49%              kernel
   0.27%        libc-2.31.so
   0.10%  libpthread-2.31.so
   0.09%                    
   0.05%              [vdso]
   0.04%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%        libjimage.so
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 50.00% complete, ETA 00:03:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.399 ns/op
# Warmup Iteration   2: 6.578 ns/op
# Warmup Iteration   3: 7.368 ns/op
# Warmup Iteration   4: 6.575 ns/op
# Warmup Iteration   5: 6.575 ns/op
Iteration   1: 6.573 ns/op
Iteration   2: 6.575 ns/op
Iteration   3: 6.575 ns/op
Iteration   4: 6.575 ns/op
Iteration   5: 6.576 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape":
  6.575 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (6.573, 6.575, 6.576), stdev = 0.001
  CI (99.9%): [6.571, 6.578] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape:asm":
PrintAssembly processed: 128126 total address lines.
Perf output processed (skipped 56.199 seconds):
 Column 1: cycles (50937 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 608 

             0x00007fb46063c550:   jne    0x00007fb46063c585           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@36 (line 197)
          ↗  0x00007fb46063c552:   mov    0x40(%rsp),%rsi
          │  0x00007fb46063c557:   call   0x00007fb4600c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          │                                                            ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 194)
          │                                                            ;   {optimized virtual_call}
          │  0x00007fb46063c55c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 194)
          │                                                            ;   {other}
   5.82%  │  0x00007fb46063c564:   mov    0x38(%rsp),%r10
  17.44%  │  0x00007fb46063c569:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@30 (line 196)
  23.09%  │  0x00007fb46063c571:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
          │  0x00007fb46063c575:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
          │  0x00007fb46063c57c:   test   %eax,(%r11)                  ;   {poll}
          │  0x00007fb46063c57f:   nop
   5.72%  │  0x00007fb46063c580:   test   %r10d,%r10d
          ╰  0x00007fb46063c583:   je     0x00007fb46063c552           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@36 (line 197)
             0x00007fb46063c585:   movabs $0x7fb47632bb90,%r10
             0x00007fb46063c58f:   call   *%r10
             0x00007fb46063c592:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@37 (line 197)
                                                                       ;   {other}
             0x00007fb46063c59a:   mov    0x30(%rsp),%r10
             0x00007fb46063c59f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@40 (line 197)
....................................................................................................
  52.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 570 

                # {method} {0x00007fb3df47aa68} &apos;no_escape&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fb460638f00:   mov    0x8(%rsi),%r10d
                0x00007fb460638f04:   movabs $0x7fb3e3000000,%r11
                0x00007fb460638f0e:   add    %r11,%r10
                0x00007fb460638f11:   cmp    %r10,%rax
                0x00007fb460638f14:   jne    0x00007fb4600c4080           ;   {runtime_call ic_miss_stub}
                0x00007fb460638f1a:   xchg   %ax,%ax
                0x00007fb460638f1c:   nopl   0x0(%rax)
              [Verified Entry Point]
   5.54%        0x00007fb460638f20:   sub    $0x18,%rsp
                0x00007fb460638f27:   mov    %rbp,0x10(%rsp)
  11.72%        0x00007fb460638f2c:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007fb460638f34:   jne    0x00007fb460638f6b           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@-1 (line 76)
          │  ↗  0x00007fb460638f3a:   mov    0xc(%rsi),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@5 (line 76)
          │  │  0x00007fb460638f3e:   lea    (%r11,%r11,2),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@20 (line 77)
   5.66%  │  │  0x00007fb460638f42:   add    $0x10,%rsp
          │  │  0x00007fb460638f46:   pop    %rbp
  22.61%  │ ↗│  0x00007fb460638f47:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fb460638f4e:   ja     0x00007fb460638f55
          ││││  0x00007fb460638f54:   ret    
          │↘╰│  0x00007fb460638f55:   movabs $0x7fb460638f47,%r10         ;   {internal_word}
          │  │  0x00007fb460638f5f:   mov    %r10,0x468(%r15)
          │  │  0x00007fb460638f66:   jmp    0x00007fb4600cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007fb460638f6b:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007fb460638f70:   jmp    0x00007fb460638f3a
                0x00007fb460638f75:   hlt    
                0x00007fb460638f76:   hlt    
                0x00007fb460638f77:   hlt    
....................................................................................................
  45.53%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 608 
  45.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 570 
   0.72%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.02%  <...other 302 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 608 
  45.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 570 
   2.04%              kernel  [unknown] 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  os::current_thread_id 
   0.01%           libjvm.so  os::javaTimeNanos 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.16%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.60%         c2, level 4
   2.04%              kernel
   0.17%           libjvm.so
   0.10%        libc-2.31.so
   0.06%  libpthread-2.31.so
   0.02%                    
   0.01%              [vdso]
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 75.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.084 ns/op
# Warmup Iteration   2: 7.716 ns/op
# Warmup Iteration   3: 7.845 ns/op
# Warmup Iteration   4: 7.683 ns/op
# Warmup Iteration   5: 7.715 ns/op
Iteration   1: 7.713 ns/op
Iteration   2: 7.705 ns/op
Iteration   3: 7.688 ns/op
Iteration   4: 7.680 ns/op
Iteration   5: 7.679 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj":
  7.693 ±(99.9%) 0.059 ns/op [Average]
  (min, avg, max) = (7.679, 7.693, 7.713), stdev = 0.015
  CI (99.9%): [7.634, 7.752] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj:asm":
PrintAssembly processed: 125170 total address lines.
Perf output processed (skipped 56.062 seconds):
 Column 1: cycles (50760 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 593 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@30 (line 196)
              0x00007fd55063bfc8:   mov    $0x1,%ebp
              0x00007fd55063bfcd:   test   %r11d,%r11d
          ╭   0x00007fd55063bfd0:   jne    0x00007fd55063c005           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@36 (line 197)
          │↗  0x00007fd55063bfd2:   mov    0x40(%rsp),%rsi
          ││  0x00007fd55063bfd7:   call   0x00007fd5500c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
  47.78%  ││  0x00007fd55063bfdc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
          ││  0x00007fd55063bfe4:   mov    0x38(%rsp),%r10
   1.97%  ││  0x00007fd55063bfe9:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@30 (line 196)
  11.12%  ││  0x00007fd55063bff1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
          ││  0x00007fd55063bff5:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
          ││  0x00007fd55063bffc:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fd55063bfff:   nop
   4.98%  ││  0x00007fd55063c000:   test   %r10d,%r10d
          │╰  0x00007fd55063c003:   je     0x00007fd55063bfd2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@36 (line 197)
          ↘   0x00007fd55063c005:   movabs $0x7fd56590cb90,%r10
              0x00007fd55063c00f:   call   *%r10
              0x00007fd55063c012:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007fd55063c01a:   mov    0x30(%rsp),%r10
              0x00007fd55063c01f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@40 (line 197)
....................................................................................................
  65.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 557 

             # {method} {0x00007fd4cf47ac28} &apos;no_escape_array_obj&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007fd550638fa0:   mov    0x8(%rsi),%r10d
             0x00007fd550638fa4:   movabs $0x7fd4d3000000,%r11
             0x00007fd550638fae:   add    %r11,%r10
             0x00007fd550638fb1:   cmp    %r10,%rax
             0x00007fd550638fb4:   jne    0x00007fd5500c4080           ;   {runtime_call ic_miss_stub}
             0x00007fd550638fba:   xchg   %ax,%ax
             0x00007fd550638fbc:   nopl   0x0(%rax)
           [Verified Entry Point]
   4.89%     0x00007fd550638fc0:   mov    %eax,-0x14000(%rsp)
  10.61%     0x00007fd550638fc7:   push   %rbp
             0x00007fd550638fc8:   sub    $0x20,%rsp
   2.07%     0x00007fd550638fcc:   cmpl   $0x1,0x20(%r15)
   2.98%     0x00007fd550638fd4:   jne    0x00007fd550639059           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@-1 (line 89)
             0x00007fd550638fda:   mov    0xc(%rsi),%ebp               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@5 (line 89)
   1.97%     0x00007fd550638fdd:   mov    0x10(%rsi),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@9 (line 89)
             0x00007fd550638fe1:   lea    0x0(,%rbp,2),%eax
   2.74%     0x00007fd550638fe8:   cmp    $0x100000,%r11d
          ╭  0x00007fd550638fef:   ja     0x00007fd550639009           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@-1 (line 89)
          │  0x00007fd550638ff1:   add    %ebp,%eax
   2.01%  │  0x00007fd550638ff3:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@30 (line 90)
          │  0x00007fd550638ff6:   add    $0x20,%rsp
   2.95%  │  0x00007fd550638ffa:   pop    %rbp
          │  0x00007fd550638ffb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fd550639002:   ja     0x00007fd550639043
   1.86%  │  0x00007fd550639008:   ret    
          ↘  0x00007fd550639009:   mov    %eax,0x4(%rsp)
             0x00007fd55063900d:   mov    %r11d,(%rsp)
             0x00007fd550639011:   movabs $0x7fd4d30022c0,%rsi         ;   {metadata({type array byte})}
             0x00007fd55063901b:   mov    %r11d,%edx
             0x00007fd55063901e:   nop
             0x00007fd55063901f:   call   0x00007fd55019a080           ; ImmutableOopMap {}
                                                                       ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 89)
                                                                       ;   {runtime_call _new_array_Java}
....................................................................................................
  32.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 593 
  32.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 557 
   0.43%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.85%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 593 
  32.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 557 
   1.76%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  os::vsnprintf 
   0.12%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.93%         c2, level 4
   1.76%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.03%      hsdis-amd64.so
   0.03%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:15

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

Benchmark                                           (objectEscapes)  (size)  (value)  Mode  Cnt   Score   Error  Units
ScalarReplacementBenchmark.arg_escape_obj                     false     128        3  avgt    5  13.574 ± 0.335  ns/op
ScalarReplacementBenchmark.arg_escape_obj:asm                 false     128        3  avgt          NaN            ---
ScalarReplacementBenchmark.branch_escape_obj                  false     128        3  avgt    5  14.554 ± 0.220  ns/op
ScalarReplacementBenchmark.branch_escape_obj:asm              false     128        3  avgt          NaN            ---
ScalarReplacementBenchmark.no_escape                          false     128        3  avgt    5   6.575 ± 0.003  ns/op
ScalarReplacementBenchmark.no_escape:asm                      false     128        3  avgt          NaN            ---
ScalarReplacementBenchmark.no_escape_array_obj                false     128        3  avgt    5   7.693 ± 0.059  ns/op
ScalarReplacementBenchmark.no_escape_array_obj:asm            false     128        3  avgt          NaN            ---
