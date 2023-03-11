# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_baseline
# Parameters: (size = 64)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.435 ns/op
# Warmup Iteration   2: 13.449 ns/op
# Warmup Iteration   3: 15.660 ns/op
# Warmup Iteration   4: 15.656 ns/op
# Warmup Iteration   5: 13.472 ns/op
Iteration   1: 13.098 ns/op
Iteration   2: 13.129 ns/op
Iteration   3: 13.072 ns/op
Iteration   4: 13.681 ns/op
Iteration   5: 13.484 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_baseline":
  13.293 ±(99.9%) 1.056 ns/op [Average]
  (min, avg, max) = (13.072, 13.293, 13.681), stdev = 0.274
  CI (99.9%): [12.237, 14.348] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:·asm":
PrintAssembly processed: 113778 total address lines.
Perf output processed (skipped 55.518 seconds):
 Column 1: cycles (50863 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 463 

                # {method} {0x00007f2047875208} &apos;array_baseline&apos; &apos;()[B&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f2080f63620:   mov    0x8(%rsi),%r10d
                0x00007f2080f63624:   movabs $0x800000000,%r11
                0x00007f2080f6362e:   add    %r11,%r10
                0x00007f2080f63631:   cmp    %r10,%rax
                0x00007f2080f63634:   jne    0x00007f20809fbd80           ;   {runtime_call ic_miss_stub}
                0x00007f2080f6363a:   xchg   %ax,%ax
                0x00007f2080f6363c:   nopl   0x0(%rax)
              [Verified Entry Point]
   2.80%        0x00007f2080f63640:   mov    %eax,-0x14000(%rsp)
   5.91%        0x00007f2080f63647:   push   %rbp
   0.23%        0x00007f2080f63648:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@-1 (line 154)
   0.44%        0x00007f2080f6364c:   mov    0xc(%rsi),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@1 (line 154)
   2.31%        0x00007f2080f6364f:   cmp    $0x100000,%edx
                0x00007f2080f63655:   ja     0x00007f2080f63762
   0.25%        0x00007f2080f6365b:   movslq %edx,%rcx
   0.44%        0x00007f2080f6365e:   xchg   %ax,%ax
   0.02%        0x00007f2080f63660:   cmp    $0x100000,%edx
                0x00007f2080f63666:   ja     0x00007f2080f6374d
   2.07%        0x00007f2080f6366c:   add    $0x17,%rcx
   0.24%        0x00007f2080f63670:   mov    %rcx,%r10
   0.43%        0x00007f2080f63673:   and    $0xfffffffffffffff8,%r10
   0.10%        0x00007f2080f63677:   mov    0x108(%r15),%r8
   2.12%        0x00007f2080f6367e:   mov    %r8,%r11
   0.23%        0x00007f2080f63681:   add    %r10,%r11
   0.38%        0x00007f2080f63684:   cmp    0x118(%r15),%r11
                0x00007f2080f6368b:   jae    0x00007f2080f6374d
   0.19%        0x00007f2080f63691:   mov    %r11,0x108(%r15)
   2.51%        0x00007f2080f63698:   mov    %r8,%rdi
   0.17%        0x00007f2080f6369b:   add    $0x10,%rdi
   0.02%        0x00007f2080f6369f:   movq   $0x1,(%r8)
   0.32%        0x00007f2080f636a6:   prefetchw 0xc0(%r11)
   4.04%        0x00007f2080f636ae:   movl   $0x6848,0x8(%r8)             ;   {metadata({type array byte})}
   0.51%        0x00007f2080f636b6:   mov    %edx,0xc(%r8)
   0.18%        0x00007f2080f636ba:   prefetchw 0x100(%r11)
   0.31%        0x00007f2080f636c2:   prefetchw 0x140(%r11)
   2.93%        0x00007f2080f636ca:   prefetchw 0x180(%r11)
   3.01%        0x00007f2080f636d2:   shr    $0x3,%rcx
   0.11%        0x00007f2080f636d6:   add    $0xfffffffffffffffe,%rcx
   0.15%        0x00007f2080f636da:   xor    %rax,%rax
   2.08%        0x00007f2080f636dd:   cmp    $0x8,%rcx
          ╭     0x00007f2080f636e1:   jg     0x00007f2080f636f3
   0.45%  │     0x00007f2080f636e3:   dec    %rcx
   0.11%  │     0x00007f2080f636e6:   js     0x00007f2080f63737
   3.87%  │↗    0x00007f2080f636e8:   mov    %rax,(%rdi,%rcx,8)
  24.68%  ││    0x00007f2080f636ec:   dec    %rcx
          │╰    0x00007f2080f636ef:   jge    0x00007f2080f636e8
          │     0x00007f2080f636f1:   jmp    0x00007f2080f63737
          ↘     0x00007f2080f636f3:   vpxor  %ymm0,%ymm0,%ymm0
            ╭   0x00007f2080f636f7:   jmp    0x00007f2080f63709
            │↗  0x00007f2080f636fc:   vmovdqu %ymm0,(%rdi)
            ││  0x00007f2080f63700:   vmovdqu %ymm0,0x20(%rdi)
            ││  0x00007f2080f63705:   add    $0x40,%rdi
            ↘│  0x00007f2080f63709:   sub    $0x8,%rcx
             ╰  0x00007f2080f6370d:   jge    0x00007f2080f636fc
                0x00007f2080f6370f:   add    $0x4,%rcx
....................................................................................................
  63.59%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 502 

              0x00007f2080f67ea6:   mov    0x38(%rsp),%r10
              0x00007f2080f67eab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f2080f67f60
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@30 (line 192)
              0x00007f2080f67eb3:   mov    $0x1,%ebp
              0x00007f2080f67eb8:   test   %r11d,%r11d
          ╭   0x00007f2080f67ebb:   jne    0x00007f2080f67eec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 192)
          │   0x00007f2080f67ebd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@36 (line 193)
   2.53%  │↗  0x00007f2080f67ec0:   mov    0x40(%rsp),%rsi
   0.06%  ││  0x00007f2080f67ec5:   xchg   %ax,%ax
   0.00%  ││  0x00007f2080f67ec7:   call   0x00007f20809fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual array_baseline {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
   2.48%  ││  0x00007f2080f67ecc:   mov    0x38(%rsp),%r10
  11.24%  ││  0x00007f2080f67ed1:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 192)
   9.92%  ││  0x00007f2080f67ed9:   mov    0x348(%r15),%r10
   0.07%  ││  0x00007f2080f67ee0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 192)
   0.01%  ││  0x00007f2080f67ee4:   test   %eax,(%r10)                  ;   {poll}
   0.45%  ││  0x00007f2080f67ee7:   test   %r11d,%r11d
          │╰  0x00007f2080f67eea:   je     0x00007f2080f67ec0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@36 (line 193)
          ↘   0x00007f2080f67eec:   movabs $0x7f2095041d10,%r10
              0x00007f2080f67ef6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@37 (line 193)
              0x00007f2080f67ef9:   mov    0x30(%rsp),%r10
              0x00007f2080f67efe:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@40 (line 193)
              0x00007f2080f67f02:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@46 (line 194)
....................................................................................................
  26.75%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 463 
  26.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 502 
   5.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 463 
   0.96%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%           libjvm.so  HeapRegionClaimer::claim_region 
   0.06%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ObjArrayAllocator::initialize 
   0.04%                      <unknown> 
   0.04%           libjvm.so  G1FromCardCache::clear 
   0.04%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  TypeArrayKlass::allocate_common 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   2.01%  <...other 470 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 463 
  26.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 502 
   1.98%              kernel  [unknown] 
   0.23%                      <unknown> 
   0.07%           libjvm.so  ObjArrayAllocator::initialize 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%           libjvm.so  HeapRegionClaimer::claim_region 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  TypeArrayKlass::allocate_common 
   0.04%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.04%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%           libjvm.so  G1Policy::preventive_collection_required 
   0.04%           libjvm.so  G1FromCardCache::clear 
   0.04%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.04%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  OptoRuntime::new_array_C 
   0.03%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.03%           libjvm.so  SpinPause 
   0.03%           libjvm.so  ThreadLocalAllocBuffer::fill 
   0.88%  <...other 163 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.25%         c2, level 4
   1.98%              kernel
   1.37%           libjvm.so
   0.23%                    
   0.07%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse
# Parameters: (size = 64)

# Run progress: 12.50% complete, ETA 00:12:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.976 ns/op
# Warmup Iteration   2: 12.677 ns/op
# Warmup Iteration   3: 13.923 ns/op
# Warmup Iteration   4: 12.719 ns/op
# Warmup Iteration   5: 12.732 ns/op
Iteration   1: 12.786 ns/op
Iteration   2: 12.644 ns/op
Iteration   3: 12.544 ns/op
Iteration   4: 12.707 ns/op
Iteration   5: 12.659 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse":
  12.668 ±(99.9%) 0.341 ns/op [Average]
  (min, avg, max) = (12.544, 12.668, 12.786), stdev = 0.089
  CI (99.9%): [12.327, 13.009] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse:·asm":
PrintAssembly processed: 115545 total address lines.
Perf output processed (skipped 55.614 seconds):
 Column 1: cycles (50710 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 471 

                # {method} {0x00007f0f898752f8} &apos;array_dse&apos; &apos;()[B&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x30]  (sp of caller)
                0x00007f0fa8f63e20:   mov    0x8(%rsi),%r10d
                0x00007f0fa8f63e24:   movabs $0x800000000,%r11
                0x00007f0fa8f63e2e:   add    %r11,%r10
                0x00007f0fa8f63e31:   cmp    %r10,%rax
                0x00007f0fa8f63e34:   jne    0x00007f0fa89fbd80           ;   {runtime_call ic_miss_stub}
                0x00007f0fa8f63e3a:   xchg   %ax,%ax
                0x00007f0fa8f63e3c:   nopl   0x0(%rax)
              [Verified Entry Point]
   2.78%        0x00007f0fa8f63e40:   mov    %eax,-0x14000(%rsp)
   2.13%        0x00007f0fa8f63e47:   push   %rbp
   0.29%        0x00007f0fa8f63e48:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse@-1 (line 162)
   1.99%        0x00007f0fa8f63e4c:   mov    %rsi,(%rsp)
   0.68%        0x00007f0fa8f63e50:   mov    0xc(%rsi),%ebp               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse@1 (line 162)
   0.47%        0x00007f0fa8f63e53:   cmp    $0x100000,%ebp
                0x00007f0fa8f63e59:   ja     0x00007f0fa8f63fa2           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse@4 (line 162)
   1.97%        0x00007f0fa8f63e5f:   nop
   0.06%        0x00007f0fa8f63e60:   cmp    $0x100000,%ebp
                0x00007f0fa8f63e66:   ja     0x00007f0fa8f63fb9           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse@11 (line 163)
   0.73%        0x00007f0fa8f63e6c:   cmp    $0x100000,%ebp
                0x00007f0fa8f63e72:   ja     0x00007f0fa8f63fd1           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse@18 (line 164)
   0.26%        0x00007f0fa8f63e78:   nopl   0x0(%rax,%rax,1)
   1.92%        0x00007f0fa8f63e80:   cmp    $0x100000,%ebp
                0x00007f0fa8f63e86:   ja     0x00007f0fa8f63fe9
   0.07%        0x00007f0fa8f63e8c:   movslq %ebp,%rcx
   0.69%        0x00007f0fa8f63e8f:   cmp    $0x100000,%ebp
                0x00007f0fa8f63e95:   ja     0x00007f0fa8f63f89
   0.29%        0x00007f0fa8f63e9b:   add    $0x17,%rcx
   2.00%        0x00007f0fa8f63e9f:   mov    %rcx,%r10
   0.07%        0x00007f0fa8f63ea2:   and    $0xfffffffffffffff8,%r10
   0.63%        0x00007f0fa8f63ea6:   mov    0x108(%r15),%r8
   0.29%        0x00007f0fa8f63ead:   mov    %r8,%r11
   2.02%        0x00007f0fa8f63eb0:   add    %r10,%r11
   0.09%        0x00007f0fa8f63eb3:   nopw   0x0(%rax,%rax,1)
   0.67%        0x00007f0fa8f63ebc:   data16 data16 xchg %ax,%ax
   0.31%        0x00007f0fa8f63ec0:   cmp    0x118(%r15),%r11
                0x00007f0fa8f63ec7:   jae    0x00007f0fa8f63f89
   3.75%        0x00007f0fa8f63ecd:   mov    %r11,0x108(%r15)
   0.14%        0x00007f0fa8f63ed4:   prefetchw 0xc0(%r11)
   3.53%        0x00007f0fa8f63edc:   movq   $0x1,(%r8)
   1.42%        0x00007f0fa8f63ee3:   prefetchw 0x100(%r11)
   0.35%        0x00007f0fa8f63eeb:   movl   $0x6848,0x8(%r8)             ;   {metadata({type array byte})}
   2.44%        0x00007f0fa8f63ef3:   mov    %ebp,0xc(%r8)
   7.06%        0x00007f0fa8f63ef7:   prefetchw 0x140(%r11)
   0.84%        0x00007f0fa8f63eff:   mov    %r8,%rdi
   0.11%        0x00007f0fa8f63f02:   add    $0x10,%rdi
   0.11%        0x00007f0fa8f63f06:   prefetchw 0x180(%r11)
   4.70%        0x00007f0fa8f63f0e:   shr    $0x3,%rcx
   0.24%        0x00007f0fa8f63f12:   add    $0xfffffffffffffffe,%rcx
   0.07%        0x00007f0fa8f63f16:   xor    %rax,%rax
   0.13%        0x00007f0fa8f63f19:   cmp    $0x8,%rcx
          ╭     0x00007f0fa8f63f1d:   jg     0x00007f0fa8f63f2f
   2.51%  │     0x00007f0fa8f63f1f:   dec    %rcx
   0.19%  │     0x00007f0fa8f63f22:   js     0x00007f0fa8f63f73
  11.70%  │↗    0x00007f0fa8f63f24:   mov    %rax,(%rdi,%rcx,8)
  14.75%  ││    0x00007f0fa8f63f28:   dec    %rcx
          │╰    0x00007f0fa8f63f2b:   jge    0x00007f0fa8f63f24
   0.00%  │     0x00007f0fa8f63f2d:   jmp    0x00007f0fa8f63f73
          ↘     0x00007f0fa8f63f2f:   vpxor  %ymm0,%ymm0,%ymm0
            ╭   0x00007f0fa8f63f33:   jmp    0x00007f0fa8f63f45
            │↗  0x00007f0fa8f63f38:   vmovdqu %ymm0,(%rdi)
            ││  0x00007f0fa8f63f3c:   vmovdqu %ymm0,0x20(%rdi)
            ││  0x00007f0fa8f63f41:   add    $0x40,%rdi
            ↘│  0x00007f0fa8f63f45:   sub    $0x8,%rcx
             ╰  0x00007f0fa8f63f49:   jge    0x00007f0fa8f63f38
                0x00007f0fa8f63f4b:   add    $0x4,%rcx
                0x00007f0fa8f63f4f:   jl     0x00007f0fa8f63f5d
                0x00007f0fa8f63f51:   vmovdqu %ymm0,(%rdi)
....................................................................................................
  74.42%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 504 

              0x00007f0fa8f67026:   mov    0x38(%rsp),%r10
              0x00007f0fa8f6702b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f0fa8f670e0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@30 (line 192)
              0x00007f0fa8f67033:   mov    $0x1,%ebp
              0x00007f0fa8f67038:   test   %r11d,%r11d
          ╭   0x00007f0fa8f6703b:   jne    0x00007f0fa8f6706c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 192)
          │   0x00007f0fa8f6703d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@36 (line 193)
   2.63%  │↗  0x00007f0fa8f67040:   mov    0x40(%rsp),%rsi
   0.10%  ││  0x00007f0fa8f67045:   xchg   %ax,%ax
   0.01%  ││  0x00007f0fa8f67047:   call   0x00007f0fa89fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual array_dse {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
   2.15%  ││  0x00007f0fa8f6704c:   mov    0x38(%rsp),%r10
   4.20%  ││  0x00007f0fa8f67051:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 192)
   7.81%  ││  0x00007f0fa8f67059:   mov    0x348(%r15),%r10
   0.06%  ││  0x00007f0fa8f67060:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 192)
   0.01%  ││  0x00007f0fa8f67064:   test   %eax,(%r10)                  ;   {poll}
   0.70%  ││  0x00007f0fa8f67067:   test   %r11d,%r11d
          │╰  0x00007f0fa8f6706a:   je     0x00007f0fa8f67040           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@36 (line 193)
          ↘   0x00007f0fa8f6706c:   movabs $0x7f0fbfcd9d10,%r10
              0x00007f0fa8f67076:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@37 (line 193)
              0x00007f0fa8f67079:   mov    0x30(%rsp),%r10
              0x00007f0fa8f6707e:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@40 (line 193)
              0x00007f0fa8f67082:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@46 (line 194)
