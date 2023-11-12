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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline
# Parameters: (size = 64)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.779 ns/op
# Warmup Iteration   2: 12.640 ns/op
# Warmup Iteration   3: 12.709 ns/op
# Warmup Iteration   4: 12.623 ns/op
# Warmup Iteration   5: 12.641 ns/op
Iteration   1: 12.631 ns/op
                 gc.alloc.rate:      6039.869 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            43.000 ms

Iteration   2: 12.631 ns/op
                 gc.alloc.rate:      6039.985 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           24.000 counts
                 gc.time:            43.000 ms

Iteration   3: 12.640 ns/op
                 gc.alloc.rate:      6035.599 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            42.000 ms

Iteration   4: 12.614 ns/op
                 gc.alloc.rate:      6048.245 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            42.000 ms

Iteration   5: 12.625 ns/op
                 gc.alloc.rate:      6042.740 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           24.000 counts
                 gc.time:            42.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline":
  12.628 ±(99.9%) 0.037 ns/op [Average]
  (min, avg, max) = (12.614, 12.628, 12.640), stdev = 0.010
  CI (99.9%): [12.591, 12.666] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:asm":
PrintAssembly processed: 231721 total address lines.
Perf output processed (skipped 60.879 seconds):
 Column 1: cycles (51080 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 975 

                    # {method} {0x00007f9edf47d6c8} &apos;array_baseline&apos; &apos;()[B&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                    #           [sp+0x20]  (sp of caller)
                    0x00007f9f5f240e80:   mov    0x8(%rsi),%r10d
                    0x00007f9f5f240e84:   movabs $0x7f9ee3000000,%r12
                    0x00007f9f5f240e8e:   add    %r12,%r10
                    0x00007f9f5f240e91:   xor    %r12,%r12
                    0x00007f9f5f240e94:   cmp    %r10,%rax
                    0x00007f9f5f240e97:   jne    0x00007f9f5ec2f080           ;   {runtime_call ic_miss_stub}
                    0x00007f9f5f240e9d:   data16 xchg %ax,%ax
                  [Verified Entry Point]
   0.64%            0x00007f9f5f240ea0:   mov    %eax,-0x14000(%rsp)
   2.69%            0x00007f9f5f240ea7:   sub    $0x18,%rsp
   0.57%            0x00007f9f5f240eab:   nop
   0.02%            0x00007f9f5f240eac:   cmpl   $0x0,0x20(%r15)
   2.43%  ╭         0x00007f9f5f240eb4:   jne    0x00007f9f5f240fbb
   1.15%  │      ↗  0x00007f9f5f240eba:   mov    %rbp,0x10(%rsp)
   0.35%  │      │  0x00007f9f5f240ebf:   mov    %rsi,%rcx
   0.02%  │      │  0x00007f9f5f240ec2:   mov    0x1b8(%r15),%r10
   1.52%  │      │  0x00007f9f5f240ec9:   mov    0x1c8(%r15),%rax             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@4 (line 152)
   1.27%  │      │  0x00007f9f5f240ed0:   mov    0xc(%rcx),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@1 (line 152)
   0.45%  │      │  0x00007f9f5f240ed3:   mov    %edx,%esi
   0.02%  │      │  0x00007f9f5f240ed5:   lea    0x17(%rsi),%rsi
   1.30%  │      │  0x00007f9f5f240ed9:   and    $0xfffffffffffffff8,%rsi
   1.31%  │      │  0x00007f9f5f240edd:   mov    %rsi,%rdi
   0.41%  │      │  0x00007f9f5f240ee0:   add    %r10,%rdi
   1.33%  │      │  0x00007f9f5f240ee3:   cmp    %rax,%rdi
          │╭     │  0x00007f9f5f240ee6:   ja     0x00007f9f5f240f91
   3.06%  ││     │  0x00007f9f5f240eec:   mov    %rdi,0x1b8(%r15)
   2.30%  ││     │  0x00007f9f5f240ef3:   prefetchw 0xc0(%rsi,%r10,1)
   5.59%  ││     │  0x00007f9f5f240efc:   prefetchw 0x100(%rsi,%r10,1)
   0.30%  ││     │  0x00007f9f5f240f05:   prefetchw 0x140(%rsi,%r10,1)
   3.03%  ││     │  0x00007f9f5f240f0e:   prefetchw 0x180(%rsi,%r10,1)
   3.64%  ││     │  0x00007f9f5f240f17:   movq   $0x1,(%r10)
   1.34%  ││     │  0x00007f9f5f240f1e:   movl   $0x22c0,0x8(%r10)            ;   {metadata({type array byte})}
   0.08%  ││     │  0x00007f9f5f240f26:   mov    %edx,0xc(%r10)
   1.13%  ││     │  0x00007f9f5f240f2a:   lea    -0x10(%rsi),%rcx
   0.72%  ││     │  0x00007f9f5f240f2e:   cmp    $0x800,%rcx
          ││╭    │  0x00007f9f5f240f35:   jae    0x00007f9f5f240faf
   1.13%  │││    │  0x00007f9f5f240f3b:   mov    $0x10,%rax
   0.07%  │││╭   │  0x00007f9f5f240f42:   jmp    0x00007f9f5f240f6c
          ││││   │  0x00007f9f5f240f47:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││││   │  0x00007f9f5f240f52:   data16 data16 xchg %ax,%ax
          ││││   │  0x00007f9f5f240f56:   data16 nopw 0x0(%rax,%rax,1)
  17.97%  ││││↗  │  0x00007f9f5f240f60:   movq   $0x0,(%r10,%rax,1)
   5.25%  │││││  │  0x00007f9f5f240f68:   lea    0x8(%rax),%rax
   3.70%  │││↘│  │  0x00007f9f5f240f6c:   cmp    %rax,%rsi
          │││ ╰  │  0x00007f9f5f240f6f:   ja     0x00007f9f5f240f60           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@4 (line 152)
   0.59%  │││  ↗↗│  0x00007f9f5f240f71:   mov    %r10,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@6 (line 152)
   1.88%  │││  │││  0x00007f9f5f240f74:   mov    0x10(%rsp),%rbp
   0.71%  │││  │││  0x00007f9f5f240f79:   add    $0x18,%rsp
   0.03%  │││  │││  0x00007f9f5f240f7d:   data16 xchg %ax,%ax
   0.61%  │││  │││  0x00007f9f5f240f80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  │││  0x00007f9f5f240f87:   ja     0x00007f9f5f240fcb
   2.23%  │││  │││  0x00007f9f5f240f8d:   vzeroupper 
   3.05%  │││  │││  0x00007f9f5f240f90:   ret    
   0.02%  │↘│  │││  0x00007f9f5f240f91:   movabs $0x7f9ee30022c0,%rsi         ;   {metadata({type array byte})}
          │ │  │││  0x00007f9f5f240f9b:   call   0x00007f9f5edb6f00           ; ImmutableOopMap {rcx=Oop }
          │ │  │││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@0 (line 152)
          │ │  │││                                                            ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
          │ │  │││  0x00007f9f5f240fa0:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rcx=Oop }
          │ │  │││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@0 (line 152)
          │ │  │││  0x00007f9f5f240fa8:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f9f5f240fdf
   0.00%  │ │  │││  0x00007f9f5f240faa:   mov    %rax,%r10
          │ │  ╰││  0x00007f9f5f240fad:   jmp    0x00007f9f5f240f71
          │ ↘   ││  0x00007f9f5f240faf:   lea    0x10(%r10),%rdi
          │     ││  0x00007f9f5f240fb3:   xor    %rax,%rax
          │     ││  0x00007f9f5f240fb6:   rep rex.W stos %al,%es:(%rdi)
          │     ╰│  0x00007f9f5f240fb9:   jmp    0x00007f9f5f240f71           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@4 (line 152)
          ↘      │  0x00007f9f5f240fbb:   mov    %rbp,0x10(%rsp)
                 │  0x00007f9f5f240fc0:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                 ╰  0x00007f9f5f240fc5:   jmp    0x00007f9f5f240eba
                    0x00007f9f5f240fca:   hlt    
....................................................................................................
  73.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 1024 

              0x00007f9f5f247390:   mov    0x18(%rsp),%rsi
              0x00007f9f5f247395:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f9f5f2473a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f9f5f2473a7:   jne    0x00007f9f5f24743a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 196)
              0x00007f9f5f2473ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f9f5f2473b6:   jmp    0x00007f9f5f2473cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@13 (line 194)
          │   0x00007f9f5f2473bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 196)
   3.06%  │↗  0x00007f9f5f2473c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 196)
   0.13%  ││  0x00007f9f5f2473c7:   test   %eax,(%r11)                  ;   {poll}
   1.13%  ││  0x00007f9f5f2473ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@13 (line 194)
   0.02%  ↘│  0x00007f9f5f2473cf:   mov    0x8(%rsp),%r10
   2.53%   │  0x00007f9f5f2473d4:   mov    %r10,%rsi
   0.02%   │  0x00007f9f5f2473d7:   call   0x00007f9f5ec2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_baseline {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   0.82%   │  0x00007f9f5f2473dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   0.01%   │  0x00007f9f5f2473e4:   mov    0x20(%rsp),%r10
   2.85%   │  0x00007f9f5f2473e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@26 (line 195)
   1.57%   │  0x00007f9f5f2473ec:   mov    0x18(%rsp),%rsi
   0.06%   │  0x00007f9f5f2473f1:   cmpb   $0x0,0x94(%rsi)
   9.95%   ╰  0x00007f9f5f2473f8:   je     0x00007f9f5f2473c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 196)
              0x00007f9f5f2473fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@36 (line 197)
              0x00007f9f5f2473ff:   nop
              0x00007f9f5f247400:   call   0x00007f9f78a29df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f9f5f247405:   nop
              0x00007f9f5f247406:   mov    0x10(%rsp),%rdx
              0x00007f9f5f24740b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@40 (line 197)
              0x00007f9f5f24740f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  22.15%  <total for region 2>

