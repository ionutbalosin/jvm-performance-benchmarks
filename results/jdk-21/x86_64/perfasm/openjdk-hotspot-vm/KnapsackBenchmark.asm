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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.dynamic

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1119.412 ms/op
# Warmup Iteration   2: 939.582 ms/op
# Warmup Iteration   3: 953.293 ms/op
# Warmup Iteration   4: 933.327 ms/op
# Warmup Iteration   5: 934.779 ms/op
Iteration   1: 931.188 ms/op
Iteration   2: 939.900 ms/op
Iteration   3: 930.758 ms/op
Iteration   4: 936.252 ms/op
Iteration   5: 949.717 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.dynamic":
  937.563 ±(99.9%) 29.941 ms/op [Average]
  (min, avg, max) = (930.758, 937.563, 949.717), stdev = 7.776
  CI (99.9%): [907.622, 967.505] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.dynamic:asm":
PrintAssembly processed: 148638 total address lines.
Perf output processed (skipped 59.643 seconds):
 Column 1: cycles (57227 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 7, compile id 646 

                0x00007f0ec0656607:   jg     0x00007f0ec0656ff0
                0x00007f0ec065660d:   cmp    $0x7ffffffe,%r10d
                0x00007f0ec0656614:   jg     0x00007f0ec0657010
                0x00007f0ec065661a:   mov    %rbp,%r8                     ;*invokeinterface get {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@32 (line 36)
                0x00007f0ec065661d:   mov    $0x1,%edx                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@27 (line 36)
                0x00007f0ec0656622:   mov    0x10(%r8),%ebx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::get@2 (line 427)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@32 (line 36)
   0.01%        0x00007f0ec0656626:   mov    %edx,%edi
                0x00007f0ec0656628:   dec    %edi                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@31 (line 36)
                0x00007f0ec065662a:   test   %ebx,%ebx
                0x00007f0ec065662c:   jl     0x00007f0ec0657030           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Objects::checkIndex@3 (line 385)
                                                                          ; - java.util.ArrayList::get@5 (line 427)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@32 (line 36)
   0.01%        0x00007f0ec0656632:   cmp    %ebx,%edi
                0x00007f0ec0656634:   jae    0x00007f0ec0656f8d
   0.00%        0x00007f0ec065663a:   mov    0x14(%r8),%ebp               ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::elementData@1 (line 411)
                                                                          ; - java.util.ArrayList::get@11 (line 428)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@32 (line 36)
   0.01%        0x00007f0ec065663e:   xchg   %ax,%ax
                0x00007f0ec0656640:   mov    0xc(%r12,%rbp,8),%ebx        ; implicit exception: dispatches to 0x00007f0ec0657268
   0.02%        0x00007f0ec0656645:   cmp    %ebx,%edi
                0x00007f0ec0656647:   jae    0x00007f0ec0656fc0
   0.00%        0x00007f0ec065664d:   lea    (%r12,%rbp,8),%rbx
                0x00007f0ec0656651:   mov    0xc(%rbx,%rdx,4),%ebp        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::elementData@5 (line 411)
                                                                          ; - java.util.ArrayList::get@11 (line 428)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@32 (line 36)
   0.02%        0x00007f0ec0656655:   mov    0x8(%r12,%rbp,8),%ebx        ; implicit exception: dispatches to 0x00007f0ec065727c
   0.05%        0x00007f0ec065665a:   nopw   0x0(%rax,%rax,1)
                0x00007f0ec0656660:   cmp    $0x102a278,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
                0x00007f0ec0656666:   jne    0x00007f0ec0657124           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@37 (line 36)
   0.01%        0x00007f0ec065666c:   test   %r11d,%r11d
                0x00007f0ec065666f:   jl     0x00007f0ec065697c           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@48 (line 37)
                0x00007f0ec0656675:   mov    %esi,(%rsp)
                0x00007f0ec0656678:   vmovd  %ecx,%xmm5
                0x00007f0ec065667c:   vmovq  %r9,%xmm3
   0.00%        0x00007f0ec0656681:   vmovd  %r10d,%xmm1
                0x00007f0ec0656686:   vmovd  %r11d,%xmm2
                0x00007f0ec065668b:   vmovq  %r14,%xmm0
                0x00007f0ec0656690:   lea    (%r12,%rbp,8),%rbx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@37 (line 36)
   0.00%        0x00007f0ec0656694:   mov    0x10(%rbx),%ecx              ;*getfield weight {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@53 (line 38)
                0x00007f0ec0656697:   mov    0xc(%rbx),%esi               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@93 (line 39)
                0x00007f0ec065669a:   movslq %ecx,%r13
   0.00%        0x00007f0ec065669d:   xor    %r10d,%r10d
          ╭     0x00007f0ec06566a0:   jmp    0x00007f0ec06566c5           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@123 (line 37)
          │ ↗   0x00007f0ec06566a2:   mov    0x458(%r15),%r11             ; ImmutableOopMap {xmm0=Oop xmm3=Oop xmm4=Oop xmm6=Oop }
          │ │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@123 (line 37)
   0.02%  │ │   0x00007f0ec06566a9:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@123 (line 37)
          │ │                                                             ;   {poll}
   0.02%  │ │   0x00007f0ec06566ac:   cmp    0x8(%rsp),%r10d
          │ │   0x00007f0ec06566b1:   jge    0x00007f0ec065695c
   0.00%  │ │   0x00007f0ec06566b7:   vmovq  %xmm4,%r8
   0.00%  │ │   0x00007f0ec06566bc:   vmovq  %xmm6,%rbx
   0.00%  │ │   0x00007f0ec06566c1:   mov    0x4(%rsp),%esi               ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@51 (line 38)
   0.01%  ↘ │   0x00007f0ec06566c5:   vmovd  %xmm2,%r9d
            │   0x00007f0ec06566ca:   sub    %r10d,%r9d
            │   0x00007f0ec06566cd:   inc    %r9d
   0.00%    │   0x00007f0ec06566d0:   mov    0x8(%rsp),%r11d
            │   0x00007f0ec06566d5:   xor    %ebp,%ebp
   0.00%    │   0x00007f0ec06566d7:   cmp    %r10d,%r11d
   0.00%    │   0x00007f0ec06566da:   cmovl  %ebp,%r9d
            │   0x00007f0ec06566de:   cmp    $0x3e8,%r9d
   0.01%    │   0x00007f0ec06566e5:   mov    $0x3e8,%r11d
            │   0x00007f0ec06566eb:   cmova  %r11d,%r9d
   0.01%    │   0x00007f0ec06566ef:   add    %r10d,%r9d
   0.01%   ╭│   0x00007f0ec06566f2:   jmp    0x00007f0ec065671f
           ││   0x00007f0ec06566f4:   nopl   0x0(%rax,%rax,1)
           ││   0x00007f0ec06566fc:   data16 data16 xchg %ax,%ax
   2.26%   ││↗  0x00007f0ec0656700:   shl    $0x3,%r11
   2.28%   │││  0x00007f0ec0656704:   mov    %r8d,0x10(%r11,%rax,4)
   2.52%   │││  0x00007f0ec0656709:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@120 (line 37)
   2.31%   │││  0x00007f0ec065670c:   cmp    %r9d,%r10d
           │╰│  0x00007f0ec065670f:   jge    0x00007f0ec06566a2           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@48 (line 37)
   2.22%   │ │  0x00007f0ec0656711:   vmovq  %xmm4,%r8
   2.33%   │ │  0x00007f0ec0656716:   vmovq  %xmm6,%rbx
   2.33%   │ │  0x00007f0ec065671b:   mov    0x4(%rsp),%esi               ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@51 (line 38)
   2.35%   ↘ │  0x00007f0ec065671f:   movslq %r10d,%rax                   ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@119 (line 41)
   2.26%     │  0x00007f0ec0656722:   cmp    %r10d,%ecx
             │  0x00007f0ec0656725:   jg     0x00007f0ec06567f0           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@58 (line 38)
   2.27%     │  0x00007f0ec065672b:   cmp    (%rsp),%edx
             │  0x00007f0ec065672e:   jae    0x00007f0ec065685c
   2.30%     │  0x00007f0ec0656734:   vmovq  %xmm3,%r11
   2.42%     │  0x00007f0ec0656739:   mov    0x10(%r11,%rdx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@64 (line 39)
   2.33%     │  0x00007f0ec065673e:   xchg   %ax,%ax
   2.32%     │  0x00007f0ec0656740:   cmp    (%rsp),%edi
             │  0x00007f0ec0656743:   jae    0x00007f0ec0656890
   2.32%     │  0x00007f0ec0656749:   mov    %esi,0x4(%rsp)
   2.38%     │  0x00007f0ec065674d:   vmovq  %rbx,%xmm6
   2.25%     │  0x00007f0ec0656752:   vmovq  %r8,%xmm4
   2.33%     │  0x00007f0ec0656757:   vmovq  %xmm3,%r8
   2.41%     │  0x00007f0ec065675c:   mov    0xc(%r8,%rdx,4),%ebp         ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@72 (line 39)
   2.32%     │  0x00007f0ec0656761:   mov    0xc(%r12,%rbp,8),%r8d        ; implicit exception: dispatches to 0x00007f0ec065717c
             │                                                            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@75 (line 39)
   2.34%     │  0x00007f0ec0656766:   cmp    %r8d,%r10d
             │  0x00007f0ec0656769:   jae    0x00007f0ec06568d0
   2.36%     │  0x00007f0ec065676f:   mov    %r10d,%r14d
   2.26%     │  0x00007f0ec0656772:   sub    %ecx,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@89 (line 39)
   2.31%     │  0x00007f0ec0656775:   lea    (%r12,%rbp,8),%rsi
   2.38%     │  0x00007f0ec0656779:   mov    0x10(%rsi,%rax,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@75 (line 39)
   2.29%     │  0x00007f0ec065677d:   data16 xchg %ax,%ax
   2.42%     │  0x00007f0ec0656780:   cmp    %r8d,%r14d
             │  0x00007f0ec0656783:   jae    0x00007f0ec0656914
   2.31%     │  0x00007f0ec0656789:   mov    %rax,%r8
   2.26%     │  0x00007f0ec065678c:   sub    %r13,%r8
   2.20%     │  0x00007f0ec065678f:   mov    0x10(%rsi,%r8,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@90 (line 39)
   2.28%     │  0x00007f0ec0656794:   add    0x4(%rsp),%r8d
   2.30%     │  0x00007f0ec0656799:   cmp    %ebx,%r8d
   2.24%     │  0x00007f0ec065679c:   cmovl  %ebx,%r8d                    ;*invokestatic max {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@97 (line 39)
   2.40%     │  0x00007f0ec06567a0:   mov    0xc(%r12,%r11,8),%ebx        ; implicit exception: dispatches to 0x00007f0ec0657194
   2.28%     │  0x00007f0ec06567a5:   cmp    %ebx,%r10d
             ╰  0x00007f0ec06567a8:   jb     0x00007f0ec0656700           ;   {no_reloc}
                0x00007f0ec06567ae:   mov    $0xffffffe4,%esi
                0x00007f0ec06567b3:   vmovd  %xmm2,%ebp
                0x00007f0ec06567b7:   vmovsd %xmm4,(%rsp)
                0x00007f0ec06567bc:   vmovss %xmm1,0x8(%rsp)
                0x00007f0ec06567c2:   vmovsd %xmm3,0x10(%rsp)
                0x00007f0ec06567c8:   mov    %edx,0xc(%rsp)
                0x00007f0ec06567cc:   vmovsd %xmm6,0x18(%rsp)
                0x00007f0ec06567d2:   mov    %r11d,0x24(%rsp)
                0x00007f0ec06567d7:   mov    %r10d,0x28(%rsp)
....................................................................................................
  81.36%  <total for region 1>

....[Hottest Regions]...............................................................................
  81.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 7, compile id 646 
   9.28%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   4.99%        libc-2.31.so  __memset_avx2_erms 
   0.46%              kernel  [unknown] 
   0.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 7, compile id 646 
   0.28%              kernel  [unknown] 
   0.27%           libjvm.so  MemAllocator::allocate 
   0.18%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.12%           libjvm.so  TypeArrayKlass::multi_allocate 
   0.12%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.08%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.07%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 7, compile id 646 
   0.07%           libjvm.so  ObjArrayAllocator::initialize 
   0.07%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.06%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   2.01%  <...other 447 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  81.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 7, compile id 646 
   9.40%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   4.99%        libc-2.31.so  __memset_avx2_erms 
   1.76%              kernel  [unknown] 
   0.48%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.35%           libjvm.so  MemAllocator::allocate 
   0.12%           libjvm.so  TypeArrayKlass::multi_allocate 
   0.12%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   0.10%           libjvm.so  ObjArrayAllocator::initialize 
   0.08%                      <unknown> 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  G1Allocator::survivor_attempt_allocation 
   0.03%           libjvm.so  MemAllocator::Allocation::check_out_of_memory 
   0.03%           libjvm.so  MemAllocator::Allocation::notify_allocation_jvmti_sampler 
   0.03%           libjvm.so  Klass::check_array_allocation_length 
   0.02%           libjvm.so  BitMap::find_first_bit_impl<0ul, false> 
   0.02%           libjvm.so  ObjArrayKlass::multi_allocate 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.54%  <...other 166 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  81.77%         c2, level 4
  14.46%        libc-2.31.so
   1.82%           libjvm.so
   1.76%              kernel
   0.08%                    
   0.05%          ld-2.31.so
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_fractional

# Run progress: 33.33% complete, ETA 00:03:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.568 ms/op
# Warmup Iteration   2: 0.536 ms/op
# Warmup Iteration   3: 0.540 ms/op
# Warmup Iteration   4: 0.536 ms/op
# Warmup Iteration   5: 0.536 ms/op
Iteration   1: 0.536 ms/op
Iteration   2: 0.536 ms/op
Iteration   3: 0.536 ms/op
Iteration   4: 0.536 ms/op
Iteration   5: 0.536 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_fractional":
  0.536 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (0.536, 0.536, 0.536), stdev = 0.001
  CI (99.9%): [0.535, 0.536] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_fractional:asm":
PrintAssembly processed: 163619 total address lines.
Perf output processed (skipped 58.409 seconds):
 Column 1: cycles (50658 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.TimSort::countRunAndMakeAscending, version 2, compile id 625 

   0.00%       0x00007f5e88651b28:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007f5e88651b2f:   ja     0x00007f5e88652c3c
               0x00007f5e88651b35:   ret    
               0x00007f5e88651b36:   data16 nopw 0x0(%rax,%rax,1)
           ↗   0x00007f5e88651b40:   movabs $0x7ff8000000000000,%rdi     ;*invokestatic doubleToLongBits {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - java.lang.Double::compare@23 (line 1284)
           │                                                             ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
           │                                                             ; - java.util.Comparator$$Lambda/0x00007f5e0c0334d8::compare@6
           │                                                             ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │                                                             ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.90%   │↗  0x00007f5e88651b4a:   cmp    %rdi,%r8
           ││  0x00007f5e88651b4d:   jne    0x00007f5e8865236f           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@120 (line 361)
   0.96%  ↗││  0x00007f5e88651b53:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@117 (line 361)
   0.98%  │││  0x00007f5e88651b55:   cmp    %edx,%eax
          │││  0x00007f5e88651b57:   jge    0x00007f5e88652398           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@95 (line 360)
   1.52%  │││  0x00007f5e88651b5d:   vmovq  %r10,%xmm0                   ;*aload_3 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@98 (line 360)
   1.84%  │││  0x00007f5e88651b62:   vmovq  %xmm0,%r10
   0.00%  │││  0x00007f5e88651b67:   mov    0xc(%r10,%rax,4),%r8d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@108 (line 360)
   0.60%  │││  0x00007f5e88651b6c:   mov    0x10(%r10,%rax,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
   1.55%  │││  0x00007f5e88651b71:   mov    0x8(%r12,%r8,8),%esi         ; implicit exception: dispatches to 0x00007f5e88652a18
   2.24%  │││  0x00007f5e88651b76:   data16 nopw 0x0(%rax,%rax,1)
          │││  0x00007f5e88651b80:   cmp    $0x102a278,%esi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
          │││  0x00007f5e88651b86:   jne    0x00007f5e88652860
   0.26%  │││  0x00007f5e88651b8c:   shl    $0x3,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@1 (line 34)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f5e0c02a878::applyAsDouble@1
          │││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │││                                                            ; - java.util.Comparator$$Lambda/0x00007f5e0c0334d8::compare@6
          │││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.41%  │││  0x00007f5e88651b90:   vcvtsi2sdl 0xc(%r8),%xmm0,%xmm0
   2.20%  │││  0x00007f5e88651b96:   vcvtsi2sdl 0x10(%r8),%xmm1,%xmm1
   0.01%  │││  0x00007f5e88651b9c:   vdivsd %xmm1,%xmm0,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@16 (line 34)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f5e0c02a878::applyAsDouble@1
          │││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │││                                                            ; - java.util.Comparator$$Lambda/0x00007f5e0c0334d8::compare@6
          │││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
  29.47%  │││  0x00007f5e88651ba0:   mov    0x8(%r12,%rdi,8),%ebp        ; implicit exception: dispatches to 0x00007f5e886529e9
   0.56%  │││  0x00007f5e88651ba5:   lea    (%r12,%rdi,8),%r8            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
          │││  0x00007f5e88651ba9:   cmp    $0x102a278,%ebp              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
          │││  0x00007f5e88651baf:   jne    0x00007f5e886528d9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@1 (line 34)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f5e0c02a878::applyAsDouble@1
          │││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │││                                                            ; - java.util.Comparator$$Lambda/0x00007f5e0c0334d8::compare@6
          │││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.05%  │││  0x00007f5e88651bb5:   vcvtsi2sdl 0xc(%r8),%xmm1,%xmm1
   4.00%  │││  0x00007f5e88651bbb:   vcvtsi2sdl 0x10(%r8),%xmm3,%xmm3
   0.35%  │││  0x00007f5e88651bc1:   vdivsd %xmm3,%xmm1,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@16 (line 34)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f5e0c02a878::applyAsDouble@1
          │││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │││                                                            ; - java.util.Comparator$$Lambda/0x00007f5e0c0334d8::compare@6
          │││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
  20.65%  │││  0x00007f5e88651bc5:   vucomisd %xmm0,%xmm1
   6.52%  │││  0x00007f5e88651bc9:   ja     0x00007f5e88651b1d           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.Double::compare@3 (line 1277)
          │││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          │││                                                            ; - java.util.Comparator$$Lambda/0x00007f5e0c0334d8::compare@6
          │││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.43%  │││  0x00007f5e88651bcf:   vucomisd %xmm1,%xmm0
          ╰││  0x00007f5e88651bd3:   ja     0x00007f5e88651b53           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.lang.Double::compare@11 (line 1279)
           ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
           ││                                                            ; - java.util.Comparator$$Lambda/0x00007f5e0c0334d8::compare@6
           ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.71%   ││  0x00007f5e88651bd9:   nopl   0x0(%rax)
   0.93%   ││  0x00007f5e88651be0:   vucomisd %xmm0,%xmm0
   0.84%   ││  0x00007f5e88651be4:   jnp    0x00007f5e88652085
           ││  0x00007f5e88651bea:   movabs $0x7ff8000000000000,%r8      ;*invokestatic doubleToLongBits {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.lang.Double::compare@17 (line 1283)
           ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
           ││                                                            ; - java.util.Comparator$$Lambda/0x00007f5e0c0334d8::compare@6
           ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.87%   ││  0x00007f5e88651bf4:   vucomisd %xmm1,%xmm1
           ╰│  0x00007f5e88651bf8:   jp     0x00007f5e88651b40
   0.21%    │  0x00007f5e88651bfe:   vmovq  %xmm1,%rdi                   ;*invokestatic doubleToLongBits {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.Double::compare@23 (line 1284)
            │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
            │                                                            ; - java.util.Comparator$$Lambda/0x00007f5e0c0334d8::compare@6
            │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
            │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.36%    ╰  0x00007f5e88651c03:   jmp    0x00007f5e88651b4a
               0x00007f5e88651c08:   vmovq  %xmm0,%r8                    ;*invokestatic doubleToLongBits {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.Double::compare@17 (line 1283)
                                                                         ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
                                                                         ; - java.util.Comparator$$Lambda/0x00007f5e0c0334d8::compare@6
                                                                         ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
....................................................................................................
  85.44%  <total for region 1>

....[Hottest Regions]...............................................................................
  85.44%         c2, level 4  java.util.TimSort::countRunAndMakeAscending, version 2, compile id 625 
   9.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_fractional, version 2, compile id 680 
   1.79%         c2, level 4  java.util.TimSort::countRunAndMakeAscending, version 2, compile id 625 
   0.60%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.46%              kernel  [unknown] 
   0.24%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 662 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 662 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 662 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  java.util.TimSort::countRunAndMakeAscending, version 2, compile id 625 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   1.35%  <...other 375 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.26%         c2, level 4  java.util.TimSort::countRunAndMakeAscending, version 2, compile id 625 
   9.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_fractional, version 2, compile id 680 
   1.82%              kernel  [unknown] 
   0.60%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.34%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 662 
   0.04%         c2, level 4  java.util.TimSort::sort, version 2, compile id 674 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.01%         c2, level 4  java.lang.invoke.DirectMethodHandle::allocateInstance, version 2, compile id 672 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.19%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.21%         c2, level 4
   1.82%              kernel
   0.60%        runtime stub
   0.19%           libjvm.so
   0.09%        libc-2.31.so
   0.03%                    
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%    perf-1937838.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_zero_one

# Run progress: 66.67% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.809 ms/op
# Warmup Iteration   2: 0.773 ms/op
# Warmup Iteration   3: 0.769 ms/op
# Warmup Iteration   4: 0.755 ms/op
# Warmup Iteration   5: 0.769 ms/op
Iteration   1: 0.769 ms/op
Iteration   2: 0.757 ms/op
Iteration   3: 0.768 ms/op
Iteration   4: 0.769 ms/op
Iteration   5: 0.769 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_zero_one":
  0.766 ±(99.9%) 0.021 ms/op [Average]
  (min, avg, max) = (0.757, 0.766, 0.769), stdev = 0.005
  CI (99.9%): [0.745, 0.787] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_zero_one:asm":
PrintAssembly processed: 161757 total address lines.
Perf output processed (skipped 58.384 seconds):
 Column 1: cycles (50744 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.TimSort::countRunAndMakeAscending, version 5, compile id 648 

                   0x00007fd53465910e:   jne    0x00007fd534659b5c
                   0x00007fd534659114:   mov    %ecx,%ebp
                   0x00007fd534659116:   sub    %eax,%ebp
                   0x00007fd534659118:   cmp    %eax,%ecx
                   0x00007fd53465911a:   cmovl  %ebx,%ebp
                   0x00007fd53465911d:   cmp    $0x3e8,%ebp
                   0x00007fd534659123:   cmova  %r11d,%ebp
                   0x00007fd534659127:   add    %eax,%ebp
                   0x00007fd534659129:   jmp    0x00007fd534659253           ;*aload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.TimSort::countRunAndMakeAscending@98 (line 360)
   0.00%           0x00007fd53465912e:   mov    %ecx,%esi
                   0x00007fd534659130:   sub    %eax,%esi
                   0x00007fd534659132:   cmp    %eax,%ecx
                   0x00007fd534659134:   cmovl  %ebx,%esi
   0.01%           0x00007fd534659137:   cmp    $0x3e8,%esi
                   0x00007fd53465913d:   cmova  %r11d,%esi
   0.00%           0x00007fd534659141:   add    %eax,%esi
   0.01%  ╭        0x00007fd534659143:   jmp    0x00007fd534659173
          │        0x00007fd534659145:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   ↗    0x00007fd534659150:   movabs $0x7ff8000000000000,%rdi     ;*invokestatic doubleToLongBits {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                              ; - java.lang.Double::compare@23 (line 1284)
          │   │                                                              ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          │   │                                                              ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
          │   │                                                              ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │   │                                                              ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │   │↗   0x00007fd53465915a:   nopw   0x0(%rax,%rax,1)
   0.00%  │   ││   0x00007fd534659160:   cmp    %rdi,%r8
          │╭  ││   0x00007fd534659163:   jne    0x00007fd534659210           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                             ; - java.util.TimSort::countRunAndMakeAscending@120 (line 361)
   1.54%  ││ ↗││↗  0x00007fd534659169:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - java.util.TimSort::countRunAndMakeAscending@117 (line 361)
   1.94%  ││ ││││  0x00007fd53465916b:   cmp    %esi,%eax
          ││ ││││  0x00007fd53465916d:   jge    0x00007fd534659a5f           ;*aload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - java.util.TimSort::countRunAndMakeAscending@98 (line 360)
   0.10%  ↘│ ││││  0x00007fd534659173:   mov    0xc(%r14,%rax,4),%edx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - java.util.TimSort::countRunAndMakeAscending@108 (line 360)
   0.28%   │ ││││  0x00007fd534659178:   mov    0x10(%r14,%rax,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
   0.75%   │ ││││  0x00007fd53465917d:   data16 xchg %ax,%ax
   1.57%   │ ││││  0x00007fd534659180:   mov    0x8(%r12,%rdx,8),%r8d        ; implicit exception: dispatches to 0x00007fd53465a080
   0.29%   │ ││││  0x00007fd534659185:   cmp    $0x102a278,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
           │ ││││  0x00007fd53465918c:   jne    0x00007fd534659f40
   0.07%   │ ││││  0x00007fd534659192:   lea    (%r12,%rdx,8),%r8            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@1 (line 34)
           │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007fd4b802ac90::applyAsDouble@1
           │ ││││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
           │ ││││                                                            ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
           │ ││││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │ ││││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.83%   │ ││││  0x00007fd534659196:   vcvtsi2sdl 0xc(%r8),%xmm2,%xmm2
   1.91%   │ ││││  0x00007fd53465919c:   vcvtsi2sdl 0x10(%r8),%xmm3,%xmm3
   0.01%   │ ││││  0x00007fd5346591a2:   vdivsd %xmm3,%xmm2,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@16 (line 34)
           │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007fd4b802ac90::applyAsDouble@1
           │ ││││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
           │ ││││                                                            ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
           │ ││││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │ ││││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
  20.50%   │ ││││  0x00007fd5346591a6:   mov    0x8(%r12,%rdi,8),%r8d        ; implicit exception: dispatches to 0x00007fd53465a0b4
   0.39%   │ ││││  0x00007fd5346591ab:   cmp    $0x102a278,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
           │ ││││  0x00007fd5346591b2:   jne    0x00007fd534659fac
   0.02%   │ ││││  0x00007fd5346591b8:   lea    (%r12,%rdi,8),%r8            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@1 (line 34)
           │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007fd4b802ac90::applyAsDouble@1
           │ ││││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
           │ ││││                                                            ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
           │ ││││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │ ││││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
           │ ││││  0x00007fd5346591bc:   vcvtsi2sdl 0xc(%r8),%xmm3,%xmm3
   2.61%   │ ││││  0x00007fd5346591c2:   vcvtsi2sdl 0x10(%r8),%xmm4,%xmm4
   0.18%   │ ││││  0x00007fd5346591c8:   vdivsd %xmm4,%xmm3,%xmm3            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@16 (line 34)
           │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007fd4b802ac90::applyAsDouble@1
           │ ││││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
           │ ││││                                                            ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
           │ ││││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │ ││││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
  14.77%   │ ││││  0x00007fd5346591cc:   vucomisd %xmm2,%xmm3
   2.41%   │╭││││  0x00007fd5346591d0:   ja     0x00007fd534659219           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - java.lang.Double::compare@3 (line 1277)
           ││││││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
           ││││││                                                            ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
           ││││││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           ││││││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   2.50%   ││││││  0x00007fd5346591d6:   vucomisd %xmm3,%xmm2
           ││││││  0x00007fd5346591da:   nopw   0x0(%rax,%rax,1)
   0.90%   ││╰│││  0x00007fd5346591e0:   ja     0x00007fd534659169           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           ││ │││                                                            ; - java.lang.Double::compare@11 (line 1279)
           ││ │││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
           ││ │││                                                            ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
           ││ │││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           ││ │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.19%   ││ │││  0x00007fd5346591e2:   vucomisd %xmm2,%xmm2
   1.34%   ││ │││  0x00007fd5346591e6:   jnp    0x00007fd5346592e8
           ││ │││  0x00007fd5346591ec:   movabs $0x7ff8000000000000,%r8      ;*invokestatic doubleToLongBits {reexecute=0 rethrow=0 return_oop=0}
           ││ │││                                                            ; - java.lang.Double::compare@17 (line 1283)
           ││ │││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
           ││ │││                                                            ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
           ││ │││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           ││ │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.62%   ││ │││  0x00007fd5346591f6:   vucomisd %xmm3,%xmm3
           ││ │││  0x00007fd5346591fa:   nopw   0x0(%rax,%rax,1)
           ││ ╰││  0x00007fd534659200:   jp     0x00007fd534659150
   0.90%   ││  ││  0x00007fd534659206:   vmovq  %xmm3,%rdi                   ;*invokestatic doubleToLongBits {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - java.lang.Double::compare@23 (line 1284)
           ││  ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
           ││  ││                                                            ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
           ││  ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           ││  ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.52%   ││  ╰│  0x00007fd53465920b:   jmp    0x00007fd53465915a
           ↘│   │  0x00007fd534659210:   cmp    %rdi,%r8
            │   ╰  0x00007fd534659213:   jge    0x00007fd534659169           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - java.lang.Double::compare@45 (line 1287)
            │                                                                ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
            │                                                                ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
            │                                                                ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
            │                                                                ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
            ↘      0x00007fd534659219:   vmovd  %xmm0,%r11d                  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.TimSort::countRunAndMakeAscending@95 (line 360)
                   0x00007fd53465921e:   sub    %r11d,%eax                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.TimSort::countRunAndMakeAscending@126 (line 364)
                   0x00007fd534659221:   add    $0x40,%rsp
                   0x00007fd534659225:   pop    %rbp
   0.00%           0x00007fd534659226:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                   0x00007fd53465922d:   ja     0x00007fd53465a33c
                   0x00007fd534659233:   ret    
                   0x00007fd534659234:   movabs $0x7ff8000000000000,%rdi     ;*invokestatic doubleToLongBits {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.Double::compare@23 (line 1284)
                                                                             ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
                                                                             ; - java.util.Comparator$$Lambda/0x00007fd4b80334d8::compare@6
                                                                             ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
                                                                             ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
                   0x00007fd53465923e:   xchg   %ax,%ax
                   0x00007fd534659240:   cmp    %rdi,%r10
....................................................................................................
  59.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 2, compile id 679 

                0x00007fd5346652cd:   mov    0xc(%r10),%r9d               ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList$Itr::&lt;init&gt;@19 (line 1038)
                                                                          ; - java.util.ArrayList::iterator@5 (line 1029)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@30 (line 40)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
                0x00007fd5346652d1:   mov    $0xffffffff,%edi
                0x00007fd5346652d6:   xor    %r11d,%r11d
                0x00007fd5346652d9:   xor    %r10d,%r10d
                0x00007fd5346652dc:   nopl   0x0(%rax)
          ╭     0x00007fd5346652e0:   jmp    0x00007fd534665380
   0.02%  │  ↗  0x00007fd5346652e5:   lea    (%r12,%rdi,8),%rax           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.ArrayList::add@11 (line 484)
          │  │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.03%  │  │  0x00007fd5346652e9:   mov    0xc(%rax),%ebx
   0.08%  │  │  0x00007fd5346652ec:   cmp    %ebx,%ebp
          │  │  0x00007fd5346652ee:   jae    0x00007fd534665668
   0.12%  │  │  0x00007fd5346652f4:   mov    0x8(%rax),%ebx
   0.01%  │  │  0x00007fd5346652f7:   nopw   0x0(%rax,%rax,1)
   0.03%  │  │  0x00007fd534665300:   cmp    $0x1258,%ebx                 ;   {metadata(&apos;java/lang/Object&apos;[])}
          │  │  0x00007fd534665306:   jne    0x00007fd5346656a0
   0.06%  │  │  0x00007fd53466530c:   lea    0x10(%rax,%rbp,4),%rbx
   0.13%  │  │  0x00007fd534665311:   cmpb   $0x0,0x40(%r15)
   0.01%  │  │  0x00007fd534665316:   jne    0x00007fd53466547f
   0.02%  │  │  0x00007fd53466531c:   mov    %r13,%rdi
   0.06%  │  │  0x00007fd53466531f:   mov    %r13,%rdx
   0.13%  │  │  0x00007fd534665322:   shr    $0x3,%rdx
   0.01%  │  │  0x00007fd534665326:   mov    %edx,(%rbx)
   0.04%  │  │  0x00007fd534665328:   inc    %ebp
   0.06%  │  │  0x00007fd53466532a:   xor    %rbx,%rdi
   0.12%  │  │  0x00007fd53466532d:   shr    $0x15,%rdi
   0.02%  │  │  0x00007fd534665331:   test   %rdi,%rdi
          │╭ │  0x00007fd534665334:   je     0x00007fd534665350
   0.03%  ││ │  0x00007fd534665336:   shr    $0x9,%rbx
   0.08%  ││ │  0x00007fd53466533a:   movabs $0x7fd52833f000,%rdi
   0.09%  ││ │  0x00007fd534665344:   add    %rbx,%rdi
   0.00%  ││ │  0x00007fd534665347:   cmpb   $0x2,(%rdi)
   0.04%  ││ │  0x00007fd53466534a:   jne    0x00007fd5346654b0           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.ArrayList::add@14 (line 484)
          ││ │                                                            ; - java.util.ArrayList::add@20 (line 496)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.09%  │↘ │  0x00007fd534665350:   mov    %ebp,0x10(%rcx)              ;*putfield size {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.ArrayList::add@19 (line 485)
          │  │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.11%  │  │  0x00007fd534665353:   add    0x10(%r13),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@85 (line 43)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.01%  │  │  0x00007fd534665357:   nopw   0x0(%rax,%rax,1)             ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.ArrayList::add@14 (line 484)
          │  │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   1.10%  │ ↗│  0x00007fd534665360:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rcx=Oop [64]=Oop }
          │ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@87 (line 45)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.54%  │ ││  0x00007fd534665367:   test   %eax,(%rbx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@87 (line 45)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
          │ ││                                                            ;   {poll}
   0.34%  │ ││  0x00007fd534665369:   mov    0x40(%rsp),%rbx
   0.43%  │ ││  0x00007fd53466536e:   mov    0x10(%rbx),%edi
   1.16%  │ ││  0x00007fd534665371:   cmp    %edi,%r8d
          │ ││  0x00007fd534665374:   je     0x00007fd53466552e
   0.55%  │ ││  0x00007fd53466537a:   mov    %r11d,%edi
   0.37%  │ ││  0x00007fd53466537d:   mov    %r8d,%r11d                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@47 (line 40)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.39%  ↘ ││  0x00007fd534665380:   mov    0x40(%rsp),%r8
   1.11%    ││  0x00007fd534665385:   mov    0xc(%r8),%ebx                ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1094)
            ││                                                            ; - java.util.ArrayList$Itr::next@1 (line 1049)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.63%    ││  0x00007fd534665389:   cmp    %r9d,%ebx
            ││  0x00007fd53466538c:   jne    0x00007fd5346655e0           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1094)
            ││                                                            ; - java.util.ArrayList$Itr::next@1 (line 1049)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.33%    ││  0x00007fd534665392:   mov    0x10(%r8),%ebx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.ArrayList$Itr::next@14 (line 1051)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.47%    ││  0x00007fd534665396:   cmp    %ebx,%r11d
            ││  0x00007fd534665399:   jge    0x00007fd53466560c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.ArrayList$Itr::next@17 (line 1051)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   1.07%    ││  0x00007fd53466539f:   mov    0x14(%r8),%ebx               ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.ArrayList$Itr::next@32 (line 1053)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.61%    ││  0x00007fd5346653a3:   mov    0xc(%r12,%rbx,8),%edx        ; implicit exception: dispatches to 0x00007fd5346657ec
            ││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.ArrayList$Itr::next@38 (line 1054)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.34%    ││  0x00007fd5346653a8:   cmp    %edx,%r11d
            ││  0x00007fd5346653ab:   jge    0x00007fd53466563c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.ArrayList$Itr::next@39 (line 1054)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.38%    ││  0x00007fd5346653b1:   mov    %r11d,%r8d
   1.12%    ││  0x00007fd5346653b4:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.ArrayList$Itr::next@53 (line 1056)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.58%    ││  0x00007fd5346653b7:   cmp    %edx,%r11d
   0.32%    ││  0x00007fd5346653ba:   nopw   0x0(%rax,%rax,1)
   0.38%    ││  0x00007fd5346653c0:   jae    0x00007fd5346655b4
   1.45%    ││  0x00007fd5346653c6:   shl    $0x3,%rbx
   0.58%    ││  0x00007fd5346653ca:   mov    0x10(%rbx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.39%    ││  0x00007fd5346653cf:   mov    0x8(%r12,%rdi,8),%ebx        ; implicit exception: dispatches to 0x00007fd534665800
  12.34%    ││  0x00007fd5346653d4:   nopl   0x0(%rax,%rax,1)
   0.66%    ││  0x00007fd5346653dc:   data16 data16 xchg %ax,%ax
   0.33%    ││  0x00007fd5346653e0:   cmp    $0x102a278,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
            ││  0x00007fd5346653e6:   jne    0x00007fd5346657c0
   1.26%    ││  0x00007fd5346653ec:   lea    (%r12,%rdi,8),%r13           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@54 (line 40)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.20%    ││  0x00007fd5346653f0:   mov    %r10d,%edi
   0.75%    ││  0x00007fd5346653f3:   add    0x10(%r13),%edi
   4.15%    ││  0x00007fd5346653f7:   nopw   0x0(%rax,%rax,1)
   0.48%    ││  0x00007fd534665400:   cmp    $0x1388,%edi
            ╰│  0x00007fd534665406:   jg     0x00007fd534665360           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@67 (line 41)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.10%     │  0x00007fd53466540c:   incl   0xc(%rcx)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.ArrayList::add@7 (line 495)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.11%     │  0x00007fd53466540f:   mov    0x14(%rcx),%edi              ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.ArrayList::add@13 (line 496)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.10%     │  0x00007fd534665412:   mov    0xc(%r12,%rdi,8),%ebx        ; implicit exception: dispatches to 0x00007fd534665828
             │                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.ArrayList::add@2 (line 482)
             │                                                            ; - java.util.ArrayList::add@20 (line 496)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.01%     │  0x00007fd534665417:   mov    0x10(%rcx),%ebp              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.ArrayList::add@17 (line 496)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.03%     │  0x00007fd53466541a:   cmp    %ebx,%ebp
   0.08%     │  0x00007fd53466541c:   nopl   0x0(%rax)
   0.14%     ╰  0x00007fd534665420:   jne    0x00007fd5346652e5           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::add@3 (line 482)
                                                                          ; - java.util.ArrayList::add@20 (line 496)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
                0x00007fd534665426:   mov    %r13,0x18(%rsp)
                0x00007fd53466542b:   mov    %r8d,0x14(%rsp)
                0x00007fd534665430:   mov    %r10d,0x10(%rsp)
                0x00007fd534665435:   mov    %r9d,0x4(%rsp)
                0x00007fd53466543a:   mov    %rcx,0x8(%rsp)
                0x00007fd53466543f:   mov    %r11d,(%rsp)                 ;*synchronization entry
....................................................................................................
  36.76%  <total for region 2>

....[Hottest Regions]...............................................................................
  59.16%         c2, level 4  java.util.TimSort::countRunAndMakeAscending, version 5, compile id 648 
  36.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 2, compile id 679 
   0.85%         c2, level 4  java.util.TimSort::countRunAndMakeAscending, version 5, compile id 648 
   0.71%              kernel  [unknown] 
   0.40%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.12%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 670 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.35%  <...other 389 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  60.03%         c2, level 4  java.util.TimSort::countRunAndMakeAscending, version 5, compile id 648 
  36.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 2, compile id 679 
   2.27%              kernel  [unknown] 
   0.41%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.17%         c2, level 4  java.util.ArrayList::grow, version 2, compile id 670 
   0.04%                      <unknown> 
   0.03%         c2, level 4  java.util.TimSort::sort, version 2, compile id 676 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%         c2, level 4  java.util.Comparator$$Lambda.0x00007fd4b80334d8::&lt;init&gt;, version 2, compile id 682 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.jmh_generated.KnapsackBenchmark_greedy_zero_one_jmhTest::greedy_zero_one_avgt_jmhStub, version 2, compile id 734 
   0.01%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.00%    perf-1937902.map  [unknown] 
   0.00%         interpreter  fast_aaccess_0  222 fast_aaccess_0  
   0.00%         c2, level 4  java.lang.invoke.DirectMethodHandle::allocateInstance, version 2, compile id 674 
   0.20%  <...other 88 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.00%         c2, level 4
   2.27%              kernel
   0.41%        runtime stub
   0.14%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.01%          ld-2.31.so
   0.00%    perf-1937902.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:36

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
KnapsackBenchmark.dynamic                avgt    5  937.563 ± 29.941  ms/op
KnapsackBenchmark.dynamic:asm            avgt           NaN             ---
KnapsackBenchmark.greedy_fractional      avgt    5    0.536 ±  0.001  ms/op
KnapsackBenchmark.greedy_fractional:asm  avgt           NaN             ---
KnapsackBenchmark.greedy_zero_one        avgt    5    0.766 ±  0.021  ms/op
KnapsackBenchmark.greedy_zero_one:asm    avgt           NaN             ---