....................................................................................................
  17.68%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 471 
  17.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 504 
   4.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 471 
   0.15%              kernel  [unknown] 
   0.09%        libc-2.31.so  [unknown] 
   0.08%           libjvm.so  HeapRegionManager::par_iterate 
   0.08%              kernel  [unknown] 
   0.08%           libjvm.so  HeapRegionClaimer::claim_region 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  OptoRuntime::new_array_C 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%           libjvm.so  OtherRegionsTable::is_empty 
   0.04%           libjvm.so  ObjArrayAllocator::initialize 
   0.04%           libjvm.so  TypeArrayKlass::allocate_common 
   0.04%           libjvm.so  G1FromCardCache::clear 
   0.04%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   2.39%  <...other 510 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.89%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 471 
  17.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 504 
   1.25%              kernel  [unknown] 
   0.15%                      <unknown> 
   0.15%        libc-2.31.so  [unknown] 
   0.09%           libjvm.so  HeapRegionManager::par_iterate 
   0.08%           libjvm.so  HeapRegionClaimer::claim_region 
   0.07%           libjvm.so  ObjArrayAllocator::initialize 
   0.07%           libjvm.so  OptoRuntime::new_array_C 
   0.06%              [vdso]  __vdso_clock_gettime 
   0.06%           libjvm.so  TypeArrayKlass::allocate_common 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%           libjvm.so  OtherRegionsTable::is_empty 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%           libjvm.so  G1Policy::preventive_collection_required 
   0.04%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.04%           libjvm.so  G1FromCardCache::clear 
   0.04%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  MemAllocator::allocate 
   0.03%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   1.09%  <...other 185 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.57%         c2, level 4
   1.59%           libjvm.so
   1.25%              kernel
   0.24%        libc-2.31.so
   0.15%                    
   0.07%  libpthread-2.31.so
   0.06%              [vdso]
   0.04%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%      perf-17773.map
   0.00%        libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 25.00% complete, ETA 00:10:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 27.996 ns/op
# Warmup Iteration   2: 26.654 ns/op
# Warmup Iteration   3: 27.650 ns/op
# Warmup Iteration   4: 26.616 ns/op
# Warmup Iteration   5: 26.685 ns/op
Iteration   1: 26.627 ns/op
Iteration   2: 26.603 ns/op
Iteration   3: 26.657 ns/op
Iteration   4: 26.653 ns/op
Iteration   5: 26.914 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural":
  26.691 ±(99.9%) 0.487 ns/op [Average]
  (min, avg, max) = (26.603, 26.691, 26.914), stdev = 0.126
  CI (99.9%): [26.204, 27.178] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·asm":
PrintAssembly processed: 114961 total address lines.
Perf output processed (skipped 55.577 seconds):
 Column 1: cycles (50689 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 477 

                # {method} {0x00007f0870c7f010} &apos;array_dse_inter_procedural&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f0884f63b40:   mov    0x8(%rsi),%r10d
                0x00007f0884f63b44:   movabs $0x800000000,%r11
                0x00007f0884f63b4e:   add    %r11,%r10
                0x00007f0884f63b51:   cmp    %r10,%rax
                0x00007f0884f63b54:   jne    0x00007f08849fbd80           ;   {runtime_call ic_miss_stub}
                0x00007f0884f63b5a:   xchg   %ax,%ax
                0x00007f0884f63b5c:   nopl   0x0(%rax)
              [Verified Entry Point]
   1.21%        0x00007f0884f63b60:   mov    %eax,-0x14000(%rsp)
   2.64%        0x00007f0884f63b67:   push   %rbp
   0.04%        0x00007f0884f63b68:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@-1 (line 174)
   0.43%        0x00007f0884f63b6c:   mov    %rsi,%rbp
   0.90%        0x00007f0884f63b6f:   mov    0xc(%rsi),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@1 (line 174)
   0.12%        0x00007f0884f63b72:   cmp    $0x100000,%edx
                0x00007f0884f63b78:   ja     0x00007f0884f63cdd           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@4 (line 174)
   0.37%        0x00007f0884f63b7e:   mov    %rbp,%rsi
   0.01%        0x00007f0884f63b81:   xchg   %ax,%ax
   0.88%        0x00007f0884f63b83:   call   0x00007f0884f63820           ; ImmutableOopMap {rbp=Oop }
                                                                          ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@8 (line 175)
                                                                          ;   {optimized virtual_call}
   0.06%        0x00007f0884f63b88:   mov    0xc(%rbp),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@12 (line 176)
   8.09%        0x00007f0884f63b8b:   cmp    $0x100000,%edx
                0x00007f0884f63b91:   ja     0x00007f0884f63cf1           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@15 (line 176)
   1.35%        0x00007f0884f63b97:   mov    %rbp,%rsi
   0.00%        0x00007f0884f63b9a:   nop
                0x00007f0884f63b9b:   call   0x00007f0884f63820           ; ImmutableOopMap {rbp=Oop }
                                                                          ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@19 (line 177)
                                                                          ;   {optimized virtual_call}
   0.10%        0x00007f0884f63ba0:   mov    0xc(%rbp),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@23 (line 178)
   8.35%        0x00007f0884f63ba3:   cmp    $0x100000,%edx
                0x00007f0884f63ba9:   ja     0x00007f0884f63d05           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@26 (line 178)
   1.51%        0x00007f0884f63baf:   mov    %rbp,%rsi
                0x00007f0884f63bb2:   nop
   0.01%        0x00007f0884f63bb3:   call   0x00007f0884f63820           ; ImmutableOopMap {rbp=Oop }
                                                                          ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@30 (line 179)
                                                                          ;   {optimized virtual_call}
   0.01%        0x00007f0884f63bb8:   mov    0xc(%rbp),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@34 (line 180)
   8.34%        0x00007f0884f63bbb:   nopl   0x0(%rax,%rax,1)
   0.00%        0x00007f0884f63bc0:   cmp    $0x100000,%edx
                0x00007f0884f63bc6:   ja     0x00007f0884f63d19
   1.49%        0x00007f0884f63bcc:   movslq %edx,%rcx
   0.01%        0x00007f0884f63bcf:   cmp    $0x100000,%edx
                0x00007f0884f63bd5:   ja     0x00007f0884f63cc9
   2.83%        0x00007f0884f63bdb:   add    $0x17,%rcx
   0.01%        0x00007f0884f63bdf:   mov    %rcx,%r10
   0.00%        0x00007f0884f63be2:   and    $0xfffffffffffffff8,%r10
   0.00%        0x00007f0884f63be6:   mov    0x108(%r15),%r8
   1.41%        0x00007f0884f63bed:   mov    %r8,%r11
   0.00%        0x00007f0884f63bf0:   add    %r10,%r11
   0.01%        0x00007f0884f63bf3:   nopw   0x0(%rax,%rax,1)
                0x00007f0884f63bfc:   data16 data16 xchg %ax,%ax
   1.43%        0x00007f0884f63c00:   cmp    0x118(%r15),%r11
                0x00007f0884f63c07:   jae    0x00007f0884f63cc9
   0.01%        0x00007f0884f63c0d:   mov    %r11,0x108(%r15)
   1.42%        0x00007f0884f63c14:   mov    %r8,%rdi
                0x00007f0884f63c17:   add    $0x10,%rdi
                0x00007f0884f63c1b:   movq   $0x1,(%r8)
   0.02%        0x00007f0884f63c22:   prefetchw 0xc0(%r11)
   4.27%        0x00007f0884f63c2a:   movl   $0x6848,0x8(%r8)             ;   {metadata({type array byte})}
   0.00%        0x00007f0884f63c32:   mov    %edx,0xc(%r8)
   0.54%        0x00007f0884f63c36:   prefetchw 0x100(%r11)
   0.01%        0x00007f0884f63c3e:   prefetchw 0x140(%r11)
   1.08%        0x00007f0884f63c46:   prefetchw 0x180(%r11)
   0.78%        0x00007f0884f63c4e:   shr    $0x3,%rcx
   0.51%        0x00007f0884f63c52:   add    $0xfffffffffffffffe,%rcx
   0.00%        0x00007f0884f63c56:   xor    %rax,%rax
   0.83%        0x00007f0884f63c59:   cmp    $0x8,%rcx
          ╭     0x00007f0884f63c5d:   jg     0x00007f0884f63c6f
   0.03%  │     0x00007f0884f63c5f:   dec    %rcx
   0.55%  │     0x00007f0884f63c62:   js     0x00007f0884f63cb3
   0.25%  │↗    0x00007f0884f63c64:   mov    %rax,(%rdi,%rcx,8)
  11.83%  ││    0x00007f0884f63c68:   dec    %rcx
          │╰    0x00007f0884f63c6b:   jge    0x00007f0884f63c64
          │     0x00007f0884f63c6d:   jmp    0x00007f0884f63cb3
          ↘     0x00007f0884f63c6f:   vpxor  %ymm0,%ymm0,%ymm0
            ╭   0x00007f0884f63c73:   jmp    0x00007f0884f63c85
            │↗  0x00007f0884f63c78:   vmovdqu %ymm0,(%rdi)
            ││  0x00007f0884f63c7c:   vmovdqu %ymm0,0x20(%rdi)
            ││  0x00007f0884f63c81:   add    $0x40,%rdi
            ↘│  0x00007f0884f63c85:   sub    $0x8,%rcx
             ╰  0x00007f0884f63c89:   jge    0x00007f0884f63c78
                0x00007f0884f63c8b:   add    $0x4,%rcx
....................................................................................................
  63.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 474 

             # {method} {0x00007f0870c7f0d0} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f0884f63800:   mov    0x8(%rsi),%r10d
             0x00007f0884f63804:   movabs $0x800000000,%r11
             0x00007f0884f6380e:   add    %r11,%r10
             0x00007f0884f63811:   cmp    %r10,%rax
             0x00007f0884f63814:   jne    0x00007f08849fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f0884f6381a:   xchg   %ax,%ax
             0x00007f0884f6381c:   nopl   0x0(%rax)
           [Verified Entry Point]
   3.31%     0x00007f0884f63820:   sub    $0x18,%rsp
   0.99%     0x00007f0884f63827:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink@-1 (line 187)
   0.40%     0x00007f0884f6382c:   add    $0x10,%rsp
   3.00%     0x00007f0884f63830:   pop    %rbp
  11.66%     0x00007f0884f63831:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f0884f63838:   ja     0x00007f0884f6383f
   0.07%  │  0x00007f0884f6383e:   ret    
          ↘  0x00007f0884f6383f:   movabs $0x7f0884f63831,%r10         ;   {internal_word}
             0x00007f0884f63849:   mov    %r10,0x358(%r15)
             0x00007f0884f63850:   jmp    0x00007f0884a02700           ;   {runtime_call SafepointBlob}
             0x00007f0884f63855:   hlt    
             0x00007f0884f63856:   hlt    
             0x00007f0884f63857:   hlt    
             0x00007f0884f63858:   hlt    
             0x00007f0884f63859:   hlt    
             0x00007f0884f6385a:   hlt    
             0x00007f0884f6385b:   hlt    
....................................................................................................
  19.43%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 508 

              0x00007f0884f66ca6:   mov    0x38(%rsp),%r10
              0x00007f0884f66cab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f0884f66d60
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@30 (line 192)
              0x00007f0884f66cb3:   mov    $0x1,%ebp
              0x00007f0884f66cb8:   test   %r11d,%r11d
          ╭   0x00007f0884f66cbb:   jne    0x00007f0884f66cec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 192)
          │   0x00007f0884f66cbd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@36 (line 193)
   1.32%  │↗  0x00007f0884f66cc0:   mov    0x40(%rsp),%rsi
   0.03%  ││  0x00007f0884f66cc5:   xchg   %ax,%ax
   0.04%  ││  0x00007f0884f66cc7:   call   0x00007f08849fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual array_dse_inter_procedural {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
   0.06%  ││  0x00007f0884f66ccc:   mov    0x38(%rsp),%r10
   3.65%  ││  0x00007f0884f66cd1:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 192)
   5.37%  ││  0x00007f0884f66cd9:   mov    0x348(%r15),%r10
   0.02%  ││  0x00007f0884f66ce0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 192)
   0.05%  ││  0x00007f0884f66ce4:   test   %eax,(%r10)                  ;   {poll}
   0.16%  ││  0x00007f0884f66ce7:   test   %r11d,%r11d
          │╰  0x00007f0884f66cea:   je     0x00007f0884f66cc0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@36 (line 193)
          ↘   0x00007f0884f66cec:   movabs $0x7f089a42cd10,%r10
              0x00007f0884f66cf6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@37 (line 193)
              0x00007f0884f66cf9:   mov    0x30(%rsp),%r10
              0x00007f0884f66cfe:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@40 (line 193)
              0x00007f0884f66d02:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@46 (line 194)