....[Hottest Regions]...............................................................................
  73.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 975 
  22.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 1024 
   0.33%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.11%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.11%        libc-2.31.so  __memset_avx2_erms 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%           libjvm.so  G1CardSet::reset_table_scanner 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%           libjvm.so  HeapRegionManager::par_iterate 
   0.07%                      <unknown> 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardSet::clear 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   2.39%  <...other 547 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 975 
  22.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 1024 
   1.65%              kernel  [unknown] 
   0.25%                      <unknown> 
   0.14%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.11%        libc-2.31.so  __memset_avx2_erms 
   0.10%           libjvm.so  G1CardSet::reset_table_scanner 
   0.07%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%              [vdso]  __vdso_clock_gettime 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%           libjvm.so  ObjArrayAllocator::initialize 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%           libjvm.so  G1CardSet::clear 
   0.03%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%           libjvm.so  TypeArrayKlass::allocate_common 
   0.03%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  JVMCIRuntime::new_array_common 
   1.16%  <...other 207 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.06%      jvmci, level 4
   1.65%              kernel
   1.55%           libjvm.so
   0.29%        libc-2.31.so
   0.25%                    
   0.07%  libpthread-2.31.so
   0.05%              [vdso]
   0.03%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.00%    perf-2105609.map
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate":
  6041.288 ±(99.9%) 17.915 MB/sec [Average]
  (min, avg, max) = (6035.599, 6041.288, 6048.245), stdev = 4.653
  CI (99.9%): [6023.372, 6059.203] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.count":
  123.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (24.000, 24.600, 25.000), stdev = 0.548
  CI (99.9%): [123.000, 123.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.time":
  212.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (42.000, 42.400, 43.000), stdev = 0.548
  CI (99.9%): [212.000, 212.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse
# Parameters: (size = 64)

# Run progress: 12.50% complete, ETA 00:13:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.483 ns/op
# Warmup Iteration   2: 14.861 ns/op
# Warmup Iteration   3: 15.507 ns/op
# Warmup Iteration   4: 15.595 ns/op
# Warmup Iteration   5: 15.650 ns/op
Iteration   1: 15.458 ns/op
                 gc.alloc.rate:      4935.474 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           20.000 counts
                 gc.time:            36.000 ms

Iteration   2: 15.798 ns/op
                 gc.alloc.rate:      4829.146 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           20.000 counts
                 gc.time:            36.000 ms

Iteration   3: 15.215 ns/op
                 gc.alloc.rate:      5014.371 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           21.000 counts
                 gc.time:            36.000 ms

Iteration   4: 15.429 ns/op
                 gc.alloc.rate:      4944.783 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           20.000 counts
                 gc.time:            36.000 ms

Iteration   5: 15.292 ns/op
                 gc.alloc.rate:      4988.971 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           20.000 counts
                 gc.time:            36.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse":
  15.438 ±(99.9%) 0.864 ns/op [Average]
  (min, avg, max) = (15.215, 15.438, 15.798), stdev = 0.224
  CI (99.9%): [14.574, 16.302] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:asm":
PrintAssembly processed: 227764 total address lines.
Perf output processed (skipped 60.594 seconds):
 Column 1: cycles (51458 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 982 

                   # {method} {0x00007f671747d7c0} &apos;array_dse&apos; &apos;()[B&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                   #           [sp+0x20]  (sp of caller)
                   0x00007f679723d620:   mov    0x8(%rsi),%r10d
                   0x00007f679723d624:   movabs $0x7f671b000000,%r12
                   0x00007f679723d62e:   add    %r12,%r10
                   0x00007f679723d631:   xor    %r12,%r12
                   0x00007f679723d634:   cmp    %r10,%rax
                   0x00007f679723d637:   jne    0x00007f6796c2f080           ;   {runtime_call ic_miss_stub}
                   0x00007f679723d63d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   1.24%           0x00007f679723d640:   mov    %eax,-0x14000(%rsp)
   1.41%           0x00007f679723d647:   sub    $0x18,%rsp
   1.18%           0x00007f679723d64b:   nop
   0.01%           0x00007f679723d64c:   cmpl   $0x1,0x20(%r15)
   1.06%           0x00007f679723d654:   jne    0x00007f679723d77e
   1.08%           0x00007f679723d65a:   mov    %rbp,0x10(%rsp)
   0.67%           0x00007f679723d65f:   mov    %rsi,%r10
   0.01%           0x00007f679723d662:   mov    0xc(%r10),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@1 (line 160)
   0.59%           0x00007f679723d666:   test   %edx,%edx
          ╭        0x00007f679723d668:   jl     0x00007f679723d75b           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@4 (line 160)
   1.14%  │        0x00007f679723d66e:   mov    0x1b8(%r15),%r11
   0.74%  │        0x00007f679723d675:   mov    %edx,%eax
   0.00%  │        0x00007f679723d677:   lea    0x17(%rax),%rax
   0.59%  │        0x00007f679723d67b:   and    $0xfffffffffffffff8,%rax
   1.09%  │        0x00007f679723d67f:   mov    %rax,%rsi
   0.66%  │        0x00007f679723d682:   add    %r11,%rsi
   0.01%  │        0x00007f679723d685:   cmp    0x1c8(%r15),%rsi
          │╭       0x00007f679723d68c:   ja     0x00007f679723d731
   1.12%  ││       0x00007f679723d692:   mov    %rsi,0x1b8(%r15)
   1.24%  ││       0x00007f679723d699:   prefetchw 0xc0(%rax,%r11,1)
   4.64%  ││       0x00007f679723d6a2:   prefetchw 0x100(%rax,%r11,1)
   0.19%  ││       0x00007f679723d6ab:   prefetchw 0x140(%rax,%r11,1)
   2.07%  ││       0x00007f679723d6b4:   prefetchw 0x180(%rax,%r11,1)
   1.92%  ││       0x00007f679723d6bd:   movq   $0x1,(%r11)
   2.03%  ││       0x00007f679723d6c4:   movl   $0x22c0,0x8(%r11)            ;   {metadata({type array byte})}
   1.52%  ││       0x00007f679723d6cc:   mov    %edx,0xc(%r11)
   0.91%  ││       0x00007f679723d6d0:   lea    -0x10(%rax),%rcx
   0.16%  ││       0x00007f679723d6d4:   nopl   0x0(%rax,%rax,1)
   0.88%  ││       0x00007f679723d6dc:   data16 data16 xchg %ax,%ax
   0.55%  ││       0x00007f679723d6e0:   cmp    $0x800,%rcx
          ││╭      0x00007f679723d6e7:   jae    0x00007f679723d74f
   0.78%  │││      0x00007f679723d6ed:   mov    $0x10,%rsi
   0.15%  │││╭     0x00007f679723d6f4:   jmp    0x00007f679723d70c
          ││││     0x00007f679723d6f9:   nopl   0x0(%rax)
  10.17%  ││││↗    0x00007f679723d700:   movq   $0x0,(%r11,%rsi,1)
  13.02%  │││││    0x00007f679723d708:   lea    0x8(%rsi),%rsi
   4.22%  │││↘│    0x00007f679723d70c:   cmp    %rsi,%rax
          │││ ╰    0x00007f679723d70f:   ja     0x00007f679723d700           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@25 (line 163)
   0.07%  │││  ↗↗  0x00007f679723d711:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@29 (line 164)
   0.73%  │││  ││  0x00007f679723d714:   mov    0x10(%rsp),%rbp
   1.70%  │││  ││  0x00007f679723d719:   add    $0x18,%rsp
   0.49%  │││  ││  0x00007f679723d71d:   data16 xchg %ax,%ax
   0.05%  │││  ││  0x00007f679723d720:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  ││  0x00007f679723d727:   ja     0x00007f679723d78e
   1.53%  │││  ││  0x00007f679723d72d:   vzeroupper 
   2.36%  │││  ││  0x00007f679723d730:   ret    
   0.01%  │↘│  ││  0x00007f679723d731:   movabs $0x7f671b0022c0,%rsi         ;   {metadata({type array byte})}
   0.01%  │ │  ││  0x00007f679723d73b:   call   0x00007f6796db9300           ; ImmutableOopMap {r10=Oop }
          │ │  ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@0 (line 160)
          │ │  ││                                                            ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
          │ │  ││  0x00007f679723d740:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop r10=Oop }
          │ │  ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@0 (line 160)
          │ │  ││  0x00007f679723d748:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f679723d7a6
   0.00%  │ │  ││  0x00007f679723d74a:   mov    %rax,%r11
          │ │  ╰│  0x00007f679723d74d:   jmp    0x00007f679723d711
          │ ↘   │  0x00007f679723d74f:   lea    0x10(%r11),%rdi
          │     │  0x00007f679723d753:   xor    %rax,%rax
          │     │  0x00007f679723d756:   rep rex.W stos %al,%es:(%rdi)
          │     ╰  0x00007f679723d759:   jmp    0x00007f679723d711           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@25 (line 163)
          ↘        0x00007f679723d75b:   movl   $0xffffff8f,0x484(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@4 (line 160)
                   0x00007f679723d766:   movq   $0x0,0x490(%r15)
                   0x00007f679723d771:   call   0x00007f6796c3517a           ; ImmutableOopMap {r10=Oop }
....................................................................................................
  63.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 1031 

              0x00007f6797245090:   mov    0x18(%rsp),%rsi
              0x00007f6797245095:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f67972450a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f67972450a7:   jne    0x00007f679724513a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 196)
              0x00007f67972450ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f67972450b6:   jmp    0x00007f67972450cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@13 (line 194)
          │   0x00007f67972450bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 196)
   2.33%  │↗  0x00007f67972450c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 196)
   0.03%  ││  0x00007f67972450c7:   test   %eax,(%r11)                  ;   {poll}
   2.04%  ││  0x00007f67972450ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@13 (line 194)
   0.01%  ↘│  0x00007f67972450cf:   mov    0x8(%rsp),%r10
   1.08%   │  0x00007f67972450d4:   mov    %r10,%rsi
   0.01%   │  0x00007f67972450d7:   call   0x00007f6796c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_dse {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   2.44%   │  0x00007f67972450dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   0.01%   │  0x00007f67972450e4:   mov    0x20(%rsp),%r10
  12.97%   │  0x00007f67972450e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@26 (line 195)
   1.76%   │  0x00007f67972450ec:   mov    0x18(%rsp),%rsi
   0.02%   │  0x00007f67972450f1:   cmpb   $0x0,0x94(%rsi)
   8.59%   ╰  0x00007f67972450f8:   je     0x00007f67972450c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 196)
              0x00007f67972450fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@36 (line 197)
              0x00007f67972450ff:   nop
              0x00007f6797245100:   call   0x00007f67aeac4df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f6797245105:   nop
              0x00007f6797245106:   mov    0x10(%rsp),%rdx
              0x00007f679724510b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@40 (line 197)
              0x00007f679724510f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  31.28%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 982 
  31.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 1031 
   0.98%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.10%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%           libjvm.so  G1CardSet::reset_table_scanner 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardSet::clear 
   0.03%              kernel  [unknown] 
   2.52%  <...other 584 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 982 
  31.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 1031 
   2.78%              kernel  [unknown] 
   0.26%                      <unknown> 
   0.11%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.07%           libjvm.so  G1CardSet::reset_table_scanner 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.04%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%           libjvm.so  G1CardSet::clear 
   0.03%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  TypeArrayKlass::allocate_common 
   0.03%           libjvm.so  ObjArrayAllocator::initialize 
   0.02%           libjvm.so  xmlStream::write_text 
   0.98%  <...other 195 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.27%      jvmci, level 4
   2.78%              kernel
   1.25%           libjvm.so
   0.26%                    
   0.25%        libc-2.31.so
   0.08%  libpthread-2.31.so
   0.03%              [vdso]
   0.03%          ld-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%         c1, level 2
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate":
  4942.549 ±(99.9%) 273.834 MB/sec [Average]
  (min, avg, max) = (4829.146, 4942.549, 5014.371), stdev = 71.114
  CI (99.9%): [4668.715, 5216.383] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.count":
  101.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (20.000, 20.200, 21.000), stdev = 0.447
  CI (99.9%): [101.000, 101.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.time":
  180.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (36.000, 36.000, 36.000), stdev = 0.001
  CI (99.9%): [180.000, 180.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 25.00% complete, ETA 00:11:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 32.155 ns/op
# Warmup Iteration   2: 32.131 ns/op
# Warmup Iteration   3: 31.746 ns/op
# Warmup Iteration   4: 31.984 ns/op
# Warmup Iteration   5: 31.870 ns/op
Iteration   1: 31.907 ns/op
                 gc.alloc.rate:      2391.089 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           10.000 counts
                 gc.time:            18.000 ms

Iteration   2: 31.857 ns/op
                 gc.alloc.rate:      2394.838 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           10.000 counts
                 gc.time:            20.000 ms

Iteration   3: 31.872 ns/op
                 gc.alloc.rate:      2393.716 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           9.000 counts
                 gc.time:            17.000 ms

Iteration   4: 31.779 ns/op
                 gc.alloc.rate:      2398.032 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           10.000 counts
                 gc.time:            17.000 ms

Iteration   5: 31.884 ns/op
                 gc.alloc.rate:      2392.774 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           10.000 counts
                 gc.time:            19.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural":
  31.860 ±(99.9%) 0.187 ns/op [Average]
  (min, avg, max) = (31.779, 31.860, 31.907), stdev = 0.049
  CI (99.9%): [31.673, 32.047] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:asm":
PrintAssembly processed: 231983 total address lines.
Perf output processed (skipped 60.931 seconds):
 Column 1: cycles (51298 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 994 

              # {method} {0x00007f3b63486cd8} &apos;array_dse_inter_procedural&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f3be3241ac0:   mov    0x8(%rsi),%r10d
              0x00007f3be3241ac4:   movabs $0x7f3b67000000,%r12
              0x00007f3be3241ace:   add    %r12,%r10
              0x00007f3be3241ad1:   xor    %r12,%r12
              0x00007f3be3241ad4:   cmp    %r10,%rax
              0x00007f3be3241ad7:   jne    0x00007f3be2c2f080           ;   {runtime_call ic_miss_stub}
              0x00007f3be3241add:   data16 xchg %ax,%ax
            [Verified Entry Point]
   0.37%      0x00007f3be3241ae0:   mov    %eax,-0x14000(%rsp)
   1.31%      0x00007f3be3241ae7:   sub    $0x18,%rsp
   0.35%      0x00007f3be3241aeb:   nop
              0x00007f3be3241aec:   cmpl   $0x1,0x20(%r15)
   0.63%      0x00007f3be3241af4:   jne    0x00007f3be3241ccd
   0.52%      0x00007f3be3241afa:   mov    %rbp,0x10(%rsp)
   0.24%      0x00007f3be3241aff:   mov    %rsi,(%rsp)
   1.21%      0x00007f3be3241b03:   cmpl   $0x0,0xc(%rsi)
   0.38%      0x00007f3be3241b07:   jl     0x00007f3be3241ca7           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@4 (line 172)
   0.28%      0x00007f3be3241b0d:   mov    %rsi,%r10
   0.19%      0x00007f3be3241b10:   data16 xchg %ax,%ax
   0.37%      0x00007f3be3241b13:   call   0x00007f3be32414a0           ; ImmutableOopMap {[0]=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@8 (line 173)
                                                                        ;   {optimized virtual_call}
   9.10%      0x00007f3be3241b18:   nopl   0x208(%rax,%rax,1)           ;   {other}
   0.02%      0x00007f3be3241b20:   mov    (%rsp),%rsi
   0.00%      0x00007f3be3241b24:   cmpl   $0x0,0xc(%rsi)
   3.47%      0x00007f3be3241b28:   jl     0x00007f3be3241c81           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@15 (line 174)
   1.01%      0x00007f3be3241b2e:   mov    %rsi,%r10
              0x00007f3be3241b31:   xchg   %ax,%ax
              0x00007f3be3241b33:   call   0x00007f3be32414a0           ; ImmutableOopMap {[0]=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@19 (line 175)
                                                                        ;   {optimized virtual_call}
   3.95%      0x00007f3be3241b38:   nopl   0x1000228(%rax,%rax,1)       ;   {other}
   0.08%      0x00007f3be3241b40:   mov    (%rsp),%rsi
   0.12%      0x00007f3be3241b44:   cmpl   $0x0,0xc(%rsi)
   7.04%      0x00007f3be3241b48:   jl     0x00007f3be3241c5b           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@26 (line 176)
   1.12%      0x00007f3be3241b4e:   mov    %rsi,%r10
   0.01%      0x00007f3be3241b51:   xchg   %ax,%ax
              0x00007f3be3241b53:   call   0x00007f3be32414a0           ; ImmutableOopMap {[0]=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@30 (line 177)
                                                                        ;   {optimized virtual_call}
   4.63%      0x00007f3be3241b58:   nopl   0x2000248(%rax,%rax,1)       ;   {other}
              0x00007f3be3241b60:   mov    0x1b8(%r15),%r10
   0.00%      0x00007f3be3241b67:   mov    0x1c8(%r15),%rax             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@37 (line 178)
   0.00%      0x00007f3be3241b6e:   mov    (%rsp),%r11
   1.14%      0x00007f3be3241b72:   mov    0xc(%r11),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@34 (line 178)
   4.72%      0x00007f3be3241b76:   mov    %edx,%esi
              0x00007f3be3241b78:   lea    0x17(%rsi),%rsi
   1.23%      0x00007f3be3241b7c:   and    $0xfffffffffffffff8,%rsi
   3.51%      0x00007f3be3241b80:   mov    %rsi,%rcx
              0x00007f3be3241b83:   add    %r10,%rcx
   0.00%      0x00007f3be3241b86:   cmp    %rax,%rcx
              0x00007f3be3241b89:   ja     0x00007f3be3241c31
   0.00%      0x00007f3be3241b8f:   mov    %rcx,0x1b8(%r15)
   2.46%      0x00007f3be3241b96:   prefetchw 0xc0(%rsi,%r10,1)
   1.09%      0x00007f3be3241b9f:   prefetchw 0x100(%rsi,%r10,1)
   0.01%      0x00007f3be3241ba8:   prefetchw 0x140(%rsi,%r10,1)
   1.31%      0x00007f3be3241bb1:   prefetchw 0x180(%rsi,%r10,1)
   0.63%      0x00007f3be3241bba:   movq   $0x1,(%r10)
              0x00007f3be3241bc1:   movl   $0x22c0,0x8(%r10)            ;   {metadata({type array byte})}
   0.00%      0x00007f3be3241bc9:   mov    %edx,0xc(%r10)
   1.07%      0x00007f3be3241bcd:   lea    -0x10(%rsi),%rcx
   0.02%      0x00007f3be3241bd1:   cmp    $0x800,%rcx
              0x00007f3be3241bd8:   jae    0x00007f3be3241c4f
   0.00%      0x00007f3be3241bde:   mov    $0x10,%rax
          ╭   0x00007f3be3241be5:   jmp    0x00007f3be3241c0c
          │   0x00007f3be3241bea:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f3be3241bf5:   data16 data16 xchg %ax,%ax
          │   0x00007f3be3241bf9:   nopl   0x0(%rax)
   6.84%  │↗  0x00007f3be3241c00:   movq   $0x0,(%r10,%rax,1)
   4.06%  ││  0x00007f3be3241c08:   lea    0x8(%rax),%rax
   2.47%  ↘│  0x00007f3be3241c0c:   cmp    %rax,%rsi
           ╰  0x00007f3be3241c0f:   ja     0x00007f3be3241c00           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@37 (line 178)
              0x00007f3be3241c11:   mov    %r10,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  53.62%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 994 

              0x00007f3be3241bc1:   movl   $0x22c0,0x8(%r10)            ;   {metadata({type array byte})}
   0.00%      0x00007f3be3241bc9:   mov    %edx,0xc(%r10)
   1.07%      0x00007f3be3241bcd:   lea    -0x10(%rsi),%rcx
   0.02%      0x00007f3be3241bd1:   cmp    $0x800,%rcx
              0x00007f3be3241bd8:   jae    0x00007f3be3241c4f
   0.00%      0x00007f3be3241bde:   mov    $0x10,%rax
          ╭   0x00007f3be3241be5:   jmp    0x00007f3be3241c0c
          │   0x00007f3be3241bea:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f3be3241bf5:   data16 data16 xchg %ax,%ax
          │   0x00007f3be3241bf9:   nopl   0x0(%rax)
   6.84%  │↗  0x00007f3be3241c00:   movq   $0x0,(%r10,%rax,1)
   4.06%  ││  0x00007f3be3241c08:   lea    0x8(%rax),%rax
   2.47%  ↘│  0x00007f3be3241c0c:   cmp    %rax,%rsi
           ╰  0x00007f3be3241c0f:   ja     0x00007f3be3241c00           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@37 (line 178)
              0x00007f3be3241c11:   mov    %r10,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@41 (line 179)
   0.57%      0x00007f3be3241c14:   mov    0x10(%rsp),%rbp
   0.90%      0x00007f3be3241c19:   add    $0x18,%rsp
              0x00007f3be3241c1d:   data16 xchg %ax,%ax
              0x00007f3be3241c20:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f3be3241c27:   ja     0x00007f3be3241cdd
   0.90%      0x00007f3be3241c2d:   vzeroupper 
   1.08%      0x00007f3be3241c30:   ret    
   0.00%      0x00007f3be3241c31:   movabs $0x7f3b670022c0,%rsi         ;   {metadata({type array byte})}
              0x00007f3be3241c3b:   call   0x00007f3be2db8100           ; ImmutableOopMap {r11=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@33 (line 178)
                                                                        ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
              0x00007f3be3241c40:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop r11=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@33 (line 178)
              0x00007f3be3241c48:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f3be3241cf1
              0x00007f3be3241c4a:   mov    %rax,%r10
              0x00007f3be3241c4d:   jmp    0x00007f3be3241c11
....................................................................................................
  16.82%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 5, compile id 1034 

              0x00007f3be3246810:   mov    0x18(%rsp),%rsi
              0x00007f3be3246815:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f3be3246820:   cmpb   $0x0,0x94(%rsi)
              0x00007f3be3246827:   jne    0x00007f3be32468ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 196)
              0x00007f3be324682d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f3be3246836:   jmp    0x00007f3be324684f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@13 (line 194)
          │   0x00007f3be324683b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 196)
   1.15%  │↗  0x00007f3be3246840:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 196)
   0.01%  ││  0x00007f3be3246847:   test   %eax,(%r11)                  ;   {poll}
   0.65%  ││  0x00007f3be324684a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f3be324684f:   mov    0x8(%rsp),%r10
   0.79%   │  0x00007f3be3246854:   mov    %r10,%rsi
           │  0x00007f3be3246857:   call   0x00007f3be2c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_dse_inter_procedural {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   1.46%   │  0x00007f3be324685c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007f3be3246864:   mov    0x20(%rsp),%r10
   5.95%   │  0x00007f3be3246869:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@26 (line 195)
   0.88%   │  0x00007f3be324686c:   mov    0x18(%rsp),%rsi
   0.01%   │  0x00007f3be3246871:   cmpb   $0x0,0x94(%rsi)
   4.50%   ╰  0x00007f3be3246878:   je     0x00007f3be3246840           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 196)
              0x00007f3be324687a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@36 (line 197)
              0x00007f3be324687f:   nop
              0x00007f3be3246880:   call   0x00007f3bfab71df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f3be3246885:   nop
              0x00007f3be3246886:   mov    0x10(%rsp),%rdx
              0x00007f3be324688b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@40 (line 197)
              0x00007f3be324688f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  15.39%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 992 

                # {method} {0x00007f3b63486da0} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f3be3241480:   mov    0x8(%rsi),%r10d
                0x00007f3be3241484:   movabs $0x7f3b67000000,%r12
                0x00007f3be324148e:   add    %r12,%r10
                0x00007f3be3241491:   xor    %r12,%r12
                0x00007f3be3241494:   cmp    %r10,%rax
                0x00007f3be3241497:   jne    0x00007f3be2c2f080           ;   {runtime_call ic_miss_stub}
                0x00007f3be324149d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   3.04%        0x00007f3be32414a0:   mov    %eax,-0x14000(%rsp)
   0.94%        0x00007f3be32414a7:   sub    $0x18,%rsp
   0.40%        0x00007f3be32414ab:   nop
   2.31%        0x00007f3be32414ac:   cmpl   $0x0,0x20(%r15)
   0.19%  ╭     0x00007f3be32414b4:   jne    0x00007f3be32414ce
   0.62%  │ ↗   0x00007f3be32414ba:   add    $0x18,%rsp
   0.35%  │ │   0x00007f3be32414be:   xchg   %ax,%ax
   2.33%  │ │↗  0x00007f3be32414c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f3be32414c7:   ja     0x00007f3be32414db
   0.21%  ││││  0x00007f3be32414cd:   ret    
          ↘│││  0x00007f3be32414ce:   mov    %rbp,0x10(%rsp)
           │││  0x00007f3be32414d3:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f3be32414d8:   jmp    0x00007f3be32414ba
           │ │  0x00007f3be32414da:   hlt    
           ↘ ╰  0x00007f3be32414db:   lea    -0x22(%rip),%rcx        # 0x00007f3be32414c0
                0x00007f3be32414e2:   mov    %rcx,0x468(%r15)
                0x00007f3be32414e9:   jmp    0x00007f3be2c36000           ;   {runtime_call SafepointBlob}
                0x00007f3be32414ee:   hlt    
              [Exception Handler]
                0x00007f3be32414ef:   call   0x00007f3be2db4780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  10.40%  <total for region 4>

....[Hottest Regions]...............................................................................
  53.62%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 994 
  16.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 994 
  15.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 5, compile id 1034 
  10.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 992 
   1.08%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  FreeListAllocator::reset 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.97%  <...other 520 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 994 
  15.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 5, compile id 1034 
  10.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 992 
   2.65%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%           libjvm.so  FreeListAllocator::reset 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.64%  <...other 154 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.23%      jvmci, level 4
   2.65%              kernel
   0.70%           libjvm.so
   0.20%        libc-2.31.so
   0.09%                    
   0.06%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.02%              [vdso]
   0.02%      hsdis-amd64.so
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate":
  2394.090 ±(99.9%) 9.999 MB/sec [Average]
  (min, avg, max) = (2391.089, 2394.090, 2398.032), stdev = 2.597
  CI (99.9%): [2384.091, 2404.089] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.count":
  49.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (9.000, 9.800, 10.000), stdev = 0.447
  CI (99.9%): [49.000, 49.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.time":
  91.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (17.000, 18.200, 20.000), stdev = 1.304
  CI (99.9%): [91.000, 91.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline
# Parameters: (size = 64)

# Run progress: 37.50% complete, ETA 00:09:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.247 ns/op
# Warmup Iteration   2: 8.081 ns/op
# Warmup Iteration   3: 8.035 ns/op
# Warmup Iteration   4: 8.110 ns/op
# Warmup Iteration   5: 8.123 ns/op
Iteration   1: 8.117 ns/op
                 gc.alloc.rate:      1879.867 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           7.000 counts
                 gc.time:            12.000 ms

Iteration   2: 8.115 ns/op
                 gc.alloc.rate:      1880.346 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            16.000 ms

Iteration   3: 8.121 ns/op
                 gc.alloc.rate:      1878.907 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            15.000 ms

Iteration   4: 8.122 ns/op
                 gc.alloc.rate:      1878.682 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           7.000 counts
                 gc.time:            13.000 ms

Iteration   5: 8.111 ns/op
                 gc.alloc.rate:      1881.299 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            15.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline":
  8.117 ±(99.9%) 0.018 ns/op [Average]
  (min, avg, max) = (8.111, 8.117, 8.122), stdev = 0.005
  CI (99.9%): [8.099, 8.135] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:asm":
PrintAssembly processed: 229586 total address lines.
Perf output processed (skipped 60.811 seconds):
 Column 1: cycles (50913 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 986 

             # {method} {0x00007f54e747d090} &apos;obj_alloc_baseline&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f556b240680:   mov    0x8(%rsi),%r10d
             0x00007f556b240684:   movabs $0x7f54eb000000,%r12
             0x00007f556b24068e:   add    %r12,%r10
             0x00007f556b240691:   xor    %r12,%r12
             0x00007f556b240694:   cmp    %r10,%rax
             0x00007f556b240697:   jne    0x00007f556ac2f080           ;   {runtime_call ic_miss_stub}
             0x00007f556b24069d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.75%     0x00007f556b2406a0:   mov    %eax,-0x14000(%rsp)
  11.28%     0x00007f556b2406a7:   sub    $0x18,%rsp
   0.79%     0x00007f556b2406ab:   nop
   0.01%     0x00007f556b2406ac:   cmpl   $0x1,0x20(%r15)
   0.18%     0x00007f556b2406b4:   jne    0x00007f556b240731
   4.00%     0x00007f556b2406ba:   mov    %rbp,0x10(%rsp)
   0.41%     0x00007f556b2406bf:   mov    0x1b8(%r15),%rax
   0.09%     0x00007f556b2406c6:   lea    0x10(%rax),%rsi
   0.19%     0x00007f556b2406ca:   cmp    0x1c8(%r15),%rsi
          ╭  0x00007f556b2406d1:   ja     0x00007f556b240714
   4.42%  │  0x00007f556b2406d7:   mov    %rsi,0x1b8(%r15)
   0.48%  │  0x00007f556b2406de:   prefetchw 0xd0(%rax)
   2.95%  │  0x00007f556b2406e5:   movq   $0x1,(%rax)
   5.42%  │  0x00007f556b2406ec:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   8.47%  │  0x00007f556b2406f3:   movl   $0x0,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 60)
   6.98%  │  0x00007f556b2406fa:   mov    0x10(%rsp),%rbp
   0.22%  │  0x00007f556b2406ff:   add    $0x18,%rsp
   0.07%  │  0x00007f556b240703:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f556b24070a:   ja     0x00007f556b240741
   2.70%  │  0x00007f556b240710:   vzeroupper 
   4.50%  │  0x00007f556b240713:   ret    
   0.00%  ↘  0x00007f556b240714:   movabs $0x7f54eb000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007f556b24071e:   xchg   %ax,%ax
             0x00007f556b240720:   call   0x00007f556adbb280           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 60)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007f556b240725:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 60)
             0x00007f556b24072d:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f556b240755
             0x00007f556b24072f:   jmp    0x00007f556b2406fa           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  53.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 1032 

              0x00007f556b246390:   mov    0x18(%rsp),%rsi
              0x00007f556b246395:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f556b2463a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f556b2463a7:   jne    0x00007f556b24643a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 196)
              0x00007f556b2463ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f556b2463b6:   jmp    0x00007f556b2463cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@13 (line 194)
          │   0x00007f556b2463bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 196)
   2.77%  │↗  0x00007f556b2463c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 196)
   1.95%  ││  0x00007f556b2463c7:   test   %eax,(%r11)                  ;   {poll}
   1.22%  ││  0x00007f556b2463ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@13 (line 194)
   0.03%  ↘│  0x00007f556b2463cf:   mov    0x8(%rsp),%r10
   2.21%   │  0x00007f556b2463d4:   mov    %r10,%rsi
   1.85%   │  0x00007f556b2463d7:   call   0x00007f556ac2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_alloc_baseline {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  17.12%   │  0x00007f556b2463dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   0.05%   │  0x00007f556b2463e4:   mov    0x20(%rsp),%r10
   1.08%   │  0x00007f556b2463e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@26 (line 195)
   4.17%   │  0x00007f556b2463ec:   mov    0x18(%rsp),%rsi
   0.16%   │  0x00007f556b2463f1:   cmpb   $0x0,0x94(%rsi)
  10.66%   ╰  0x00007f556b2463f8:   je     0x00007f556b2463c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 196)
              0x00007f556b2463fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@36 (line 197)
              0x00007f556b2463ff:   nop
              0x00007f556b246400:   call   0x00007f558272adf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f556b246405:   nop
              0x00007f556b246406:   mov    0x10(%rsp),%rdx
              0x00007f556b24640b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@40 (line 197)
              0x00007f556b24640f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  43.26%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 986 
  43.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 1032 
   0.25%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   1.66%  <...other 449 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 986 
  43.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 1032 
   1.82%              kernel  [unknown] 
   0.16%                      <unknown> 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  ObjAllocator::initialize 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  G1CardSet::clear 
   0.01%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.53%  <...other 153 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.16%      jvmci, level 4
   1.82%              kernel
   0.60%           libjvm.so
   0.16%                    
   0.15%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-2105817.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate":
  1879.820 ±(99.9%) 4.127 MB/sec [Average]
  (min, avg, max) = (1878.682, 1879.820, 1881.299), stdev = 1.072
  CI (99.9%): [1875.693, 1883.947] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.count":
  38.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (7.000, 7.600, 8.000), stdev = 0.548
  CI (99.9%): [38.000, 38.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.time":
  71.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (12.000, 14.200, 16.000), stdev = 1.643
  CI (99.9%): [71.000, 71.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse
# Parameters: (size = 64)

# Run progress: 50.00% complete, ETA 00:07:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.161 ns/op
# Warmup Iteration   2: 7.900 ns/op
# Warmup Iteration   3: 8.037 ns/op
# Warmup Iteration   4: 7.990 ns/op
# Warmup Iteration   5: 8.012 ns/op
Iteration   1: 7.986 ns/op
                 gc.alloc.rate:      1910.601 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

Iteration   2: 8.004 ns/op
                 gc.alloc.rate:      1906.351 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

Iteration   3: 7.980 ns/op
                 gc.alloc.rate:      1912.112 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            15.000 ms

Iteration   4: 7.992 ns/op
                 gc.alloc.rate:      1909.329 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           7.000 counts
                 gc.time:            12.000 ms

Iteration   5: 8.004 ns/op
                 gc.alloc.rate:      1906.272 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            15.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse":
  7.993 ±(99.9%) 0.042 ns/op [Average]
  (min, avg, max) = (7.980, 7.993, 8.004), stdev = 0.011
  CI (99.9%): [7.951, 8.035] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:asm":
PrintAssembly processed: 229501 total address lines.
Perf output processed (skipped 60.784 seconds):
 Column 1: cycles (51254 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 987 

             # {method} {0x00007ff2bb47d1f0} &apos;obj_dse&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007ff33f240d80:   mov    0x8(%rsi),%r10d
             0x00007ff33f240d84:   movabs $0x7ff2bf000000,%r12
             0x00007ff33f240d8e:   add    %r12,%r10
             0x00007ff33f240d91:   xor    %r12,%r12
             0x00007ff33f240d94:   cmp    %r10,%rax
             0x00007ff33f240d97:   jne    0x00007ff33ec2f080           ;   {runtime_call ic_miss_stub}
             0x00007ff33f240d9d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   2.03%     0x00007ff33f240da0:   mov    %eax,-0x14000(%rsp)
   7.59%     0x00007ff33f240da7:   sub    $0x18,%rsp
   2.18%     0x00007ff33f240dab:   nop
   0.01%     0x00007ff33f240dac:   cmpl   $0x1,0x20(%r15)
   0.32%     0x00007ff33f240db4:   jne    0x00007ff33f240e31
   3.30%     0x00007ff33f240dba:   mov    %rbp,0x10(%rsp)
   1.29%     0x00007ff33f240dbf:   mov    0x1b8(%r15),%rax
   0.05%     0x00007ff33f240dc6:   lea    0x10(%rax),%rsi
   0.28%     0x00007ff33f240dca:   cmp    0x1c8(%r15),%rsi
          ╭  0x00007ff33f240dd1:   ja     0x00007ff33f240e14
   3.49%  │  0x00007ff33f240dd7:   mov    %rsi,0x1b8(%r15)
   1.16%  │  0x00007ff33f240dde:   prefetchw 0xd0(%rax)
   2.52%  │  0x00007ff33f240de5:   movq   $0x1,(%rax)
   4.15%  │  0x00007ff33f240dec:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
  14.57%  │  0x00007ff33f240df3:   movl   $0x0,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@120 (line 83)
   2.47%  │  0x00007ff33f240dfa:   mov    0x10(%rsp),%rbp
   0.22%  │  0x00007ff33f240dff:   add    $0x18,%rsp
   0.06%  │  0x00007ff33f240e03:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007ff33f240e0a:   ja     0x00007ff33f240e41
   3.70%  │  0x00007ff33f240e10:   vzeroupper 
   4.63%  │  0x00007ff33f240e13:   ret    
   0.00%  ↘  0x00007ff33f240e14:   movabs $0x7ff2bf000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007ff33f240e1e:   xchg   %ax,%ax
             0x00007ff33f240e20:   call   0x00007ff33edb7200           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@0 (line 68)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007ff33f240e25:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@0 (line 68)
             0x00007ff33f240e2d:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007ff33f240e55
             0x00007ff33f240e2f:   jmp    0x00007ff33f240dfa           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  54.03%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 1035 

              0x00007ff33f246790:   mov    0x18(%rsp),%rsi
              0x00007ff33f246795:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007ff33f2467a0:   cmpb   $0x0,0x94(%rsi)
              0x00007ff33f2467a7:   jne    0x00007ff33f24683a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 196)
              0x00007ff33f2467ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007ff33f2467b6:   jmp    0x00007ff33f2467cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@13 (line 194)
          │   0x00007ff33f2467bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 196)
   3.35%  │↗  0x00007ff33f2467c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 196)
   1.32%  ││  0x00007ff33f2467c7:   test   %eax,(%r11)                  ;   {poll}
   3.18%  ││  0x00007ff33f2467ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@13 (line 194)
   0.01%  ↘│  0x00007ff33f2467cf:   mov    0x8(%rsp),%r10
   1.65%   │  0x00007ff33f2467d4:   mov    %r10,%rsi
   1.07%   │  0x00007ff33f2467d7:   call   0x00007ff33ec2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_dse {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  11.05%   │  0x00007ff33f2467dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   0.06%   │  0x00007ff33f2467e4:   mov    0x20(%rsp),%r10
   3.30%   │  0x00007ff33f2467e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@26 (line 195)
   3.95%   │  0x00007ff33f2467ec:   mov    0x18(%rsp),%rsi
   0.17%   │  0x00007ff33f2467f1:   cmpb   $0x0,0x94(%rsi)
  13.47%   ╰  0x00007ff33f2467f8:   je     0x00007ff33f2467c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 196)
              0x00007ff33f2467fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@36 (line 197)
              0x00007ff33f2467ff:   nop
              0x00007ff33f246800:   call   0x00007ff3564b0df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007ff33f246805:   nop
              0x00007ff33f246806:   mov    0x10(%rsp),%rdx
              0x00007ff33f24680b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@40 (line 197)
              0x00007ff33f24680f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  42.57%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 987 
  42.57%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 1035 
   0.97%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.72%  <...other 491 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 987 
  42.57%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 1035 
   2.29%              kernel  [unknown] 
   0.13%                      <unknown> 
   0.06%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  ObjAllocator::initialize 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.02%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  G1RebuildFreeListTask::work 
   0.01%           libjvm.so  fileStream::write 
   0.61%  <...other 183 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.61%      jvmci, level 4
   2.29%              kernel
   0.65%           libjvm.so
   0.19%        libc-2.31.so
   0.13%                    
   0.04%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.02%              [vdso]
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%    perf-2105881.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate":
  1908.933 ±(99.9%) 9.966 MB/sec [Average]
  (min, avg, max) = (1906.272, 1908.933, 1912.112), stdev = 2.588
  CI (99.9%): [1898.967, 1918.899] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.count":
  39.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (7.000, 7.800, 8.000), stdev = 0.447
  CI (99.9%): [39.000, 39.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.time":
  70.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (12.000, 14.000, 15.000), stdev = 1.225
  CI (99.9%): [70.000, 70.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 62.50% complete, ETA 00:05:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 85.613 ns/op
# Warmup Iteration   2: 84.387 ns/op
# Warmup Iteration   3: 84.376 ns/op
# Warmup Iteration   4: 84.436 ns/op
# Warmup Iteration   5: 84.275 ns/op
Iteration   1: 84.370 ns/op
                 gc.alloc.rate:      180.852 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

Iteration   2: 84.378 ns/op
                 gc.alloc.rate:      180.834 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           ≈ 0 counts

Iteration   3: 84.327 ns/op
                 gc.alloc.rate:      180.944 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            4.000 ms

Iteration   4: 84.310 ns/op
                 gc.alloc.rate:      180.981 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

Iteration   5: 84.383 ns/op
                 gc.alloc.rate:      180.823 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural":
  84.354 ±(99.9%) 0.127 ns/op [Average]
  (min, avg, max) = (84.310, 84.354, 84.383), stdev = 0.033
  CI (99.9%): [84.227, 84.480] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:asm":
PrintAssembly processed: 231315 total address lines.
Perf output processed (skipped 60.862 seconds):
 Column 1: cycles (50745 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 972 

             # {method} {0x00007f03284867b8} &apos;obj_dse_inter_procedural&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f03af23df60:   mov    0x8(%rsi),%r10d
             0x00007f03af23df64:   movabs $0x7f0333000000,%r12
             0x00007f03af23df6e:   add    %r12,%r10
             0x00007f03af23df71:   xor    %r12,%r12
             0x00007f03af23df74:   cmp    %r10,%rax
             0x00007f03af23df77:   jne    0x00007f03aec2f080           ;   {runtime_call ic_miss_stub}
             0x00007f03af23df7d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.37%     0x00007f03af23df80:   mov    %eax,-0x14000(%rsp)
   0.57%     0x00007f03af23df87:   sub    $0x18,%rsp
   0.26%     0x00007f03af23df8b:   nop
             0x00007f03af23df8c:   cmpl   $0x1,0x20(%r15)
   0.06%     0x00007f03af23df94:   jne    0x00007f03af23e14c
   0.28%     0x00007f03af23df9a:   mov    %rbp,0x10(%rsp)
   0.13%     0x00007f03af23df9f:   mov    %rsi,%r10
             0x00007f03af23dfa2:   mov    %r10,(%rsp)
   0.03%     0x00007f03af23dfa6:   nop
   0.30%     0x00007f03af23dfa7:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@9 (line 93)
                                                                       ;   {optimized virtual_call}
   2.83%     0x00007f03af23dfac:   nopl   0x29c(%rax,%rax,1)           ;   {other}
             0x00007f03af23dfb4:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 95)
             0x00007f03af23dfb8:   data16 xchg %ax,%ax
   0.40%     0x00007f03af23dfbb:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 95)
                                                                       ;   {optimized virtual_call}
   3.50%     0x00007f03af23dfc0:   nopl   0x10002b0(%rax,%rax,1)       ;   {other}
             0x00007f03af23dfc8:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 97)
             0x00007f03af23dfcc:   data16 xchg %ax,%ax
   0.41%     0x00007f03af23dfcf:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 97)
                                                                       ;   {optimized virtual_call}
   7.20%     0x00007f03af23dfd4:   nopl   0x20002c4(%rax,%rax,1)       ;   {other}
             0x00007f03af23dfdc:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 99)
             0x00007f03af23dfe0:   data16 xchg %ax,%ax
   0.42%     0x00007f03af23dfe3:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 99)
                                                                       ;   {optimized virtual_call}
   1.66%     0x00007f03af23dfe8:   nopl   0x30002d8(%rax,%rax,1)       ;   {other}
             0x00007f03af23dff0:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 101)
             0x00007f03af23dff4:   data16 xchg %ax,%ax
   0.45%     0x00007f03af23dff7:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 101)
                                                                       ;   {optimized virtual_call}
   3.43%     0x00007f03af23dffc:   nopl   0x40002ec(%rax,%rax,1)       ;   {other}
             0x00007f03af23e004:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 103)
             0x00007f03af23e008:   data16 xchg %ax,%ax
   0.45%     0x00007f03af23e00b:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 103)
                                                                       ;   {optimized virtual_call}
   7.39%     0x00007f03af23e010:   nopl   0x5000300(%rax,%rax,1)       ;   {other}
             0x00007f03af23e018:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 105)
             0x00007f03af23e01c:   data16 xchg %ax,%ax
   0.44%     0x00007f03af23e01f:   nop
             0x00007f03af23e020:   data16 xchg %ax,%ax
             0x00007f03af23e023:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 105)
                                                                       ;   {optimized virtual_call}
   1.31%     0x00007f03af23e028:   nopl   0x6000318(%rax,%rax,1)       ;   {other}
             0x00007f03af23e030:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 107)
             0x00007f03af23e034:   data16 xchg %ax,%ax
   0.41%     0x00007f03af23e037:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 107)
                                                                       ;   {optimized virtual_call}
   3.73%     0x00007f03af23e03c:   nopl   0x700032c(%rax,%rax,1)       ;   {other}
             0x00007f03af23e044:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 109)
             0x00007f03af23e048:   data16 xchg %ax,%ax
   0.45%     0x00007f03af23e04b:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 109)
                                                                       ;   {optimized virtual_call}
   6.18%     0x00007f03af23e050:   nopl   0x8000340(%rax,%rax,1)       ;   {other}
             0x00007f03af23e058:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 111)
             0x00007f03af23e05c:   data16 xchg %ax,%ax
   0.49%     0x00007f03af23e05f:   nop
             0x00007f03af23e060:   data16 xchg %ax,%ax
             0x00007f03af23e063:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 111)
                                                                       ;   {optimized virtual_call}
   2.20%     0x00007f03af23e068:   nopl   0x9000358(%rax,%rax,1)       ;   {other}
             0x00007f03af23e070:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 113)
             0x00007f03af23e074:   data16 xchg %ax,%ax
   0.40%     0x00007f03af23e077:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 113)
                                                                       ;   {optimized virtual_call}
   3.50%     0x00007f03af23e07c:   nopl   0xa00036c(%rax,%rax,1)       ;   {other}
             0x00007f03af23e084:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 115)
             0x00007f03af23e088:   data16 xchg %ax,%ax
   0.46%     0x00007f03af23e08b:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 115)
                                                                       ;   {optimized virtual_call}
   3.62%     0x00007f03af23e090:   nopl   0xb000380(%rax,%rax,1)       ;   {other}
             0x00007f03af23e098:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 117)
             0x00007f03af23e09c:   data16 xchg %ax,%ax
   0.46%     0x00007f03af23e09f:   nop
             0x00007f03af23e0a0:   data16 xchg %ax,%ax
             0x00007f03af23e0a3:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 117)
                                                                       ;   {optimized virtual_call}
   3.58%     0x00007f03af23e0a8:   nopl   0xc000398(%rax,%rax,1)       ;   {other}
             0x00007f03af23e0b0:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 119)
             0x00007f03af23e0b4:   data16 xchg %ax,%ax
   0.46%     0x00007f03af23e0b7:   call   0x00007f03af23d8a0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 119)
                                                                       ;   {optimized virtual_call}
   3.58%     0x00007f03af23e0bc:   nopl   0xd0003ac(%rax,%rax,1)       ;   {other}
             0x00007f03af23e0c4:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 121)
             0x00007f03af23e0c8:   data16 xchg %ax,%ax
   0.39%     0x00007f03af23e0cb:   call   0x00007f03af23d8a0           ; ImmutableOopMap {}
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 121)
                                                                       ;   {optimized virtual_call}
   3.67%     0x00007f03af23e0d0:   nopl   0xe0003c0(%rax,%rax,1)       ;   {other}
             0x00007f03af23e0d8:   mov    0x1b8(%r15),%rax
             0x00007f03af23e0df:   lea    0x10(%rax),%rsi
             0x00007f03af23e0e3:   cmp    0x1c8(%r15),%rsi
          ╭  0x00007f03af23e0ea:   ja     0x00007f03af23e131
   0.49%  │  0x00007f03af23e0f0:   mov    %rsi,0x1b8(%r15)
          │  0x00007f03af23e0f7:   prefetchw 0xd0(%rax)
   0.63%  │  0x00007f03af23e0fe:   movq   $0x1,(%rax)
   0.32%  │  0x00007f03af23e105:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.26%  │  0x00007f03af23e10c:   movl   $0x0,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 122)
          │  0x00007f03af23e113:   mov    0x10(%rsp),%rbp
   0.12%  │  0x00007f03af23e118:   add    $0x18,%rsp
   0.28%  │  0x00007f03af23e11c:   nopl   0x0(%rax)
          │  0x00007f03af23e120:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f03af23e127:   ja     0x00007f03af23e15c
   0.15%  │  0x00007f03af23e12d:   vzeroupper 
   0.43%  │  0x00007f03af23e130:   ret    
          ↘  0x00007f03af23e131:   movabs $0x7f0333000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007f03af23e13b:   call   0x00007f03aedbb580           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 122)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007f03af23e140:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 122)
             0x00007f03af23e148:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f03af23e170
             0x00007f03af23e14a:   jmp    0x00007f03af23e113           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  69.14%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 970 

                # {method} {0x00007f0328486da0} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f03af23d880:   mov    0x8(%rsi),%r10d
                0x00007f03af23d884:   movabs $0x7f0333000000,%r12
                0x00007f03af23d88e:   add    %r12,%r10
                0x00007f03af23d891:   xor    %r12,%r12
                0x00007f03af23d894:   cmp    %r10,%rax
                0x00007f03af23d897:   jne    0x00007f03aec2f080           ;   {runtime_call ic_miss_stub}
                0x00007f03af23d89d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.69%        0x00007f03af23d8a0:   mov    %eax,-0x14000(%rsp)
   9.20%        0x00007f03af23d8a7:   sub    $0x18,%rsp
   0.29%        0x00007f03af23d8ab:   nop
   0.70%        0x00007f03af23d8ac:   cmpl   $0x0,0x20(%r15)
   0.02%  ╭     0x00007f03af23d8b4:   jne    0x00007f03af23d8ce
   5.75%  │ ↗   0x00007f03af23d8ba:   add    $0x18,%rsp
   0.25%  │ │   0x00007f03af23d8be:   xchg   %ax,%ax
   0.75%  │ │↗  0x00007f03af23d8c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f03af23d8c7:   ja     0x00007f03af23d8db
   3.41%  ││││  0x00007f03af23d8cd:   ret    
          ↘│││  0x00007f03af23d8ce:   mov    %rbp,0x10(%rsp)
           │││  0x00007f03af23d8d3:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f03af23d8d8:   jmp    0x00007f03af23d8ba
           │ │  0x00007f03af23d8da:   hlt    
           ↘ ╰  0x00007f03af23d8db:   lea    -0x22(%rip),%rcx        # 0x00007f03af23d8c0
                0x00007f03af23d8e2:   mov    %rcx,0x468(%r15)
                0x00007f03af23d8e9:   jmp    0x00007f03aec36000           ;   {runtime_call SafepointBlob}
                0x00007f03af23d8ee:   hlt    
              [Exception Handler]
                0x00007f03af23d8ef:   call   0x00007f03aedb4780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  22.06%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 972 
  22.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 970 
   6.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1018 
   0.23%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   1.33%  <...other 399 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 972 
  22.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 970 
   6.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1018 
   1.82%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%  libpthread-2.31.so  __libc_write 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.23%  <...other 98 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.68%      jvmci, level 4
   1.82%              kernel
   0.22%           libjvm.so
   0.11%        libc-2.31.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.00%    perf-2105945.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate":
  180.887 ±(99.9%) 0.273 MB/sec [Average]
  (min, avg, max) = (180.823, 180.887, 180.981), stdev = 0.071
  CI (99.9%): [180.614, 181.160] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.count":
  4.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (≈ 0, 0.800, 1.000), stdev = 0.447
  CI (99.9%): [4.000, 4.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.time":
  13.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (≈ 0, 2.600, 4.000), stdev = 1.517
  CI (99.9%): [13.000, 13.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline
# Parameters: (size = 64)

# Run progress: 75.00% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 27.799 ns/op
# Warmup Iteration   2: 27.345 ns/op
# Warmup Iteration   3: 27.384 ns/op
# Warmup Iteration   4: 27.387 ns/op
# Warmup Iteration   5: 27.330 ns/op
Iteration   1: 27.313 ns/op
                 gc.alloc.rate:      6145.267 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            45.000 ms

Iteration   2: 27.416 ns/op
                 gc.alloc.rate:      6121.946 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            42.000 ms

Iteration   3: 27.304 ns/op
                 gc.alloc.rate:      6147.128 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            44.000 ms

Iteration   4: 27.299 ns/op
                 gc.alloc.rate:      6148.254 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            44.000 ms

Iteration   5: 27.304 ns/op
                 gc.alloc.rate:      6147.142 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            44.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline":
  27.327 ±(99.9%) 0.193 ns/op [Average]
  (min, avg, max) = (27.299, 27.327, 27.416), stdev = 0.050
  CI (99.9%): [27.135, 27.520] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:asm":
PrintAssembly processed: 229785 total address lines.
Perf output processed (skipped 60.674 seconds):
 Column 1: cycles (51056 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 

              # {method} {0x00007f51fb47d4c8} &apos;wrapper_obj_baseline&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f527b245e00:   mov    0x8(%rsi),%r10d
              0x00007f527b245e04:   movabs $0x7f51ff000000,%r12
              0x00007f527b245e0e:   add    %r12,%r10
              0x00007f527b245e11:   xor    %r12,%r12
              0x00007f527b245e14:   cmp    %r10,%rax
              0x00007f527b245e17:   jne    0x00007f527ac2f080           ;   {runtime_call ic_miss_stub}
              0x00007f527b245e1d:   data16 xchg %ax,%ax
            [Verified Entry Point]
   0.67%      0x00007f527b245e20:   mov    %eax,-0x14000(%rsp)
   0.78%      0x00007f527b245e27:   sub    $0x18,%rsp
   0.51%      0x00007f527b245e2b:   nop
   0.13%      0x00007f527b245e2c:   cmpl   $0x1,0x20(%r15)
   0.42%      0x00007f527b245e34:   jne    0x00007f527b24663c
   0.34%      0x00007f527b245e3a:   mov    %rbp,0x10(%rsp)
   0.53%      0x00007f527b245e3f:   mov    0x1b8(%r15),%rsi
   0.12%      0x00007f527b245e46:   lea    0x30(%rsi),%rax
   0.38%      0x00007f527b245e4a:   cmp    0x1c8(%r15),%rax
              0x00007f527b245e51:   ja     0x00007f527b24644b
   0.34%      0x00007f527b245e57:   mov    %rax,0x1b8(%r15)
   0.52%      0x00007f527b245e5e:   prefetchw 0xf0(%rsi)
   0.68%      0x00007f527b245e65:   movq   $0x1,(%rsi)
   0.41%      0x00007f527b245e6c:   movl   $0x102bb88,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.32%      0x00007f527b245e73:   movl   $0x0,0xc(%rsi)
   0.59%      0x00007f527b245e7a:   movq   $0x0,0x10(%rsi)
   0.12%      0x00007f527b245e82:   movq   $0x0,0x18(%rsi)
   0.46%      0x00007f527b245e8a:   movq   $0x0,0x20(%rsi)
   0.33%      0x00007f527b245e92:   movq   $0x0,0x28(%rsi)
   0.54%      0x00007f527b245e9a:   mov    %rsi,%r10                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@0 (line 130)
   0.14%      0x00007f527b245e9d:   mov    0x1b8(%r15),%rsi
   0.52%      0x00007f527b245ea4:   lea    0x10(%rsi),%rax
   0.29%      0x00007f527b245ea8:   cmp    0x1c8(%r15),%rax
              0x00007f527b245eaf:   ja     0x00007f527b24642a
   0.58%      0x00007f527b245eb5:   mov    %rax,0x1b8(%r15)
   0.11%      0x00007f527b245ebc:   prefetchw 0xd0(%rsi)
   0.77%      0x00007f527b245ec3:   movq   $0x1,(%rsi)
   0.42%      0x00007f527b245eca:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.57%      0x00007f527b245ed1:   movl   $0x0,0xc(%rsi)
   0.17%      0x00007f527b245ed8:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@5 (line 191)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.43%      0x00007f527b245edb:   mov    0x1b8(%r15),%rsi
   0.71%      0x00007f527b245ee2:   lea    0x10(%rsi),%rax
   0.50%      0x00007f527b245ee6:   cmp    0x1c8(%r15),%rax
              0x00007f527b245eed:   ja     0x00007f527b2463e8
   0.17%      0x00007f527b245ef3:   mov    %rax,0x1b8(%r15)
   0.44%      0x00007f527b245efa:   prefetchw 0xd0(%rsi)
   0.55%      0x00007f527b245f01:   movq   $0x1,(%rsi)
   0.66%      0x00007f527b245f08:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.24%      0x00007f527b245f0f:   movl   $0x0,0xc(%rsi)
   0.47%      0x00007f527b245f16:   mov    %rsi,%r8                     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@16 (line 192)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.26%      0x00007f527b245f19:   mov    0x1b8(%r15),%rsi
   0.99%      0x00007f527b245f20:   lea    0x10(%rsi),%rax
   0.16%      0x00007f527b245f24:   cmp    0x1c8(%r15),%rax
              0x00007f527b245f2b:   ja     0x00007f527b2463a6
   0.51%      0x00007f527b245f31:   mov    %rax,0x1b8(%r15)
   0.40%      0x00007f527b245f38:   prefetchw 0xd0(%rsi)
   1.11%      0x00007f527b245f3f:   movq   $0x1,(%rsi)
   0.71%      0x00007f527b245f46:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.56%      0x00007f527b245f4d:   movl   $0x0,0xc(%rsi)
   0.39%      0x00007f527b245f54:   mov    %rsi,%r9                     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@27 (line 193)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.46%      0x00007f527b245f57:   mov    0x1b8(%r15),%rsi
   0.49%      0x00007f527b245f5e:   lea    0x10(%rsi),%rax
   0.44%      0x00007f527b245f62:   cmp    0x1c8(%r15),%rax
              0x00007f527b245f69:   ja     0x00007f527b24646c
   0.41%      0x00007f527b245f6f:   mov    %rax,0x1b8(%r15)
   0.48%      0x00007f527b245f76:   prefetchw 0xd0(%rsi)
   1.37%      0x00007f527b245f7d:   movq   $0x1,(%rsi)
   1.61%      0x00007f527b245f84:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.44%      0x00007f527b245f8b:   movl   $0x0,0xc(%rsi)
   0.45%      0x00007f527b245f92:   mov    %rsi,%rcx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@38 (line 194)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.19%      0x00007f527b245f95:   mov    0x1b8(%r15),%rsi
   0.57%      0x00007f527b245f9c:   lea    0x10(%rsi),%rax
   0.55%      0x00007f527b245fa0:   cmp    0x1c8(%r15),%rax
              0x00007f527b245fa7:   ja     0x00007f527b246409
   0.47%      0x00007f527b245fad:   mov    %rax,0x1b8(%r15)
   0.29%      0x00007f527b245fb4:   prefetchw 0xd0(%rsi)
   2.42%      0x00007f527b245fbb:   movq   $0x1,(%rsi)
   3.75%      0x00007f527b245fc2:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.61%      0x00007f527b245fc9:   movl   $0x0,0xc(%rsi)
   0.85%      0x00007f527b245fd0:   mov    %rsi,%rbx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@49 (line 195)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.11%      0x00007f527b245fd3:   mov    0x1b8(%r15),%rsi
   0.48%      0x00007f527b245fda:   lea    0x10(%rsi),%rax
   0.35%      0x00007f527b245fde:   xchg   %ax,%ax
   0.60%      0x00007f527b245fe0:   cmp    0x1c8(%r15),%rax
              0x00007f527b245fe7:   ja     0x00007f527b2463c7
   0.15%      0x00007f527b245fed:   mov    %rax,0x1b8(%r15)
   0.37%      0x00007f527b245ff4:   prefetchw 0xd0(%rsi)
   2.48%      0x00007f527b245ffb:   movq   $0x1,(%rsi)
   4.41%      0x00007f527b246002:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.28%      0x00007f527b246009:   movl   $0x0,0xc(%rsi)
   0.95%      0x00007f527b246010:   mov    %rsi,%rdi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@60 (line 196)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.12%      0x00007f527b246013:   mov    0x1b8(%r15),%rsi
   0.60%      0x00007f527b24601a:   lea    0x10(%rsi),%rax
   0.25%      0x00007f527b24601e:   xchg   %ax,%ax
   0.74%      0x00007f527b246020:   cmp    0x1c8(%r15),%rax
              0x00007f527b246027:   ja     0x00007f527b24648d
   0.20%      0x00007f527b24602d:   mov    %rax,0x1b8(%r15)
   0.28%      0x00007f527b246034:   prefetchw 0xd0(%rsi)
   2.02%      0x00007f527b24603b:   movq   $0x1,(%rsi)
   3.65%      0x00007f527b246042:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.15%      0x00007f527b246049:   movl   $0x0,0xc(%rsi)
   1.01%      0x00007f527b246050:   mov    %rsi,%rdx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@71 (line 197)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.13%      0x00007f527b246053:   mov    0x1b8(%r15),%rsi
   1.02%      0x00007f527b24605a:   lea    0x10(%rsi),%rax
   0.43%      0x00007f527b24605e:   xchg   %ax,%ax
   0.51%      0x00007f527b246060:   cmp    0x1c8(%r15),%rax
              0x00007f527b246067:   ja     0x00007f527b246388
   0.29%      0x00007f527b24606d:   mov    %rax,0x1b8(%r15)
   0.45%      0x00007f527b246074:   prefetchw 0xd0(%rsi)
   2.44%      0x00007f527b24607b:   movq   $0x1,(%rsi)
   3.46%      0x00007f527b246082:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.24%      0x00007f527b246089:   movl   $0x0,0xc(%rsi)
   0.99%      0x00007f527b246090:   mov    %rsi,%rax                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@82 (line 198)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.14%      0x00007f527b246093:   mov    %r11,%rsi
   0.38%      0x00007f527b246096:   shr    $0x3,%rsi
   0.32%      0x00007f527b24609a:   mov    %esi,0xc(%r10)
   0.60%      0x00007f527b24609e:   mov    %r10,%rsi
   0.14%      0x00007f527b2460a1:   xor    %r11,%rsi
   0.39%      0x00007f527b2460a4:   movabs $0x7f528dff4000,%rbp
   0.33%      0x00007f527b2460ae:   test   $0xffffffffffe00000,%rsi
          ╭   0x00007f527b2460b5:   je     0x00007f527b2460db
          │   0x00007f527b2460bb:   nopl   0x0(%rax,%rax,1)
          │   0x00007f527b2460c0:   test   %r11,%r11
          │╭  0x00007f527b2460c3:   je     0x00007f527b2460db
          ││  0x00007f527b2460c9:   mov    %r10,%r11
          ││  0x00007f527b2460cc:   shr    $0x9,%r11
          ││  0x00007f527b2460d0:   cmpb   $0x2,(%r11,%rbp,1)
   0.00%  ││  0x00007f527b2460d5:   jne    0x00007f527b246325
   0.53%  ↘↘  0x00007f527b2460db:   mov    %r8,%rsi
   0.12%      0x00007f527b2460de:   shr    $0x3,%rsi
....................................................................................................
  73.34%  <total for region 1>

....[Hottest Regions]...............................................................................
  73.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 
   4.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 1064 
   3.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 
   2.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 
   2.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 
   2.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 
   2.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 
   2.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 
   2.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 
   1.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 
   0.20%               kernel  [unknown] 
   0.14%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.12%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%            libjvm.so  G1CardSet::reset_table_scanner 
   0.08%           ld-2.31.so  __tls_get_addr 
   0.07%            libjvm.so  HeapRegionManager::par_iterate 
   0.07%         libc-2.31.so  __memset_avx2_erms 
   0.06%            libjvm.so  ObjAllocator::initialize 
   0.06%               kernel  [unknown] 
   3.14%  <...other 613 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1006 
   4.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 1064 
   1.75%               kernel  [unknown] 
   0.21%                       <unknown> 
   0.17%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%            libjvm.so  G1CardSet::reset_table_scanner 
   0.08%           ld-2.31.so  __tls_get_addr 
   0.07%            libjvm.so  HeapRegionManager::par_iterate 
   0.07%            libjvm.so  ObjAllocator::initialize 
   0.07%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.07%         libc-2.31.so  __memset_avx2_erms 
   0.05%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.04%            libjvm.so  G1RebuildFreeListTask::work 
   0.04%            libjvm.so  G1CardSet::clear 
   0.04%            libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.04%            libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%   libpthread-2.31.so  __pthread_mutex_trylock 
   1.20%  <...other 227 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.86%       jvmci, level 4
   1.75%               kernel
   1.65%            libjvm.so
   0.27%         libc-2.31.so
   0.21%                     
   0.08%           ld-2.31.so
   0.07%   libpthread-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%               [vdso]
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.00%     perf-2106016.map
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate":
  6141.947 ±(99.9%) 43.253 MB/sec [Average]
  (min, avg, max) = (6121.946, 6141.947, 6148.254), stdev = 11.233
  CI (99.9%): [6098.695, 6185.200] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate.norm":
  176.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (176.000, 176.000, 176.000), stdev = 0.001
  CI (99.9%): [176.000, 176.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.count":
  125.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (25.000, 25.000, 25.000), stdev = 0.001
  CI (99.9%): [125.000, 125.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.time":
  219.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (42.000, 43.800, 45.000), stdev = 1.095
  CI (99.9%): [219.000, 219.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 87.50% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 57.037 ns/op
# Warmup Iteration   2: 56.019 ns/op
# Warmup Iteration   3: 56.662 ns/op
# Warmup Iteration   4: 56.125 ns/op
# Warmup Iteration   5: 56.108 ns/op
Iteration   1: 56.087 ns/op
                 gc.alloc.rate:      5168.925 MB/sec
                 gc.alloc.rate.norm: 304.000 B/op
                 gc.count:           21.000 counts
                 gc.time:            36.000 ms

Iteration   2: 56.374 ns/op
                 gc.alloc.rate:      5142.582 MB/sec
                 gc.alloc.rate.norm: 304.000 B/op
                 gc.count:           21.000 counts
                 gc.time:            39.000 ms

Iteration   3: 56.106 ns/op
                 gc.alloc.rate:      5167.206 MB/sec
                 gc.alloc.rate.norm: 304.000 B/op
                 gc.count:           21.000 counts
                 gc.time:            38.000 ms

Iteration   4: 56.111 ns/op
                 gc.alloc.rate:      5166.653 MB/sec
                 gc.alloc.rate.norm: 304.000 B/op
                 gc.count:           21.000 counts
                 gc.time:            36.000 ms

Iteration   5: 56.105 ns/op
                 gc.alloc.rate:      5167.268 MB/sec
                 gc.alloc.rate.norm: 304.000 B/op
                 gc.count:           21.000 counts
                 gc.time:            38.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural":
  56.157 ±(99.9%) 0.470 ns/op [Average]
  (min, avg, max) = (56.087, 56.157, 56.374), stdev = 0.122
  CI (99.9%): [55.687, 56.626] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:asm":
PrintAssembly processed: 236126 total address lines.
Perf output processed (skipped 60.874 seconds):
 Column 1: cycles (50915 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 1003 

               # {method} {0x00007faeab487598} &apos;wrapper_obj_dse_inter_procedural&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
               #           [sp+0x40]  (sp of caller)
               0x00007faf2f246200:   mov    0x8(%rsi),%r10d
               0x00007faf2f246204:   movabs $0x7faeaf000000,%r12
               0x00007faf2f24620e:   add    %r12,%r10
               0x00007faf2f246211:   xor    %r12,%r12
               0x00007faf2f246214:   cmp    %r10,%rax
               0x00007faf2f246217:   jne    0x00007faf2ec2f080           ;   {runtime_call ic_miss_stub}
               0x00007faf2f24621d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.35%       0x00007faf2f246220:   mov    %eax,-0x14000(%rsp)
   0.37%       0x00007faf2f246227:   sub    $0x38,%rsp
   0.31%       0x00007faf2f24622b:   nop
   0.10%       0x00007faf2f24622c:   cmpl   $0x1,0x20(%r15)
   0.15%       0x00007faf2f246234:   jne    0x00007faf2f246653
   0.17%       0x00007faf2f24623a:   mov    %rbp,0x30(%rsp)
   0.28%       0x00007faf2f24623f:   mov    0x1b8(%r15),%rsi
   0.09%       0x00007faf2f246246:   lea    0x30(%rsi),%rdx
   0.13%       0x00007faf2f24624a:   cmp    0x1c8(%r15),%rdx
          ╭    0x00007faf2f246251:   ja     0x00007faf2f2464d3
   0.20%  │    0x00007faf2f246257:   mov    %rdx,0x1b8(%r15)
   0.31%  │    0x00007faf2f24625e:   prefetchw 0xf0(%rsi)
   0.31%  │    0x00007faf2f246265:   movq   $0x1,(%rsi)
   0.21%  │    0x00007faf2f24626c:   movl   $0x1086000,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.26%  │    0x00007faf2f246273:   movl   $0x0,0xc(%rsi)
   0.32%  │    0x00007faf2f24627a:   movq   $0x0,0x10(%rsi)
   0.29%  │    0x00007faf2f246282:   movq   $0x0,0x18(%rsi)
   0.14%  │    0x00007faf2f24628a:   movq   $0x0,0x20(%rsi)
   0.26%  │    0x00007faf2f246292:   movq   $0x0,0x28(%rsi)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@69 (line 145)
   0.28%  │ ↗  0x00007faf2f24629a:   mov    0x1b8(%r15),%rdx
   0.16%  │ │  0x00007faf2f2462a1:   lea    0x10(%rdx),%rcx
   0.13%  │ │  0x00007faf2f2462a5:   cmp    0x1c8(%r15),%rcx
          │ │  0x00007faf2f2462ac:   ja     0x00007faf2f2465fd
   0.16%  │ │  0x00007faf2f2462b2:   mov    %rcx,0x1b8(%r15)
   0.30%  │ │  0x00007faf2f2462b9:   prefetchw 0xd0(%rdx)
   0.37%  │ │  0x00007faf2f2462c0:   movq   $0x1,(%rdx)
   0.48%  │ │  0x00007faf2f2462c7:   movl   $0xe80,0x8(%rdx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.22%  │ │  0x00007faf2f2462ce:   movl   $0x0,0xc(%rdx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 137)
   0.27%  │ │  0x00007faf2f2462d5:   mov    0x1b8(%r15),%rcx
   0.15%  │ │  0x00007faf2f2462dc:   lea    0x10(%rcx),%r8
   0.18%  │ │  0x00007faf2f2462e0:   cmp    0x1c8(%r15),%r8
          │╭│  0x00007faf2f2462e7:   ja     0x00007faf2f2464f7
   0.15%  │││  0x00007faf2f2462ed:   mov    %r8,0x1b8(%r15)
   0.33%  │││  0x00007faf2f2462f4:   prefetchw 0xd0(%rcx)
   0.35%  │││  0x00007faf2f2462fb:   movq   $0x1,(%rcx)
   0.60%  │││  0x00007faf2f246302:   movl   $0xe80,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.59%  │││  0x00007faf2f246309:   movl   $0x0,0xc(%rcx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@8 (line 138)
   0.34%  │││  0x00007faf2f246310:   mov    0x1b8(%r15),%r8
   0.15%  │││  0x00007faf2f246317:   lea    0x10(%r8),%r9
   0.07%  │││  0x00007faf2f24631b:   nopl   0x0(%rax,%rax,1)
   0.15%  │││  0x00007faf2f246320:   cmp    0x1c8(%r15),%r9
          │││  0x00007faf2f246327:   ja     0x00007faf2f246628
   0.33%  │││  0x00007faf2f24632d:   mov    %r9,0x1b8(%r15)
   0.10%  │││  0x00007faf2f246334:   prefetchw 0xd0(%r8)
   0.77%  │││  0x00007faf2f24633c:   movq   $0x1,(%r8)
   0.91%  │││  0x00007faf2f246343:   movl   $0xe80,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   1.21%  │││  0x00007faf2f24634b:   movl   $0x0,0xc(%r8)                ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@16 (line 139)
   0.13%  │││  0x00007faf2f246353:   mov    0x1b8(%r15),%r9
   0.21%  │││  0x00007faf2f24635a:   lea    0x10(%r9),%rdi
   0.20%  │││  0x00007faf2f24635e:   xchg   %ax,%ax
   0.29%  │││  0x00007faf2f246360:   cmp    0x1c8(%r15),%rdi
          │││  0x00007faf2f246367:   ja     0x00007faf2f2465d2
   0.17%  │││  0x00007faf2f24636d:   mov    %rdi,0x1b8(%r15)
   0.19%  │││  0x00007faf2f246374:   prefetchw 0xd0(%r9)
   1.10%  │││  0x00007faf2f24637c:   movq   $0x1,(%r9)
   0.90%  │││  0x00007faf2f246383:   movl   $0xe80,0x8(%r9)              ;   {metadata(&apos;java/lang/Object&apos;)}
   1.20%  │││  0x00007faf2f24638b:   movl   $0x0,0xc(%r9)                ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@24 (line 140)
   0.53%  │││  0x00007faf2f246393:   mov    0x1b8(%r15),%rdi
   0.12%  │││  0x00007faf2f24639a:   lea    0x10(%rdi),%r10
   0.09%  │││  0x00007faf2f24639e:   xchg   %ax,%ax
   0.30%  │││  0x00007faf2f2463a0:   cmp    0x1c8(%r15),%r10
          │││  0x00007faf2f2463a7:   ja     0x00007faf2f24657c
   0.26%  │││  0x00007faf2f2463ad:   mov    %r10,0x1b8(%r15)
   0.12%  │││  0x00007faf2f2463b4:   prefetchw 0xd0(%rdi)
   0.89%  │││  0x00007faf2f2463bb:   movq   $0x1,(%rdi)
   1.51%  │││  0x00007faf2f2463c2:   movl   $0xe80,0x8(%rdi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.92%  │││  0x00007faf2f2463c9:   movl   $0x0,0xc(%rdi)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@33 (line 141)
   0.29%  │││  0x00007faf2f2463d0:   mov    0x1b8(%r15),%r10
   0.18%  │││  0x00007faf2f2463d7:   lea    0x10(%r10),%r11
   0.12%  │││  0x00007faf2f2463db:   nopl   0x0(%rax,%rax,1)
   0.29%  │││  0x00007faf2f2463e0:   cmp    0x1c8(%r15),%r11
          │││  0x00007faf2f2463e7:   ja     0x00007faf2f246525
   0.21%  │││  0x00007faf2f2463ed:   mov    %r11,0x1b8(%r15)
   0.11%  │││  0x00007faf2f2463f4:   prefetchw 0xd0(%r10)
   1.01%  │││  0x00007faf2f2463fc:   movq   $0x1,(%r10)
   1.57%  │││  0x00007faf2f246403:   movl   $0xe80,0x8(%r10)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.81%  │││  0x00007faf2f24640b:   movl   $0x0,0xc(%r10)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@42 (line 142)
   0.52%  │││  0x00007faf2f246413:   mov    0x1b8(%r15),%r11
   0.53%  │││  0x00007faf2f24641a:   lea    0x10(%r11),%rbx
   0.09%  │││  0x00007faf2f24641e:   xchg   %ax,%ax
   0.15%  │││  0x00007faf2f246420:   cmp    0x1c8(%r15),%rbx
          │││  0x00007faf2f246427:   ja     0x00007faf2f2465a7
   0.35%  │││  0x00007faf2f24642d:   mov    %rbx,0x1b8(%r15)
   0.11%  │││  0x00007faf2f246434:   prefetchw 0xd0(%r11)
   0.82%  │││  0x00007faf2f24643c:   movq   $0x1,(%r11)
   1.31%  │││  0x00007faf2f246443:   movl   $0xe80,0x8(%r11)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.77%  │││  0x00007faf2f24644b:   movl   $0x0,0xc(%r11)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@51 (line 143)
   0.56%  │││  0x00007faf2f246453:   mov    0x1b8(%r15),%rbx
   0.64%  │││  0x00007faf2f24645a:   lea    0x10(%rbx),%rax
   0.04%  │││  0x00007faf2f24645e:   xchg   %ax,%ax
   0.11%  │││  0x00007faf2f246460:   cmp    0x1c8(%r15),%rax
          │││  0x00007faf2f246467:   ja     0x00007faf2f246550
   0.56%  │││  0x00007faf2f24646d:   mov    %rax,0x1b8(%r15)
   0.10%  │││  0x00007faf2f246474:   prefetchw 0xd0(%rbx)
   0.80%  │││  0x00007faf2f24647b:   movq   $0x1,(%rbx)
   1.68%  │││  0x00007faf2f246482:   movl   $0xe80,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.62%  │││  0x00007faf2f246489:   movl   $0x0,0xc(%rbx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@60 (line 144)
   0.51%  │││  0x00007faf2f246490:   mov    %rsi,%rax
   0.04%  │││  0x00007faf2f246493:   mov    %r10,(%rsp)
   0.05%  │││  0x00007faf2f246497:   mov    %r11,0x8(%rsp)
   0.09%  │││  0x00007faf2f24649c:   mov    %rbx,0x10(%rsp)              ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@86 (line 145)
   0.48%  │││  0x00007faf2f2464a1:   mov    %rax,0x20(%rsp)
   0.05%  │││  0x00007faf2f2464a6:   nop
   0.04%  │││  0x00007faf2f2464a7:   call   0x00007faf2f2444e0           ; ImmutableOopMap {[32]=Oop }
          │││                                                            ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@86 (line 145)
          │││                                                            ;   {optimized virtual_call}
   0.31%  │││  0x00007faf2f2464ac:   nopl   0x49c(%rax,%rax,1)           ;   {other}
   0.09%  │││  0x00007faf2f2464b4:   mov    0x20(%rsp),%rax              ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@89 (line 145)
   0.41%  │││  0x00007faf2f2464b9:   mov    0x30(%rsp),%rbp
   0.25%  │││  0x00007faf2f2464be:   add    $0x38,%rsp
   0.09%  │││  0x00007faf2f2464c2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007faf2f2464c9:   ja     0x00007faf2f246666
   0.14%  │││  0x00007faf2f2464cf:   vzeroupper 
   0.75%  │││  0x00007faf2f2464d2:   ret    
          ↘││  0x00007faf2f2464d3:   movabs $0x7faeb0086000,%rsi         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
           ││  0x00007faf2f2464dd:   data16 xchg %ax,%ax
           ││  0x00007faf2f2464e0:   call   0x00007faf2edba200           ; ImmutableOopMap {}
           ││                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
           ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 137)
           ││                                                            ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
           ││  0x00007faf2f2464e5:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop }
           ││                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
           ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 137)
           ││  0x00007faf2f2464ed:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007faf2f24667a
   0.00%   ││  0x00007faf2f2464ef:   mov    %rax,%rsi
           │╰  0x00007faf2f2464f2:   jmp    0x00007faf2f24629a           ;*new {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@69 (line 145)
           ↘   0x00007faf2f2464f7:   mov    %rsi,0x20(%rsp)
               0x00007faf2f2464fc:   movabs $0x7faeaf000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
               0x00007faf2f246506:   call   0x00007faf2edba200           ; ImmutableOopMap {rdx=Oop [32]=Oop }
                                                                         ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 137)
                                                                         ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
               0x00007faf2f24650b:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rdx=Oop [32]=Oop }
                                                                         ;*new {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  39.81%  <total for region 1>

....[Hottest Regions]...............................................................................
  39.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 1003 
   6.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   5.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   5.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   5.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   4.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   4.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   4.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   4.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   2.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1052 
   1.76%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   1.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   1.50%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   1.50%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   1.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   1.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   1.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   1.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   1.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
   0.12%              kernel  [unknown] 
   3.33%  <...other 526 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 1002 
  39.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 1003 
   2.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1052 
   1.42%              kernel  [unknown] 
   0.13%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.11%                      <unknown> 
   0.10%           libjvm.so  G1CardSet::reset_table_scanner 
   0.07%           libjvm.so  FreeListAllocator::reset 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.06%          ld-2.31.so  __tls_get_addr 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.04%           libjvm.so  G1FromCardCache::clear 
   0.04%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.04%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.04%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.03%           libjvm.so  G1CardSetMemoryManager::memory_stats 
   0.03%           libjvm.so  JVMCIRuntime::new_instance_common 
   0.03%           libjvm.so  HeapRegionClaimer::claim_region 
   1.07%  <...other 202 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.56%      jvmci, level 4
   1.48%           libjvm.so
   1.42%              kernel
   0.26%        libc-2.31.so
   0.11%                    
   0.06%          ld-2.31.so
   0.05%  libpthread-2.31.so
   0.03%              [vdso]
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate":
  5162.527 ±(99.9%) 43.057 MB/sec [Average]
  (min, avg, max) = (5142.582, 5162.527, 5168.925), stdev = 11.182
  CI (99.9%): [5119.470, 5205.584] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate.norm":
  304.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (304.000, 304.000, 304.000), stdev = 0.001
  CI (99.9%): [304.000, 304.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.count":
  105.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (21.000, 21.000, 21.000), stdev = 0.001
  CI (99.9%): [105.000, 105.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.time":
  187.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (36.000, 37.400, 39.000), stdev = 1.342
  CI (99.9%): [187.000, 187.000] (assumes normal distribution)


# Run complete. Total time: 00:15:14

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
DeadLocalAllocationStoreBenchmark.array_baseline                                           64  avgt    5    12.628 ±   0.037   ns/op
DeadLocalAllocationStoreBenchmark.array_baseline:asm                                       64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate                             64  avgt    5  6041.288 ±  17.915  MB/sec
DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate.norm                        64  avgt    5    80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_baseline:gc.count                                  64  avgt    5   123.000            counts
DeadLocalAllocationStoreBenchmark.array_baseline:gc.time                                   64  avgt    5   212.000                ms
DeadLocalAllocationStoreBenchmark.array_dse                                                64  avgt    5    15.438 ±   0.864   ns/op
DeadLocalAllocationStoreBenchmark.array_dse:asm                                            64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate                                  64  avgt    5  4942.549 ± 273.834  MB/sec
DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate.norm                             64  avgt    5    80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_dse:gc.count                                       64  avgt    5   101.000            counts
DeadLocalAllocationStoreBenchmark.array_dse:gc.time                                        64  avgt    5   180.000                ms
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural                               64  avgt    5    31.860 ±   0.187   ns/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:asm                           64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate                 64  avgt    5  2394.090 ±   9.999  MB/sec
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate.norm            64  avgt    5    80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.count                      64  avgt    5    49.000            counts
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.time                       64  avgt    5    91.000                ms
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline                                       64  avgt    5     8.117 ±   0.018   ns/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:asm                                   64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate                         64  avgt    5  1879.820 ±   4.127  MB/sec
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate.norm                    64  avgt    5    16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.count                              64  avgt    5    38.000            counts
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.time                               64  avgt    5    71.000                ms
DeadLocalAllocationStoreBenchmark.obj_dse                                                  64  avgt    5     7.993 ±   0.042   ns/op
DeadLocalAllocationStoreBenchmark.obj_dse:asm                                              64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate                                    64  avgt    5  1908.933 ±   9.966  MB/sec
DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate.norm                               64  avgt    5    16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_dse:gc.count                                         64  avgt    5    39.000            counts
DeadLocalAllocationStoreBenchmark.obj_dse:gc.time                                          64  avgt    5    70.000                ms
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural                                 64  avgt    5    84.354 ±   0.127   ns/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:asm                             64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate                   64  avgt    5   180.887 ±   0.273  MB/sec
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate.norm              64  avgt    5    16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.count                        64  avgt    5     4.000            counts
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.time                         64  avgt    5    13.000                ms
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline                                     64  avgt    5    27.327 ±   0.193   ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:asm                                 64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate                       64  avgt    5  6141.947 ±  43.253  MB/sec
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate.norm                  64  avgt    5   176.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.count                            64  avgt    5   125.000            counts
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.time                             64  avgt    5   219.000                ms
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural                         64  avgt    5    56.157 ±   0.470   ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:asm                     64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate           64  avgt    5  5162.527 ±  43.057  MB/sec
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate.norm      64  avgt    5   304.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.count                64  avgt    5   105.000            counts
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.time                 64  avgt    5   187.000                ms