....................................................................................................
  10.71%  <total for region 3>

....[Hottest Regions]...............................................................................
  63.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 477 
  19.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 474 
  10.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 508 
   3.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 477 
   0.76%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%        libc-2.31.so  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  OtherRegionsTable::occupied 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  MemAllocator::allocate 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  G1FromCardCache::clear 
   1.60%  <...other 433 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.89%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 477 
  19.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 474 
  10.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 508 
   1.83%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.06%        libc-2.31.so  [unknown] 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  OptoRuntime::new_array_C 
   0.03%           libjvm.so  OtherRegionsTable::occupied 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  MemAllocator::allocate 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.02%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.02%           libjvm.so  TypeArrayKlass::allocate_common 
   0.58%  <...other 156 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.04%         c2, level 4
   1.83%              kernel
   0.80%           libjvm.so
   0.13%        libc-2.31.so
   0.11%                    
   0.03%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%      perf-17830.map
....................................................................................................
  99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline
# Parameters: (size = 64)

# Run progress: 37.50% complete, ETA 00:08:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.402 ns/op
# Warmup Iteration   2: 7.027 ns/op
# Warmup Iteration   3: 8.370 ns/op
# Warmup Iteration   4: 7.023 ns/op
# Warmup Iteration   5: 7.022 ns/op
Iteration   1: 7.021 ns/op
Iteration   2: 7.035 ns/op
Iteration   3: 7.019 ns/op
Iteration   4: 7.023 ns/op
Iteration   5: 7.023 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline":
  7.024 ±(99.9%) 0.025 ns/op [Average]
  (min, avg, max) = (7.019, 7.024, 7.035), stdev = 0.006
  CI (99.9%): [7.000, 7.049] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·asm":
PrintAssembly processed: 117696 total address lines.
Perf output processed (skipped 55.698 seconds):
 Column 1: cycles (50971 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 482 

              # {method} {0x00007fda6dc74bf8} &apos;obj_alloc_baseline&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007fda8cf64a20:   mov    0x8(%rsi),%r10d
              0x00007fda8cf64a24:   movabs $0x800000000,%r11
              0x00007fda8cf64a2e:   add    %r11,%r10
              0x00007fda8cf64a31:   cmp    %r10,%rax
              0x00007fda8cf64a34:   jne    0x00007fda8c9fbd80           ;   {runtime_call ic_miss_stub}
              0x00007fda8cf64a3a:   xchg   %ax,%ax
              0x00007fda8cf64a3c:   nopl   0x0(%rax)
            [Verified Entry Point]
   1.48%      0x00007fda8cf64a40:   mov    %eax,-0x14000(%rsp)
   6.84%      0x00007fda8cf64a47:   push   %rbp
   0.06%      0x00007fda8cf64a48:   sub    $0x10,%rsp
   4.28%      0x00007fda8cf64a4c:   mov    0x108(%r15),%rax
   1.01%      0x00007fda8cf64a53:   mov    %rax,%r10
   0.05%      0x00007fda8cf64a56:   add    $0x10,%r10
   0.55%      0x00007fda8cf64a5a:   nopw   0x0(%rax,%rax,1)
   3.83%      0x00007fda8cf64a60:   cmp    0x118(%r15),%r10
          ╭   0x00007fda8cf64a67:   jae    0x00007fda8cf64a9d
   1.17%  │   0x00007fda8cf64a69:   mov    %r10,0x108(%r15)
   0.13%  │   0x00007fda8cf64a70:   prefetchw 0xc0(%r10)
   6.84%  │   0x00007fda8cf64a78:   movq   $0x1,(%rax)
  15.88%  │   0x00007fda8cf64a7f:   movl   $0xd68,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.38%  │   0x00007fda8cf64a86:   mov    %r12d,0xc(%rax)              ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@-1 (line 62)
   3.26%  │↗  0x00007fda8cf64a8a:   add    $0x10,%rsp
   0.12%  ││  0x00007fda8cf64a8e:   pop    %rbp
   3.81%  ││  0x00007fda8cf64a8f:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007fda8cf64a96:   ja     0x00007fda8cf64abb
   1.60%  ││  0x00007fda8cf64a9c:   ret    
          ↘│  0x00007fda8cf64a9d:   movabs $0x800000d68,%rsi            ;   {metadata(&apos;java/lang/Object&apos;)}
           │  0x00007fda8cf64aa7:   call   0x00007fda8ca0fc00           ; ImmutableOopMap {}
           │                                                            ;*new {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 62)
           │                                                            ;   {runtime_call _new_instance_Java}
           ╰  0x00007fda8cf64aac:   jmp    0x00007fda8cf64a8a           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 62)
              0x00007fda8cf64aae:   mov    %rax,%rsi
              0x00007fda8cf64ab1:   add    $0x10,%rsp
              0x00007fda8cf64ab5:   pop    %rbp
....................................................................................................
  51.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 515 

              0x00007fda8cf67aa6:   mov    0x38(%rsp),%r10
              0x00007fda8cf67aab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fda8cf67b60
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@30 (line 192)
              0x00007fda8cf67ab3:   mov    $0x1,%ebp
              0x00007fda8cf67ab8:   test   %r11d,%r11d
          ╭   0x00007fda8cf67abb:   jne    0x00007fda8cf67aec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 192)
          │   0x00007fda8cf67abd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@36 (line 193)
   1.49%  │↗  0x00007fda8cf67ac0:   mov    0x40(%rsp),%rsi
   3.99%  ││  0x00007fda8cf67ac5:   xchg   %ax,%ax
   0.01%  ││  0x00007fda8cf67ac7:   call   0x00007fda8c9fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual obj_alloc_baseline {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  29.92%  ││  0x00007fda8cf67acc:   mov    0x38(%rsp),%r10
   0.37%  ││  0x00007fda8cf67ad1:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 192)
   5.43%  ││  0x00007fda8cf67ad9:   mov    0x348(%r15),%r10
   4.06%  ││  0x00007fda8cf67ae0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 192)
   0.01%  ││  0x00007fda8cf67ae4:   test   %eax,(%r10)                  ;   {poll}
   0.24%  ││  0x00007fda8cf67ae7:   test   %r11d,%r11d
          │╰  0x00007fda8cf67aea:   je     0x00007fda8cf67ac0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@36 (line 193)
          ↘   0x00007fda8cf67aec:   movabs $0x7fdaa3343d10,%r10
              0x00007fda8cf67af6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@37 (line 193)
              0x00007fda8cf67af9:   mov    0x30(%rsp),%r10
              0x00007fda8cf67afe:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@40 (line 193)
              0x00007fda8cf67b02:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@46 (line 194)
....................................................................................................
  45.51%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 482 
  45.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 515 
   1.06%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%                      <unknown> 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.03%           libjvm.so  G1CardTable::is_in_young 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   1.51%  <...other 428 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 482 
  45.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 515 
   2.18%              kernel  [unknown] 
   0.14%                      <unknown> 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  OptoRuntime::new_instance_C 
   0.03%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  G1CardTable::is_in_young 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.49%  <...other 132 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.82%         c2, level 4
   2.18%              kernel
   0.71%           libjvm.so
   0.14%                    
   0.05%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.02%              [vdso]
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%      perf-17887.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse
# Parameters: (size = 64)

# Run progress: 50.00% complete, ETA 00:07:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.330 ns/op
# Warmup Iteration   2: 7.247 ns/op
# Warmup Iteration   3: 8.236 ns/op
# Warmup Iteration   4: 7.022 ns/op
# Warmup Iteration   5: 7.024 ns/op
Iteration   1: 7.023 ns/op
Iteration   2: 7.027 ns/op
Iteration   3: 7.024 ns/op
Iteration   4: 7.023 ns/op
Iteration   5: 7.023 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse":
  7.024 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (7.023, 7.024, 7.027), stdev = 0.002
  CI (99.9%): [7.018, 7.030] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:·asm":
PrintAssembly processed: 116379 total address lines.
Perf output processed (skipped 55.681 seconds):
 Column 1: cycles (50492 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 479 

              # {method} {0x00007fa747874d50} &apos;obj_dse&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007fa780f642a0:   mov    0x8(%rsi),%r10d
              0x00007fa780f642a4:   movabs $0x800000000,%r11
              0x00007fa780f642ae:   add    %r11,%r10
              0x00007fa780f642b1:   cmp    %r10,%rax
              0x00007fa780f642b4:   jne    0x00007fa7809fbd80           ;   {runtime_call ic_miss_stub}
              0x00007fa780f642ba:   xchg   %ax,%ax
              0x00007fa780f642bc:   nopl   0x0(%rax)
            [Verified Entry Point]
   2.77%      0x00007fa780f642c0:   mov    %eax,-0x14000(%rsp)
   9.84%      0x00007fa780f642c7:   push   %rbp
   0.05%      0x00007fa780f642c8:   sub    $0x10,%rsp
   2.93%      0x00007fa780f642cc:   mov    0x108(%r15),%rax
   2.54%      0x00007fa780f642d3:   mov    %rax,%r10
   0.04%      0x00007fa780f642d6:   add    $0x10,%r10
   0.24%      0x00007fa780f642da:   nopw   0x0(%rax,%rax,1)
   2.84%      0x00007fa780f642e0:   cmp    0x118(%r15),%r10
          ╭   0x00007fa780f642e7:   jae    0x00007fa780f6431d
   2.63%  │   0x00007fa780f642e9:   mov    %r10,0x108(%r15)
   0.09%  │   0x00007fa780f642f0:   prefetchw 0xc0(%r10)
   6.11%  │   0x00007fa780f642f8:   movq   $0x1,(%rax)
  15.08%  │   0x00007fa780f642ff:   movl   $0xd68,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.68%  │   0x00007fa780f64306:   mov    %r12d,0xc(%rax)              ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@-1 (line 70)
   3.64%  │↗  0x00007fa780f6430a:   add    $0x10,%rsp
   0.11%  ││  0x00007fa780f6430e:   pop    %rbp
   3.47%  ││  0x00007fa780f6430f:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007fa780f64316:   ja     0x00007fa780f6433b
   1.84%  ││  0x00007fa780f6431c:   ret    
   0.00%  ↘│  0x00007fa780f6431d:   movabs $0x800000d68,%rsi            ;   {metadata(&apos;java/lang/Object&apos;)}
           │  0x00007fa780f64327:   call   0x00007fa780a0f900           ; ImmutableOopMap {}
           │                                                            ;*new {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@120 (line 85)
           │                                                            ;   {runtime_call _new_instance_Java}
           ╰  0x00007fa780f6432c:   jmp    0x00007fa780f6430a           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@0 (line 70)
              0x00007fa780f6432e:   mov    %rax,%rsi
              0x00007fa780f64331:   add    $0x10,%rsp
              0x00007fa780f64335:   pop    %rbp
              0x00007fa780f64336:   jmp    0x00007fa780aad200           ;   {runtime_call _rethrow_Java}
....................................................................................................
  55.91%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 511 

              0x00007fa780f66926:   mov    0x38(%rsp),%r10
              0x00007fa780f6692b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fa780f669e0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@30 (line 192)
              0x00007fa780f66933:   mov    $0x1,%ebp
              0x00007fa780f66938:   test   %r11d,%r11d
          ╭   0x00007fa780f6693b:   jne    0x00007fa780f6696c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 192)
          │   0x00007fa780f6693d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@36 (line 193)
   2.69%  │↗  0x00007fa780f66940:   mov    0x40(%rsp),%rsi
   2.90%  ││  0x00007fa780f66945:   xchg   %ax,%ax
   0.01%  ││  0x00007fa780f66947:   call   0x00007fa7809fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual obj_dse {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  21.84%  ││  0x00007fa780f6694c:   mov    0x38(%rsp),%r10
   0.35%  ││  0x00007fa780f66951:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 192)
  11.12%  ││  0x00007fa780f66959:   mov    0x348(%r15),%r10
   2.92%  ││  0x00007fa780f66960:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 192)
   0.01%  ││  0x00007fa780f66964:   test   %eax,(%r10)                  ;   {poll}
   0.29%  ││  0x00007fa780f66967:   test   %r11d,%r11d
          │╰  0x00007fa780f6696a:   je     0x00007fa780f66940           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@36 (line 193)
          ↘   0x00007fa780f6696c:   movabs $0x7fa795220d10,%r10
              0x00007fa780f66976:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@37 (line 193)
              0x00007fa780f66979:   mov    0x30(%rsp),%r10
              0x00007fa780f6697e:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@40 (line 193)
              0x00007fa780f66982:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@46 (line 194)
....................................................................................................
  42.12%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 479 
  42.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 511 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  G1CardTable::is_in_young 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  OptoRuntime::new_instance_C 
   0.02%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.02%        libc-2.31.so  [unknown] 
   0.02%              kernel  [unknown] 
   1.28%  <...other 368 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 479 
  42.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 511 
   0.93%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.04%        libc-2.31.so  [unknown] 
   0.04%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  OptoRuntime::new_instance_C 
   0.02%           libjvm.so  MemAllocator::allocate 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.02%           libjvm.so  G1CardTable::is_in_young 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%           libjvm.so  ObjAllocator::initialize 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.01%           libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.56%  <...other 146 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.03%         c2, level 4
   0.93%              kernel
   0.72%           libjvm.so
   0.13%        libc-2.31.so
   0.10%                    
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 62.50% complete, ETA 00:05:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 80.810 ns/op
# Warmup Iteration   2: 78.982 ns/op
# Warmup Iteration   3: 80.250 ns/op
# Warmup Iteration   4: 78.914 ns/op
# Warmup Iteration   5: 78.248 ns/op
Iteration   1: 78.499 ns/op
Iteration   2: 78.619 ns/op
Iteration   3: 78.510 ns/op
Iteration   4: 78.096 ns/op
Iteration   5: 78.102 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural":
  78.365 ±(99.9%) 0.953 ns/op [Average]
  (min, avg, max) = (78.096, 78.365, 78.619), stdev = 0.248
  CI (99.9%): [77.412, 79.319] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·asm":
PrintAssembly processed: 121150 total address lines.
Perf output processed (skipped 55.838 seconds):
 Column 1: cycles (51085 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 483 

             # {method} {0x00007f53b107f0d0} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f53d0f64d80:   mov    0x8(%rsi),%r10d
             0x00007f53d0f64d84:   movabs $0x800000000,%r11
             0x00007f53d0f64d8e:   add    %r11,%r10
             0x00007f53d0f64d91:   cmp    %r10,%rax
             0x00007f53d0f64d94:   jne    0x00007f53d09fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f53d0f64d9a:   xchg   %ax,%ax
             0x00007f53d0f64d9c:   nopl   0x0(%rax)
           [Verified Entry Point]
  26.39%     0x00007f53d0f64da0:   sub    $0x18,%rsp
   1.33%     0x00007f53d0f64da7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink@-1 (line 187)
  33.84%     0x00007f53d0f64dac:   add    $0x10,%rsp
   0.01%     0x00007f53d0f64db0:   pop    %rbp
   7.28%     0x00007f53d0f64db1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f53d0f64db8:   ja     0x00007f53d0f64dbf
   0.01%  │  0x00007f53d0f64dbe:   ret    
          ↘  0x00007f53d0f64dbf:   movabs $0x7f53d0f64db1,%r10         ;   {internal_word}
             0x00007f53d0f64dc9:   mov    %r10,0x358(%r15)
             0x00007f53d0f64dd0:   jmp    0x00007f53d0a02700           ;   {runtime_call SafepointBlob}
             0x00007f53d0f64dd5:   hlt    
             0x00007f53d0f64dd6:   hlt    
             0x00007f53d0f64dd7:   hlt    
             0x00007f53d0f64dd8:   hlt    
             0x00007f53d0f64dd9:   hlt    
             0x00007f53d0f64dda:   hlt    
             0x00007f53d0f64ddb:   hlt    
....................................................................................................
  68.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 485 

              # {method} {0x00007f53b107eb18} &apos;obj_dse_inter_procedural&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f53d0f65440:   mov    0x8(%rsi),%r10d
              0x00007f53d0f65444:   movabs $0x800000000,%r11
              0x00007f53d0f6544e:   add    %r11,%r10
              0x00007f53d0f65451:   cmp    %r10,%rax
              0x00007f53d0f65454:   jne    0x00007f53d09fbd80           ;   {runtime_call ic_miss_stub}
              0x00007f53d0f6545a:   xchg   %ax,%ax
              0x00007f53d0f6545c:   nopl   0x0(%rax)
            [Verified Entry Point]
   0.52%      0x00007f53d0f65460:   mov    %eax,-0x14000(%rsp)
   1.48%      0x00007f53d0f65467:   push   %rbp
   0.00%      0x00007f53d0f65468:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@-1 (line 94)
   0.01%      0x00007f53d0f6546c:   mov    %rsi,%rbp
   0.47%      0x00007f53d0f6546f:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@9 (line 95)
                                                                        ;   {optimized virtual_call}
              0x00007f53d0f65474:   mov    %rbp,%rsi
   0.46%      0x00007f53d0f65477:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 97)
                                                                        ;   {optimized virtual_call}
   0.94%      0x00007f53d0f6547c:   mov    %rbp,%rsi
   0.02%      0x00007f53d0f6547f:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 99)
                                                                        ;   {optimized virtual_call}
   0.96%      0x00007f53d0f65484:   mov    %rbp,%rsi
              0x00007f53d0f65487:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 101)
                                                                        ;   {optimized virtual_call}
   0.83%      0x00007f53d0f6548c:   mov    %rbp,%rsi
              0x00007f53d0f6548f:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 103)
                                                                        ;   {optimized virtual_call}
   0.98%      0x00007f53d0f65494:   mov    %rbp,%rsi
              0x00007f53d0f65497:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 105)
                                                                        ;   {optimized virtual_call}
   0.96%      0x00007f53d0f6549c:   mov    %rbp,%rsi
              0x00007f53d0f6549f:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 107)
                                                                        ;   {optimized virtual_call}
   0.93%      0x00007f53d0f654a4:   mov    %rbp,%rsi
              0x00007f53d0f654a7:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 109)
                                                                        ;   {optimized virtual_call}
   0.99%      0x00007f53d0f654ac:   mov    %rbp,%rsi
              0x00007f53d0f654af:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 111)
                                                                        ;   {optimized virtual_call}
   1.00%      0x00007f53d0f654b4:   mov    %rbp,%rsi
              0x00007f53d0f654b7:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 113)
                                                                        ;   {optimized virtual_call}
   0.94%      0x00007f53d0f654bc:   mov    %rbp,%rsi
              0x00007f53d0f654bf:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 115)
                                                                        ;   {optimized virtual_call}
   0.94%      0x00007f53d0f654c4:   mov    %rbp,%rsi
              0x00007f53d0f654c7:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 117)
                                                                        ;   {optimized virtual_call}
   0.88%      0x00007f53d0f654cc:   mov    %rbp,%rsi
              0x00007f53d0f654cf:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 119)
                                                                        ;   {optimized virtual_call}
   0.90%      0x00007f53d0f654d4:   mov    %rbp,%rsi
              0x00007f53d0f654d7:   call   0x00007f53d0f64da0           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 121)
                                                                        ;   {optimized virtual_call}
   1.03%      0x00007f53d0f654dc:   mov    %rbp,%rsi
              0x00007f53d0f654df:   call   0x00007f53d0f64da0           ; ImmutableOopMap {}
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 123)
                                                                        ;   {optimized virtual_call}
   0.94%      0x00007f53d0f654e4:   mov    0x108(%r15),%rax
   1.00%      0x00007f53d0f654eb:   mov    %rax,%r10
              0x00007f53d0f654ee:   add    $0x10,%r10
   0.45%      0x00007f53d0f654f2:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f53d0f654fc:   data16 data16 xchg %ax,%ax
              0x00007f53d0f65500:   cmp    0x118(%r15),%r10
          ╭   0x00007f53d0f65507:   jae    0x00007f53d0f6553d
   0.99%  │   0x00007f53d0f65509:   mov    %r10,0x108(%r15)
          │   0x00007f53d0f65510:   prefetchw 0xc0(%r10)
   2.00%  │   0x00007f53d0f65518:   movq   $0x1,(%rax)
   0.17%  │   0x00007f53d0f6551f:   movl   $0xd68,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.68%  │   0x00007f53d0f65526:   mov    %r12d,0xc(%rax)              ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 123)
   1.38%  │↗  0x00007f53d0f6552a:   add    $0x10,%rsp
   0.01%  ││  0x00007f53d0f6552e:   pop    %rbp
   0.00%  ││  0x00007f53d0f6552f:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007f53d0f65536:   ja     0x00007f53d0f655c4
   0.45%  ││  0x00007f53d0f6553c:   ret    
          ↘│  0x00007f53d0f6553d:   movabs $0x800000d68,%rsi            ;   {metadata(&apos;java/lang/Object&apos;)}
           │  0x00007f53d0f65547:   call   0x00007f53d0a10500           ; ImmutableOopMap {}
           │                                                            ;*new {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 124)
           │                                                            ;   {runtime_call _new_instance_Java}
           ╰  0x00007f53d0f6554c:   jmp    0x00007f53d0f6552a           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 124)
              0x00007f53d0f6554e:   mov    %rax,%rsi
              0x00007f53d0f65551:   jmp    0x00007f53d0f655ba           ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 123)
....................................................................................................
  23.31%  <total for region 2>

....[Hottest Regions]...............................................................................
  68.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 483 
  23.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 485 
   5.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 510 
   1.09%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.94%  <...other 333 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 483 
  23.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 485 
   5.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 510 
   2.17%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%        libc-2.31.so  [unknown] 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  OptoRuntime::new_instance_C 
   0.01%           libjvm.so  AbsSeq::dsd 
   0.01%           libjvm.so  G1FromCardCache::clear 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.24%  <...other 107 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.36%         c2, level 4
   2.17%              kernel
   0.27%           libjvm.so
   0.10%        libc-2.31.so
   0.05%                    
   0.03%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%      perf-17999.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline
# Parameters: (size = 64)

# Run progress: 75.00% complete, ETA 00:03:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 29.440 ns/op
# Warmup Iteration   2: 27.666 ns/op
# Warmup Iteration   3: 28.849 ns/op
# Warmup Iteration   4: 27.642 ns/op
# Warmup Iteration   5: 27.639 ns/op
Iteration   1: 27.623 ns/op
Iteration   2: 27.646 ns/op
Iteration   3: 27.665 ns/op
Iteration   4: 27.668 ns/op
Iteration   5: 27.668 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline":
  27.654 ±(99.9%) 0.076 ns/op [Average]
  (min, avg, max) = (27.623, 27.654, 27.668), stdev = 0.020
  CI (99.9%): [27.578, 27.730] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·asm":
PrintAssembly processed: 117367 total address lines.
Perf output processed (skipped 55.583 seconds):
 Column 1: cycles (50475 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 472 

                      # {method} {0x00007f736507f750} &apos;wrapper_obj_baseline&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark$Wrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark&apos;
                      #           [sp+0x30]  (sp of caller)
                      0x00007f7374f63c60:   mov    0x8(%rsi),%r10d
                      0x00007f7374f63c64:   movabs $0x800000000,%r11
                      0x00007f7374f63c6e:   add    %r11,%r10
                      0x00007f7374f63c71:   cmp    %r10,%rax
                      0x00007f7374f63c74:   jne    0x00007f73749fbd80           ;   {runtime_call ic_miss_stub}
                      0x00007f7374f63c7a:   xchg   %ax,%ax
                      0x00007f7374f63c7c:   nopl   0x0(%rax)
                    [Verified Entry Point]
   0.69%              0x00007f7374f63c80:   mov    %eax,-0x14000(%rsp)
   0.68%              0x00007f7374f63c87:   push   %rbp
   0.39%              0x00007f7374f63c88:   sub    $0x20,%rsp
   0.68%              0x00007f7374f63c8c:   mov    0x108(%r15),%rbp
   0.35%              0x00007f7374f63c93:   mov    %rbp,%r10
   0.44%              0x00007f7374f63c96:   add    $0x30,%r10
   0.27%              0x00007f7374f63c9a:   nopw   0x0(%rax,%rax,1)
   0.39%              0x00007f7374f63ca0:   cmp    0x118(%r15),%r10
                      0x00007f7374f63ca7:   jae    0x00007f7374f6454c
   0.31%              0x00007f7374f63cad:   mov    %r10,0x108(%r15)
   0.42%              0x00007f7374f63cb4:   prefetchw 0xc0(%r10)
   0.95%              0x00007f7374f63cbc:   movq   $0x1,0x0(%rbp)
   0.49%              0x00007f7374f63cc4:   movl   $0xc26be0,0x8(%rbp)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.27%              0x00007f7374f63ccb:   mov    %r12d,0xc(%rbp)
   0.45%              0x00007f7374f63ccf:   mov    %r12,0x10(%rbp)
   0.38%              0x00007f7374f63cd3:   mov    %r12,0x18(%rbp)
   0.44%              0x00007f7374f63cd7:   mov    %r12,0x20(%rbp)
   0.34%              0x00007f7374f63cdb:   mov    %r12,0x28(%rbp)
   0.43%              0x00007f7374f63cdf:   mov    0x108(%r15),%rax
   0.56%              0x00007f7374f63ce6:   mov    %rax,%r10
   0.36%              0x00007f7374f63ce9:   add    $0x10,%r10
   0.33%              0x00007f7374f63ced:   cmp    0x118(%r15),%r10
                      0x00007f7374f63cf4:   jae    0x00007f7374f64565           ;*putfield obj1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@12 (line 193)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.37%              0x00007f7374f63cfa:   mov    %r10,0x108(%r15)
   0.31%              0x00007f7374f63d01:   prefetchw 0xc0(%r10)
   0.93%              0x00007f7374f63d09:   movq   $0x1,(%rax)
   0.78%              0x00007f7374f63d10:   movl   $0xd68,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.63%              0x00007f7374f63d17:   mov    %r12d,0xc(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@5 (line 193)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.40%              0x00007f7374f63d1b:   mov    %rbp,%r10
   0.30%              0x00007f7374f63d1e:   mov    %rax,%r8
   0.32%              0x00007f7374f63d21:   shr    $0x3,%r8
   0.40%              0x00007f7374f63d25:   mov    %r8d,0xc(%rbp)
   0.37%              0x00007f7374f63d29:   mov    %rax,%r11
   0.29%              0x00007f7374f63d2c:   xor    %r10,%r11
   0.35%              0x00007f7374f63d2f:   shr    $0x15,%r11
   0.36%              0x00007f7374f63d33:   test   %r11,%r11
          ╭           0x00007f7374f63d36:   je     0x00007f7374f63d52
          │           0x00007f7374f63d38:   shr    $0x9,%r10
          │           0x00007f7374f63d3c:   movabs $0x7f7386591000,%rdi
          │           0x00007f7374f63d46:   add    %r10,%rdi
          │           0x00007f7374f63d49:   cmpb   $0x4,(%rdi)
          │           0x00007f7374f63d4c:   jne    0x00007f7374f643af
   0.38%  ↘           0x00007f7374f63d52:   mov    0x108(%r15),%rbx
   0.98%              0x00007f7374f63d59:   mov    %rbx,%r10
   0.31%              0x00007f7374f63d5c:   add    $0x10,%r10
   0.39%              0x00007f7374f63d60:   cmp    0x118(%r15),%r10
                      0x00007f7374f63d67:   jae    0x00007f7374f64579
   0.47%              0x00007f7374f63d6d:   mov    %r10,0x108(%r15)
   0.27%              0x00007f7374f63d74:   prefetchw 0xc0(%r10)
   1.25%              0x00007f7374f63d7c:   movq   $0x1,(%rbx)
   1.46%              0x00007f7374f63d83:   movl   $0xd68,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.80%              0x00007f7374f63d8a:   mov    %r12d,0xc(%rbx)
   0.50%              0x00007f7374f63d8e:   cmpb   $0x0,0x38(%r15)
   0.31%              0x00007f7374f63d93:   jne    0x00007f7374f6415c
   0.31%              0x00007f7374f63d99:   mov    %rbx,%r11
   0.32%              0x00007f7374f63d9c:   shr    $0x3,%r11
   0.48%              0x00007f7374f63da0:   mov    %r11d,0x10(%rbp)
   0.24%              0x00007f7374f63da4:   mov    %rbp,%r10
   0.32%              0x00007f7374f63da7:   mov    %rbx,%r11
   0.34%              0x00007f7374f63daa:   xor    %r10,%r11
   0.45%              0x00007f7374f63dad:   shr    $0x15,%r11
   0.27%              0x00007f7374f63db1:   test   %r11,%r11
           ╭          0x00007f7374f63db4:   je     0x00007f7374f63dd0
           │          0x00007f7374f63db6:   shr    $0x9,%r10
           │          0x00007f7374f63dba:   movabs $0x7f7386591000,%rdi
           │          0x00007f7374f63dc4:   add    %r10,%rdi
           │          0x00007f7374f63dc7:   cmpb   $0x4,(%rdi)
           │          0x00007f7374f63dca:   jne    0x00007f7374f64405
   0.32%   ↘          0x00007f7374f63dd0:   mov    0x108(%r15),%rbx
   0.93%              0x00007f7374f63dd7:   mov    %rbx,%r10
   0.43%              0x00007f7374f63dda:   add    $0x10,%r10
   0.30%              0x00007f7374f63dde:   xchg   %ax,%ax
   0.36%              0x00007f7374f63de0:   cmp    0x118(%r15),%r10
                      0x00007f7374f63de7:   jae    0x00007f7374f64590
   0.33%              0x00007f7374f63ded:   mov    %r10,0x108(%r15)
   0.54%              0x00007f7374f63df4:   prefetchw 0xc0(%r10)
   1.33%              0x00007f7374f63dfc:   movq   $0x1,(%rbx)
   1.93%              0x00007f7374f63e03:   movl   $0xd68,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.92%              0x00007f7374f63e0a:   mov    %r12d,0xc(%rbx)
   0.62%              0x00007f7374f63e0e:   cmpb   $0x0,0x38(%r15)
   0.25%              0x00007f7374f63e13:   jne    0x00007f7374f64193
   0.33%              0x00007f7374f63e19:   mov    %rbx,%r11
   0.30%              0x00007f7374f63e1c:   shr    $0x3,%r11
   0.51%              0x00007f7374f63e20:   mov    %r11d,0x14(%rbp)
   0.24%              0x00007f7374f63e24:   mov    %rbp,%r10
   0.30%              0x00007f7374f63e27:   mov    %rbx,%r11
   0.31%              0x00007f7374f63e2a:   xor    %r10,%r11
   0.44%              0x00007f7374f63e2d:   shr    $0x15,%r11
   0.22%              0x00007f7374f63e31:   test   %r11,%r11
            ╭         0x00007f7374f63e34:   je     0x00007f7374f63e50
   0.00%    │         0x00007f7374f63e36:   shr    $0x9,%r10
            │         0x00007f7374f63e3a:   movabs $0x7f7386591000,%rdi
            │         0x00007f7374f63e44:   add    %r10,%rdi
            │         0x00007f7374f63e47:   cmpb   $0x4,(%rdi)
            │         0x00007f7374f63e4a:   jne    0x00007f7374f6444c
   0.26%    ↘         0x00007f7374f63e50:   mov    0x108(%r15),%rbx
   0.85%              0x00007f7374f63e57:   mov    %rbx,%r10
   0.52%              0x00007f7374f63e5a:   add    $0x10,%r10
   0.27%              0x00007f7374f63e5e:   xchg   %ax,%ax
   0.30%              0x00007f7374f63e60:   cmp    0x118(%r15),%r10
                      0x00007f7374f63e67:   jae    0x00007f7374f645a8
   0.40%              0x00007f7374f63e6d:   mov    %r10,0x108(%r15)
   0.53%              0x00007f7374f63e74:   prefetchw 0xc0(%r10)
   1.43%              0x00007f7374f63e7c:   movq   $0x1,(%rbx)
   2.06%              0x00007f7374f63e83:   movl   $0xd68,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.00%              0x00007f7374f63e8a:   mov    %r12d,0xc(%rbx)
   0.66%              0x00007f7374f63e8e:   cmpb   $0x0,0x38(%r15)
   0.23%              0x00007f7374f63e93:   jne    0x00007f7374f641d0
   0.39%              0x00007f7374f63e99:   mov    %rbx,%r11
   0.30%              0x00007f7374f63e9c:   shr    $0x3,%r11
   0.50%              0x00007f7374f63ea0:   mov    %r11d,0x18(%rbp)
   0.24%              0x00007f7374f63ea4:   mov    %rbp,%r10
   0.39%              0x00007f7374f63ea7:   mov    %rbx,%r11
   0.34%              0x00007f7374f63eaa:   xor    %r10,%r11
   0.47%              0x00007f7374f63ead:   shr    $0x15,%r11
   0.21%              0x00007f7374f63eb1:   test   %r11,%r11
             ╭        0x00007f7374f63eb4:   je     0x00007f7374f63ed0
             │        0x00007f7374f63eb6:   shr    $0x9,%r10
             │        0x00007f7374f63eba:   movabs $0x7f7386591000,%rdi
             │        0x00007f7374f63ec4:   add    %r10,%rdi
             │        0x00007f7374f63ec7:   cmpb   $0x4,(%rdi)
             │        0x00007f7374f63eca:   jne    0x00007f7374f644a5
   0.40%     ↘        0x00007f7374f63ed0:   mov    0x108(%r15),%rbx
   0.49%              0x00007f7374f63ed7:   mov    %rbx,%r10
   0.46%              0x00007f7374f63eda:   add    $0x10,%r10
   0.25%              0x00007f7374f63ede:   xchg   %ax,%ax
   0.33%              0x00007f7374f63ee0:   cmp    0x118(%r15),%r10
                      0x00007f7374f63ee7:   jae    0x00007f7374f644ec
   0.34%              0x00007f7374f63eed:   mov    %r10,0x108(%r15)
   0.47%              0x00007f7374f63ef4:   prefetchw 0xc0(%r10)
   1.50%              0x00007f7374f63efc:   movq   $0x1,(%rbx)
   2.36%              0x00007f7374f63f03:   movl   $0xd68,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.72%              0x00007f7374f63f0a:   mov    %r12d,0xc(%rbx)
   0.52%              0x00007f7374f63f0e:   cmpb   $0x0,0x38(%r15)
   0.23%              0x00007f7374f63f13:   jne    0x00007f7374f64207
   0.49%              0x00007f7374f63f19:   mov    %rbx,%r11
   0.25%              0x00007f7374f63f1c:   shr    $0x3,%r11
   0.35%              0x00007f7374f63f20:   mov    %r11d,0x1c(%rbp)
   0.25%              0x00007f7374f63f24:   mov    %rbp,%r10
   0.51%              0x00007f7374f63f27:   mov    %rbx,%r11
   0.27%              0x00007f7374f63f2a:   xor    %r10,%r11
   0.40%              0x00007f7374f63f2d:   shr    $0x15,%r11
   0.20%              0x00007f7374f63f31:   test   %r11,%r11
              ╭       0x00007f7374f63f34:   je     0x00007f7374f63f50
              │       0x00007f7374f63f36:   shr    $0x9,%r10
              │       0x00007f7374f63f3a:   movabs $0x7f7386591000,%rdi
              │       0x00007f7374f63f44:   add    %r10,%rdi
              │       0x00007f7374f63f47:   cmpb   $0x4,(%rdi)
              │       0x00007f7374f63f4a:   jne    0x00007f7374f6427c
   0.50%      ↘       0x00007f7374f63f50:   mov    0x108(%r15),%rbx
   0.38%              0x00007f7374f63f57:   mov    %rbx,%r10
   0.37%              0x00007f7374f63f5a:   add    $0x10,%r10
   0.21%              0x00007f7374f63f5e:   xchg   %ax,%ax
   0.51%              0x00007f7374f63f60:   cmp    0x118(%r15),%r10
                      0x00007f7374f63f67:   jae    0x00007f7374f64505
   0.31%              0x00007f7374f63f6d:   mov    %r10,0x108(%r15)
   0.37%              0x00007f7374f63f74:   prefetchw 0xc0(%r10)
   1.59%              0x00007f7374f63f7c:   movq   $0x1,(%rbx)
   2.48%              0x00007f7374f63f83:   movl   $0xd68,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.74%              0x00007f7374f63f8a:   mov    %r12d,0xc(%rbx)
   0.67%              0x00007f7374f63f8e:   cmpb   $0x0,0x38(%r15)
   0.25%              0x00007f7374f63f93:   jne    0x00007f7374f6423f
   0.42%              0x00007f7374f63f99:   mov    %rbx,%r11
   0.28%              0x00007f7374f63f9c:   shr    $0x3,%r11
   0.43%              0x00007f7374f63fa0:   mov    %r11d,0x20(%rbp)
   0.21%              0x00007f7374f63fa4:   mov    %rbp,%r10
   0.42%              0x00007f7374f63fa7:   mov    %rbx,%r11
   0.25%              0x00007f7374f63faa:   xor    %r10,%r11
   0.40%              0x00007f7374f63fad:   shr    $0x15,%r11
   0.26%              0x00007f7374f63fb1:   test   %r11,%r11
               ╭      0x00007f7374f63fb4:   je     0x00007f7374f63fd0
   0.00%       │      0x00007f7374f63fb6:   shr    $0x9,%r10
               │      0x00007f7374f63fba:   movabs $0x7f7386591000,%rdi
               │      0x00007f7374f63fc4:   add    %r10,%rdi
               │      0x00007f7374f63fc7:   cmpb   $0x4,(%rdi)
   0.00%       │      0x00007f7374f63fca:   jne    0x00007f7374f642c5
   0.38%       ↘      0x00007f7374f63fd0:   mov    0x108(%r15),%rbx
   0.43%              0x00007f7374f63fd7:   mov    %rbx,%r10
   0.47%              0x00007f7374f63fda:   add    $0x10,%r10
   0.25%              0x00007f7374f63fde:   xchg   %ax,%ax
   0.41%              0x00007f7374f63fe0:   cmp    0x118(%r15),%r10
                      0x00007f7374f63fe7:   jae    0x00007f7374f6451c
   0.24%              0x00007f7374f63fed:   mov    %r10,0x108(%r15)
   0.43%              0x00007f7374f63ff4:   prefetchw 0xc0(%r10)
   1.68%              0x00007f7374f63ffc:   movq   $0x1,(%rbx)
   2.04%              0x00007f7374f64003:   movl   $0xd68,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.78%              0x00007f7374f6400a:   mov    %r12d,0xc(%rbx)
   0.63%              0x00007f7374f6400e:   cmpb   $0x0,0x38(%r15)
   0.30%        ╭     0x00007f7374f64013:   jne    0x00007f7374f640e7
   0.47%        │  ↗  0x00007f7374f64019:   mov    %rbx,%r11
   0.28%        │  │  0x00007f7374f6401c:   shr    $0x3,%r11
   0.42%        │  │  0x00007f7374f64020:   mov    %r11d,0x24(%rbp)
   0.30%        │  │  0x00007f7374f64024:   mov    %rbp,%r10
   0.45%        │  │  0x00007f7374f64027:   mov    %rbx,%r11
   0.27%        │  │  0x00007f7374f6402a:   xor    %r10,%r11
   0.43%        │  │  0x00007f7374f6402d:   shr    $0x15,%r11
   0.28%        │  │  0x00007f7374f64031:   test   %r11,%r11
                │╭ │  0x00007f7374f64034:   je     0x00007f7374f64050
                ││ │  0x00007f7374f64036:   shr    $0x9,%r10
                ││ │  0x00007f7374f6403a:   movabs $0x7f7386591000,%rdi
                ││ │  0x00007f7374f64044:   add    %r10,%rdi
                ││ │  0x00007f7374f64047:   cmpb   $0x4,(%rdi)
                ││ │  0x00007f7374f6404a:   jne    0x00007f7374f6430c
   0.43%        │↘ │  0x00007f7374f64050:   mov    0x108(%r15),%rbx
   0.49%        │  │  0x00007f7374f64057:   mov    %rbx,%r10
   0.43%        │  │  0x00007f7374f6405a:   add    $0x10,%r10
   0.30%        │  │  0x00007f7374f6405e:   xchg   %ax,%ax
   0.41%        │  │  0x00007f7374f64060:   cmp    0x118(%r15),%r10
                │  │  0x00007f7374f64067:   jae    0x00007f7374f64534
   0.32%        │  │  0x00007f7374f6406d:   mov    %r10,0x108(%r15)
   0.39%        │  │  0x00007f7374f64074:   prefetchw 0xc0(%r10)
   1.88%        │  │  0x00007f7374f6407c:   movq   $0x1,(%rbx)
   1.81%        │  │  0x00007f7374f64083:   movl   $0xd68,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.83%        │  │  0x00007f7374f6408a:   mov    %r12d,0xc(%rbx)              ;*putfield obj1 {reexecute=0 rethrow=0 return_oop=0}
                │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@12 (line 193)
                │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.67%        │  │  0x00007f7374f6408e:   cmpb   $0x0,0x38(%r15)
   0.32%        │  │  0x00007f7374f64093:   jne    0x00007f7374f6411f
   0.42%        │  │  0x00007f7374f64099:   mov    %rbx,%r11
   0.35%        │  │  0x00007f7374f6409c:   shr    $0x3,%r11
   0.35%        │  │  0x00007f7374f640a0:   mov    %r11d,0x28(%rbp)
   0.27%        │  │  0x00007f7374f640a4:   mov    %rbp,%r10
   0.38%        │  │  0x00007f7374f640a7:   mov    %rbx,%r11
   0.27%        │  │  0x00007f7374f640aa:   xor    %r10,%r11
   0.38%        │  │  0x00007f7374f640ad:   shr    $0x15,%r11
   0.25%        │  │  0x00007f7374f640b1:   test   %r11,%r11
                │ ╭│  0x00007f7374f640b4:   je     0x00007f7374f640d1
                │ ││  0x00007f7374f640b6:   shr    $0x9,%r10
                │ ││  0x00007f7374f640ba:   movabs $0x7f7386591000,%r8
                │ ││  0x00007f7374f640c4:   add    %r10,%r8
                │ ││  0x00007f7374f640c7:   cmpb   $0x4,(%r8)
                │ ││  0x00007f7374f640cb:   jne    0x00007f7374f64365           ;*putfield obj8 {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@89 (line 200)
                │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.43%        │ ↘│  0x00007f7374f640d1:   mov    %rbp,%rax
   0.26%        │  │  0x00007f7374f640d4:   add    $0x20,%rsp
   0.40%        │  │  0x00007f7374f640d8:   pop    %rbp
   0.34%        │  │  0x00007f7374f640d9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
                │  │  0x00007f7374f640e0:   ja     0x00007f7374f646d4
   0.74%        │  │  0x00007f7374f640e6:   ret    
                ↘  │  0x00007f7374f640e7:   mov    0x24(%rbp),%r10d
                   │  0x00007f7374f640eb:   test   %r10d,%r10d
                   ╰  0x00007f7374f640ee:   je     0x00007f7374f64019
                      0x00007f7374f640f4:   mov    0x20(%r15),%r11
                      0x00007f7374f640f8:   mov    %r10,%rdi
                      0x00007f7374f640fb:   shl    $0x3,%rdi
                      0x00007f7374f640ff:   nop
                      0x00007f7374f64100:   test   %r11,%r11
                      0x00007f7374f64103:   je     0x00007f7374f64652           ;*putfield obj1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@12 (line 193)
....................................................................................................
  93.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 472 
   3.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 508 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.08%           libjvm.so  HeapRegionClaimer::claim_region 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardTable::is_in_young 
   0.05%        libc-2.31.so  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ObjAllocator::initialize 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1FromCardCache::clear 
   0.03%           libjvm.so  OptoRuntime::new_instance_C 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%           libjvm.so  OtherRegionsTable::is_empty 
   0.03%        libc-2.31.so  [unknown] 
   1.93%  <...other 450 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 472 
   3.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 508 
   0.91%              kernel  [unknown] 
   0.11%        libc-2.31.so  [unknown] 
   0.11%                      <unknown> 
   0.08%           libjvm.so  OptoRuntime::new_instance_C 
   0.08%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.08%           libjvm.so  HeapRegionClaimer::claim_region 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%           libjvm.so  G1CardTable::is_in_young 
   0.05%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.05%           libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.04%           libjvm.so  ObjAllocator::initialize 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.04%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.03%           libjvm.so  G1FromCardCache::clear 
   0.03%           libjvm.so  MemAllocator::allocate 
   0.03%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.97%  <...other 174 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.17%         c2, level 4
   1.46%           libjvm.so
   0.91%              kernel
   0.17%        libc-2.31.so
   0.11%                    
   0.08%          ld-2.31.so
   0.08%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 87.50% complete, ETA 00:01:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 59.368 ns/op
# Warmup Iteration   2: 56.384 ns/op
# Warmup Iteration   3: 58.044 ns/op
# Warmup Iteration   4: 56.390 ns/op
# Warmup Iteration   5: 56.387 ns/op
Iteration   1: 56.373 ns/op
Iteration   2: 56.354 ns/op
Iteration   3: 56.404 ns/op
Iteration   4: 56.464 ns/op
Iteration   5: 56.818 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural":
  56.482 ±(99.9%) 0.739 ns/op [Average]
  (min, avg, max) = (56.354, 56.482, 56.818), stdev = 0.192
  CI (99.9%): [55.743, 57.222] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·asm":
PrintAssembly processed: 120978 total address lines.
Perf output processed (skipped 55.777 seconds):
 Column 1: cycles (50716 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 486 

                         # {method} {0x00007f978087edb0} &apos;wrapper_obj_dse_inter_procedural&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark$Wrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark&apos;
                         #           [sp+0xe0]  (sp of caller)
                         0x00007f9794f64fa0:   mov    0x8(%rsi),%r10d
                         0x00007f9794f64fa4:   movabs $0x800000000,%r11
                         0x00007f9794f64fae:   add    %r11,%r10
                         0x00007f9794f64fb1:   cmp    %r10,%rax
                         0x00007f9794f64fb4:   jne    0x00007f97949fbd80           ;   {runtime_call ic_miss_stub}
                         0x00007f9794f64fba:   xchg   %ax,%ax
                         0x00007f9794f64fbc:   nopl   0x0(%rax)
                       [Verified Entry Point]
   0.31%                 0x00007f9794f64fc0:   mov    %eax,-0x14000(%rsp)
   0.31%                 0x00007f9794f64fc7:   push   %rbp
   0.12%                 0x00007f9794f64fc8:   sub    $0xd0,%rsp
   0.43%                 0x00007f9794f64fcf:   mov    0x108(%r15),%r11
   0.12%                 0x00007f9794f64fd6:   mov    %r11,%r10
   0.10%                 0x00007f9794f64fd9:   add    $0x10,%r10
   0.19%                 0x00007f9794f64fdd:   data16 xchg %ax,%ax
   0.21%                 0x00007f9794f64fe0:   cmp    0x118(%r15),%r10
                         0x00007f9794f64fe7:   jae    0x00007f9794f662c5           ;*putfield obj1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@12 (line 193)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@1 (line 214)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@86 (line 147)
   0.10%                 0x00007f9794f64fed:   mov    %r10,0x108(%r15)
   0.11%                 0x00007f9794f64ff4:   prefetchw 0xc0(%r10)
   0.23%                 0x00007f9794f64ffc:   movq   $0x1,(%r11)
   0.22%                 0x00007f9794f65003:   movl   $0xd68,0x8(%r11)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.13%                 0x00007f9794f6500b:   mov    %r12d,0xc(%r11)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 139)
   0.16%                 0x00007f9794f6500f:   mov    %r11,0x78(%rsp)
   0.23%                 0x00007f9794f65014:   mov    0x108(%r15),%r10
   0.24%                 0x00007f9794f6501b:   mov    %r10,%r11
   0.11%                 0x00007f9794f6501e:   add    $0x10,%r11
   0.09%                 0x00007f9794f65022:   cmp    0x118(%r15),%r11
                         0x00007f9794f65029:   jae    0x00007f9794f662dc
   0.25%                 0x00007f9794f6502f:   mov    %r11,0x108(%r15)
   0.24%                 0x00007f9794f65036:   prefetchw 0xc0(%r11)
   0.20%                 0x00007f9794f6503e:   movq   $0x1,(%r10)
   0.18%                 0x00007f9794f65045:   movl   $0xd68,0x8(%r10)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.26%                 0x00007f9794f6504d:   mov    %r12d,0xc(%r10)
   0.23%                 0x00007f9794f65051:   mov    0x108(%r15),%r11
   0.22%                 0x00007f9794f65058:   mov    %r11,%r8
   0.13%                 0x00007f9794f6505b:   add    $0x10,%r8
   0.27%                 0x00007f9794f6505f:   nop
   0.20%                 0x00007f9794f65060:   cmp    0x118(%r15),%r8
                         0x00007f9794f65067:   jae    0x00007f9794f662f8
   0.12%                 0x00007f9794f6506d:   mov    %r8,0x108(%r15)
   0.13%                 0x00007f9794f65074:   prefetchw 0xc0(%r8)
   0.41%                 0x00007f9794f6507c:   movq   $0x1,(%r11)
   0.28%                 0x00007f9794f65083:   movl   $0xd68,0x8(%r11)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.15%                 0x00007f9794f6508b:   mov    %r12d,0xc(%r11)
   0.16%                 0x00007f9794f6508f:   mov    0x108(%r15),%r8
   0.67%                 0x00007f9794f65096:   mov    %r8,%r9
   0.20%                 0x00007f9794f65099:   add    $0x10,%r9
   0.11%                 0x00007f9794f6509d:   data16 xchg %ax,%ax
   0.11%                 0x00007f9794f650a0:   cmp    0x118(%r15),%r9
                         0x00007f9794f650a7:   jae    0x00007f9794f66325
   0.21%                 0x00007f9794f650ad:   mov    %r9,0x108(%r15)
   0.23%                 0x00007f9794f650b4:   prefetchw 0xc0(%r9)
   0.52%                 0x00007f9794f650bc:   movq   $0x1,(%r8)
   0.31%                 0x00007f9794f650c3:   movl   $0xd68,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.40%                 0x00007f9794f650cb:   mov    %r12d,0xc(%r8)
   0.24%                 0x00007f9794f650cf:   mov    0x108(%r15),%r9
   0.35%                 0x00007f9794f650d6:   mov    %r9,%rcx
   0.10%                 0x00007f9794f650d9:   add    $0x10,%rcx
   0.28%                 0x00007f9794f650dd:   data16 xchg %ax,%ax
   0.19%                 0x00007f9794f650e0:   cmp    0x118(%r15),%rcx
                         0x00007f9794f650e7:   jae    0x00007f9794f66356
   0.14%                 0x00007f9794f650ed:   mov    %rcx,0x108(%r15)
   0.13%                 0x00007f9794f650f4:   prefetchw 0xc0(%rcx)
   0.93%                 0x00007f9794f650fb:   movq   $0x1,(%r9)
   0.54%                 0x00007f9794f65102:   movl   $0xd68,0x8(%r9)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.52%                 0x00007f9794f6510a:   mov    %r12d,0xc(%r9)
   0.21%                 0x00007f9794f6510e:   mov    0x108(%r15),%rcx
   0.48%                 0x00007f9794f65115:   mov    %rcx,%rbx
   0.17%                 0x00007f9794f65118:   add    $0x10,%rbx
   0.26%                 0x00007f9794f6511c:   nopl   0x0(%rax)
   0.15%                 0x00007f9794f65120:   cmp    0x118(%r15),%rbx
                         0x00007f9794f65127:   jae    0x00007f9794f66393
   0.21%                 0x00007f9794f6512d:   mov    %rbx,0x108(%r15)
   0.18%                 0x00007f9794f65134:   prefetchw 0xc0(%rbx)
   1.26%                 0x00007f9794f6513b:   movq   $0x1,(%rcx)
   0.87%                 0x00007f9794f65142:   movl   $0xd68,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.56%                 0x00007f9794f65149:   mov    %r12d,0xc(%rcx)
   0.30%                 0x00007f9794f6514d:   mov    0x108(%r15),%rbx
   0.49%                 0x00007f9794f65154:   mov    %rbx,%rdi
   0.16%                 0x00007f9794f65157:   add    $0x10,%rdi
   0.25%                 0x00007f9794f6515b:   nopl   0x0(%rax,%rax,1)
   0.20%                 0x00007f9794f65160:   cmp    0x118(%r15),%rdi
                         0x00007f9794f65167:   jae    0x00007f9794f663d8
   0.18%                 0x00007f9794f6516d:   mov    %rdi,0x108(%r15)
   0.25%                 0x00007f9794f65174:   prefetchw 0xc0(%rdi)
   1.60%                 0x00007f9794f6517b:   movq   $0x1,(%rbx)
   1.18%                 0x00007f9794f65182:   movl   $0xd68,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.69%                 0x00007f9794f65189:   mov    %r12d,0xc(%rbx)
   0.34%                 0x00007f9794f6518d:   mov    0x108(%r15),%rdi
   0.42%                 0x00007f9794f65194:   mov    %rdi,%rdx
   0.11%                 0x00007f9794f65197:   add    $0x10,%rdx
   0.24%                 0x00007f9794f6519b:   nopl   0x0(%rax,%rax,1)
   0.25%                 0x00007f9794f651a0:   cmp    0x118(%r15),%rdx
                         0x00007f9794f651a7:   jae    0x00007f9794f66429
   0.16%                 0x00007f9794f651ad:   mov    %rdx,0x108(%r15)
   0.19%                 0x00007f9794f651b4:   prefetchw 0xc0(%rdx)
   1.61%                 0x00007f9794f651bb:   movq   $0x1,(%rdi)
   1.79%                 0x00007f9794f651c2:   movl   $0xd68,0x8(%rdi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.60%                 0x00007f9794f651c9:   mov    %r12d,0xc(%rdi)
   0.42%                 0x00007f9794f651cd:   mov    0x108(%r15),%rbp
   0.47%                 0x00007f9794f651d4:   mov    %rbp,%rdx
   0.10%                 0x00007f9794f651d7:   add    $0x30,%rdx
   0.17%                 0x00007f9794f651db:   nopl   0x0(%rax,%rax,1)
   0.29%                 0x00007f9794f651e0:   cmp    0x118(%r15),%rdx
                         0x00007f9794f651e7:   jae    0x00007f9794f66485
   0.12%                 0x00007f9794f651ed:   mov    %rdx,0x108(%r15)
   0.16%                 0x00007f9794f651f4:   prefetchw 0xc0(%rdx)
   1.19%                 0x00007f9794f651fb:   movq   $0x1,0x0(%rbp)
   2.37%                 0x00007f9794f65203:   movl   $0xc26be0,0x8(%rbp)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.62%                 0x00007f9794f6520a:   mov    %r12d,0xc(%rbp)
   0.35%                 0x00007f9794f6520e:   mov    %r12,0x10(%rbp)
   0.70%                 0x00007f9794f65212:   mov    %r12,0x18(%rbp)
   0.51%                 0x00007f9794f65216:   mov    %r12,0x20(%rbp)
   0.52%                 0x00007f9794f6521a:   mov    %r12,0x28(%rbp)
   0.56%                 0x00007f9794f6521e:   mov    0x108(%r15),%rax
   0.48%                 0x00007f9794f65225:   mov    %rax,%rdx
   0.02%                 0x00007f9794f65228:   add    $0x10,%rdx
   0.10%                 0x00007f9794f6522c:   cmp    0x118(%r15),%rdx
                         0x00007f9794f65233:   jae    0x00007f9794f664e7           ;*putfield obj1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@12 (line 193)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@1 (line 214)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@86 (line 147)
   0.53%                 0x00007f9794f65239:   mov    %rdx,0x108(%r15)
   0.09%                 0x00007f9794f65240:   prefetchw 0xc0(%rdx)
   0.40%                 0x00007f9794f65247:   movq   $0x1,(%rax)
   1.12%                 0x00007f9794f6524e:   movl   $0xd68,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.50%                 0x00007f9794f65255:   mov    %r12d,0xc(%rax)
   0.51%                 0x00007f9794f65259:   mov    %r10,0x58(%rsp)
   0.02%                 0x00007f9794f6525e:   mov    %r11,0x60(%rsp)
   0.12%                 0x00007f9794f65263:   mov    %r8,0x68(%rsp)
   0.08%                 0x00007f9794f65268:   mov    %r9,0x70(%rsp)
   0.51%                 0x00007f9794f6526d:   mov    %rcx,0x80(%rsp)
   0.04%                 0x00007f9794f65275:   mov    %rbx,0x88(%rsp)
   0.09%                 0x00007f9794f6527d:   mov    %rdi,0x90(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@5 (line 193)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@1 (line 214)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@86 (line 147)
   0.08%                 0x00007f9794f65285:   mov    0x90(%rsp),%r10
   0.54%                 0x00007f9794f6528d:   shr    $0x3,%r10
   0.03%                 0x00007f9794f65291:   mov    %r10d,0x98(%rsp)
   0.13%                 0x00007f9794f65299:   mov    %rax,%r11
   0.07%                 0x00007f9794f6529c:   shr    $0x3,%r11
   0.46%                 0x00007f9794f652a0:   mov    %r11d,0xc(%rbp)
   0.03%                 0x00007f9794f652a4:   mov    %rax,%r10
   0.09%                 0x00007f9794f652a7:   mov    %rbp,%r9
   0.07%                 0x00007f9794f652aa:   xor    %r9,%r10
   0.47%                 0x00007f9794f652ad:   mov    0x78(%rsp),%r11
   0.05%                 0x00007f9794f652b2:   shr    $0x3,%r11
   0.07%                 0x00007f9794f652b6:   mov    %r11d,0x9c(%rsp)
   0.07%                 0x00007f9794f652be:   shr    $0x15,%r10
   0.48%                 0x00007f9794f652c2:   mov    0x58(%rsp),%r11
   0.13%                 0x00007f9794f652c7:   mov    %r11,%r8
   0.08%                 0x00007f9794f652ca:   shr    $0x3,%r8
   0.06%                 0x00007f9794f652ce:   mov    %r8d,0xa0(%rsp)
   0.44%                 0x00007f9794f652d6:   mov    0x88(%rsp),%r11
   0.15%                 0x00007f9794f652de:   shr    $0x3,%r11
   0.11%                 0x00007f9794f652e2:   mov    %r11d,0xa4(%rsp)
   0.05%                 0x00007f9794f652ea:   mov    0x60(%rsp),%r11
   0.55%                 0x00007f9794f652ef:   mov    %r11,%r8
   0.03%                 0x00007f9794f652f2:   shr    $0x3,%r8
   0.09%                 0x00007f9794f652f6:   mov    %r8d,0xa8(%rsp)
   0.07%                 0x00007f9794f652fe:   mov    0x68(%rsp),%r11
   0.47%                 0x00007f9794f65303:   shr    $0x3,%r11
   0.04%                 0x00007f9794f65307:   mov    %r11d,0xac(%rsp)
   0.13%                 0x00007f9794f6530f:   mov    0x70(%rsp),%r11
   0.08%                 0x00007f9794f65314:   mov    %r11,%r8
   0.48%                 0x00007f9794f65317:   shr    $0x3,%r8
   0.05%                 0x00007f9794f6531b:   mov    %r8d,0xb0(%rsp)
   0.11%                 0x00007f9794f65323:   mov    0x80(%rsp),%r11
   0.06%                 0x00007f9794f6532b:   shr    $0x3,%r11
   0.51%                 0x00007f9794f6532f:   mov    %r11d,0xb4(%rsp)
   0.04%                 0x00007f9794f65337:   test   %r10,%r10
          ╭              0x00007f9794f6533a:   je     0x00007f9794f65356
          │              0x00007f9794f6533c:   shr    $0x9,%r9
          │              0x00007f9794f65340:   movabs $0x7f9788c74000,%rdi
          │              0x00007f9794f6534a:   add    %r9,%rdi
          │              0x00007f9794f6534d:   cmpb   $0x4,(%rdi)
          │              0x00007f9794f65350:   jne    0x00007f9794f6600c
   0.11%  ↘              0x00007f9794f65356:   mov    0x108(%r15),%r8
   0.06%                 0x00007f9794f6535d:   mov    %r8,%r10
   0.46%                 0x00007f9794f65360:   add    $0x10,%r10
   0.05%                 0x00007f9794f65364:   cmp    0x118(%r15),%r10
                         0x00007f9794f6536b:   jae    0x00007f9794f66529
   0.12%                 0x00007f9794f65371:   mov    %r10,0x108(%r15)
   0.07%                 0x00007f9794f65378:   prefetchw 0xc0(%r10)
   0.63%                 0x00007f9794f65380:   movq   $0x1,(%r8)
   0.07%                 0x00007f9794f65387:   movl   $0xd68,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.15%                 0x00007f9794f6538f:   mov    %r12d,0xc(%r8)
   0.14%                 0x00007f9794f65393:   cmpb   $0x0,0x38(%r15)
   0.45%                 0x00007f9794f65398:   jne    0x00007f9794f65b13
   0.03%                 0x00007f9794f6539e:   mov    %r8,%r10
   0.09%                 0x00007f9794f653a1:   shr    $0x3,%r10
   0.09%                 0x00007f9794f653a5:   mov    %r10d,0x10(%rbp)
   0.44%                 0x00007f9794f653a9:   mov    %rbp,%r10
   0.03%                 0x00007f9794f653ac:   mov    %r8,%r11
   0.09%                 0x00007f9794f653af:   xor    %r10,%r11
   0.12%                 0x00007f9794f653b2:   shr    $0x15,%r11
   0.48%                 0x00007f9794f653b6:   test   %r11,%r11
           ╭             0x00007f9794f653b9:   je     0x00007f9794f653d5
           │             0x00007f9794f653bb:   shr    $0x9,%r10
           │             0x00007f9794f653bf:   movabs $0x7f9788c74000,%rdi
           │             0x00007f9794f653c9:   add    %r10,%rdi
           │             0x00007f9794f653cc:   cmpb   $0x4,(%rdi)
           │             0x00007f9794f653cf:   jne    0x00007f9794f66069
   0.03%   ↘             0x00007f9794f653d5:   mov    0x108(%r15),%r8
   0.13%                 0x00007f9794f653dc:   mov    %r8,%r10
   0.11%                 0x00007f9794f653df:   add    $0x10,%r10
   0.51%                 0x00007f9794f653e3:   cmp    0x118(%r15),%r10
                         0x00007f9794f653ea:   jae    0x00007f9794f66551
   0.03%                 0x00007f9794f653f0:   mov    %r10,0x108(%r15)
   0.11%                 0x00007f9794f653f7:   prefetchw 0xc0(%r10)
   0.38%                 0x00007f9794f653ff:   movq   $0x1,(%r8)
   0.64%                 0x00007f9794f65406:   movl   $0xd68,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.16%                 0x00007f9794f6540e:   mov    %r12d,0xc(%r8)
   0.21%                 0x00007f9794f65412:   cmpb   $0x0,0x38(%r15)
   0.08%                 0x00007f9794f65417:   jne    0x00007f9794f65b50
   0.43%                 0x00007f9794f6541d:   mov    %r8,%r10
   0.06%                 0x00007f9794f65420:   shr    $0x3,%r10
   0.17%                 0x00007f9794f65424:   mov    %r10d,0x14(%rbp)
   0.07%                 0x00007f9794f65428:   mov    %rbp,%r10
   0.38%                 0x00007f9794f6542b:   mov    %r8,%r11
   0.04%                 0x00007f9794f6542e:   xor    %r10,%r11
   0.16%                 0x00007f9794f65431:   shr    $0x15,%r11
   0.09%                 0x00007f9794f65435:   test   %r11,%r11
            ╭            0x00007f9794f65438:   je     0x00007f9794f65454
            │            0x00007f9794f6543a:   shr    $0x9,%r10
            │            0x00007f9794f6543e:   movabs $0x7f9788c74000,%rdi
            │            0x00007f9794f65448:   add    %r10,%rdi
            │            0x00007f9794f6544b:   cmpb   $0x4,(%rdi)
            │            0x00007f9794f6544e:   jne    0x00007f9794f660c9
   0.38%    ↘            0x00007f9794f65454:   mov    0x108(%r15),%r8
   0.07%                 0x00007f9794f6545b:   mov    %r8,%r10
   0.15%                 0x00007f9794f6545e:   add    $0x10,%r10
   0.08%                 0x00007f9794f65462:   cmp    0x118(%r15),%r10
                         0x00007f9794f65469:   jae    0x00007f9794f66579
   0.39%                 0x00007f9794f6546f:   mov    %r10,0x108(%r15)
   0.05%                 0x00007f9794f65476:   prefetchw 0xc0(%r10)
   0.62%                 0x00007f9794f6547e:   movq   $0x1,(%r8)
   0.67%                 0x00007f9794f65485:   movl   $0xd68,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.50%                 0x00007f9794f6548d:   mov    %r12d,0xc(%r8)
   0.25%                 0x00007f9794f65491:   cmpb   $0x0,0x38(%r15)
   0.08%                 0x00007f9794f65496:   jne    0x00007f9794f65b87
   0.11%                 0x00007f9794f6549c:   mov    %r8,%r10
   0.27%                 0x00007f9794f6549f:   shr    $0x3,%r10
   0.19%                 0x00007f9794f654a3:   mov    %r10d,0x18(%rbp)
   0.09%                 0x00007f9794f654a7:   mov    %rbp,%r10
   0.09%                 0x00007f9794f654aa:   mov    %r8,%r11
   0.29%                 0x00007f9794f654ad:   xor    %r10,%r11
   0.20%                 0x00007f9794f654b0:   shr    $0x15,%r11
   0.06%                 0x00007f9794f654b4:   test   %r11,%r11
             ╭           0x00007f9794f654b7:   je     0x00007f9794f654d3
             │           0x00007f9794f654b9:   shr    $0x9,%r10
             │           0x00007f9794f654bd:   movabs $0x7f9788c74000,%rdi
             │           0x00007f9794f654c7:   add    %r10,%rdi
             │           0x00007f9794f654ca:   cmpb   $0x4,(%rdi)
             │           0x00007f9794f654cd:   jne    0x00007f9794f66129
   0.16%     ↘           0x00007f9794f654d3:   mov    0x108(%r15),%r8
   0.37%                 0x00007f9794f654da:   mov    %r8,%r10
   0.20%                 0x00007f9794f654dd:   add    $0x10,%r10
   0.08%                 0x00007f9794f654e1:   cmp    0x118(%r15),%r10
                         0x00007f9794f654e8:   jae    0x00007f9794f665a5
   0.14%                 0x00007f9794f654ee:   mov    %r10,0x108(%r15)
   0.32%                 0x00007f9794f654f5:   prefetchw 0xc0(%r10)
   0.86%                 0x00007f9794f654fd:   movq   $0x1,(%r8)
   0.79%                 0x00007f9794f65504:   movl   $0xd68,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.53%                 0x00007f9794f6550c:   mov    %r12d,0xc(%r8)
   0.38%                 0x00007f9794f65510:   cmpb   $0x0,0x38(%r15)
   0.09%                 0x00007f9794f65515:   jne    0x00007f9794f65bbf
   0.13%                 0x00007f9794f6551b:   mov    %r8,%r10
   0.20%                 0x00007f9794f6551e:   shr    $0x3,%r10
   0.28%                 0x00007f9794f65522:   mov    %r10d,0x1c(%rbp)
   0.06%                 0x00007f9794f65526:   mov    %rbp,%r10
   0.19%                 0x00007f9794f65529:   mov    %r8,%r11
   0.20%                 0x00007f9794f6552c:   xor    %r10,%r11
   0.27%                 0x00007f9794f6552f:   shr    $0x15,%r11
   0.10%                 0x00007f9794f65533:   test   %r11,%r11
              ╭          0x00007f9794f65536:   je     0x00007f9794f65552
              │          0x00007f9794f65538:   shr    $0x9,%r10
              │          0x00007f9794f6553c:   movabs $0x7f9788c74000,%rdi
              │          0x00007f9794f65546:   add    %r10,%rdi
              │          0x00007f9794f65549:   cmpb   $0x4,(%rdi)
              │          0x00007f9794f6554c:   jne    0x00007f9794f66189
   0.15%      ↘          0x00007f9794f65552:   mov    0x108(%r15),%r8
   0.21%                 0x00007f9794f65559:   mov    %r8,%r10
   0.28%                 0x00007f9794f6555c:   add    $0x10,%r10
   0.05%                 0x00007f9794f65560:   cmp    0x118(%r15),%r10
                         0x00007f9794f65567:   jae    0x00007f9794f66249
   0.16%                 0x00007f9794f6556d:   mov    %r10,0x108(%r15)
   0.18%                 0x00007f9794f65574:   prefetchw 0xc0(%r10)
   1.15%                 0x00007f9794f6557c:   movq   $0x1,(%r8)
   0.80%                 0x00007f9794f65583:   movl   $0xd68,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.61%                 0x00007f9794f6558b:   mov    %r12d,0xc(%r8)
   0.32%                 0x00007f9794f6558f:   cmpb   $0x0,0x38(%r15)
   0.08%                 0x00007f9794f65594:   jne    0x00007f9794f65bfc
   0.15%                 0x00007f9794f6559a:   mov    %r8,%r10
   0.20%                 0x00007f9794f6559d:   shr    $0x3,%r10
   0.24%                 0x00007f9794f655a1:   mov    %r10d,0x20(%rbp)
   0.05%                 0x00007f9794f655a5:   mov    %rbp,%r10
   0.15%                 0x00007f9794f655a8:   mov    %r8,%r11
   0.17%                 0x00007f9794f655ab:   xor    %r10,%r11
   0.23%                 0x00007f9794f655ae:   shr    $0x15,%r11
   0.06%                 0x00007f9794f655b2:   test   %r11,%r11
               ╭         0x00007f9794f655b5:   je     0x00007f9794f655d1
               │         0x00007f9794f655b7:   shr    $0x9,%r10
   0.00%       │         0x00007f9794f655bb:   movabs $0x7f9788c74000,%rdi
               │         0x00007f9794f655c5:   add    %r10,%rdi
               │         0x00007f9794f655c8:   cmpb   $0x4,(%rdi)
               │         0x00007f9794f655cb:   jne    0x00007f9794f661e9
   0.12%       ↘         0x00007f9794f655d1:   mov    0x108(%r15),%r8
   0.34%                 0x00007f9794f655d8:   mov    %r8,%r10
   0.22%                 0x00007f9794f655db:   add    $0x10,%r10
   0.08%                 0x00007f9794f655df:   nop
   0.15%                 0x00007f9794f655e0:   cmp    0x118(%r15),%r10
                         0x00007f9794f655e7:   jae    0x00007f9794f66271
   0.18%                 0x00007f9794f655ed:   mov    %r10,0x108(%r15)
   0.23%                 0x00007f9794f655f4:   prefetchw 0xc0(%r10)
   0.73%                 0x00007f9794f655fc:   movq   $0x1,(%r8)
   0.61%                 0x00007f9794f65603:   movl   $0xd68,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.51%                 0x00007f9794f6560b:   mov    %r12d,0xc(%r8)
   0.25%                 0x00007f9794f6560f:   cmpb   $0x0,0x38(%r15)
   0.12%                 0x00007f9794f65614:   jne    0x00007f9794f65c33
   0.13%                 0x00007f9794f6561a:   mov    %r8,%r10
   0.20%                 0x00007f9794f6561d:   shr    $0x3,%r10
   0.25%                 0x00007f9794f65621:   mov    %r10d,0x24(%rbp)
   0.08%                 0x00007f9794f65625:   mov    %rbp,%r10
   0.13%                 0x00007f9794f65628:   mov    %r8,%r11
   0.21%                 0x00007f9794f6562b:   xor    %r10,%r11
   0.26%                 0x00007f9794f6562e:   shr    $0x15,%r11
   0.09%                 0x00007f9794f65632:   test   %r11,%r11
                ╭        0x00007f9794f65635:   je     0x00007f9794f65651
                │        0x00007f9794f65637:   shr    $0x9,%r10
                │        0x00007f9794f6563b:   movabs $0x7f9788c74000,%rdi
                │        0x00007f9794f65645:   add    %r10,%rdi
                │        0x00007f9794f65648:   cmpb   $0x4,(%rdi)
                │        0x00007f9794f6564b:   jne    0x00007f9794f65cf1
   0.13%        ↘        0x00007f9794f65651:   mov    0x108(%r15),%r8
   0.26%                 0x00007f9794f65658:   mov    %r8,%r10
   0.27%                 0x00007f9794f6565b:   add    $0x10,%r10
   0.08%                 0x00007f9794f6565f:   nop
   0.14%                 0x00007f9794f65660:   cmp    0x118(%r15),%r10
                         0x00007f9794f65667:   jae    0x00007f9794f66299
   0.23%                 0x00007f9794f6566d:   mov    %r10,0x108(%r15)
   0.25%                 0x00007f9794f65674:   prefetchw 0xc0(%r10)
   0.65%                 0x00007f9794f6567c:   movq   $0x1,(%r8)
   0.62%                 0x00007f9794f65683:   movl   $0xd68,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.51%                 0x00007f9794f6568b:   mov    %r12d,0xc(%r8)
   0.25%                 0x00007f9794f6568f:   cmpb   $0x0,0x38(%r15)
   0.10%                 0x00007f9794f65694:   jne    0x00007f9794f65c70
   0.13%                 0x00007f9794f6569a:   mov    %r8,%r10
   0.22%                 0x00007f9794f6569d:   shr    $0x3,%r10
   0.22%                 0x00007f9794f656a1:   mov    %r10d,0x28(%rbp)
   0.12%                 0x00007f9794f656a5:   mov    %rbp,%r10
   0.11%                 0x00007f9794f656a8:   mov    %r8,%r11
   0.23%                 0x00007f9794f656ab:   xor    %r10,%r11
   0.24%                 0x00007f9794f656ae:   shr    $0x15,%r11
   0.13%                 0x00007f9794f656b2:   test   %r11,%r11
                 ╭       0x00007f9794f656b5:   je     0x00007f9794f656d1
                 │       0x00007f9794f656b7:   shr    $0x9,%r10
                 │       0x00007f9794f656bb:   movabs $0x7f9788c74000,%rdi
                 │       0x00007f9794f656c5:   add    %r10,%rdi
                 │       0x00007f9794f656c8:   cmpb   $0x4,(%rdi)
                 │       0x00007f9794f656cb:   jne    0x00007f9794f65d49
   0.10%         ↘       0x00007f9794f656d1:   cmpb   $0x0,0x38(%r15)
   0.19%                 0x00007f9794f656d6:   jne    0x00007f9794f65943
   0.24%                 0x00007f9794f656dc:   mov    0x9c(%rsp),%r10d
   0.13%                 0x00007f9794f656e4:   mov    %r10d,0xc(%rbp)
   0.09%                 0x00007f9794f656e8:   mov    0x78(%rsp),%r10
   0.20%                 0x00007f9794f656ed:   mov    %r10,%r11
   0.27%                 0x00007f9794f656f0:   mov    %rbp,%r10
   0.13%                 0x00007f9794f656f3:   xor    %r10,%r11
   0.12%                 0x00007f9794f656f6:   shr    $0x15,%r11
   0.21%                 0x00007f9794f656fa:   nopw   0x0(%rax,%rax,1)
   0.26%                 0x00007f9794f65700:   test   %r11,%r11
                  ╭      0x00007f9794f65703:   je     0x00007f9794f6571f
                  │      0x00007f9794f65705:   shr    $0x9,%r10
                  │      0x00007f9794f65709:   movabs $0x7f9788c74000,%rdi
                  │      0x00007f9794f65713:   add    %r10,%rdi
                  │      0x00007f9794f65716:   cmpb   $0x4,(%rdi)
                  │      0x00007f9794f65719:   jne    0x00007f9794f65da9
   0.10%          ↘      0x00007f9794f6571f:   nop
   0.09%                 0x00007f9794f65720:   cmpb   $0x0,0x38(%r15)
   0.19%                 0x00007f9794f65725:   jne    0x00007f9794f6597f
   0.23%                 0x00007f9794f6572b:   mov    0xa0(%rsp),%r10d
   0.10%                 0x00007f9794f65733:   mov    %r10d,0x10(%rbp)
   0.11%                 0x00007f9794f65737:   mov    0x58(%rsp),%r10
   0.22%                 0x00007f9794f6573c:   mov    %r10,%r11
   0.20%                 0x00007f9794f6573f:   mov    %rbp,%r10
   0.12%                 0x00007f9794f65742:   xor    %r10,%r11
   0.13%                 0x00007f9794f65745:   shr    $0x15,%r11
   0.21%                 0x00007f9794f65749:   test   %r11,%r11
                   ╭     0x00007f9794f6574c:   je     0x00007f9794f65769
                   │     0x00007f9794f6574e:   shr    $0x9,%r10
                   │     0x00007f9794f65752:   movabs $0x7f9788c74000,%rdi
                   │     0x00007f9794f6575c:   add    %r10,%rdi
                   │     0x00007f9794f6575f:   nop
                   │     0x00007f9794f65760:   cmpb   $0x4,(%rdi)
                   │     0x00007f9794f65763:   jne    0x00007f9794f65e09
   0.23%           ↘     0x00007f9794f65769:   cmpb   $0x0,0x38(%r15)
   0.10%                 0x00007f9794f6576e:   jne    0x00007f9794f659bc
   0.13%                 0x00007f9794f65774:   mov    0xa8(%rsp),%r10d
   0.24%                 0x00007f9794f6577c:   mov    %r10d,0x14(%rbp)
   0.25%                 0x00007f9794f65780:   mov    0x60(%rsp),%r10
   0.12%                 0x00007f9794f65785:   mov    %r10,%r11
   0.14%                 0x00007f9794f65788:   mov    %rbp,%r10
   0.23%                 0x00007f9794f6578b:   xor    %r10,%r11
   0.21%                 0x00007f9794f6578e:   shr    $0x15,%r11
   0.11%                 0x00007f9794f65792:   test   %r11,%r11
                    ╭    0x00007f9794f65795:   je     0x00007f9794f657b1
                    │    0x00007f9794f65797:   shr    $0x9,%r10
                    │    0x00007f9794f6579b:   movabs $0x7f9788c74000,%rdi
                    │    0x00007f9794f657a5:   add    %r10,%rdi
                    │    0x00007f9794f657a8:   cmpb   $0x4,(%rdi)
                    │    0x00007f9794f657ab:   jne    0x00007f9794f65e69
   0.12%            ↘    0x00007f9794f657b1:   cmpb   $0x0,0x38(%r15)
   0.23%                 0x00007f9794f657b6:   jne    0x00007f9794f659f3
   0.19%                 0x00007f9794f657bc:   mov    0xac(%rsp),%r10d
   0.13%                 0x00007f9794f657c4:   mov    %r10d,0x18(%rbp)
   0.11%                 0x00007f9794f657c8:   mov    0x68(%rsp),%r10
   0.24%                 0x00007f9794f657cd:   mov    %rbp,%r11
   0.21%                 0x00007f9794f657d0:   xor    %r11,%r10
   0.12%                 0x00007f9794f657d3:   shr    $0x15,%r10
   0.12%                 0x00007f9794f657d7:   test   %r10,%r10
                     ╭   0x00007f9794f657da:   je     0x00007f9794f657f6
                     │   0x00007f9794f657dc:   shr    $0x9,%r11
                     │   0x00007f9794f657e0:   movabs $0x7f9788c74000,%rdi
                     │   0x00007f9794f657ea:   add    %r11,%rdi
                     │   0x00007f9794f657ed:   cmpb   $0x4,(%rdi)
                     │   0x00007f9794f657f0:   jne    0x00007f9794f65ec9
   0.21%             ↘   0x00007f9794f657f6:   data16 nopw 0x0(%rax,%rax,1)
   0.24%                 0x00007f9794f65800:   cmpb   $0x0,0x38(%r15)
   0.12%                 0x00007f9794f65805:   jne    0x00007f9794f65a30
   0.12%                 0x00007f9794f6580b:   mov    0xb0(%rsp),%r11d
   0.23%                 0x00007f9794f65813:   mov    %r11d,0x1c(%rbp)
   0.25%                 0x00007f9794f65817:   mov    0x70(%rsp),%r10
   0.13%                 0x00007f9794f6581c:   mov    %rbp,%r11
   0.11%                 0x00007f9794f6581f:   xor    %r11,%r10
   0.21%                 0x00007f9794f65822:   shr    $0x15,%r10
   0.22%                 0x00007f9794f65826:   test   %r10,%r10
                      ╭  0x00007f9794f65829:   je     0x00007f9794f65849
                      │  0x00007f9794f6582b:   shr    $0x9,%r11
                      │  0x00007f9794f6582f:   movabs $0x7f9788c74000,%rdi
                      │  0x00007f9794f65839:   add    %r11,%rdi
                      │  0x00007f9794f6583c:   nopl   0x0(%rax)
                      │  0x00007f9794f65840:   cmpb   $0x4,(%rdi)
                      │  0x00007f9794f65843:   jne    0x00007f9794f65f28
   0.11%              ↘  0x00007f9794f65849:   cmpb   $0x0,0x38(%r15)
   0.13%                 0x00007f9794f6584e:   jne    0x00007f9794f65a67
   0.19%                 0x00007f9794f65854:   mov    0xb4(%rsp),%r10d
....................................................................................................
  88.96%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 486 
   4.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 486 
   1.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 523 
   1.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 486 
   0.33%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%        libc-2.31.so  [unknown] 
   0.08%           libjvm.so  HeapRegionClaimer::claim_region 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%           libjvm.so  G1CardTable::is_in_young 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1FromCardCache::clear 
   0.04%           libjvm.so  OtherRegionsTable::occupied 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%              [vdso]  __vdso_clock_gettime 
   0.03%           libjvm.so  ObjAllocator::initialize 
   2.27%  <...other 518 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 486 
   1.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 523 
   1.46%              kernel  [unknown] 
   0.17%        libc-2.31.so  [unknown] 
   0.10%                      <unknown> 
   0.08%           libjvm.so  HeapRegionClaimer::claim_region 
   0.07%           libjvm.so  OptoRuntime::new_instance_C 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%           libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%           libjvm.so  G1CardTable::is_in_young 
   0.04%              [vdso]  __vdso_clock_gettime 
   0.04%           libjvm.so  G1FromCardCache::clear 
   0.04%           libjvm.so  OtherRegionsTable::occupied 
   0.04%           libjvm.so  ObjAllocator::initialize 
   0.03%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.03%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.03%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   1.00%  <...other 179 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.55%         c2, level 4
   1.50%           libjvm.so
   1.46%              kernel
   0.22%        libc-2.31.so
   0.10%                    
   0.06%  libpthread-2.31.so
   0.05%          ld-2.31.so
   0.04%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:23

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
DeadLocalAllocationStoreBenchmark.array_baseline                             64  avgt    5  13.293 ± 1.056  ns/op
DeadLocalAllocationStoreBenchmark.array_baseline:·asm                        64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.array_dse                                  64  avgt    5  12.668 ± 0.341  ns/op
DeadLocalAllocationStoreBenchmark.array_dse:·asm                             64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural                 64  avgt    5  26.691 ± 0.487  ns/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·asm            64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline                         64  avgt    5   7.024 ± 0.025  ns/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·asm                    64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.obj_dse                                    64  avgt    5   7.024 ± 0.006  ns/op
DeadLocalAllocationStoreBenchmark.obj_dse:·asm                               64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural                   64  avgt    5  78.365 ± 0.953  ns/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·asm              64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline                       64  avgt    5  27.654 ± 0.076  ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·asm                  64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural           64  avgt    5  56.482 ± 0.739  ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·asm      64  avgt          NaN            ---
