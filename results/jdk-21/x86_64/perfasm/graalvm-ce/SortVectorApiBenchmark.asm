# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 64, vectorSize = 64)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.197 us/op
# Warmup Iteration   2: 3.126 us/op
# Warmup Iteration   3: 3.121 us/op
# Warmup Iteration   4: 3.121 us/op
# Warmup Iteration   5: 3.121 us/op
Iteration   1: 3.120 us/op
Iteration   2: 3.123 us/op
Iteration   3: 3.121 us/op
Iteration   4: 3.120 us/op
Iteration   5: 3.145 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  3.126 ±(99.9%) 0.041 us/op [Average]
  (min, avg, max) = (3.120, 3.126, 3.145), stdev = 0.011
  CI (99.9%): [3.085, 3.167] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 309782 total address lines.
Perf output processed (skipped 60.490 seconds):
 Column 1: cycles (50642 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 7, compile id 1288 

 <region is too big to display, has 1467 lines, but threshold is 1000>
....................................................................................................
  81.51%  <total for region 1>

....[Hottest Regions]...............................................................................
  81.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 7, compile id 1288 
   7.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 7, compile id 1288 
   5.88%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 7, compile id 1288 
   1.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 7, compile id 1288 
   0.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 7, compile id 1288 
   0.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 7, compile id 1288 
   0.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 5, compile id 1317 
   0.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 7, compile id 1288 
   0.14%              kernel  [unknown] 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 7, compile id 1288 
   0.10%              kernel  [unknown] 
   0.08%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   2.03%  <...other 489 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 7, compile id 1288 
   1.29%              kernel  [unknown] 
   0.19%                      <unknown> 
   0.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 5, compile id 1317 
   0.09%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%           libjvm.so  G1FromCardCache::clear 
   0.03%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.03%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%           libjvm.so  G1CardSet::clear 
   0.02%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%           libjvm.so  oopFactory::new_typeArray 
   0.02%           libjvm.so  TypeArrayKlass::allocate_common 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.79%  <...other 183 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.23%      jvmci, level 4
   1.29%              kernel
   1.02%           libjvm.so
   0.19%                    
   0.16%        libc-2.31.so
   0.06%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 64, vectorSize = 128)

# Run progress: 8.33% complete, ETA 00:21:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 21.786 us/op
# Warmup Iteration   2: 7.333 us/op
# Warmup Iteration   3: 7.319 us/op
# Warmup Iteration   4: 7.321 us/op
# Warmup Iteration   5: 7.323 us/op
Iteration   1: 7.319 us/op
Iteration   2: 7.321 us/op
Iteration   3: 7.313 us/op
Iteration   4: 7.313 us/op
Iteration   5: 7.385 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  7.330 ±(99.9%) 0.119 us/op [Average]
  (min, avg, max) = (7.313, 7.330, 7.385), stdev = 0.031
  CI (99.9%): [7.211, 7.449] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 316862 total address lines.
Perf output processed (skipped 60.516 seconds):
 Column 1: cycles (50835 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 

 <region is too big to display, has 1106 lines, but threshold is 1000>
....................................................................................................
  29.52%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1254 

                   # parm1:    rcx:rcx   = &apos;jdk/incubator/vector/AbstractMask$MBinOp&apos;
                   #           [sp+0x20]  (sp of caller)
                   0x00007fd8e724ef80:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                   0x00007fd8e724ef84:   movabs $0x7fd86b000000,%r12
                   0x00007fd8e724ef8e:   add    %r12,%r10
                   0x00007fd8e724ef91:   xor    %r12,%r12
                   0x00007fd8e724ef94:   cmp    %r10,%rax
                   0x00007fd8e724ef97:   jne    0x00007fd8e6c2f080           ;   {runtime_call ic_miss_stub}
                   0x00007fd8e724ef9d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   0.30%           0x00007fd8e724efa0:   mov    %eax,-0x14000(%rsp)
   0.30%           0x00007fd8e724efa7:   sub    $0x18,%rsp
   0.03%           0x00007fd8e724efab:   nop
   0.31%           0x00007fd8e724efac:   cmpl   $0x1,0x20(%r15)
   0.24%           0x00007fd8e724efb4:   jne    0x00007fd8e724f505
   0.10%           0x00007fd8e724efba:   mov    %rbp,0x10(%rsp)
   0.04%           0x00007fd8e724efbf:   nop
   0.34%           0x00007fd8e724efc0:   test   %rdx,%rdx
                   0x00007fd8e724efc3:   je     0x00007fd8e724f2ee
   0.18%           0x00007fd8e724efc9:   mov    0x8(%rdx),%eax
   0.13%           0x00007fd8e724efcc:   movabs $0x7fd86b000000,%r10
   0.05%           0x00007fd8e724efd6:   lea    (%r10,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@17 (line 615)
   0.26%           0x00007fd8e724efda:   nopw   0x0(%rax,%rax,1)
   0.20%           0x00007fd8e724efe0:   test   %rdx,%rdx
          ╭        0x00007fd8e724efe3:   je     0x00007fd8e724effc
   0.11%  │        0x00007fd8e724efe9:   movabs $0x7fd86c0c4fa8,%r10         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector$Int128Mask&apos;)}
   0.03%  │        0x00007fd8e724eff3:   cmp    %rax,%r10
          │        0x00007fd8e724eff6:   jne    0x00007fd8e724f465           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.29%  ↘        0x00007fd8e724effc:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007fd8e724f529
                                                                             ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.24%           0x00007fd8e724effe:   mov    0x8(%rcx),%eax               ; implicit exception: dispatches to 0x00007fd8e724f54d
   0.12%           0x00007fd8e724f001:   mov    0xc(%rsi),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@11 (line 614)
   0.03%           0x00007fd8e724f005:   test   %r10d,%r10d
                   0x00007fd8e724f008:   je     0x00007fd8e724f2fa
   0.35%           0x00007fd8e724f00e:   mov    0x8(,%r10,8),%r11d
   0.25%           0x00007fd8e724f016:   movabs $0x7fd86b000000,%r8
   0.12%           0x00007fd8e724f020:   lea    (%r8,%r11,1),%r11
   0.05%           0x00007fd8e724f024:   movabs $0x7fd86b001b00,%r8          ;   {metadata({type array bool})}
   0.31%           0x00007fd8e724f02e:   test   %r10d,%r10d
           ╭       0x00007fd8e724f031:   je     0x00007fd8e724f040           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@4 (line 598)
           │                                                                 ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@11 (line 614)
   0.18%   │       0x00007fd8e724f037:   cmp    %r11,%r8
           │       0x00007fd8e724f03a:   jne    0x00007fd8e724f498           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r10=NarrowOop }
           │                                                                 ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                                 ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.11%   ↘       0x00007fd8e724f040:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fd8e724f570
   0.05%           0x00007fd8e724f048:   test   %r11d,%r11d
                   0x00007fd8e724f04b:   je     0x00007fd8e724f427           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.29%           0x00007fd8e724f051:   mov    0xc(%rdx),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@20 (line 615)
   0.22%           0x00007fd8e724f055:   test   %r9d,%r9d
                   0x00007fd8e724f058:   je     0x00007fd8e724f306
   0.12%           0x00007fd8e724f05e:   mov    0x8(,%r9,8),%ebx
   0.07%           0x00007fd8e724f066:   movabs $0x7fd86b000000,%rdi
   0.37%           0x00007fd8e724f070:   lea    (%rdi,%rbx,1),%rbx
   0.25%           0x00007fd8e724f074:   test   %r9d,%r9d
            ╭      0x00007fd8e724f077:   je     0x00007fd8e724f089           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@4 (line 598)
            │                                                                ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@20 (line 615)
   0.13%    │      0x00007fd8e724f07d:   data16 xchg %ax,%ax
   0.02%    │      0x00007fd8e724f080:   cmp    %rbx,%r8
            │      0x00007fd8e724f083:   jne    0x00007fd8e724f4cb           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop }
            │                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                                ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.29%    ↘      0x00007fd8e724f089:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007fd8e724f593
   0.19%           0x00007fd8e724f091:   test   %ebx,%ebx
                   0x00007fd8e724f093:   je     0x00007fd8e724f4dd
   0.14%           0x00007fd8e724f099:   movzbl 0x10(,%r9,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
   0.04%           0x00007fd8e724f0a2:   movzbl 0x10(,%r10,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.31%           0x00007fd8e724f0ab:   movabs $0x7fd86b000000,%r13
   0.22%           0x00007fd8e724f0b5:   lea    0x0(%r13,%rax,1),%rax
   0.10%           0x00007fd8e724f0ba:   cmp    -0x161(%rip),%rax        # 0x00007fd8e724ef60
                                                                             ;   {section_word}
   0.04%     ╭     0x00007fd8e724f0c1:   je     0x00007fd8e724f0d9
   0.05%     │     0x00007fd8e724f0c7:   cmp    -0x166(%rip),%rax        # 0x00007fd8e724ef68
             │                                                               ;   {section_word}
   0.21%     │     0x00007fd8e724f0ce:   je     0x00007fd8e724f2d1
             │     0x00007fd8e724f0d4:   jmp    0x00007fd8e724f4a7
   0.29%     ↘     0x00007fd8e724f0d9:   and    %edi,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.33%           0x00007fd8e724f0db:   mov    %r9d,%edi
   0.04%           0x00007fd8e724f0de:   shl    $0x3,%rdi                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@20 (line 615)
   0.02%           0x00007fd8e724f0e2:   mov    %r10d,%r13d
   0.29%           0x00007fd8e724f0e5:   shl    $0x3,%r13                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@11 (line 614)
   0.34%           0x00007fd8e724f0e9:   cmp    $0x2,%r11d
                   0x00007fd8e724f0ed:   jb     0x00007fd8e724f418           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.03%           0x00007fd8e724f0f3:   cmp    $0x2,%ebx
                   0x00007fd8e724f0f6:   jb     0x00007fd8e724f39d
   0.02%           0x00007fd8e724f0fc:   movzbl 0x11(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
   0.30%           0x00007fd8e724f105:   movzbl 0x11(,%r10,8),%edx
   0.32%           0x00007fd8e724f10e:   cmp    -0x1b5(%rip),%rax        # 0x00007fd8e724ef60
                                                                             ;   {section_word}
   0.04%      ╭    0x00007fd8e724f115:   je     0x00007fd8e724f12d
              │    0x00007fd8e724f11b:   cmp    -0x1ba(%rip),%rax        # 0x00007fd8e724ef68
              │                                                              ;   {section_word}
   0.01%      │    0x00007fd8e724f122:   je     0x00007fd8e724f2e7
              │    0x00007fd8e724f128:   jmp    0x00007fd8e724f4b9
   0.02%      ↘    0x00007fd8e724f12d:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.61%           0x00007fd8e724f12f:   mov    %edx,%r14d
   0.00%           0x00007fd8e724f132:   cmp    $0x3,%r11d
                   0x00007fd8e724f136:   jb     0x00007fd8e724f3f0           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.04%           0x00007fd8e724f13c:   nopl   0x0(%rax)
   0.02%           0x00007fd8e724f140:   cmp    $0x3,%ebx
                   0x00007fd8e724f143:   jb     0x00007fd8e724f4ef
   0.66%           0x00007fd8e724f149:   movzbl 0x12(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
                   0x00007fd8e724f152:   movzbl 0x12(,%r10,8),%edx
   0.03%           0x00007fd8e724f15b:   cmp    -0x202(%rip),%rax        # 0x00007fd8e724ef60
                                                                             ;   {section_word}
   0.02%       ╭   0x00007fd8e724f162:   je     0x00007fd8e724f17a
   0.33%       │   0x00007fd8e724f168:   cmp    -0x207(%rip),%rax        # 0x00007fd8e724ef68
               │                                                             ;   {section_word}
               │   0x00007fd8e724f16f:   je     0x00007fd8e724f2e0
               │   0x00007fd8e724f175:   jmp    0x00007fd8e724f486
   0.28%       ↘   0x00007fd8e724f17a:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.34%           0x00007fd8e724f17c:   nopl   0x0(%rax)
   0.04%           0x00007fd8e724f180:   cmp    $0x4,%r11d
                   0x00007fd8e724f184:   jb     0x00007fd8e724f474           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.01%           0x00007fd8e724f18a:   cmp    $0x4,%ebx
                   0x00007fd8e724f18d:   jb     0x00007fd8e724f44f
   0.24%           0x00007fd8e724f193:   movzbl 0x13(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
   0.38%           0x00007fd8e724f19c:   movzbl 0x13(,%r10,8),%r10d
   0.04%           0x00007fd8e724f1a5:   cmp    -0x24c(%rip),%rax        # 0x00007fd8e724ef60
                                                                             ;   {section_word}
   0.03%        ╭  0x00007fd8e724f1ac:   je     0x00007fd8e724f1c5
   0.00%        │  0x00007fd8e724f1b2:   cmp    -0x251(%rip),%rax        # 0x00007fd8e724ef68
                │                                                            ;   {section_word}
   0.32%        │  0x00007fd8e724f1b9:   je     0x00007fd8e724f2d8
                │  0x00007fd8e724f1bf:   nop
                │  0x00007fd8e724f1c0:   jmp    0x00007fd8e724f3c5
   0.27%        ↘  0x00007fd8e724f1c5:   and    %esi,%r10d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.32%           0x00007fd8e724f1c8:   mov    0x1b8(%r15),%rsi
   0.02%           0x00007fd8e724f1cf:   lea    0x10(%rsi),%rax
   0.02%           0x00007fd8e724f1d3:   cmp    0x1c8(%r15),%rax
                   0x00007fd8e724f1da:   ja     0x00007fd8e724f349
   0.27%           0x00007fd8e724f1e0:   mov    %rax,0x1b8(%r15)
   0.37%           0x00007fd8e724f1e7:   prefetchw 0xd0(%rsi)
   0.13%           0x00007fd8e724f1ee:   movq   $0x1,(%rsi)
   0.23%           0x00007fd8e724f1f5:   movl   $0x10c4fa8,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector$Int128Mask&apos;)}
   0.33%           0x00007fd8e724f1fc:   movl   $0x0,0xc(%rsi)
   0.55%           0x00007fd8e724f203:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@63 (line 619)
   0.01%           0x00007fd8e724f206:   mov    0x1b8(%r15),%rsi
   0.27%           0x00007fd8e724f20d:   lea    0x18(%rsi),%rax
   0.33%           0x00007fd8e724f211:   cmp    0x1c8(%r15),%rax
                   0x00007fd8e724f218:   ja     0x00007fd8e724f36a
   0.67%           0x00007fd8e724f21e:   mov    %rax,0x1b8(%r15)
   0.28%           0x00007fd8e724f225:   prefetchw 0xd8(%rsi)
   0.74%           0x00007fd8e724f22c:   prefetchw 0x118(%rsi)
   0.05%           0x00007fd8e724f233:   prefetchw 0x158(%rsi)
   0.55%           0x00007fd8e724f23a:   prefetchw 0x198(%rsi)
   0.40%           0x00007fd8e724f241:   movq   $0x1,(%rsi)
   1.30%           0x00007fd8e724f248:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.61%           0x00007fd8e724f24f:   movl   $0x4,0xc(%rsi)
   0.42%           0x00007fd8e724f256:   movq   $0x0,0x10(%rsi)
   0.40%           0x00007fd8e724f25e:   mov    %r10b,0x13(%rsi)
   0.35%           0x00007fd8e724f262:   mov    %dl,0x12(%rsi)
   0.23%           0x00007fd8e724f265:   mov    %r14b,0x11(%rsi)
   0.22%           0x00007fd8e724f269:   mov    %bpl,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::prepare@6 (line 574)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::&lt;init&gt;@3 (line 566)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::&lt;init&gt;@3 (line 562)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@68 (line 619)
   0.29%           0x00007fd8e724f26d:   mov    %rsi,%rax
   0.13%           0x00007fd8e724f270:   shr    $0x3,%rax
   0.07%           0x00007fd8e724f274:   mov    %eax,0xc(%r11)
   0.22%           0x00007fd8e724f278:   mov    %r11,%rax
   0.25%           0x00007fd8e724f27b:   xor    %rsi,%rax
   0.16%           0x00007fd8e724f27e:   xchg   %ax,%ax
   0.05%           0x00007fd8e724f280:   test   $0xffffffffffe00000,%rax
                   0x00007fd8e724f287:   je     0x00007fd8e724f2b2
                   0x00007fd8e724f28d:   test   %rsi,%rsi
                   0x00007fd8e724f290:   je     0x00007fd8e724f2b2
                   0x00007fd8e724f296:   mov    %r11,%r10
                   0x00007fd8e724f299:   shr    $0x9,%r10
                   0x00007fd8e724f29d:   movabs $0x7fd8fa877000,%r8
                   0x00007fd8e724f2a7:   cmpb   $0x2,(%r10,%r8,1)
                   0x00007fd8e724f2ac:   jne    0x00007fd8e724f312           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@63 (line 619)
   0.20%           0x00007fd8e724f2b2:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  23.71%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 

                                                                       ; - jdk.incubator.vector.IntVector::maskFactory@5 (line 116)
                                                                       ; - jdk.incubator.vector.IntVector::bTest@68 (line 478)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$59@9 (line 2034)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d1ef8::apply@14
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                       ; - jdk.incubator.vector.IntVector::compareTemplate@42 (line 2029)
                                                                       ; - jdk.incubator.vector.Int128Vector::compare@5 (line 384)
                                                                       ; - jdk.incubator.vector.Int128Vector::compare@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lt@5 (line 1933)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@129 (line 86)
   0.28%     0x00007fd8e72778f1:   mov    %rdi,%rsi
             0x00007fd8e72778f4:   mov    %r9,%rdx
   0.04%     0x00007fd8e72778f7:   mov    0x60(%rsp),%rcx              ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@7 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.04%     0x00007fd8e72778fc:   mov    %r9,0x20(%rsp)
   0.30%     0x00007fd8e7277901:   mov    %rdi,0x18(%rsp)
             0x00007fd8e7277906:   nop
   0.03%     0x00007fd8e7277907:   call   0x00007fd8e724efa0           ; ImmutableOopMap {[24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [124]=NarrowOop [128]=Oop }
                                                                       ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@7 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
                                                                       ;   {optimized virtual_call}
   0.04%     0x00007fd8e727790c:   nopl   0xa0011fc(%rax,%rax,1)       ;   {other}
   0.07%     0x00007fd8e7277914:   mov    %rax,%r10                    ; ImmutableOopMap {r10=Oop [24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [124]=NarrowOop [128]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@10 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.04%     0x00007fd8e7277917:   test   %eax,(%r10)                  ; implicit exception: dispatches to 0x00007fd8e7279085
   0.35%     0x00007fd8e727791a:   mov    0x40(%rsp),%r9
   0.16%     0x00007fd8e727791f:   mov    0xc(%r9),%esi                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   1.22%     0x00007fd8e7277923:   test   %esi,%esi
             0x00007fd8e7277925:   je     0x00007fd8e7277db6
   0.31%     0x00007fd8e727792b:   mov    0x8(,%rsi,8),%eax
   1.26%     0x00007fd8e7277932:   movabs $0x7fd86b000000,%rdx
             0x00007fd8e727793c:   lea    (%rdx,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@20 (line 227)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.34%     0x00007fd8e7277940:   test   %esi,%esi
             0x00007fd8e7277942:   je     0x00007fd8e7277d05
   0.01%     0x00007fd8e7277948:   mov    0x100(%rsp),%r13
             0x00007fd8e7277950:   cmp    %rax,%r13
             0x00007fd8e7277953:   jne    0x00007fd8e7278ef3           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.36%     0x00007fd8e7277959:   nopl   0x0(%rax)                    ; ImmutableOopMap {rsi=NarrowOop r9=Oop r10=Oop [24]=Oop [32]=Oop [56]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [124]=NarrowOop [128]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@10 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
             0x00007fd8e7277960:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fd8e72790a8
   0.01%     0x00007fd8e7277968:   jb     0x00007fd8e7278ced           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.35%     0x00007fd8e727796e:   mov    0xc(%r10),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007fd8e7277972:   test   %eax,%eax
             0x00007fd8e7277974:   je     0x00007fd8e7277daa
             0x00007fd8e727797a:   mov    0x8(,%rax,8),%edx
             0x00007fd8e7277981:   movabs $0x7fd86b000000,%rcx
   0.34%     0x00007fd8e727798b:   lea    (%rcx,%rdx,1),%rdx
             0x00007fd8e727798f:   test   %eax,%eax
             0x00007fd8e7277991:   je     0x00007fd8e7277d12           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@4 (line 598)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007fd8e7277997:   mov    0xd0(%rsp),%rbp
             0x00007fd8e727799f:   nop
   0.31%     0x00007fd8e72779a0:   cmp    %rdx,%rbp
             0x00007fd8e72779a3:   jne    0x00007fd8e7278d19           ; ImmutableOopMap {rax=NarrowOop rsi=NarrowOop r9=Oop r10=Oop [24]=Oop [32]=Oop [56]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [124]=NarrowOop [128]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@10 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
             0x00007fd8e72779a9:   cmpl   $0x4,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007fd8e72790cd
   0.01%     0x00007fd8e72779b1:   jb     0x00007fd8e7278a0f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007fd86c0d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.33%     0x00007fd8e72779b7:   nopw   0x0(%rax,%rax,1)
   0.00%     0x00007fd8e72779c0:   cmpb   $0x0,0x10(,%rax,8)
   0.00%     0x00007fd8e72779c8:   jne    0x00007fd8e7277d54           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.27%     0x00007fd8e72779ce:   mov    0x10(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007fd8e72779d5:   mov    %edx,%r11d
             0x00007fd8e72779d8:   mov    0x38(%rsp),%rcx              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007fd8e72779dd:   data16 xchg %ax,%ax
   0.33%     0x00007fd8e72779e0:   cmpb   $0x0,0x11(,%rax,8)
   0.04%     0x00007fd8e72779e8:   jne    0x00007fd8e7277d65           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.06%     0x00007fd8e72779ee:   mov    0x14(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.30%     0x00007fd8e72779f5:   mov    %edx,%r8d
   0.00%     0x00007fd8e72779f8:   nopl   0x0(%rax,%rax,1)
   0.01%     0x00007fd8e7277a00:   cmpb   $0x0,0x12(,%rax,8)
   0.36%     0x00007fd8e7277a08:   jne    0x00007fd8e7277d6d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
                                                                       ;   {no_reloc}
   0.02%     0x00007fd8e7277a0e:   mov    0x18(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.10%     0x00007fd8e7277a15:   mov    %edx,%ebx
   0.06%     0x00007fd8e7277a17:   nopw   0x0(%rax,%rax,1)
   0.16%     0x00007fd8e7277a20:   cmpb   $0x0,0x13(,%rax,8)
   0.15%     0x00007fd8e7277a28:   jne    0x00007fd8e7277d4c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.08%     0x00007fd8e7277a2e:   mov    0x1c(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.05%     0x00007fd8e7277a35:   mov    %edx,%r14d
   0.01%     0x00007fd8e7277a38:   mov    0x48(%rsp),%rdi
   0.10%     0x00007fd8e7277a3d:   mov    0xc(%rdi),%edx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.25%     0x00007fd8e7277a40:   test   %edx,%edx
             0x00007fd8e7277a42:   je     0x00007fd8e7277d99
   0.09%     0x00007fd8e7277a48:   mov    %r10,0x10(%rsp)
   0.01%     0x00007fd8e7277a4d:   mov    0x8(,%rdx,8),%ecx
   1.10%     0x00007fd8e7277a54:   movabs $0x7fd86b000000,%r10
   0.00%     0x00007fd8e7277a5e:   lea    (%r10,%rcx,1),%rcx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.36%     0x00007fd8e7277a62:   mov    %esi,%r10d
   0.00%     0x00007fd8e7277a65:   shl    $0x3,%r10                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007fd8e7277a69:   shl    $0x3,%rax                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007fd8e7277a6d:   test   %edx,%edx
          ╭  0x00007fd8e7277a6f:   je     0x00007fd8e7277a7e
   0.34%  │  0x00007fd8e7277a75:   cmp    %rcx,%r13
          │  0x00007fd8e7277a78:   jne    0x00007fd8e7278cad           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
          │                                                            ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
          │                                                            ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
          │                                                            ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
          │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
          │                                                            ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
          │                                                            ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.00%  ↘  0x00007fd8e7277a7e:   xchg   %ax,%ax                      ; ImmutableOopMap {rax=Oop rdx=NarrowOop rdi=Oop r9=Oop r10=Oop [16]=Oop [56]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [124]=NarrowOop [128]=Oop }
                                                                       ;*iastore {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007fd8e7277a80:   cmpl   $0x4,0xc(,%rdx,8)            ; implicit exception: dispatches to 0x00007fd8e72790f0
   0.31%     0x00007fd8e7277a88:   jb     0x00007fd8e7278e32           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.00%     0x00007fd8e7277a8e:   mov    0x1b8(%r15),%rsi
   0.00%     0x00007fd8e7277a95:   lea    0x10(%rsi),%rcx
   0.00%     0x00007fd8e7277a99:   nopl   0x0(%rax)
   0.30%     0x00007fd8e7277aa0:   cmp    0x1c8(%r15),%rcx
             0x00007fd8e7277aa7:   ja     0x00007fd8e7277fa5
   0.00%     0x00007fd8e7277aad:   mov    %rcx,0x1b8(%r15)
   0.01%     0x00007fd8e7277ab4:   prefetchw 0xd0(%rsi)
   0.00%     0x00007fd8e7277abb:   movq   $0x1,(%rsi)
   0.50%     0x00007fd8e7277ac2:   movl   $0x10c4928,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector&apos;)}
   0.22%     0x00007fd8e7277ac9:   movl   $0x0,0xc(%rsi)
   0.08%     0x00007fd8e7277ad0:   mov    %rsi,%rcx
             0x00007fd8e7277ad3:   mov    %r10,0x8(%rsp)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@102 (line 233)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.24%     0x00007fd8e7277ad8:   mov    0x1b8(%r15),%rsi
   0.07%     0x00007fd8e7277adf:   lea    0x20(%rsi),%r10
   0.03%     0x00007fd8e7277ae3:   cmp    0x1c8(%r15),%r10
             0x00007fd8e7277aea:   ja     0x00007fd8e7277f45
   0.03%     0x00007fd8e7277af0:   mov    %r10,0x1b8(%r15)
   0.21%     0x00007fd8e7277af7:   prefetchw 0xe0(%rsi)
   0.18%     0x00007fd8e7277afe:   prefetchw 0x120(%rsi)
   0.02%     0x00007fd8e7277b05:   prefetchw 0x160(%rsi)
   0.08%     0x00007fd8e7277b0c:   prefetchw 0x1a0(%rsi)
   0.33%     0x00007fd8e7277b13:   movq   $0x1,(%rsi)
   0.31%     0x00007fd8e7277b1a:   movl   $0x26a0,0x8(%rsi)            ;   {metadata({type array int})}
   0.28%     0x00007fd8e7277b21:   movl   $0x4,0xc(%rsi)
   0.30%     0x00007fd8e7277b28:   movq   $0x0,0x10(%rsi)
   0.35%     0x00007fd8e7277b30:   movq   $0x0,0x18(%rsi)
   0.24%     0x00007fd8e7277b38:   mov    %rsi,%r10
   0.01%     0x00007fd8e7277b3b:   mov    %r14d,0x1c(%r10)
   0.51%     0x00007fd8e7277b3f:   mov    %ebx,0x18(%r10)
   0.11%     0x00007fd8e7277b43:   mov    %r8d,0x14(%r10)
   0.22%     0x00007fd8e7277b47:   mov    %r11d,0x10(%r10)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.09%     0x00007fd8e7277b4b:   mov    0x1b8(%r15),%rsi
   0.14%     0x00007fd8e7277b52:   mov    %r11d,0x94(%rsp)
   0.14%     0x00007fd8e7277b5a:   lea    0x10(%rsi),%r11
   0.06%     0x00007fd8e7277b5e:   xchg   %ax,%ax
   0.04%     0x00007fd8e7277b60:   cmp    0x1c8(%r15),%r11
             0x00007fd8e7277b67:   ja     0x00007fd8e7277eed
   0.12%     0x00007fd8e7277b6d:   mov    %r11,0x1b8(%r15)
   0.15%     0x00007fd8e7277b74:   prefetchw 0xd0(%rsi)
   0.07%     0x00007fd8e7277b7b:   movq   $0x1,(%rsi)
   0.41%     0x00007fd8e7277b82:   movl   $0x10c4928,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector&apos;)}
   0.28%     0x00007fd8e7277b89:   movl   $0x0,0xc(%rsi)
   0.24%     0x00007fd8e7277b90:   mov    %rsi,%r11
   0.00%     0x00007fd8e7277b93:   mov    %r8d,0x90(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@62 (line 210)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007fd8e7277b9b:   mov    0x1b8(%r15),%rsi
   0.18%     0x00007fd8e7277ba2:   lea    0x20(%rsi),%r8
   0.20%     0x00007fd8e7277ba6:   cmp    0x1c8(%r15),%r8
             0x00007fd8e7277bad:   ja     0x00007fd8e7277ead
   0.01%     0x00007fd8e7277bb3:   mov    %r8,0x1b8(%r15)
   0.10%     0x00007fd8e7277bba:   prefetchw 0xe0(%rsi)
   0.48%     0x00007fd8e7277bc1:   prefetchw 0x120(%rsi)
   0.11%     0x00007fd8e7277bc8:   prefetchw 0x160(%rsi)
   0.16%     0x00007fd8e7277bcf:   prefetchw 0x1a0(%rsi)
   0.24%     0x00007fd8e7277bd6:   movq   $0x1,(%rsi)
   0.68%     0x00007fd8e7277bdd:   movl   $0x26a0,0x8(%rsi)            ;   {metadata({type array int})}
   0.55%     0x00007fd8e7277be4:   movl   $0x4,0xc(%rsi)
   0.29%     0x00007fd8e7277beb:   movq   $0x0,0x10(%rsi)
   0.19%     0x00007fd8e7277bf3:   movq   $0x0,0x18(%rsi)
   0.28%     0x00007fd8e7277bfb:   mov    %rsi,%rdi                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.04%     0x00007fd8e7277bfe:   mov    0x68(%rsp),%rax
   0.06%     0x00007fd8e7277c03:   mov    0x1c(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007fd8e7277c0a:   add    0x1c(%rax),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.21%     0x00007fd8e7277c0d:   mov    %esi,0x1c(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.16%     0x00007fd8e7277c10:   mov    0x18(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007fd8e7277c17:   add    0x18(%rax),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.05%     0x00007fd8e7277c1a:   mov    %esi,0x18(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.20%     0x00007fd8e7277c1d:   mov    0x14(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.06%     0x00007fd8e7277c24:   add    0x14(%rax),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007fd8e7277c27:   mov    %esi,0x14(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.11%     0x00007fd8e7277c2a:   mov    0x10(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.14%     0x00007fd8e7277c31:   add    0x10(%rax),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.06%     0x00007fd8e7277c34:   mov    %esi,0x10(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fd86c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007fd8e7277c37:   mov    %r10,%rsi
   0.08%     0x00007fd8e7277c3a:   shr    $0x3,%rsi
   0.12%     0x00007fd8e7277c3e:   mov    %esi,0xc(%rcx)
   0.06%     0x00007fd8e7277c41:   mov    %rcx,%rsi
   0.08%     0x00007fd8e7277c44:   xor    %r10,%rsi
   0.06%     0x00007fd8e7277c47:   test   $0xffffffffffe00000,%rsi
             0x00007fd8e7277c4e:   je     0x00007fd8e7277d8c
             0x00007fd8e7277c54:   test   %r10,%r10
             0x00007fd8e7277c57:   je     0x00007fd8e7277df2
             0x00007fd8e7277c5d:   mov    0xe0(%rsp),%r8
             0x00007fd8e7277c65:   mov    %rcx,%r10
             0x00007fd8e7277c68:   shr    $0x9,%r10
             0x00007fd8e7277c6c:   cmpb   $0x2,(%r10,%r8,1)
             0x00007fd8e7277c71:   jne    0x00007fd8e7277e45           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@2 (line 41)
....................................................................................................
  22.37%  <total for region 3>

....[Hottest Regions]...............................................................................
  29.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
  23.71%       jvmci, level 4  jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1254 
  22.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
   7.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
   5.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
   3.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
   2.18%       jvmci, level 4  jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1254 
   1.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
   0.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
   0.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
   0.27%               kernel  [unknown] 
   0.18%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
   0.09%               kernel  [unknown] 
   0.08%            libjvm.so  G1CardSet::reset_table_scanner 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
   0.07%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 5, compile id 1330 
   0.07%         libc-2.31.so  __memset_avx2_erms 
   2.67%  <...other 543 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 6, compile id 1297 
  25.90%       jvmci, level 4  jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1254 
   1.75%               kernel  [unknown] 
   0.13%                       <unknown> 
   0.08%            libjvm.so  G1CardSet::reset_table_scanner 
   0.07%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 5, compile id 1330 
   0.07%         libc-2.31.so  __memset_avx2_erms 
   0.05%            libjvm.so  FreeListAllocator::reset 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.04%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%            libjvm.so  G1CardSet::clear 
   0.02%            libjvm.so  SpinPause 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.02%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.81%  <...other 186 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.72%       jvmci, level 4
   1.75%               kernel
   1.01%            libjvm.so
   0.21%         libc-2.31.so
   0.13%                     
   0.05%   libpthread-2.31.so
   0.04%  libjvmcicompiler.so
   0.04%               [vdso]
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%     perf-2129254.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 64, vectorSize = 256)

# Run progress: 16.67% complete, ETA 00:19:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.975 us/op
# Warmup Iteration   2: 10.802 us/op
# Warmup Iteration   3: 10.781 us/op
# Warmup Iteration   4: 10.778 us/op
# Warmup Iteration   5: 10.781 us/op
Iteration   1: 10.779 us/op
Iteration   2: 10.779 us/op
Iteration   3: 10.795 us/op
Iteration   4: 10.773 us/op
Iteration   5: 10.777 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  10.781 ±(99.9%) 0.032 us/op [Average]
  (min, avg, max) = (10.773, 10.781, 10.795), stdev = 0.008
  CI (99.9%): [10.749, 10.812] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 331240 total address lines.
Perf output processed (skipped 60.641 seconds):
 Column 1: cycles (51081 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 

 <region is too big to display, has 1300 lines, but threshold is 1000>
....................................................................................................
  27.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1207 

               # parm1:    rcx:rcx   = &apos;jdk/incubator/vector/AbstractMask$MBinOp&apos;
               #           [sp+0x40]  (sp of caller)
               0x00007f50e724d220:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
               0x00007f50e724d224:   movabs $0x7f506b000000,%r12
               0x00007f50e724d22e:   add    %r12,%r10
               0x00007f50e724d231:   xor    %r12,%r12
               0x00007f50e724d234:   cmp    %r10,%rax
               0x00007f50e724d237:   jne    0x00007f50e6c2f080           ;   {runtime_call ic_miss_stub}
               0x00007f50e724d23d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.09%       0x00007f50e724d240:   mov    %eax,-0x14000(%rsp)
   0.32%       0x00007f50e724d247:   sub    $0x38,%rsp
   0.04%       0x00007f50e724d24b:   nop
   0.05%       0x00007f50e724d24c:   cmpl   $0x1,0x20(%r15)
   0.33%       0x00007f50e724d254:   jne    0x00007f50e724daa5
   0.02%       0x00007f50e724d25a:   mov    %rbp,0x30(%rsp)
   0.04%       0x00007f50e724d25f:   nop
   0.04%       0x00007f50e724d260:   test   %rdx,%rdx
               0x00007f50e724d263:   je     0x00007f50e724d6cd
   0.35%       0x00007f50e724d269:   mov    0x8(%rdx),%eax
   0.05%       0x00007f50e724d26c:   movabs $0x7f506b000000,%r10
   0.05%       0x00007f50e724d276:   lea    (%r10,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@17 (line 623)
   0.06%       0x00007f50e724d27a:   nopw   0x0(%rax,%rax,1)
   0.42%       0x00007f50e724d280:   test   %rdx,%rdx
          ╭    0x00007f50e724d283:   je     0x00007f50e724d29c
   0.02%  │    0x00007f50e724d289:   movabs $0x7f506c0c5b80,%r10         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.04%  │    0x00007f50e724d293:   cmp    %rax,%r10
          │    0x00007f50e724d296:   jne    0x00007f50e724d9e5           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.04%  ↘    0x00007f50e724d29c:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f50e724dac9
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.33%       0x00007f50e724d29e:   mov    0x8(%rcx),%eax               ; implicit exception: dispatches to 0x00007f50e724daed
   0.03%       0x00007f50e724d2a1:   mov    0xc(%rsi),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 622)
   0.03%       0x00007f50e724d2a5:   test   %r10d,%r10d
               0x00007f50e724d2a8:   je     0x00007f50e724d6d9
   0.05%       0x00007f50e724d2ae:   mov    0x8(,%r10,8),%r11d
   0.35%       0x00007f50e724d2b6:   movabs $0x7f506b000000,%r8
   0.02%       0x00007f50e724d2c0:   lea    (%r8,%r11,1),%r11
   0.04%       0x00007f50e724d2c4:   movabs $0x7f506b001b00,%r8          ;   {metadata({type array bool})}
   0.06%       0x00007f50e724d2ce:   test   %r10d,%r10d
           ╭   0x00007f50e724d2d1:   je     0x00007f50e724d2e0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 606)
           │                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 622)
   0.27%   │   0x00007f50e724d2d7:   cmp    %r11,%r8
           │   0x00007f50e724d2da:   jne    0x00007f50e724d8a2           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r10=NarrowOop }
           │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                             ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.03%   ↘   0x00007f50e724d2e0:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f50e724db10
   0.05%       0x00007f50e724d2e8:   test   %r11d,%r11d
               0x00007f50e724d2eb:   je     0x00007f50e724d99c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.05%       0x00007f50e724d2f1:   mov    0xc(%rdx),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 623)
   0.32%       0x00007f50e724d2f5:   test   %r9d,%r9d
               0x00007f50e724d2f8:   je     0x00007f50e724d6e5
   0.03%       0x00007f50e724d2fe:   mov    0x8(,%r9,8),%ebx
   0.07%       0x00007f50e724d306:   movabs $0x7f506b000000,%rdi
   0.05%       0x00007f50e724d310:   lea    (%rdi,%rbx,1),%rbx
   0.37%       0x00007f50e724d314:   test   %r9d,%r9d
            ╭  0x00007f50e724d317:   je     0x00007f50e724d329           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 606)
            │                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 623)
   0.02%    │  0x00007f50e724d31d:   data16 xchg %ax,%ax
   0.02%    │  0x00007f50e724d320:   cmp    %rbx,%r8
            │  0x00007f50e724d323:   jne    0x00007f50e724d92a           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop }
            │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.07%    ↘  0x00007f50e724d329:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f50e724db33
   0.32%       0x00007f50e724d331:   test   %ebx,%ebx
               0x00007f50e724d333:   je     0x00007f50e724d94e
   0.03%       0x00007f50e724d339:   movzbl 0x10(,%r9,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.02%       0x00007f50e724d342:   movzbl 0x10(,%r10,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.08%       0x00007f50e724d34b:   movabs $0x7f506b000000,%r13
   0.35%       0x00007f50e724d355:   lea    0x0(%r13,%rax,1),%rax
   0.01%       0x00007f50e724d35a:   cmp    -0x161(%rip),%rax        # 0x00007f50e724d200
                                                                         ;   {section_word}
   0.06%       0x00007f50e724d361:   je     0x00007f50e724d691
   0.09%       0x00007f50e724d367:   cmp    -0x166(%rip),%rax        # 0x00007f50e724d208
                                                                         ;   {section_word}
   0.09%       0x00007f50e724d36e:   jne    0x00007f50e724da37
   0.03%       0x00007f50e724d374:   xor    %edi,%ebp                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$xor$7@2 (line 719)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.03%       0x00007f50e724d376:   mov    %r9d,%edi
   0.06%       0x00007f50e724d379:   shl    $0x3,%rdi                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 623)
   0.13%       0x00007f50e724d37d:   mov    %r10d,%r13d
   0.24%       0x00007f50e724d380:   shl    $0x3,%r13                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 622)
   0.05%       0x00007f50e724d384:   cmp    $0x2,%r11d
               0x00007f50e724d388:   jb     0x00007f50e724d814           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.05%       0x00007f50e724d38e:   cmp    $0x2,%ebx
               0x00007f50e724d391:   jb     0x00007f50e724d78c
   0.09%       0x00007f50e724d397:   movzbl 0x11(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.27%       0x00007f50e724d3a0:   movzbl 0x11(,%r10,8),%edx
   0.05%       0x00007f50e724d3a9:   cmp    -0x1b0(%rip),%rax        # 0x00007f50e724d200
                                                                         ;   {section_word}
   0.06%       0x00007f50e724d3b0:   je     0x00007f50e724d6bd
   0.13%       0x00007f50e724d3b6:   cmp    -0x1b5(%rip),%rax        # 0x00007f50e724d208
                                                                         ;   {section_word}
   0.02%       0x00007f50e724d3bd:   data16 xchg %ax,%ax
   0.02%       0x00007f50e724d3c0:   jne    0x00007f50e724da49
   0.06%       0x00007f50e724d3c6:   xor    %esi,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$xor$7@2 (line 719)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.12%       0x00007f50e724d3c8:   mov    %edx,%r14d
   0.03%       0x00007f50e724d3cb:   cmp    $0x3,%r11d
               0x00007f50e724d3cf:   jb     0x00007f50e724da25           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.15%       0x00007f50e724d3d5:   cmp    $0x3,%ebx
               0x00007f50e724d3d8:   jb     0x00007f50e724da91
   0.10%       0x00007f50e724d3de:   movzbl 0x12(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.11%       0x00007f50e724d3e7:   movzbl 0x12(,%r10,8),%edx
   0.02%       0x00007f50e724d3f0:   cmp    -0x1f7(%rip),%rax        # 0x00007f50e724d200
                                                                         ;   {section_word}
   0.23%       0x00007f50e724d3f7:   je     0x00007f50e724d6a6
   0.10%       0x00007f50e724d3fd:   cmp    -0x1fc(%rip),%rax        # 0x00007f50e724d208
                                                                         ;   {section_word}
   0.12%       0x00007f50e724d404:   jne    0x00007f50e724d8cf
   0.05%       0x00007f50e724d40a:   xor    %esi,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$xor$7@2 (line 719)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.24%       0x00007f50e724d40c:   cmp    $0x4,%r11d
               0x00007f50e724d410:   jb     0x00007f50e724d906           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.07%       0x00007f50e724d416:   cmp    $0x4,%ebx
               0x00007f50e724d419:   jb     0x00007f50e724da6d
   0.14%       0x00007f50e724d41f:   mov    %rcx,0x18(%rsp)
   0.06%       0x00007f50e724d424:   movzbl 0x13(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.22%       0x00007f50e724d42d:   movzbl 0x13(,%r10,8),%ecx
   0.07%       0x00007f50e724d436:   cmp    -0x23d(%rip),%rax        # 0x00007f50e724d200
                                                                         ;   {section_word}
   0.13%       0x00007f50e724d43d:   data16 xchg %ax,%ax
   0.04%       0x00007f50e724d440:   je     0x00007f50e724d69f
   0.04%       0x00007f50e724d446:   cmp    -0x245(%rip),%rax        # 0x00007f50e724d208
                                                                         ;   {section_word}
   0.09%       0x00007f50e724d44d:   jne    0x00007f50e724d86d
   0.15%       0x00007f50e724d453:   xor    %esi,%ecx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$xor$7@2 (line 719)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.24%       0x00007f50e724d455:   cmp    $0x5,%r11d
               0x00007f50e724d459:   jb     0x00007f50e724d851           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.00%       0x00007f50e724d45f:   nop
   0.05%       0x00007f50e724d460:   cmp    $0x5,%ebx
               0x00007f50e724d463:   jb     0x00007f50e724d9c5
   0.13%       0x00007f50e724d469:   mov    %rdi,0x8(%rsp)
   0.31%       0x00007f50e724d46e:   movzbl 0x14(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.02%       0x00007f50e724d477:   movzbl 0x14(,%r10,8),%edi
   0.05%       0x00007f50e724d480:   cmp    -0x287(%rip),%rax        # 0x00007f50e724d200
                                                                         ;   {section_word}
   0.14%       0x00007f50e724d487:   je     0x00007f50e724d698
   0.06%       0x00007f50e724d48d:   cmp    -0x28c(%rip),%rax        # 0x00007f50e724d208
                                                                         ;   {section_word}
   0.04%       0x00007f50e724d494:   jne    0x00007f50e724d7e4
   0.09%       0x00007f50e724d49a:   xor    %esi,%edi                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$xor$7@2 (line 719)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.41%       0x00007f50e724d49c:   nopl   0x0(%rax)
   0.02%       0x00007f50e724d4a0:   cmp    $0x6,%r11d
               0x00007f50e724d4a4:   jb     0x00007f50e724d9f7           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.00%       0x00007f50e724d4aa:   cmp    $0x6,%ebx
               0x00007f50e724d4ad:   jb     0x00007f50e724d7b4
   0.11%       0x00007f50e724d4b3:   mov    %r13,0x10(%rsp)
   0.42%       0x00007f50e724d4b8:   movzbl 0x15(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.00%       0x00007f50e724d4c1:   movzbl 0x15(,%r10,8),%r13d
   0.02%       0x00007f50e724d4ca:   cmp    -0x2d1(%rip),%rax        # 0x00007f50e724d200
                                                                         ;   {section_word}
   0.09%       0x00007f50e724d4d1:   je     0x00007f50e724d6c5
   0.20%       0x00007f50e724d4d7:   cmp    -0x2d6(%rip),%rax        # 0x00007f50e724d208
                                                                         ;   {section_word}
   0.06%       0x00007f50e724d4de:   xchg   %ax,%ax
   0.00%       0x00007f50e724d4e0:   jne    0x00007f50e724d9ae
   0.12%       0x00007f50e724d4e6:   xor    %esi,%r13d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$xor$7@2 (line 719)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.28%       0x00007f50e724d4e9:   cmp    $0x7,%r11d
               0x00007f50e724d4ed:   jb     0x00007f50e724d98d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.01%       0x00007f50e724d4f3:   cmp    $0x7,%ebx
               0x00007f50e724d4f6:   jb     0x00007f50e724da5b
   0.00%       0x00007f50e724d4fc:   mov    %r8,0x20(%rsp)
   0.25%       0x00007f50e724d501:   movzbl 0x16(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.31%       0x00007f50e724d50a:   movzbl 0x16(,%r10,8),%r8d
   0.04%       0x00007f50e724d513:   cmp    -0x31a(%rip),%rax        # 0x00007f50e724d200
                                                                         ;   {section_word}
   0.10%       0x00007f50e724d51a:   je     0x00007f50e724d6b5
   0.15%       0x00007f50e724d520:   cmp    -0x31f(%rip),%rax        # 0x00007f50e724d208
                                                                         ;   {section_word}
   0.12%       0x00007f50e724d527:   jne    0x00007f50e724d960
   0.13%       0x00007f50e724d52d:   xor    %esi,%r8d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$xor$7@2 (line 719)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.05%       0x00007f50e724d530:   cmp    $0x8,%r11d
               0x00007f50e724d534:   jb     0x00007f50e724d93c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.01%       0x00007f50e724d53a:   nopw   0x0(%rax,%rax,1)
   0.07%       0x00007f50e724d540:   cmp    $0x8,%ebx
               0x00007f50e724d543:   jb     0x00007f50e724da11
   0.43%       0x00007f50e724d549:   movzbl 0x17(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.12%       0x00007f50e724d552:   movzbl 0x17(,%r10,8),%r10d
   0.01%       0x00007f50e724d55b:   cmp    -0x362(%rip),%rax        # 0x00007f50e724d200
                                                                         ;   {section_word}
   0.19%       0x00007f50e724d562:   je     0x00007f50e724d6ad
   0.18%       0x00007f50e724d568:   cmp    -0x367(%rip),%rax        # 0x00007f50e724d208
                                                                         ;   {section_word}
   0.01%       0x00007f50e724d56f:   jne    0x00007f50e724d826
   0.16%       0x00007f50e724d575:   xor    %esi,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$xor$7@2 (line 719)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.27%       0x00007f50e724d578:   mov    0x1b8(%r15),%rsi
   0.04%       0x00007f50e724d57f:   lea    0x10(%rsi),%rax
   0.05%       0x00007f50e724d583:   cmp    0x1c8(%r15),%rax
               0x00007f50e724d58a:   ja     0x00007f50e724d736
   0.26%       0x00007f50e724d590:   mov    %rax,0x1b8(%r15)
   0.41%       0x00007f50e724d597:   prefetchw 0xd0(%rsi)
   0.75%       0x00007f50e724d59e:   movq   $0x1,(%rsi)
   0.89%       0x00007f50e724d5a5:   movl   $0x10c5b80,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.37%       0x00007f50e724d5ac:   movl   $0x0,0xc(%rsi)
   0.34%       0x00007f50e724d5b3:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@63 (line 627)
   0.01%       0x00007f50e724d5b6:   mov    0x1b8(%r15),%rsi
   0.23%       0x00007f50e724d5bd:   lea    0x18(%rsi),%rax
   0.36%       0x00007f50e724d5c1:   cmp    0x1c8(%r15),%rax
               0x00007f50e724d5c8:   ja     0x00007f50e724d757
   0.32%       0x00007f50e724d5ce:   mov    %rax,0x1b8(%r15)
   0.38%       0x00007f50e724d5d5:   prefetchw 0xd8(%rsi)
   0.99%       0x00007f50e724d5dc:   prefetchw 0x118(%rsi)
   0.02%       0x00007f50e724d5e3:   prefetchw 0x158(%rsi)
   0.30%       0x00007f50e724d5ea:   prefetchw 0x198(%rsi)
   0.31%       0x00007f50e724d5f1:   movq   $0x1,(%rsi)
   2.03%       0x00007f50e724d5f8:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.11%       0x00007f50e724d5ff:   movl   $0x8,0xc(%rsi)
   0.52%       0x00007f50e724d606:   movq   $0x0,0x10(%rsi)
   0.32%       0x00007f50e724d60e:   mov    %r10b,0x17(%rsi)
   0.26%       0x00007f50e724d612:   mov    %r8b,0x16(%rsi)
   0.17%       0x00007f50e724d616:   mov    %r13b,0x15(%rsi)
   0.15%       0x00007f50e724d61a:   mov    %dil,0x14(%rsi)
   0.39%       0x00007f50e724d61e:   mov    %cl,0x13(%rsi)
   0.23%       0x00007f50e724d621:   mov    %dl,0x12(%rsi)
   0.18%       0x00007f50e724d624:   mov    %r14b,0x11(%rsi)
   0.27%       0x00007f50e724d628:   mov    %bpl,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 582)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 574)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 570)
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 627)
   0.10%       0x00007f50e724d62c:   mov    %rsi,%rax
   0.11%       0x00007f50e724d62f:   shr    $0x3,%rax
   0.06%       0x00007f50e724d633:   mov    %eax,0xc(%r11)
   0.23%       0x00007f50e724d637:   mov    %r11,%rax
   0.09%       0x00007f50e724d63a:   xor    %rsi,%rax
   0.08%       0x00007f50e724d63d:   data16 xchg %ax,%ax
   0.07%       0x00007f50e724d640:   test   $0xffffffffffe00000,%rax
               0x00007f50e724d647:   je     0x00007f50e724d672
               0x00007f50e724d64d:   test   %rsi,%rsi
               0x00007f50e724d650:   je     0x00007f50e724d672
               0x00007f50e724d656:   mov    %r11,%r10
               0x00007f50e724d659:   shr    $0x9,%r10
               0x00007f50e724d65d:   movabs $0x7f50da1c1000,%r8
               0x00007f50e724d667:   cmpb   $0x2,(%r10,%r8,1)
               0x00007f50e724d66c:   jne    0x00007f50e724d6f1           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@63 (line 627)
   0.21%       0x00007f50e724d672:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  25.70%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 

                                                                       ; - jdk.incubator.vector.IntVector::maskFactory@5 (line 116)
                                                                       ; - jdk.incubator.vector.IntVector::bTest@68 (line 478)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$59@9 (line 2034)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d1ef8::apply@14
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                       ; - jdk.incubator.vector.IntVector::compareTemplate@42 (line 2029)
                                                                       ; - jdk.incubator.vector.Int256Vector::compare@5 (line 384)
                                                                       ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lt@5 (line 1933)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@129 (line 86)
   0.19%     0x00007f50e7276416:   mov    %r8,%rsi
             0x00007f50e7276419:   mov    %r11,%rdx
   0.01%     0x00007f50e727641c:   mov    0x60(%rsp),%rcx              ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@7 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.02%     0x00007f50e7276421:   mov    %r11,0x28(%rsp)
   0.21%     0x00007f50e7276426:   mov    %r8,0x20(%rsp)
             0x00007f50e727642b:   call   0x00007f50e724d240           ; ImmutableOopMap {[32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [120]=Oop [132]=NarrowOop [136]=Oop }
                                                                       ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@7 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
                                                                       ;   {optimized virtual_call}
   0.03%     0x00007f50e7276430:   nopl   0xa001920(%rax,%rax,1)       ;   {other}
   0.03%     0x00007f50e7276438:   mov    %rax,%r10                    ; ImmutableOopMap {r10=Oop [32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [120]=Oop [132]=NarrowOop [136]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@10 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.11%     0x00007f50e727643b:   test   %eax,(%r10)                  ; implicit exception: dispatches to 0x00007f50e7278227
   0.12%     0x00007f50e727643e:   mov    0x40(%rsp),%r8
   0.03%     0x00007f50e7276443:   mov    0xc(%r8),%esi                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.13%     0x00007f50e7276447:   test   %esi,%esi
             0x00007f50e7276449:   je     0x00007f50e7276a8a
   0.08%     0x00007f50e727644f:   mov    0x8(,%rsi,8),%eax
   0.39%     0x00007f50e7276456:   movabs $0x7f506b000000,%rdx
             0x00007f50e7276460:   lea    (%rdx,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@20 (line 227)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.22%     0x00007f50e7276464:   test   %esi,%esi
             0x00007f50e7276466:   je     0x00007f50e7276937
             0x00007f50e727646c:   mov    0x150(%rsp),%r13
   0.01%     0x00007f50e7276474:   cmp    %rax,%r13
             0x00007f50e7276477:   jne    0x00007f50e72778c2           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.23%     0x00007f50e727647d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rsi=NarrowOop r8=Oop r10=Oop [32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [120]=Oop [132]=NarrowOop [136]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@10 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
             0x00007f50e7276480:   cmpl   $0x8,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f50e727824d
   0.01%     0x00007f50e7276488:   jb     0x00007f50e7277900           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.27%     0x00007f50e727648e:   mov    0xc(%r10),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007f50e7276492:   test   %eax,%eax
             0x00007f50e7276494:   je     0x00007f50e7276a7e
   0.01%     0x00007f50e727649a:   mov    0x8(,%rax,8),%edx
   0.00%     0x00007f50e72764a1:   movabs $0x7f506b000000,%rcx
   0.24%     0x00007f50e72764ab:   lea    (%rcx,%rdx,1),%rdx
             0x00007f50e72764af:   test   %eax,%eax
             0x00007f50e72764b1:   je     0x00007f50e7276945           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 606)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007f50e72764b7:   mov    0x110(%rsp),%rcx
   0.00%     0x00007f50e72764bf:   nop
   0.21%     0x00007f50e72764c0:   cmp    %rdx,%rcx
             0x00007f50e72764c3:   jne    0x00007f50e7277eb0           ; ImmutableOopMap {rax=NarrowOop rsi=NarrowOop r8=Oop r10=Oop [32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [120]=Oop [132]=NarrowOop [136]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@10 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.00%     0x00007f50e72764c9:   cmpl   $0x8,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f50e7278270
   0.01%     0x00007f50e72764d1:   jb     0x00007f50e7277c25           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f506c0d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.23%     0x00007f50e72764d7:   nopw   0x0(%rax,%rax,1)
             0x00007f50e72764e0:   cmpb   $0x0,0x10(,%rax,8)
   0.01%     0x00007f50e72764e8:   jne    0x00007f50e7276a2e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.17%     0x00007f50e72764ee:   mov    0x10(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007f50e72764f5:   mov    %edx,0xb0(%rsp)
   0.01%     0x00007f50e72764fc:   mov    0x38(%rsp),%r14              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007f50e7276501:   cmpb   $0x0,0x11(,%rax,8)
   0.22%     0x00007f50e7276509:   jne    0x00007f50e7276a13           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.01%     0x00007f50e727650f:   mov    0x14(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.02%     0x00007f50e7276516:   mov    %edx,%r9d
   0.16%     0x00007f50e7276519:   nopl   0x0(%rax)
   0.02%     0x00007f50e7276520:   cmpb   $0x0,0x12(,%rax,8)
   0.08%     0x00007f50e7276528:   jne    0x00007f50e7276a25           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.15%     0x00007f50e727652e:   mov    0x18(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
                                                                       ;   {no_reloc}
   0.07%     0x00007f50e7276535:   mov    %edx,%ebx
   0.01%     0x00007f50e7276537:   nopw   0x0(%rax,%rax,1)
   0.02%     0x00007f50e7276540:   cmpb   $0x0,0x13(,%rax,8)
   0.29%     0x00007f50e7276548:   jne    0x00007f50e7276a1c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.08%     0x00007f50e727654e:   mov    0x1c(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.05%     0x00007f50e7276555:   mov    %edx,%edi
   0.08%     0x00007f50e7276557:   nopw   0x0(%rax,%rax,1)
   0.05%     0x00007f50e7276560:   cmpb   $0x0,0x14(,%rax,8)
   0.10%     0x00007f50e7276568:   jne    0x00007f50e7276a45           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.05%     0x00007f50e727656e:   mov    0x20(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.07%     0x00007f50e7276575:   mov    %edx,%ebp
   0.04%     0x00007f50e7276577:   nopw   0x0(%rax,%rax,1)
   0.04%     0x00007f50e7276580:   cmpb   $0x0,0x15(,%rax,8)
   0.15%     0x00007f50e7276588:   jne    0x00007f50e72769fc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.03%     0x00007f50e727658e:   mov    0x24(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.08%     0x00007f50e7276595:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.05%     0x00007f50e72765a0:   cmpb   $0x0,0x16(,%rax,8)
   0.08%     0x00007f50e72765a8:   jne    0x00007f50e7276a05           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.08%     0x00007f50e72765ae:   mov    %r10,0x18(%rsp)
   0.02%     0x00007f50e72765b3:   mov    0x28(,%rsi,8),%r10d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.08%     0x00007f50e72765bb:   nopl   0x0(%rax,%rax,1)
   0.04%     0x00007f50e72765c0:   cmpb   $0x0,0x17(,%rax,8)
   0.13%     0x00007f50e72765c8:   jne    0x00007f50e72769f3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.07%     0x00007f50e72765ce:   mov    0x2c(,%rsi,8),%r8d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.05%     0x00007f50e72765d6:   mov    %r8d,%r14d
   0.11%     0x00007f50e72765d9:   mov    0x48(%rsp),%r8
   0.00%     0x00007f50e72765de:   mov    0xc(%r8),%ecx                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.20%     0x00007f50e72765e2:   test   %ecx,%ecx
             0x00007f50e72765e4:   je     0x00007f50e7276a67
   0.15%     0x00007f50e72765ea:   mov    0x8(,%rcx,8),%r8d
   0.82%     0x00007f50e72765f2:   movabs $0x7f506b000000,%r11
   0.00%     0x00007f50e72765fc:   lea    (%r11,%r8,1),%r8             ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.21%     0x00007f50e7276600:   mov    %esi,%r11d
   0.00%     0x00007f50e7276603:   shl    $0x3,%r11                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007f50e7276607:   shl    $0x3,%rax                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007f50e727660b:   test   %ecx,%ecx
          ╭  0x00007f50e727660d:   je     0x00007f50e727661c
   0.24%  │  0x00007f50e7276613:   cmp    %r8,%r13
          │  0x00007f50e7276616:   jne    0x00007f50e7277c65           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
          │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
          │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
          │                                                            ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
          │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
          │                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
          │                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
          ↘  0x00007f50e727661c:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop r11=Oop [24]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [120]=Oop [132]=NarrowOop [136]=Oop }
                                                                       ;*iastore {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007f50e7276620:   cmpl   $0x8,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f50e7278293
   0.21%     0x00007f50e7276628:   jb     0x00007f50e7277d9f           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.00%     0x00007f50e727662e:   mov    0x1b8(%r15),%rsi             ;   {no_reloc}
   0.00%     0x00007f50e7276635:   lea    0x10(%rsi),%r8
   0.00%     0x00007f50e7276639:   nopl   0x0(%rax)
   0.17%     0x00007f50e7276640:   cmp    0x1c8(%r15),%r8
             0x00007f50e7276647:   ja     0x00007f50e7276d1b
   0.00%     0x00007f50e727664d:   mov    %r8,0x1b8(%r15)
   0.00%     0x00007f50e7276654:   prefetchw 0xd0(%rsi)
             0x00007f50e727665b:   movq   $0x1,(%rsi)
   0.28%     0x00007f50e7276662:   movl   $0x10c5500,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.75%     0x00007f50e7276669:   movl   $0x0,0xc(%rsi)
   0.00%     0x00007f50e7276670:   mov    %rsi,%r8
             0x00007f50e7276673:   mov    %r11,0x10(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@102 (line 233)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.01%     0x00007f50e7276678:   mov    0x1b8(%r15),%rsi
   0.22%     0x00007f50e727667f:   lea    0x30(%rsi),%r11
   0.00%     0x00007f50e7276683:   cmp    0x1c8(%r15),%r11
             0x00007f50e727668a:   ja     0x00007f50e7276c97
   0.02%     0x00007f50e7276690:   mov    %r11,0x1b8(%r15)
   0.04%     0x00007f50e7276697:   prefetchw 0xf0(%rsi)
   0.22%     0x00007f50e727669e:   prefetchw 0x130(%rsi)
   0.00%     0x00007f50e72766a5:   prefetchw 0x170(%rsi)
   0.04%     0x00007f50e72766ac:   prefetchw 0x1b0(%rsi)
   0.12%     0x00007f50e72766b3:   movq   $0x1,(%rsi)
   0.83%     0x00007f50e72766ba:   movl   $0x26a0,0x8(%rsi)            ;   {metadata({type array int})}
   0.01%     0x00007f50e72766c1:   movl   $0x8,0xc(%rsi)
   0.29%     0x00007f50e72766c8:   movq   $0x0,0x10(%rsi)
   0.00%     0x00007f50e72766d0:   movq   $0x0,0x18(%rsi)
   0.10%     0x00007f50e72766d8:   movq   $0x0,0x20(%rsi)
   0.11%     0x00007f50e72766e0:   movq   $0x0,0x28(%rsi)
   0.21%     0x00007f50e72766e8:   mov    %rsi,%r11
   0.01%     0x00007f50e72766eb:   mov    0xb0(%rsp),%esi
   0.03%     0x00007f50e72766f2:   mov    %r14d,0x2c(%r11)
   0.10%     0x00007f50e72766f6:   mov    %r10d,0x28(%r11)
   0.32%     0x00007f50e72766fa:   mov    %edx,0x24(%r11)
   0.07%     0x00007f50e72766fe:   mov    %ebp,0x20(%r11)
   0.11%     0x00007f50e7276702:   mov    %edi,0x1c(%r11)
   0.22%     0x00007f50e7276706:   mov    %ebx,0x18(%r11)
   0.16%     0x00007f50e727670a:   mov    %r9d,0x14(%r11)
   0.17%     0x00007f50e727670e:   mov    %esi,0x10(%r11)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.17%     0x00007f50e7276712:   mov    %r10d,0xa4(%rsp)
   0.21%     0x00007f50e727671a:   mov    0x1b8(%r15),%r10
   0.05%     0x00007f50e7276721:   mov    %r9d,0xb8(%rsp)
   0.22%     0x00007f50e7276729:   lea    0x10(%r10),%r9
   0.02%     0x00007f50e727672d:   cmp    0x1c8(%r15),%r9
             0x00007f50e7276734:   ja     0x00007f50e7276d88
   0.02%     0x00007f50e727673a:   mov    %r9,0x1b8(%r15)
   0.21%     0x00007f50e7276741:   prefetchw 0xd0(%r10)
   0.03%     0x00007f50e7276749:   movq   $0x1,(%r10)
   0.20%     0x00007f50e7276750:   movl   $0x10c5500,0x8(%r10)         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.22%     0x00007f50e7276758:   movl   $0x0,0xc(%r10)
   0.24%     0x00007f50e7276760:   mov    %ebx,0x94(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@62 (line 210)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.22%     0x00007f50e7276767:   mov    0x1b8(%r15),%r9
   0.03%     0x00007f50e727676e:   lea    0x30(%r9),%rbx
   0.00%     0x00007f50e7276772:   cmp    0x1c8(%r15),%rbx
             0x00007f50e7276779:   ja     0x00007f50e7276c4c
   0.02%     0x00007f50e727677f:   mov    %rbx,0x1b8(%r15)
   0.19%     0x00007f50e7276786:   prefetchw 0xf0(%r9)
   0.03%     0x00007f50e727678e:   prefetchw 0x130(%r9)
   0.00%     0x00007f50e7276796:   prefetchw 0x170(%r9)
   0.07%     0x00007f50e727679e:   prefetchw 0x1b0(%r9)
   0.25%     0x00007f50e72767a6:   movq   $0x1,(%r9)
   0.99%     0x00007f50e72767ad:   movl   $0x26a0,0x8(%r9)             ;   {metadata({type array int})}
   0.00%     0x00007f50e72767b5:   movl   $0x8,0xc(%r9)
   0.20%     0x00007f50e72767bd:   movq   $0x0,0x10(%r9)
   0.04%     0x00007f50e72767c5:   movq   $0x0,0x18(%r9)
   0.17%     0x00007f50e72767cd:   movq   $0x0,0x20(%r9)
   0.03%     0x00007f50e72767d5:   movq   $0x0,0x28(%r9)
   0.09%     0x00007f50e72767dd:   mov    %r9,%rdi
   0.00%     0x00007f50e72767e0:   mov    0x68(%rsp),%r9               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.10%     0x00007f50e72767e5:   mov    0x2c(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007f50e72767ec:   add    0x2c(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.13%     0x00007f50e72767f0:   mov    %esi,0x2c(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007f50e72767f3:   mov    0x28(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007f50e72767fa:   add    0x28(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007f50e72767fe:   mov    %esi,0x28(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.12%     0x00007f50e7276801:   mov    0x24(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007f50e7276808:   add    0x24(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.06%     0x00007f50e727680c:   mov    %esi,0x24(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.03%     0x00007f50e727680f:   mov    0x20(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.12%     0x00007f50e7276816:   add    0x20(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007f50e727681a:   mov    %esi,0x20(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.06%     0x00007f50e727681d:   mov    0x1c(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007f50e7276824:   add    0x1c(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.15%     0x00007f50e7276828:   mov    %esi,0x1c(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.03%     0x00007f50e727682b:   mov    0x18(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.06%     0x00007f50e7276832:   add    0x18(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007f50e7276836:   mov    %esi,0x18(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.13%     0x00007f50e7276839:   mov    0x14(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007f50e7276840:   add    0x14(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.06%     0x00007f50e7276844:   mov    %esi,0x14(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.05%     0x00007f50e7276847:   mov    0x10(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007f50e727684e:   add    0x10(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007f50e7276852:   mov    %esi,0x10(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f506c0d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.13%     0x00007f50e7276855:   mov    %r11,%rsi
   0.00%     0x00007f50e7276858:   shr    $0x3,%rsi
   0.09%     0x00007f50e727685c:   mov    %esi,0xc(%r8)
   0.11%     0x00007f50e7276860:   mov    %r8,%rsi
   0.02%     0x00007f50e7276863:   xor    %r11,%rsi
   0.01%     0x00007f50e7276866:   test   $0xffffffffffe00000,%rsi
             0x00007f50e727686d:   je     0x00007f50e7276a5a
             0x00007f50e7276873:   test   %r11,%r11
             0x00007f50e7276876:   je     0x00007f50e7276b17
             0x00007f50e727687c:   mov    0x120(%rsp),%rbx
             0x00007f50e7276884:   mov    %r8,%rcx
             0x00007f50e7276887:   shr    $0x9,%rcx
             0x00007f50e727688b:   cmpb   $0x2,(%rcx,%rbx,1)
             0x00007f50e727688f:   jne    0x00007f50e7276b25           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
....................................................................................................
  17.73%  <total for region 3>

....[Hottest Regions]...............................................................................
  27.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
  25.70%       jvmci, level 4  jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1207 
  17.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   7.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   5.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   3.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   2.73%       jvmci, level 4  jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1207 
   2.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   2.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   0.77%               kernel  [unknown] 
   0.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   0.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   0.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   0.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   0.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   2.61%  <...other 534 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1293 
  28.43%       jvmci, level 4  jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1207 
   1.99%               kernel  [unknown] 
   0.14%                       <unknown> 
   0.07%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%            libjvm.so  FreeListAllocator::reset 
   0.04%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 5, compile id 1320 
   0.03%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  G1CardSet::reset_table_scanner 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%            libjvm.so  G1FromCardCache::clear 
   0.02%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%         libc-2.31.so  __memset_avx2_erms 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%            libjvm.so  G1CardSet::clear 
   0.02%            libjvm.so  defaultStream::write 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.74%  <...other 198 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.70%       jvmci, level 4
   1.99%               kernel
   0.78%            libjvm.so
   0.18%         libc-2.31.so
   0.14%                     
   0.06%  libjvmcicompiler.so
   0.06%   libpthread-2.31.so
   0.03%               [vdso]
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.01%          interpreter
   0.00%     perf-2129319.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 64, vectorSize = 512)

# Run progress: 25.00% complete, ETA 00:17:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 65.322 us/op
# Warmup Iteration   2: 20.599 us/op
# Warmup Iteration   3: 20.611 us/op
# Warmup Iteration   4: 20.603 us/op
# Warmup Iteration   5: 20.589 us/op
Iteration   1: 20.580 us/op
Iteration   2: 20.586 us/op
Iteration   3: 20.578 us/op
Iteration   4: 20.593 us/op
Iteration   5: 20.587 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  20.585 ±(99.9%) 0.022 us/op [Average]
  (min, avg, max) = (20.578, 20.585, 20.593), stdev = 0.006
  CI (99.9%): [20.562, 20.607] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 325748 total address lines.
Perf output processed (skipped 60.423 seconds):
 Column 1: cycles (51148 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 

 <region is too big to display, has 1908 lines, but threshold is 1000>
....................................................................................................
  31.03%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1152 

                               # parm1:    rcx:rcx   = &apos;jdk/incubator/vector/AbstractMask$MBinOp&apos;
                               #           [sp+0x60]  (sp of caller)
                               0x00007f401b24ea00:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                               0x00007f401b24ea04:   movabs $0x7f3f9f000000,%r12
                               0x00007f401b24ea0e:   add    %r12,%r10
                               0x00007f401b24ea11:   xor    %r12,%r12
                               0x00007f401b24ea14:   cmp    %r10,%rax
                               0x00007f401b24ea17:   jne    0x00007f401ac2f080           ;   {runtime_call ic_miss_stub}
                               0x00007f401b24ea1d:   data16 xchg %ax,%ax
                             [Verified Entry Point]
   0.25%                       0x00007f401b24ea20:   mov    %eax,-0x14000(%rsp)
   0.06%                       0x00007f401b24ea27:   sub    $0x58,%rsp
   0.08%                       0x00007f401b24ea2b:   nop
   0.12%                       0x00007f401b24ea2c:   cmpl   $0x1,0x20(%r15)
   0.01%                       0x00007f401b24ea34:   jne    0x00007f401b24f8b1
   0.04%                       0x00007f401b24ea3a:   mov    %rbp,0x50(%rsp)
   0.22%                       0x00007f401b24ea3f:   nop
   0.12%                       0x00007f401b24ea40:   test   %rdx,%rdx
                               0x00007f401b24ea43:   je     0x00007f401b24f1d5
   0.00%                       0x00007f401b24ea49:   mov    0x8(%rdx),%eax
   0.04%                       0x00007f401b24ea4c:   movabs $0x7f3f9f000000,%r10
   0.08%                       0x00007f401b24ea56:   lea    (%r10,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@17 (line 639)
   0.11%                       0x00007f401b24ea5a:   nopw   0x0(%rax,%rax,1)
   0.01%                       0x00007f401b24ea60:   test   %rdx,%rdx
          ╭                    0x00007f401b24ea63:   je     0x00007f401b24ea7c
   0.04%  │                    0x00007f401b24ea69:   movabs $0x7f3fa00c6758,%r10         ;   {metadata(&apos;jdk/incubator/vector/Int512Vector$Int512Mask&apos;)}
   0.09%  │                    0x00007f401b24ea73:   cmp    %rax,%r10
          │                    0x00007f401b24ea76:   jne    0x00007f401b24f6d7           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                              ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.11%  ↘                    0x00007f401b24ea7c:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f401b24f8d5
                                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
                                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                         ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.01%                       0x00007f401b24ea7e:   mov    0x8(%rcx),%eax               ; implicit exception: dispatches to 0x00007f401b24f8f8
   0.05%                       0x00007f401b24ea81:   mov    0xc(%rsi),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@11 (line 638)
   0.06%                       0x00007f401b24ea85:   test   %r10d,%r10d
                               0x00007f401b24ea88:   je     0x00007f401b24f1ed
   0.09%                       0x00007f401b24ea8e:   mov    0x8(,%r10,8),%r11d
   0.03%                       0x00007f401b24ea96:   movabs $0x7f3f9f000000,%r8
   0.04%                       0x00007f401b24eaa0:   lea    (%r8,%r11,1),%r11
   0.08%                       0x00007f401b24eaa4:   movabs $0x7f3f9f001b00,%r8          ;   {metadata({type array bool})}
   0.11%                       0x00007f401b24eaae:   test   %r10d,%r10d
           ╭                   0x00007f401b24eab1:   je     0x00007f401b24eac0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                             ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@4 (line 622)
           │                                                                             ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@11 (line 638)
   0.00%   │                   0x00007f401b24eab7:   cmp    %r11,%r8
           │                   0x00007f401b24eaba:   jne    0x00007f401b24f442           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r10=NarrowOop }
           │                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                                             ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.04%   ↘                   0x00007f401b24eac0:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f401b24f91b
   0.12%                       0x00007f401b24eac8:   test   %r11d,%r11d
                               0x00007f401b24eacb:   je     0x00007f401b24f681           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.13%                       0x00007f401b24ead1:   mov    0xc(%rdx),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@20 (line 639)
   0.00%                       0x00007f401b24ead5:   test   %r9d,%r9d
                               0x00007f401b24ead8:   je     0x00007f401b24f1f9
   0.05%                       0x00007f401b24eade:   mov    0x8(,%r9,8),%ebx
   0.19%                       0x00007f401b24eae6:   movabs $0x7f3f9f000000,%rdi
   0.10%                       0x00007f401b24eaf0:   lea    (%rdi,%rbx,1),%rbx
   0.12%                       0x00007f401b24eaf4:   test   %r9d,%r9d
            ╭                  0x00007f401b24eaf7:   je     0x00007f401b24eb09           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                                            ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@4 (line 622)
            │                                                                            ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@20 (line 639)
   0.01%    │                  0x00007f401b24eafd:   data16 xchg %ax,%ax
   0.00%    │                  0x00007f401b24eb00:   cmp    %rbx,%r8
            │                  0x00007f401b24eb03:   jne    0x00007f401b24f563           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop }
            │                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                                            ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.21%    ↘                  0x00007f401b24eb09:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f401b24f93e
                               0x00007f401b24eb11:   test   %ebx,%ebx
                               0x00007f401b24eb13:   je     0x00007f401b24f6fb
   0.00%                       0x00007f401b24eb19:   movzbl 0x10(,%r9,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.01%                       0x00007f401b24eb22:   movzbl 0x10(,%r10,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.26%                       0x00007f401b24eb2b:   movabs $0x7f3f9f000000,%r13
                               0x00007f401b24eb35:   lea    0x0(%r13,%rax,1),%rax
   0.01%                       0x00007f401b24eb3a:   cmp    -0x161(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.01%     ╭                 0x00007f401b24eb41:   je     0x00007f401b24eb59
   0.13%     │                 0x00007f401b24eb47:   cmp    -0x166(%rip),%rax        # 0x00007f401b24e9e8
             │                                                                           ;   {section_word}
   0.00%     │                 0x00007f401b24eb4e:   je     0x00007f401b24f155
             │                 0x00007f401b24eb54:   jmp    0x00007f401b24f397
   0.10%     ↘                 0x00007f401b24eb59:   and    %edi,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.14%                       0x00007f401b24eb5b:   mov    %ebp,0x44(%rsp)
   0.01%                       0x00007f401b24eb5f:   mov    %r9d,%edi
                               0x00007f401b24eb62:   shl    $0x3,%rdi                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@20 (line 639)
   0.12%                       0x00007f401b24eb66:   mov    %r10d,%r13d
   0.13%                       0x00007f401b24eb69:   shl    $0x3,%r13                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@11 (line 638)
   0.00%                       0x00007f401b24eb6d:   cmp    $0x2,%r11d
                               0x00007f401b24eb71:   jb     0x00007f401b24f731           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
                               0x00007f401b24eb77:   cmp    $0x2,%ebx
                               0x00007f401b24eb7a:   jb     0x00007f401b24f630
   0.10%                       0x00007f401b24eb80:   movzbl 0x11(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.22%                       0x00007f401b24eb89:   movzbl 0x11(,%r10,8),%edx
   0.03%                       0x00007f401b24eb92:   cmp    -0x1b9(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
              ╭                0x00007f401b24eb99:   je     0x00007f401b24ebb1
   0.04%      │                0x00007f401b24eb9f:   cmp    -0x1be(%rip),%rax        # 0x00007f401b24e9e8
              │                                                                          ;   {section_word}
   0.05%      │                0x00007f401b24eba6:   je     0x00007f401b24f1b5
              │                0x00007f401b24ebac:   jmp    0x00007f401b24f5e7
   0.11%      ↘                0x00007f401b24ebb1:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.14%                       0x00007f401b24ebb3:   mov    %edx,0x40(%rsp)
   0.09%                       0x00007f401b24ebb7:   nopw   0x0(%rax,%rax,1)
                               0x00007f401b24ebc0:   cmp    $0x3,%r11d
                               0x00007f401b24ebc4:   jb     0x00007f401b24f3c4           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.08%                       0x00007f401b24ebca:   cmp    $0x3,%ebx
                               0x00007f401b24ebcd:   jb     0x00007f401b24f805
   0.08%                       0x00007f401b24ebd3:   movzbl 0x12(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.13%                       0x00007f401b24ebdc:   movzbl 0x12(,%r10,8),%edx
   0.02%                       0x00007f401b24ebe5:   cmp    -0x20c(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.16%       ╭               0x00007f401b24ebec:   je     0x00007f401b24ec05
   0.10%       │               0x00007f401b24ebf2:   cmp    -0x211(%rip),%rax        # 0x00007f401b24e9e8
               │                                                                         ;   {section_word}
   0.00%       │               0x00007f401b24ebf9:   je     0x00007f401b24f18c
               │               0x00007f401b24ebff:   nop
               │               0x00007f401b24ec00:   jmp    0x00007f401b24f817
   0.00%       ↘               0x00007f401b24ec05:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.18%                       0x00007f401b24ec07:   mov    %edx,0x3c(%rsp)
   0.13%                       0x00007f401b24ec0b:   cmp    $0x4,%r11d
                               0x00007f401b24ec0f:   jb     0x00007f401b24f4bd           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.05%                       0x00007f401b24ec15:   cmp    $0x4,%ebx
                               0x00007f401b24ec18:   jb     0x00007f401b24f871
   0.01%                       0x00007f401b24ec1e:   mov    %rcx,0x18(%rsp)
   0.43%                       0x00007f401b24ec23:   movzbl 0x13(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.02%                       0x00007f401b24ec2c:   movzbl 0x13(,%r10,8),%ecx
   0.06%                       0x00007f401b24ec35:   cmp    -0x25c(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.03%                       0x00007f401b24ec3c:   nopl   0x0(%rax)
   0.13%        ╭              0x00007f401b24ec40:   je     0x00007f401b24ec58
   0.03%        │              0x00007f401b24ec46:   cmp    -0x265(%rip),%rax        # 0x00007f401b24e9e8
                │                                                                        ;   {section_word}
   0.04%        │              0x00007f401b24ec4d:   je     0x00007f401b24f174
                │              0x00007f401b24ec53:   jmp    0x00007f401b24f7e9
   0.03%        ↘              0x00007f401b24ec58:   and    %esi,%ecx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.12%                       0x00007f401b24ec5a:   mov    %ecx,0x38(%rsp)
   0.12%                       0x00007f401b24ec5e:   xchg   %ax,%ax
   0.01%                       0x00007f401b24ec60:   cmp    $0x5,%r11d
                               0x00007f401b24ec64:   jb     0x00007f401b24f365           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.09%                       0x00007f401b24ec6a:   cmp    $0x5,%ebx
                               0x00007f401b24ec6d:   jb     0x00007f401b24f6a5
   0.09%                       0x00007f401b24ec73:   mov    %rdi,0x8(%rsp)
   0.12%                       0x00007f401b24ec78:   movzbl 0x14(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.01%                       0x00007f401b24ec81:   movzbl 0x14(,%r10,8),%edi
   0.05%                       0x00007f401b24ec8a:   cmp    -0x2b1(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.16%         ╭             0x00007f401b24ec91:   je     0x00007f401b24ecab
   0.11%         │             0x00007f401b24ec97:   cmp    -0x2b6(%rip),%rax        # 0x00007f401b24e9e8
                 │                                                                       ;   {section_word}
   0.01%         │             0x00007f401b24ec9e:   xchg   %ax,%ax
   0.00%         │             0x00007f401b24eca0:   je     0x00007f401b24f15c
                 │             0x00007f401b24eca6:   jmp    0x00007f401b24f769
   0.09%         ↘             0x00007f401b24ecab:   and    %esi,%edi                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.11%                       0x00007f401b24ecad:   mov    %edi,0x34(%rsp)
   0.15%                       0x00007f401b24ecb1:   cmp    $0x6,%r11d
                               0x00007f401b24ecb5:   jb     0x00007f401b24f892           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.02%                       0x00007f401b24ecbb:   nopl   0x0(%rax,%rax,1)
   0.05%                       0x00007f401b24ecc0:   cmp    $0x6,%ebx
                               0x00007f401b24ecc3:   jb     0x00007f401b24f7cd
   0.02%                       0x00007f401b24ecc9:   mov    %r13,0x10(%rsp)
   0.40%                       0x00007f401b24ecce:   movzbl 0x15(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.02%                       0x00007f401b24ecd7:   movzbl 0x15(,%r10,8),%r13d
   0.04%                       0x00007f401b24ece0:   cmp    -0x307(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.08%          ╭            0x00007f401b24ece7:   je     0x00007f401b24ecff
   0.11%          │            0x00007f401b24eced:   cmp    -0x30c(%rip),%rax        # 0x00007f401b24e9e8
                  │                                                                      ;   {section_word}
   0.02%          │            0x00007f401b24ecf4:   je     0x00007f401b24f1c5
                  │            0x00007f401b24ecfa:   jmp    0x00007f401b24f780
   0.04%          ↘            0x00007f401b24ecff:   and    %esi,%r13d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.12%                       0x00007f401b24ed02:   mov    %r13d,0x30(%rsp)
   0.28%                       0x00007f401b24ed07:   cmp    $0x7,%r11d
                               0x00007f401b24ed0b:   jb     0x00007f401b24f4f4           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%                       0x00007f401b24ed11:   cmp    $0x7,%ebx
                               0x00007f401b24ed14:   jb     0x00007f401b24f84d
   0.02%                       0x00007f401b24ed1a:   mov    %r8,0x28(%rsp)
   0.30%                       0x00007f401b24ed1f:   movzbl 0x16(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.07%                       0x00007f401b24ed28:   movzbl 0x16(,%r10,8),%r8d
   0.00%                       0x00007f401b24ed31:   cmp    -0x358(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.05%           ╭           0x00007f401b24ed38:   je     0x00007f401b24ed50
   0.11%           │           0x00007f401b24ed3e:   cmp    -0x35d(%rip),%rax        # 0x00007f401b24e9e8
                   │                                                                     ;   {section_word}
   0.05%           │           0x00007f401b24ed45:   je     0x00007f401b24f1a5
                   │           0x00007f401b24ed4b:   jmp    0x00007f401b24f5d5
   0.04%           ↘           0x00007f401b24ed50:   and    %esi,%r8d                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.14%                       0x00007f401b24ed53:   mov    %r8d,0x24(%rsp)
   0.07%                       0x00007f401b24ed58:   nopl   0x0(%rax,%rax,1)
   0.00%                       0x00007f401b24ed60:   cmp    $0x8,%r11d
                               0x00007f401b24ed64:   jb     0x00007f401b24f83b           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.02%                       0x00007f401b24ed6a:   cmp    $0x8,%ebx
                               0x00007f401b24ed6d:   jb     0x00007f401b24f454
   0.16%                       0x00007f401b24ed73:   movzbl 0x17(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.07%                       0x00007f401b24ed7c:   movzbl 0x17(,%r10,8),%ebp
   0.00%                       0x00007f401b24ed85:   cmp    -0x3ac(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.11%            ╭          0x00007f401b24ed8c:   je     0x00007f401b24eda5
   0.09%            │          0x00007f401b24ed92:   cmp    -0x3b1(%rip),%rax        # 0x00007f401b24e9e8
                    │                                                                    ;   {section_word}
   0.00%            │          0x00007f401b24ed99:   je     0x00007f401b24f19b
                    │          0x00007f401b24ed9f:   nop
                    │          0x00007f401b24eda0:   jmp    0x00007f401b24f71f
   0.06%            ↘          0x00007f401b24eda5:   and    %esi,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.15%                       0x00007f401b24eda7:   mov    %ebp,0x20(%rsp)
   0.12%                       0x00007f401b24edab:   cmp    $0x9,%r11d
                               0x00007f401b24edaf:   jb     0x00007f401b24f521           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.02%                       0x00007f401b24edb5:   cmp    $0x9,%ebx
                               0x00007f401b24edb8:   jb     0x00007f401b24f70d
   0.06%                       0x00007f401b24edbe:   movzbl 0x18(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.08%                       0x00007f401b24edc7:   movzbl 0x18(,%r10,8),%r14d
   0.05%                       0x00007f401b24edd0:   cmp    -0x3f7(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.05%             ╭         0x00007f401b24edd7:   je     0x00007f401b24edef
   0.09%             │         0x00007f401b24eddd:   cmp    -0x3fc(%rip),%rax        # 0x00007f401b24e9e8
                     │                                                                   ;   {section_word}
   0.02%             │         0x00007f401b24ede4:   je     0x00007f401b24f193
                     │         0x00007f401b24edea:   jmp    0x00007f401b24f490
   0.05%             ↘         0x00007f401b24edef:   and    %esi,%r14d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.15%                       0x00007f401b24edf2:   cmp    $0xa,%r11d
                               0x00007f401b24edf6:   jb     0x00007f401b24f481           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.03%                       0x00007f401b24edfc:   nopl   0x0(%rax)
   0.02%                       0x00007f401b24ee00:   cmp    $0xa,%ebx
                               0x00007f401b24ee03:   jb     0x00007f401b24f85f
   0.09%                       0x00007f401b24ee09:   movzbl 0x19(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.25%                       0x00007f401b24ee12:   movzbl 0x19(,%r10,8),%edx
   0.01%                       0x00007f401b24ee1b:   cmp    -0x442(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.04%              ╭        0x00007f401b24ee22:   je     0x00007f401b24ee3a
   0.04%              │        0x00007f401b24ee28:   cmp    -0x447(%rip),%rax        # 0x00007f401b24e9e8
                      │                                                                  ;   {section_word}
   0.06%              │        0x00007f401b24ee2f:   je     0x00007f401b24f185
                      │        0x00007f401b24ee35:   jmp    0x00007f401b24f40d
   0.08%              ↘        0x00007f401b24ee3a:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.16%                       0x00007f401b24ee3c:   nopl   0x0(%rax)
   0.03%                       0x00007f401b24ee40:   cmp    $0xb,%r11d
                               0x00007f401b24ee44:   jb     0x00007f401b24f3fb           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.02%                       0x00007f401b24ee4a:   cmp    $0xb,%ebx
                               0x00007f401b24ee4d:   jb     0x00007f401b24f6c5
   0.06%                       0x00007f401b24ee53:   movzbl 0x1a(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.24%                       0x00007f401b24ee5c:   movzbl 0x1a(,%r10,8),%ecx
   0.01%                       0x00007f401b24ee65:   cmp    -0x48c(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.08%               ╭       0x00007f401b24ee6c:   je     0x00007f401b24ee85
   0.10%               │       0x00007f401b24ee72:   cmp    -0x491(%rip),%rax        # 0x00007f401b24e9e8
                       │                                                                 ;   {section_word}
   0.03%               │       0x00007f401b24ee79:   je     0x00007f401b24f17b
                       │       0x00007f401b24ee7f:   nop
                       │       0x00007f401b24ee80:   jmp    0x00007f401b24f335
   0.07%               ↘       0x00007f401b24ee85:   and    %esi,%ecx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.10%                       0x00007f401b24ee87:   cmp    $0xc,%r11d
                               0x00007f401b24ee8b:   jb     0x00007f401b24f305           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.01%                       0x00007f401b24ee91:   cmp    $0xc,%ebx
                               0x00007f401b24ee94:   jb     0x00007f401b24f693
   0.01%                       0x00007f401b24ee9a:   movzbl 0x1b(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.14%                       0x00007f401b24eea3:   movzbl 0x1b(,%r10,8),%edi
   0.10%                       0x00007f401b24eeac:   cmp    -0x4d3(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.02%                ╭      0x00007f401b24eeb3:   je     0x00007f401b24eecb
   0.04%                │      0x00007f401b24eeb9:   cmp    -0x4d8(%rip),%rax        # 0x00007f401b24e9e8
                        │                                                                ;   {section_word}
   0.06%                │      0x00007f401b24eec0:   je     0x00007f401b24f16d
                        │      0x00007f401b24eec6:   jmp    0x00007f401b24f5b4
   0.03%                ↘      0x00007f401b24eecb:   and    %esi,%edi                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.27%                       0x00007f401b24eecd:   cmp    $0xd,%r11d
                               0x00007f401b24eed1:   jb     0x00007f401b24f829           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.03%                       0x00007f401b24eed7:   cmp    $0xd,%ebx
                               0x00007f401b24eeda:   jb     0x00007f401b24f651
   0.01%                       0x00007f401b24eee0:   movzbl 0x1c(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.18%                       0x00007f401b24eee9:   movzbl 0x1c(,%r10,8),%r13d
   0.09%                       0x00007f401b24eef2:   cmp    -0x519(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.13%                 ╭     0x00007f401b24eef9:   je     0x00007f401b24ef11
   0.11%                 │     0x00007f401b24eeff:   cmp    -0x51e(%rip),%rax        # 0x00007f401b24e9e8
                         │                                                               ;   {section_word}
                         │     0x00007f401b24ef06:   je     0x00007f401b24f165
                         │     0x00007f401b24ef0c:   jmp    0x00007f401b24f6e9
   0.05%                 ↘     0x00007f401b24ef11:   and    %esi,%r13d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.13%                       0x00007f401b24ef14:   cmp    $0xe,%r11d
                               0x00007f401b24ef18:   jb     0x00007f401b24f745           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.03%                       0x00007f401b24ef1e:   xchg   %ax,%ax
   0.01%                       0x00007f401b24ef20:   cmp    $0xe,%ebx
                               0x00007f401b24ef23:   jb     0x00007f401b24f2d5
   0.09%                       0x00007f401b24ef29:   movzbl 0x1d(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.24%                       0x00007f401b24ef32:   movzbl 0x1d(,%r10,8),%r8d
   0.03%                       0x00007f401b24ef3b:   cmp    -0x562(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.02%                  ╭    0x00007f401b24ef42:   je     0x00007f401b24ef5a
   0.03%                  │    0x00007f401b24ef48:   cmp    -0x567(%rip),%rax        # 0x00007f401b24e9e8
                          │                                                              ;   {section_word}
   0.15%                  │    0x00007f401b24ef4f:   je     0x00007f401b24f1cd
                          │    0x00007f401b24ef55:   jmp    0x00007f401b24f63f
   0.04%                  ↘    0x00007f401b24ef5a:   and    %esi,%r8d                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.13%                       0x00007f401b24ef5d:   data16 xchg %ax,%ax
   0.03%                       0x00007f401b24ef60:   cmp    $0xf,%r11d
                               0x00007f401b24ef64:   jb     0x00007f401b24f757           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.02%                       0x00007f401b24ef6a:   cmp    $0xf,%ebx
                               0x00007f401b24ef6d:   jb     0x00007f401b24f5a5
   0.10%                       0x00007f401b24ef73:   movzbl 0x1e(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.27%                       0x00007f401b24ef7c:   movzbl 0x1e(,%r10,8),%ebp
   0.03%                       0x00007f401b24ef85:   cmp    -0x5ac(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.11%                   ╭   0x00007f401b24ef8c:   je     0x00007f401b24efa5
   0.10%                   │   0x00007f401b24ef92:   cmp    -0x5b1(%rip),%rax        # 0x00007f401b24e9e8
                           │                                                             ;   {section_word}
   0.02%                   │   0x00007f401b24ef99:   je     0x00007f401b24f1bc
                           │   0x00007f401b24ef9f:   nop
                           │   0x00007f401b24efa0:   jmp    0x00007f401b24f533
   0.08%                   ↘   0x00007f401b24efa5:   and    %esi,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.07%                       0x00007f401b24efa7:   cmp    $0x10,%r11d
                               0x00007f401b24efab:   jb     0x00007f401b24f61e           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.02%                       0x00007f401b24efb1:   cmp    $0x10,%ebx
                               0x00007f401b24efb4:   jb     0x00007f401b24f575
   0.01%                       0x00007f401b24efba:   movzbl 0x1f(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.17%                       0x00007f401b24efc3:   movzbl 0x1f(,%r10,8),%r10d
   0.09%                       0x00007f401b24efcc:   cmp    -0x5f3(%rip),%rax        # 0x00007f401b24e9e0
                                                                                         ;   {section_word}
   0.02%                    ╭  0x00007f401b24efd3:   je     0x00007f401b24efeb
   0.02%                    │  0x00007f401b24efd9:   cmp    -0x5f8(%rip),%rax        # 0x00007f401b24e9e8
                            │                                                            ;   {section_word}
   0.05%                    │  0x00007f401b24efe0:   je     0x00007f401b24f1ad
                            │  0x00007f401b24efe6:   jmp    0x00007f401b24f5c6
   0.03%                    ↘  0x00007f401b24efeb:   and    %esi,%r10d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$and$3@2 (line 715)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f3fa00d3580::apply@3
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.18%                       0x00007f401b24efee:   mov    0x1b8(%r15),%rsi
   0.02%                       0x00007f401b24eff5:   lea    0x10(%rsi),%rax
   0.06%                       0x00007f401b24eff9:   nopl   0x0(%rax)
   0.04%                       0x00007f401b24f000:   cmp    0x1c8(%r15),%rax
                               0x00007f401b24f007:   ja     0x00007f401b24f26f
   0.19%                       0x00007f401b24f00d:   mov    %rax,0x1b8(%r15)
   0.16%                       0x00007f401b24f014:   prefetchw 0xd0(%rsi)
   0.35%                       0x00007f401b24f01b:   movq   $0x1,(%rsi)
   0.58%                       0x00007f401b24f022:   movl   $0x10c6758,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int512Vector$Int512Mask&apos;)}
   0.14%                       0x00007f401b24f029:   movl   $0x0,0xc(%rsi)
   0.12%                       0x00007f401b24f030:   mov    %rsi,(%rsp)                  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@63 (line 643)
   0.01%                       0x00007f401b24f034:   mov    0x1b8(%r15),%rsi
   0.27%                       0x00007f401b24f03b:   lea    0x20(%rsi),%rax
   0.12%                       0x00007f401b24f03f:   nop
   0.04%                       0x00007f401b24f040:   cmp    0x1c8(%r15),%rax
                               0x00007f401b24f047:   ja     0x00007f401b24f225
   0.13%                       0x00007f401b24f04d:   mov    %rax,0x1b8(%r15)
   0.20%                       0x00007f401b24f054:   prefetchw 0xe0(%rsi)
   0.27%                       0x00007f401b24f05b:   prefetchw 0x120(%rsi)
   0.13%                       0x00007f401b24f062:   prefetchw 0x160(%rsi)
   0.07%                       0x00007f401b24f069:   prefetchw 0x1a0(%rsi)
   0.14%                       0x00007f401b24f070:   movq   $0x1,(%rsi)
   0.59%                       0x00007f401b24f077:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.29%                       0x00007f401b24f07e:   movl   $0x10,0xc(%rsi)
   0.30%                       0x00007f401b24f085:   movq   $0x0,0x10(%rsi)
   0.10%                       0x00007f401b24f08d:   movq   $0x0,0x18(%rsi)
   0.20%                       0x00007f401b24f095:   mov    0x20(%rsp),%r9d
   0.02%                       0x00007f401b24f09a:   mov    0x24(%rsp),%ebx
   0.04%                       0x00007f401b24f09e:   mov    0x30(%rsp),%eax
   0.03%                       0x00007f401b24f0a2:   mov    0x34(%rsp),%r11d
   0.12%                       0x00007f401b24f0a7:   mov    %r10b,0x1f(%rsi)
   0.03%                       0x00007f401b24f0ab:   mov    %bpl,0x1e(%rsi)
   0.13%                       0x00007f401b24f0af:   mov    %r8b,0x1d(%rsi)
   0.06%                       0x00007f401b24f0b3:   mov    %r13b,0x1c(%rsi)
   0.18%                       0x00007f401b24f0b7:   mov    %dil,0x1b(%rsi)
   0.08%                       0x00007f401b24f0bb:   mov    %cl,0x1a(%rsi)
   0.11%                       0x00007f401b24f0be:   mov    %dl,0x19(%rsi)
   0.15%                       0x00007f401b24f0c1:   mov    %r14b,0x18(%rsi)
   0.17%                       0x00007f401b24f0c5:   mov    %r9b,0x17(%rsi)
   0.18%                       0x00007f401b24f0c9:   mov    %bl,0x16(%rsi)
   0.21%                       0x00007f401b24f0cc:   mov    %al,0x15(%rsi)
   0.19%                       0x00007f401b24f0cf:   mov    %r11b,0x14(%rsi)
   0.21%                       0x00007f401b24f0d3:   mov    0x38(%rsp),%eax
   0.01%                       0x00007f401b24f0d7:   mov    %al,0x13(%rsi)
   0.24%                       0x00007f401b24f0da:   mov    0x3c(%rsp),%eax
   0.01%                       0x00007f401b24f0de:   mov    %al,0x12(%rsi)
   0.25%                       0x00007f401b24f0e1:   mov    0x40(%rsp),%eax
   0.01%                       0x00007f401b24f0e5:   mov    %al,0x11(%rsi)
   0.20%                       0x00007f401b24f0e8:   mov    0x44(%rsp),%eax
   0.00%                       0x00007f401b24f0ec:   mov    %al,0x10(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::prepare@6 (line 598)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::&lt;init&gt;@3 (line 590)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::&lt;init&gt;@3 (line 586)
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@68 (line 643)
   0.23%                       0x00007f401b24f0ef:   mov    %rsi,%rax
   0.00%                       0x00007f401b24f0f2:   shr    $0x3,%rax
                               0x00007f401b24f0f6:   mov    (%rsp),%rdx
   0.02%                       0x00007f401b24f0fa:   mov    %eax,0xc(%rdx)
   0.29%                       0x00007f401b24f0fd:   mov    %rdx,%rax
                               0x00007f401b24f100:   xor    %rsi,%rax
   0.01%                       0x00007f401b24f103:   test   $0xffffffffffe00000,%rax
                               0x00007f401b24f10a:   je     0x00007f401b24f1e5
                               0x00007f401b24f110:   test   %rsi,%rsi
                               0x00007f401b24f113:   je     0x00007f401b24f205
                               0x00007f401b24f119:   mov    %rdx,%r10
                               0x00007f401b24f11c:   shr    $0x9,%r10
                               0x00007f401b24f120:   movabs $0x7f402c9d5000,%r11
                               0x00007f401b24f12a:   cmpb   $0x2,(%r10,%r11,1)
                               0x00007f401b24f12f:   jne    0x00007f401b24f20d
                               0x00007f401b24f135:   mov    %rdx,%rbx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@63 (line 643)
....................................................................................................
  23.75%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 

 <region is too big to display, has 1570 lines, but threshold is 1000>
....................................................................................................
  13.91%  <total for region 3>

....[Hottest Regions]...............................................................................
  31.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
  23.75%      jvmci, level 4  jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1152 
  13.91%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   8.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   4.57%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   3.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   3.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   2.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   2.12%      jvmci, level 4  jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1152 
   1.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   0.87%              kernel  [unknown] 
   0.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   0.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   0.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   0.09%              kernel  [unknown] 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
   0.08%              kernel  [unknown] 
   2.75%  <...other 532 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.88%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1284 
  25.88%      jvmci, level 4  jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1152 
   2.12%              kernel  [unknown] 
   0.16%                      <unknown> 
   0.06%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 5, compile id 1314 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.57%  <...other 168 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.78%      jvmci, level 4
   2.12%              kernel
   0.64%           libjvm.so
   0.16%                    
   0.16%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.03%              [vdso]
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 1024, vectorSize = 64)

# Run progress: 33.33% complete, ETA 00:15:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 104.115 us/op
# Warmup Iteration   2: 50.220 us/op
# Warmup Iteration   3: 50.113 us/op
# Warmup Iteration   4: 50.110 us/op
# Warmup Iteration   5: 50.118 us/op
Iteration   1: 50.110 us/op
Iteration   2: 50.122 us/op
Iteration   3: 50.105 us/op
Iteration   4: 50.146 us/op
Iteration   5: 50.387 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  50.174 ±(99.9%) 0.463 us/op [Average]
  (min, avg, max) = (50.105, 50.174, 50.387), stdev = 0.120
  CI (99.9%): [49.711, 50.637] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 306723 total address lines.
Perf output processed (skipped 60.832 seconds):
 Column 1: cycles (50972 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1312 

 <region is too big to display, has 1410 lines, but threshold is 1000>
....................................................................................................
  81.75%  <total for region 1>

....[Hottest Regions]...............................................................................
  81.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1312 
   7.77%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1312 
   5.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1312 
   1.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1312 
   0.51%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.09%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%           libjvm.so  G1CardSet::reset_table_scanner 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 4, compile id 1337 
   0.05%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%                      <unknown> 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.03%        libc-2.31.so  __memset_avx2_erms 
   0.03%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.03%              kernel  [unknown] 
   0.03%          ld-2.31.so  __tls_get_addr 
   2.13%  <...other 569 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1312 
   1.67%              kernel  [unknown] 
   0.19%                      <unknown> 
   0.10%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.06%           libjvm.so  G1CardSet::reset_table_scanner 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 4, compile id 1337 
   0.05%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.03%        libc-2.31.so  __memset_avx2_erms 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.02%           libjvm.so  TypeArrayKlass::allocate_common 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      hsdis-amd64.so  print_insn 
   0.95%  <...other 205 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.63%      jvmci, level 4
   1.67%              kernel
   1.11%           libjvm.so
   0.22%        libc-2.31.so
   0.19%                    
   0.09%  libpthread-2.31.so
   0.03%              [vdso]
   0.03%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-2129456.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 1024, vectorSize = 128)

# Run progress: 41.67% complete, ETA 00:13:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 245.116 us/op
# Warmup Iteration   2: 125.093 us/op
# Warmup Iteration   3: 124.391 us/op
# Warmup Iteration   4: 124.272 us/op
# Warmup Iteration   5: 124.281 us/op
Iteration   1: 124.230 us/op
Iteration   2: 124.175 us/op
Iteration   3: 124.284 us/op
Iteration   4: 124.289 us/op
Iteration   5: 125.326 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  124.461 ±(99.9%) 1.870 us/op [Average]
  (min, avg, max) = (124.175, 124.461, 125.326), stdev = 0.486
  CI (99.9%): [122.590, 126.331] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 303017 total address lines.
Perf output processed (skipped 60.505 seconds):
 Column 1: cycles (50728 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1278 

 <region is too big to display, has 1381 lines, but threshold is 1000>
....................................................................................................
  34.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1235 

                   # parm1:    rcx:rcx   = &apos;jdk/incubator/vector/AbstractMask$MBinOp&apos;
                   #           [sp+0x20]  (sp of caller)
                   0x00007f43df24cf00:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                   0x00007f43df24cf04:   movabs $0x7f4363000000,%r12
                   0x00007f43df24cf0e:   add    %r12,%r10
                   0x00007f43df24cf11:   xor    %r12,%r12
                   0x00007f43df24cf14:   cmp    %r10,%rax
                   0x00007f43df24cf17:   jne    0x00007f43dec2f080           ;   {runtime_call ic_miss_stub}
                   0x00007f43df24cf1d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   0.53%           0x00007f43df24cf20:   mov    %eax,-0x14000(%rsp)
   0.29%           0x00007f43df24cf27:   sub    $0x18,%rsp
   0.27%           0x00007f43df24cf2b:   nop
   0.07%           0x00007f43df24cf2c:   cmpl   $0x0,0x20(%r15)
   0.06%           0x00007f43df24cf34:   jne    0x00007f43df24d485
   0.23%           0x00007f43df24cf3a:   mov    %rbp,0x10(%rsp)
   0.46%           0x00007f43df24cf3f:   nop
   0.05%           0x00007f43df24cf40:   test   %rdx,%rdx
                   0x00007f43df24cf43:   je     0x00007f43df24d26e
   0.01%           0x00007f43df24cf49:   mov    0x8(%rdx),%eax
   0.25%           0x00007f43df24cf4c:   movabs $0x7f4363000000,%r10
   0.33%           0x00007f43df24cf56:   lea    (%r10,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@17 (line 615)
   0.06%           0x00007f43df24cf5a:   nopw   0x0(%rax,%rax,1)
   0.01%           0x00007f43df24cf60:   test   %rdx,%rdx
          ╭        0x00007f43df24cf63:   je     0x00007f43df24cf7c
   0.21%  │        0x00007f43df24cf69:   movabs $0x7f43640c4fa8,%r10         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector$Int128Mask&apos;)}
   0.37%  │        0x00007f43df24cf73:   cmp    %rax,%r10
          │        0x00007f43df24cf76:   jne    0x00007f43df24d3e5           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.07%  ↘        0x00007f43df24cf7c:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f43df24d4a9
                                                                             ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.03%           0x00007f43df24cf7e:   mov    0x8(%rcx),%eax               ; implicit exception: dispatches to 0x00007f43df24d4cd
   0.20%           0x00007f43df24cf81:   mov    0xc(%rsi),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@11 (line 614)
   0.38%           0x00007f43df24cf85:   test   %r10d,%r10d
                   0x00007f43df24cf88:   je     0x00007f43df24d27a
   0.09%           0x00007f43df24cf8e:   mov    0x8(,%r10,8),%r11d
   0.07%           0x00007f43df24cf96:   movabs $0x7f4363000000,%r8
   0.20%           0x00007f43df24cfa0:   lea    (%r8,%r11,1),%r11
   0.34%           0x00007f43df24cfa4:   movabs $0x7f4363001b00,%r8          ;   {metadata({type array bool})}
   0.07%           0x00007f43df24cfae:   test   %r10d,%r10d
           ╭       0x00007f43df24cfb1:   je     0x00007f43df24cfc0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@4 (line 598)
           │                                                                 ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@11 (line 614)
   0.01%   │       0x00007f43df24cfb7:   cmp    %r11,%r8
           │       0x00007f43df24cfba:   jne    0x00007f43df24d418           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r10=NarrowOop }
           │                                                                 ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                                 ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.24%   ↘       0x00007f43df24cfc0:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f43df24d4f0
   0.39%           0x00007f43df24cfc8:   test   %r11d,%r11d
                   0x00007f43df24cfcb:   je     0x00007f43df24d3a7           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.04%           0x00007f43df24cfd1:   mov    0xc(%rdx),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@20 (line 615)
   0.02%           0x00007f43df24cfd5:   test   %r9d,%r9d
                   0x00007f43df24cfd8:   je     0x00007f43df24d286
   0.21%           0x00007f43df24cfde:   mov    0x8(,%r9,8),%ebx
   0.80%           0x00007f43df24cfe6:   movabs $0x7f4363000000,%rdi
   0.04%           0x00007f43df24cff0:   lea    (%rdi,%rbx,1),%rbx
   0.39%           0x00007f43df24cff4:   test   %r9d,%r9d
            ╭      0x00007f43df24cff7:   je     0x00007f43df24d009           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@4 (line 598)
            │                                                                ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@20 (line 615)
   0.10%    │      0x00007f43df24cffd:   data16 xchg %ax,%ax
   0.11%    │      0x00007f43df24d000:   cmp    %rbx,%r8
            │      0x00007f43df24d003:   jne    0x00007f43df24d44b           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop }
            │                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                                ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.36%    ↘      0x00007f43df24d009:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f43df24d513
   0.01%           0x00007f43df24d011:   test   %ebx,%ebx
                   0x00007f43df24d013:   je     0x00007f43df24d45d
   0.11%           0x00007f43df24d019:   movzbl 0x10(,%r9,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
   0.11%           0x00007f43df24d022:   movzbl 0x10(,%r10,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.42%           0x00007f43df24d02b:   movabs $0x7f4363000000,%r13
   0.01%           0x00007f43df24d035:   lea    0x0(%r13,%rax,1),%rax
   0.09%           0x00007f43df24d03a:   cmp    -0x161(%rip),%rax        # 0x00007f43df24cee0
                                                                             ;   {section_word}
   0.15%     ╭     0x00007f43df24d041:   je     0x00007f43df24d059
   0.16%     │     0x00007f43df24d047:   cmp    -0x166(%rip),%rax        # 0x00007f43df24cee8
             │                                                               ;   {section_word}
   0.01%     │     0x00007f43df24d04e:   je     0x00007f43df24d251
             │     0x00007f43df24d054:   jmp    0x00007f43df24d427
   0.30%     ↘     0x00007f43df24d059:   and    %edi,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.24%           0x00007f43df24d05b:   mov    %r9d,%edi
   0.03%           0x00007f43df24d05e:   shl    $0x3,%rdi                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@20 (line 615)
   0.01%           0x00007f43df24d062:   mov    %r10d,%r13d
   0.37%           0x00007f43df24d065:   shl    $0x3,%r13                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@11 (line 614)
   0.22%           0x00007f43df24d069:   cmp    $0x2,%r11d
                   0x00007f43df24d06d:   jb     0x00007f43df24d398           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.05%           0x00007f43df24d073:   cmp    $0x2,%ebx
                   0x00007f43df24d076:   jb     0x00007f43df24d31d
   0.01%           0x00007f43df24d07c:   movzbl 0x11(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
   0.37%           0x00007f43df24d085:   movzbl 0x11(,%r10,8),%edx
   0.20%           0x00007f43df24d08e:   cmp    -0x1b5(%rip),%rax        # 0x00007f43df24cee0
                                                                             ;   {section_word}
   0.04%      ╭    0x00007f43df24d095:   je     0x00007f43df24d0ad
   0.05%      │    0x00007f43df24d09b:   cmp    -0x1ba(%rip),%rax        # 0x00007f43df24cee8
              │                                                              ;   {section_word}
   0.09%      │    0x00007f43df24d0a2:   je     0x00007f43df24d267
              │    0x00007f43df24d0a8:   jmp    0x00007f43df24d439
   0.01%      ↘    0x00007f43df24d0ad:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.58%           0x00007f43df24d0af:   mov    %edx,%r14d
   0.00%           0x00007f43df24d0b2:   cmp    $0x3,%r11d
                   0x00007f43df24d0b6:   jb     0x00007f43df24d370           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.14%           0x00007f43df24d0bc:   nopl   0x0(%rax)
   0.00%           0x00007f43df24d0c0:   cmp    $0x3,%ebx
                   0x00007f43df24d0c3:   jb     0x00007f43df24d46f
   0.70%           0x00007f43df24d0c9:   movzbl 0x12(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
   0.01%           0x00007f43df24d0d2:   movzbl 0x12(,%r10,8),%edx
   0.04%           0x00007f43df24d0db:   cmp    -0x202(%rip),%rax        # 0x00007f43df24cee0
                                                                             ;   {section_word}
   0.09%       ╭   0x00007f43df24d0e2:   je     0x00007f43df24d0fa
   0.34%       │   0x00007f43df24d0e8:   cmp    -0x207(%rip),%rax        # 0x00007f43df24cee8
               │                                                             ;   {section_word}
               │   0x00007f43df24d0ef:   je     0x00007f43df24d260
               │   0x00007f43df24d0f5:   jmp    0x00007f43df24d406
   0.28%       ↘   0x00007f43df24d0fa:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.35%           0x00007f43df24d0fc:   nopl   0x0(%rax)
   0.02%           0x00007f43df24d100:   cmp    $0x4,%r11d
                   0x00007f43df24d104:   jb     0x00007f43df24d3f4           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.08%           0x00007f43df24d10a:   cmp    $0x4,%ebx
                   0x00007f43df24d10d:   jb     0x00007f43df24d3cf
   0.26%           0x00007f43df24d113:   movzbl 0x13(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
   0.35%           0x00007f43df24d11c:   movzbl 0x13(,%r10,8),%r10d
   0.03%           0x00007f43df24d125:   cmp    -0x24c(%rip),%rax        # 0x00007f43df24cee0
                                                                             ;   {section_word}
   0.06%        ╭  0x00007f43df24d12c:   je     0x00007f43df24d145
   0.05%        │  0x00007f43df24d132:   cmp    -0x251(%rip),%rax        # 0x00007f43df24cee8
                │                                                            ;   {section_word}
   0.24%        │  0x00007f43df24d139:   je     0x00007f43df24d258
                │  0x00007f43df24d13f:   nop
                │  0x00007f43df24d140:   jmp    0x00007f43df24d345
   0.17%        ↘  0x00007f43df24d145:   and    %esi,%r10d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.32%           0x00007f43df24d148:   mov    0x1b8(%r15),%rsi
   0.03%           0x00007f43df24d14f:   lea    0x10(%rsi),%rax
   0.10%           0x00007f43df24d153:   cmp    0x1c8(%r15),%rax
                   0x00007f43df24d15a:   ja     0x00007f43df24d2c9
   0.23%           0x00007f43df24d160:   mov    %rax,0x1b8(%r15)
   0.34%           0x00007f43df24d167:   prefetchw 0xd0(%rsi)
   0.77%           0x00007f43df24d16e:   movq   $0x1,(%rsi)
   0.68%           0x00007f43df24d175:   movl   $0x10c4fa8,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector$Int128Mask&apos;)}
   0.37%           0x00007f43df24d17c:   movl   $0x0,0xc(%rsi)
   0.59%           0x00007f43df24d183:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@63 (line 619)
   0.01%           0x00007f43df24d186:   mov    0x1b8(%r15),%rsi
   0.06%           0x00007f43df24d18d:   lea    0x18(%rsi),%rax
   0.52%           0x00007f43df24d191:   cmp    0x1c8(%r15),%rax
                   0x00007f43df24d198:   ja     0x00007f43df24d2ea
   0.61%           0x00007f43df24d19e:   mov    %rax,0x1b8(%r15)
   0.53%           0x00007f43df24d1a5:   prefetchw 0xd8(%rsi)
   1.34%           0x00007f43df24d1ac:   prefetchw 0x118(%rsi)
   0.02%           0x00007f43df24d1b3:   prefetchw 0x158(%rsi)
   0.38%           0x00007f43df24d1ba:   prefetchw 0x198(%rsi)
   0.66%           0x00007f43df24d1c1:   movq   $0x1,(%rsi)
   2.14%           0x00007f43df24d1c8:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.48%           0x00007f43df24d1cf:   movl   $0x4,0xc(%rsi)
   0.32%           0x00007f43df24d1d6:   movq   $0x0,0x10(%rsi)
   0.43%           0x00007f43df24d1de:   mov    %r10b,0x13(%rsi)
   0.39%           0x00007f43df24d1e2:   mov    %dl,0x12(%rsi)
   0.12%           0x00007f43df24d1e5:   mov    %r14b,0x11(%rsi)
   0.11%           0x00007f43df24d1e9:   mov    %bpl,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::prepare@6 (line 574)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::&lt;init&gt;@3 (line 566)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::&lt;init&gt;@3 (line 562)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@68 (line 619)
   0.31%           0x00007f43df24d1ed:   mov    %rsi,%rax
   0.27%           0x00007f43df24d1f0:   shr    $0x3,%rax
   0.02%           0x00007f43df24d1f4:   mov    %eax,0xc(%r11)
   0.06%           0x00007f43df24d1f8:   mov    %r11,%rax
   0.23%           0x00007f43df24d1fb:   xor    %rsi,%rax
   0.28%           0x00007f43df24d1fe:   xchg   %ax,%ax
   0.01%           0x00007f43df24d200:   test   $0xffffffffffe00000,%rax
                   0x00007f43df24d207:   je     0x00007f43df24d232
                   0x00007f43df24d20d:   test   %rsi,%rsi
                   0x00007f43df24d210:   je     0x00007f43df24d232
                   0x00007f43df24d216:   mov    %r11,%r10
                   0x00007f43df24d219:   shr    $0x9,%r10
                   0x00007f43df24d21d:   movabs $0x7f43d2eef000,%r8
                   0x00007f43df24d227:   cmpb   $0x2,(%r10,%r8,1)
                   0x00007f43df24d22c:   jne    0x00007f43df24d292           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@63 (line 619)
   0.05%           0x00007f43df24d232:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  26.89%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1278 

                                                                       ; - jdk.incubator.vector.IntVector::maskFactory@5 (line 116)
                                                                       ; - jdk.incubator.vector.IntVector::bTest@68 (line 478)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$59@9 (line 2034)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d1ef8::apply@14
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                       ; - jdk.incubator.vector.IntVector::compareTemplate@42 (line 2029)
                                                                       ; - jdk.incubator.vector.Int128Vector::compare@5 (line 384)
                                                                       ; - jdk.incubator.vector.Int128Vector::compare@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lt@5 (line 1933)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@129 (line 86)
   0.04%     0x00007f43df268711:   mov    %rdi,%rsi
             0x00007f43df268714:   mov    %rbx,%rdx
   0.07%     0x00007f43df268717:   mov    0x60(%rsp),%rcx              ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@7 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.23%     0x00007f43df26871c:   mov    %rbx,0x20(%rsp)
   0.04%     0x00007f43df268721:   mov    %rdi,0x18(%rsp)
   0.03%     0x00007f43df268726:   nop
   0.06%     0x00007f43df268727:   call   0x00007f43df24cf20           ; ImmutableOopMap {[24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [140]=NarrowOop [144]=Oop }
                                                                       ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@7 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
                                                                       ;   {optimized virtual_call}
   0.11%     0x00007f43df26872c:   nopl   0x1000149c(%rax,%rax,1)      ;   {other}
   0.02%     0x00007f43df268734:   mov    %rax,%r10                    ; ImmutableOopMap {r10=Oop [24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [140]=NarrowOop [144]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@10 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.02%     0x00007f43df268737:   test   %eax,(%r10)                  ; implicit exception: dispatches to 0x00007f43df26a070
   0.31%     0x00007f43df26873a:   mov    0x40(%rsp),%rcx
   0.12%     0x00007f43df26873f:   mov    0xc(%rcx),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   1.26%     0x00007f43df268742:   test   %esi,%esi
             0x00007f43df268744:   je     0x00007f43df268bf2
   0.30%     0x00007f43df26874a:   mov    0x8(,%rsi,8),%eax
   1.17%     0x00007f43df268751:   movabs $0x7f4363000000,%rdx
   0.00%     0x00007f43df26875b:   lea    (%rdx,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@20 (line 227)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.31%     0x00007f43df26875f:   nop
             0x00007f43df268760:   test   %esi,%esi
             0x00007f43df268762:   je     0x00007f43df268b40
             0x00007f43df268768:   mov    0x110(%rsp),%r13
   0.00%     0x00007f43df268770:   cmp    %rax,%r13
             0x00007f43df268773:   jne    0x00007f43df269e4b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.27%     0x00007f43df268779:   nopl   0x0(%rax)                    ; ImmutableOopMap {rcx=Oop rsi=NarrowOop r10=Oop [24]=Oop [32]=Oop [56]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [140]=NarrowOop [144]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@10 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.00%     0x00007f43df268780:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f43df26a093
             0x00007f43df268788:   jb     0x00007f43df269c7a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.29%     0x00007f43df26878e:   mov    0xc(%r10),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.01%     0x00007f43df268792:   test   %eax,%eax
             0x00007f43df268794:   je     0x00007f43df268bdb
   0.00%     0x00007f43df26879a:   mov    0x8(,%rax,8),%edx
             0x00007f43df2687a1:   movabs $0x7f4363000000,%rdi
   0.29%     0x00007f43df2687ab:   lea    (%rdi,%rdx,1),%rdx
   0.01%     0x00007f43df2687af:   test   %eax,%eax
             0x00007f43df2687b1:   je     0x00007f43df268b33           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@4 (line 598)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007f43df2687b7:   mov    0xe0(%rsp),%r9
             0x00007f43df2687bf:   nop
   0.36%     0x00007f43df2687c0:   cmp    %rdx,%r9
             0x00007f43df2687c3:   jne    0x00007f43df269908           ; ImmutableOopMap {rax=NarrowOop rcx=Oop rsi=NarrowOop r10=Oop [24]=Oop [32]=Oop [56]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [140]=NarrowOop [144]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@10 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.01%     0x00007f43df2687c9:   cmpl   $0x4,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f43df26a0b6
   0.01%     0x00007f43df2687d1:   jb     0x00007f43df269cd8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f43640d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.35%     0x00007f43df2687d7:   nopw   0x0(%rax,%rax,1)
   0.01%     0x00007f43df2687e0:   cmpb   $0x0,0x10(,%rax,8)
             0x00007f43df2687e8:   jne    0x00007f43df268b95           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.30%     0x00007f43df2687ee:   mov    0x10(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.06%     0x00007f43df2687f5:   mov    %edx,%r11d
             0x00007f43df2687f8:   mov    0x38(%rsp),%rbx              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.01%     0x00007f43df2687fd:   data16 xchg %ax,%ax
   0.28%     0x00007f43df268800:   cmpb   $0x0,0x11(,%rax,8)
   0.10%     0x00007f43df268808:   jne    0x00007f43df268ba5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.09%     0x00007f43df26880e:   mov    0x14(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.22%     0x00007f43df268815:   mov    %edx,%r8d
   0.09%     0x00007f43df268818:   nopl   0x0(%rax,%rax,1)
             0x00007f43df268820:   cmpb   $0x0,0x12(,%rax,8)
   0.29%     0x00007f43df268828:   jne    0x00007f43df268bad           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
                                                                       ;   {no_reloc}
   0.09%     0x00007f43df26882e:   mov    0x18(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.08%     0x00007f43df268835:   mov    %edx,%edi
   0.08%     0x00007f43df268837:   nopw   0x0(%rax,%rax,1)
   0.07%     0x00007f43df268840:   cmpb   $0x0,0x13(,%rax,8)
   0.21%     0x00007f43df268848:   jne    0x00007f43df268b8d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.10%     0x00007f43df26884e:   mov    0x1c(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007f43df268855:   mov    %edx,%ebp
   0.07%     0x00007f43df268857:   mov    0x48(%rsp),%r14
   0.06%     0x00007f43df26885c:   mov    0xc(%r14),%edx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.29%     0x00007f43df268860:   test   %edx,%edx
             0x00007f43df268862:   je     0x00007f43df268bca
   0.04%     0x00007f43df268868:   mov    %r10,0x10(%rsp)
   0.05%     0x00007f43df26886d:   mov    0x8(,%rdx,8),%ebx
   1.03%     0x00007f43df268874:   movabs $0x7f4363000000,%r10
   0.00%     0x00007f43df26887e:   lea    (%r10,%rbx,1),%rbx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.36%     0x00007f43df268882:   mov    %esi,%r10d
             0x00007f43df268885:   shl    $0x3,%r10                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007f43df268889:   shl    $0x3,%rax                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007f43df26888d:   test   %edx,%edx
          ╭  0x00007f43df26888f:   je     0x00007f43df26889e
   0.31%  │  0x00007f43df268895:   cmp    %rbx,%r13
          │  0x00007f43df268898:   jne    0x00007f43df269bd7           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
          │                                                            ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
          │                                                            ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
          │                                                            ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
          │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
          │                                                            ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
          │                                                            ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.00%  ↘  0x00007f43df26889e:   xchg   %ax,%ax                      ; ImmutableOopMap {rax=Oop rcx=Oop rdx=NarrowOop r10=Oop r14=Oop [16]=Oop [56]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [140]=NarrowOop [144]=Oop }
                                                                       ;*iastore {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.01%     0x00007f43df2688a0:   cmpl   $0x4,0xc(,%rdx,8)            ; implicit exception: dispatches to 0x00007f43df26a0d9
   0.31%     0x00007f43df2688a8:   jb     0x00007f43df269a97           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
             0x00007f43df2688ae:   mov    0x1b8(%r15),%rsi
   0.00%     0x00007f43df2688b5:   lea    0x10(%rsi),%rbx
   0.00%     0x00007f43df2688b9:   nopl   0x0(%rax)
   0.30%     0x00007f43df2688c0:   cmp    0x1c8(%r15),%rbx
             0x00007f43df2688c7:   ja     0x00007f43df268e3d
             0x00007f43df2688cd:   mov    %rbx,0x1b8(%r15)
   0.00%     0x00007f43df2688d4:   prefetchw 0xd0(%rsi)
   0.00%     0x00007f43df2688db:   movq   $0x1,(%rsi)
   0.53%     0x00007f43df2688e2:   movl   $0x10c4928,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector&apos;)}
   0.01%     0x00007f43df2688e9:   movl   $0x0,0xc(%rsi)
   0.08%     0x00007f43df2688f0:   mov    %rsi,%rbx
             0x00007f43df2688f3:   mov    %r10,0x8(%rsp)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@102 (line 233)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.26%     0x00007f43df2688f8:   mov    0x1b8(%r15),%rsi
   0.02%     0x00007f43df2688ff:   lea    0x20(%rsi),%r10
   0.05%     0x00007f43df268903:   cmp    0x1c8(%r15),%r10
             0x00007f43df26890a:   ja     0x00007f43df268e87
   0.01%     0x00007f43df268910:   mov    %r10,0x1b8(%r15)
   0.25%     0x00007f43df268917:   prefetchw 0xe0(%rsi)
   0.06%     0x00007f43df26891e:   prefetchw 0x120(%rsi)
   0.05%     0x00007f43df268925:   prefetchw 0x160(%rsi)
   0.02%     0x00007f43df26892c:   prefetchw 0x1a0(%rsi)
   0.29%     0x00007f43df268933:   movq   $0x1,(%rsi)
   0.08%     0x00007f43df26893a:   movl   $0x26a0,0x8(%rsi)            ;   {metadata({type array int})}
   0.29%     0x00007f43df268941:   movl   $0x4,0xc(%rsi)
   0.32%     0x00007f43df268948:   movq   $0x0,0x10(%rsi)
   0.36%     0x00007f43df268950:   movq   $0x0,0x18(%rsi)
   0.19%     0x00007f43df268958:   mov    %rsi,%r10
   0.04%     0x00007f43df26895b:   mov    %ebp,0x1c(%r10)
   0.43%     0x00007f43df26895f:   mov    %edi,0x18(%r10)
   0.16%     0x00007f43df268963:   mov    %r8d,0x14(%r10)
   0.24%     0x00007f43df268967:   mov    %r11d,0x10(%r10)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.08%     0x00007f43df26896b:   mov    0x1b8(%r15),%rsi
   0.12%     0x00007f43df268972:   mov    %r11d,0xa4(%rsp)
   0.13%     0x00007f43df26897a:   lea    0x10(%rsi),%r11
   0.09%     0x00007f43df26897e:   xchg   %ax,%ax
   0.04%     0x00007f43df268980:   cmp    0x1c8(%r15),%r11
             0x00007f43df268987:   ja     0x00007f43df268d57
   0.10%     0x00007f43df26898d:   mov    %r11,0x1b8(%r15)
   0.19%     0x00007f43df268994:   prefetchw 0xd0(%rsi)
   0.07%     0x00007f43df26899b:   movq   $0x1,(%rsi)
   0.36%     0x00007f43df2689a2:   movl   $0x10c4928,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector&apos;)}
   0.28%     0x00007f43df2689a9:   movl   $0x0,0xc(%rsi)
   0.22%     0x00007f43df2689b0:   mov    %rsi,%r11
   0.00%     0x00007f43df2689b3:   mov    %r8d,0xa0(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@62 (line 210)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.05%     0x00007f43df2689bb:   mov    0x1b8(%r15),%rsi
   0.14%     0x00007f43df2689c2:   lea    0x20(%rsi),%r8
   0.17%     0x00007f43df2689c6:   cmp    0x1c8(%r15),%r8
             0x00007f43df2689cd:   ja     0x00007f43df268dfe
   0.01%     0x00007f43df2689d3:   mov    %r8,0x1b8(%r15)
   0.10%     0x00007f43df2689da:   prefetchw 0xe0(%rsi)
   0.44%     0x00007f43df2689e1:   prefetchw 0x120(%rsi)
   0.11%     0x00007f43df2689e8:   prefetchw 0x160(%rsi)
   0.12%     0x00007f43df2689ef:   prefetchw 0x1a0(%rsi)
   0.17%     0x00007f43df2689f6:   movq   $0x1,(%rsi)
   0.50%     0x00007f43df2689fd:   movl   $0x26a0,0x8(%rsi)            ;   {metadata({type array int})}
   0.68%     0x00007f43df268a04:   movl   $0x4,0xc(%rsi)
   0.28%     0x00007f43df268a0b:   movq   $0x0,0x10(%rsi)
   0.22%     0x00007f43df268a13:   movq   $0x0,0x18(%rsi)
   0.19%     0x00007f43df268a1b:   mov    %rsi,%rcx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.04%     0x00007f43df268a1e:   mov    0x68(%rsp),%rbp
   0.04%     0x00007f43df268a23:   mov    0x1c(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.12%     0x00007f43df268a2a:   add    0x1c(%rbp),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.16%     0x00007f43df268a2d:   mov    %esi,0x1c(%rcx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.14%     0x00007f43df268a30:   mov    0x18(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.03%     0x00007f43df268a37:   add    0x18(%rbp),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007f43df268a3a:   mov    %esi,0x18(%rcx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.15%     0x00007f43df268a3d:   mov    0x14(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.08%     0x00007f43df268a44:   add    0x14(%rbp),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007f43df268a47:   mov    %esi,0x14(%rcx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.13%     0x00007f43df268a4a:   mov    0x10(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.10%     0x00007f43df268a51:   add    0x10(%rbp),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.08%     0x00007f43df268a54:   mov    %esi,0x10(%rcx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f43640d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.13%     0x00007f43df268a57:   mov    %r10,%rsi
   0.06%     0x00007f43df268a5a:   shr    $0x3,%rsi
   0.13%     0x00007f43df268a5e:   mov    %esi,0xc(%rbx)
   0.07%     0x00007f43df268a61:   mov    %rbx,%rsi
   0.10%     0x00007f43df268a64:   xor    %r10,%rsi
   0.06%     0x00007f43df268a67:   test   $0xffffffffffe00000,%rsi
             0x00007f43df268a6e:   je     0x00007f43df268bbd
             0x00007f43df268a74:   test   %r10,%r10
             0x00007f43df268a77:   je     0x00007f43df268c25
             0x00007f43df268a7d:   mov    0xf0(%rsp),%r8
             0x00007f43df268a85:   mov    %rbx,%rdi
             0x00007f43df268a88:   shr    $0x9,%rdi
             0x00007f43df268a8c:   cmpb   $0x2,(%rdi,%r8,1)
             0x00007f43df268a91:   jne    0x00007f43df268cce           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@2 (line 41)
....................................................................................................
  20.92%  <total for region 3>

....[Hottest Regions]...............................................................................
  34.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1278 
  26.89%      jvmci, level 4  jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1235 
  20.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1278 
   6.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1278 
   3.87%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1278 
   2.07%      jvmci, level 4  jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1235 
   1.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1278 
   0.77%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1278 
   0.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1278 
   0.49%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.07%        libc-2.31.so  __memset_avx2_erms 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%              kernel  [unknown] 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.03%              kernel  [unknown] 
   2.16%  <...other 530 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.89%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1278 
  28.97%      jvmci, level 4  jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1235 
   1.70%              kernel  [unknown] 
   0.17%                      <unknown> 
   0.08%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.07%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  G1CardSet::reset_table_scanner 
   0.05%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 5, compile id 1312 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.02%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.02%           libjvm.so  TypeArrayKlass::allocate_common 
   0.02%           libjvm.so  JVMCIRuntime::new_instance_common 
   0.76%  <...other 181 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.88%      jvmci, level 4
   1.70%              kernel
   0.88%           libjvm.so
   0.24%        libc-2.31.so
   0.17%                    
   0.04%  libpthread-2.31.so
   0.04%          ld-2.31.so
   0.02%              [vdso]
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-2129520.map
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 1024, vectorSize = 256)

# Run progress: 50.00% complete, ETA 00:11:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 457.380 us/op
# Warmup Iteration   2: 214.214 us/op
# Warmup Iteration   3: 213.431 us/op
# Warmup Iteration   4: 213.331 us/op
# Warmup Iteration   5: 213.317 us/op
Iteration   1: 213.273 us/op
Iteration   2: 213.371 us/op
Iteration   3: 213.347 us/op
Iteration   4: 213.316 us/op
Iteration   5: 213.291 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  213.319 ±(99.9%) 0.154 us/op [Average]
  (min, avg, max) = (213.273, 213.319, 213.371), stdev = 0.040
  CI (99.9%): [213.166, 213.473] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 301950 total address lines.
Perf output processed (skipped 60.293 seconds):
 Column 1: cycles (50532 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 

 <region is too big to display, has 1265 lines, but threshold is 1000>
....................................................................................................
  27.62%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1209 

                       # parm1:    rcx:rcx   = &apos;jdk/incubator/vector/AbstractMask$MBinOp&apos;
                       #           [sp+0x40]  (sp of caller)
                       0x00007f61b324b220:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                       0x00007f61b324b224:   movabs $0x7f6137000000,%r12
                       0x00007f61b324b22e:   add    %r12,%r10
                       0x00007f61b324b231:   xor    %r12,%r12
                       0x00007f61b324b234:   cmp    %r10,%rax
                       0x00007f61b324b237:   jne    0x00007f61b2c2f080           ;   {runtime_call ic_miss_stub}
                       0x00007f61b324b23d:   data16 xchg %ax,%ax
                     [Verified Entry Point]
   0.12%               0x00007f61b324b240:   mov    %eax,-0x14000(%rsp)
   0.28%               0x00007f61b324b247:   sub    $0x38,%rsp
   0.04%               0x00007f61b324b24b:   nop
   0.04%               0x00007f61b324b24c:   cmpl   $0x0,0x20(%r15)
   0.25%               0x00007f61b324b254:   jne    0x00007f61b324bae5
   0.02%               0x00007f61b324b25a:   mov    %rbp,0x30(%rsp)
   0.02%               0x00007f61b324b25f:   nop
   0.06%               0x00007f61b324b260:   test   %rdx,%rdx
                       0x00007f61b324b263:   je     0x00007f61b324b70d
   0.26%               0x00007f61b324b269:   mov    0x8(%rdx),%eax
   0.02%               0x00007f61b324b26c:   movabs $0x7f6137000000,%r10
   0.05%               0x00007f61b324b276:   lea    (%r10,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@17 (line 623)
   0.07%               0x00007f61b324b27a:   nopw   0x0(%rax,%rax,1)
   0.22%               0x00007f61b324b280:   test   %rdx,%rdx
          ╭            0x00007f61b324b283:   je     0x00007f61b324b29c
   0.01%  │            0x00007f61b324b289:   movabs $0x7f61380c5b80,%r10         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.05%  │            0x00007f61b324b293:   cmp    %rax,%r10
          │            0x00007f61b324b296:   jne    0x00007f61b324ba25           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                      ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.09%  ↘            0x00007f61b324b29c:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f61b324bb09
                                                                                 ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
                                                                                 ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                 ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.19%               0x00007f61b324b29e:   mov    0x8(%rcx),%eax               ; implicit exception: dispatches to 0x00007f61b324bb2d
   0.03%               0x00007f61b324b2a1:   mov    0xc(%rsi),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 622)
   0.05%               0x00007f61b324b2a5:   test   %r10d,%r10d
                       0x00007f61b324b2a8:   je     0x00007f61b324b719
   0.05%               0x00007f61b324b2ae:   mov    0x8(,%r10,8),%r11d
   0.31%               0x00007f61b324b2b6:   movabs $0x7f6137000000,%r8
   0.02%               0x00007f61b324b2c0:   lea    (%r8,%r11,1),%r11
   0.04%               0x00007f61b324b2c4:   movabs $0x7f6137001b00,%r8          ;   {metadata({type array bool})}
   0.06%               0x00007f61b324b2ce:   test   %r10d,%r10d
           ╭           0x00007f61b324b2d1:   je     0x00007f61b324b2e0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                     ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 606)
           │                                                                     ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 622)
   0.22%   │           0x00007f61b324b2d7:   cmp    %r11,%r8
           │           0x00007f61b324b2da:   jne    0x00007f61b324b8e2           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r10=NarrowOop }
           │                                                                     ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                                     ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.06%   ↘           0x00007f61b324b2e0:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f61b324bb50
   0.03%               0x00007f61b324b2e8:   test   %r11d,%r11d
                       0x00007f61b324b2eb:   je     0x00007f61b324b9dc           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.07%               0x00007f61b324b2f1:   mov    0xc(%rdx),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 623)
   0.24%               0x00007f61b324b2f5:   test   %r9d,%r9d
                       0x00007f61b324b2f8:   je     0x00007f61b324b725
   0.03%               0x00007f61b324b2fe:   mov    0x8(,%r9,8),%ebx
   0.07%               0x00007f61b324b306:   movabs $0x7f6137000000,%rdi
   0.08%               0x00007f61b324b310:   lea    (%rdi,%rbx,1),%rbx
   0.23%               0x00007f61b324b314:   test   %r9d,%r9d
            ╭          0x00007f61b324b317:   je     0x00007f61b324b329           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                                    ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 606)
            │                                                                    ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 623)
   0.03%    │          0x00007f61b324b31d:   data16 xchg %ax,%ax
   0.04%    │          0x00007f61b324b320:   cmp    %rbx,%r8
            │          0x00007f61b324b323:   jne    0x00007f61b324b96a           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop }
            │                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                                    ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.08%    ↘          0x00007f61b324b329:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f61b324bb73
   0.22%               0x00007f61b324b331:   test   %ebx,%ebx
                       0x00007f61b324b333:   je     0x00007f61b324b98e
   0.03%               0x00007f61b324b339:   movzbl 0x10(,%r9,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.04%               0x00007f61b324b342:   movzbl 0x10(,%r10,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.09%               0x00007f61b324b34b:   movabs $0x7f6137000000,%r13
   0.18%               0x00007f61b324b355:   lea    0x0(%r13,%rax,1),%rax
   0.04%               0x00007f61b324b35a:   cmp    -0x161(%rip),%rax        # 0x00007f61b324b200
                                                                                 ;   {section_word}
   0.05%     ╭         0x00007f61b324b361:   je     0x00007f61b324b379
   0.01%     │         0x00007f61b324b367:   cmp    -0x166(%rip),%rax        # 0x00007f61b324b208
             │                                                                   ;   {section_word}
   0.10%     │         0x00007f61b324b36e:   je     0x00007f61b324b6d1
             │         0x00007f61b324b374:   jmp    0x00007f61b324ba77
   0.06%     ↘         0x00007f61b324b379:   and    %edi,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.27%               0x00007f61b324b37b:   mov    %r9d,%edi
   0.00%               0x00007f61b324b37e:   shl    $0x3,%rdi                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 623)
   0.01%               0x00007f61b324b382:   mov    %r10d,%r13d
   0.09%               0x00007f61b324b385:   shl    $0x3,%r13                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 622)
   0.30%               0x00007f61b324b389:   cmp    $0x2,%r11d
                       0x00007f61b324b38d:   jb     0x00007f61b324b854           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.00%               0x00007f61b324b393:   cmp    $0x2,%ebx
                       0x00007f61b324b396:   jb     0x00007f61b324b7cc
   0.02%               0x00007f61b324b39c:   movzbl 0x11(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.09%               0x00007f61b324b3a5:   movzbl 0x11(,%r10,8),%edx
   0.28%               0x00007f61b324b3ae:   cmp    -0x1b5(%rip),%rax        # 0x00007f61b324b200
                                                                                 ;   {section_word}
   0.00%      ╭        0x00007f61b324b3b5:   je     0x00007f61b324b3cd
   0.00%      │        0x00007f61b324b3bb:   cmp    -0x1ba(%rip),%rax        # 0x00007f61b324b208
              │                                                                  ;   {section_word}
   0.01%      │        0x00007f61b324b3c2:   je     0x00007f61b324b6fd
              │        0x00007f61b324b3c8:   jmp    0x00007f61b324ba89
   0.02%      ↘        0x00007f61b324b3cd:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.25%               0x00007f61b324b3cf:   mov    %edx,%r14d
   0.09%               0x00007f61b324b3d2:   cmp    $0x3,%r11d
                       0x00007f61b324b3d6:   jb     0x00007f61b324ba65           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.00%               0x00007f61b324b3dc:   nopl   0x0(%rax)
   0.01%               0x00007f61b324b3e0:   cmp    $0x3,%ebx
                       0x00007f61b324b3e3:   jb     0x00007f61b324bad1
   0.24%               0x00007f61b324b3e9:   movzbl 0x12(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.08%               0x00007f61b324b3f2:   movzbl 0x12(,%r10,8),%edx
   0.02%               0x00007f61b324b3fb:   cmp    -0x202(%rip),%rax        # 0x00007f61b324b200
                                                                                 ;   {section_word}
   0.02%       ╭       0x00007f61b324b402:   je     0x00007f61b324b41a
   0.15%       │       0x00007f61b324b408:   cmp    -0x207(%rip),%rax        # 0x00007f61b324b208
               │                                                                 ;   {section_word}
               │       0x00007f61b324b40f:   je     0x00007f61b324b6e6
               │       0x00007f61b324b415:   jmp    0x00007f61b324b90f
   0.04%       ↘       0x00007f61b324b41a:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.35%               0x00007f61b324b41c:   nopl   0x0(%rax)
   0.00%               0x00007f61b324b420:   cmp    $0x4,%r11d
                       0x00007f61b324b424:   jb     0x00007f61b324b946           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.02%               0x00007f61b324b42a:   cmp    $0x4,%ebx
                       0x00007f61b324b42d:   jb     0x00007f61b324baad
   0.07%               0x00007f61b324b433:   mov    %rcx,0x18(%rsp)
   0.30%               0x00007f61b324b438:   movzbl 0x13(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.00%               0x00007f61b324b441:   movzbl 0x13(,%r10,8),%ecx
   0.01%               0x00007f61b324b44a:   cmp    -0x251(%rip),%rax        # 0x00007f61b324b200
                                                                                 ;   {section_word}
   0.05%        ╭      0x00007f61b324b451:   je     0x00007f61b324b46b
   0.18%        │      0x00007f61b324b457:   cmp    -0x256(%rip),%rax        # 0x00007f61b324b208
                │                                                                ;   {section_word}
   0.00%        │      0x00007f61b324b45e:   xchg   %ax,%ax
   0.00%        │      0x00007f61b324b460:   je     0x00007f61b324b6df
                │      0x00007f61b324b466:   jmp    0x00007f61b324b8ad
   0.10%        ↘      0x00007f61b324b46b:   and    %esi,%ecx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.04%               0x00007f61b324b46d:   cmp    $0x5,%r11d
                       0x00007f61b324b471:   jb     0x00007f61b324b891           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.01%               0x00007f61b324b477:   cmp    $0x5,%ebx
                       0x00007f61b324b47a:   jb     0x00007f61b324ba05
   0.06%               0x00007f61b324b480:   mov    %rdi,0x8(%rsp)
   0.35%               0x00007f61b324b485:   movzbl 0x14(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.02%               0x00007f61b324b48e:   movzbl 0x14(,%r10,8),%edi
   0.02%               0x00007f61b324b497:   cmp    -0x29e(%rip),%rax        # 0x00007f61b324b200
                                                                                 ;   {section_word}
   0.08%               0x00007f61b324b49e:   xchg   %ax,%ax
   0.27%         ╭     0x00007f61b324b4a0:   je     0x00007f61b324b4b8
   0.03%         │     0x00007f61b324b4a6:   cmp    -0x2a5(%rip),%rax        # 0x00007f61b324b208
                 │                                                               ;   {section_word}
   0.02%         │     0x00007f61b324b4ad:   je     0x00007f61b324b6d8
                 │     0x00007f61b324b4b3:   jmp    0x00007f61b324b824
   0.03%         ↘     0x00007f61b324b4b8:   and    %esi,%edi                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.08%               0x00007f61b324b4ba:   nopw   0x0(%rax,%rax,1)
   0.04%               0x00007f61b324b4c0:   cmp    $0x6,%r11d
                       0x00007f61b324b4c4:   jb     0x00007f61b324ba37           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.11%               0x00007f61b324b4ca:   cmp    $0x6,%ebx
                       0x00007f61b324b4cd:   jb     0x00007f61b324b7f4
   0.16%               0x00007f61b324b4d3:   mov    %r13,0x10(%rsp)
   0.16%               0x00007f61b324b4d8:   movzbl 0x15(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.02%               0x00007f61b324b4e1:   movzbl 0x15(,%r10,8),%r13d
   0.13%               0x00007f61b324b4ea:   cmp    -0x2f1(%rip),%rax        # 0x00007f61b324b200
                                                                                 ;   {section_word}
   0.17%          ╭    0x00007f61b324b4f1:   je     0x00007f61b324b50b
   0.07%          │    0x00007f61b324b4f7:   cmp    -0x2f6(%rip),%rax        # 0x00007f61b324b208
                  │                                                              ;   {section_word}
   0.01%          │    0x00007f61b324b4fe:   xchg   %ax,%ax
                  │    0x00007f61b324b500:   je     0x00007f61b324b705
                  │    0x00007f61b324b506:   jmp    0x00007f61b324b9ee
   0.07%          ↘    0x00007f61b324b50b:   and    %esi,%r13d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.17%               0x00007f61b324b50e:   cmp    $0x7,%r11d
                       0x00007f61b324b512:   jb     0x00007f61b324b9cd           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.10%               0x00007f61b324b518:   nopl   0x0(%rax,%rax,1)
   0.02%               0x00007f61b324b520:   cmp    $0x7,%ebx
                       0x00007f61b324b523:   jb     0x00007f61b324ba9b
   0.08%               0x00007f61b324b529:   mov    %r8,0x20(%rsp)
   0.29%               0x00007f61b324b52e:   movzbl 0x16(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.07%               0x00007f61b324b537:   movzbl 0x16(,%r10,8),%r8d
   0.03%               0x00007f61b324b540:   cmp    -0x347(%rip),%rax        # 0x00007f61b324b200
                                                                                 ;   {section_word}
   0.09%           ╭   0x00007f61b324b547:   je     0x00007f61b324b55f
   0.17%           │   0x00007f61b324b54d:   cmp    -0x34c(%rip),%rax        # 0x00007f61b324b208
                   │                                                             ;   {section_word}
   0.02%           │   0x00007f61b324b554:   je     0x00007f61b324b6f5
                   │   0x00007f61b324b55a:   jmp    0x00007f61b324b9a0
   0.10%           ↘   0x00007f61b324b55f:   and    %esi,%r8d                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.22%               0x00007f61b324b562:   cmp    $0x8,%r11d
                       0x00007f61b324b566:   jb     0x00007f61b324b97c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.00%               0x00007f61b324b56c:   cmp    $0x8,%ebx
                       0x00007f61b324b56f:   jb     0x00007f61b324ba51
   0.04%               0x00007f61b324b575:   movzbl 0x17(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.18%               0x00007f61b324b57e:   movzbl 0x17(,%r10,8),%r10d
   0.19%               0x00007f61b324b587:   cmp    -0x38e(%rip),%rax        # 0x00007f61b324b200
                                                                                 ;   {section_word}
   0.02%            ╭  0x00007f61b324b58e:   je     0x00007f61b324b5ab
   0.03%            │  0x00007f61b324b594:   cmp    -0x393(%rip),%rax        # 0x00007f61b324b208
                    │                                                            ;   {section_word}
   0.02%            │  0x00007f61b324b59b:   nopl   0x0(%rax,%rax,1)
   0.13%            │  0x00007f61b324b5a0:   je     0x00007f61b324b6ed
                    │  0x00007f61b324b5a6:   jmp    0x00007f61b324b866
   0.03%            ↘  0x00007f61b324b5ab:   and    %esi,%r10d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.30%               0x00007f61b324b5ae:   mov    0x1b8(%r15),%rsi
   0.07%               0x00007f61b324b5b5:   lea    0x10(%rsi),%rax
   0.01%               0x00007f61b324b5b9:   nopl   0x0(%rax)
   0.06%               0x00007f61b324b5c0:   cmp    0x1c8(%r15),%rax
                       0x00007f61b324b5c7:   ja     0x00007f61b324b776
   0.23%               0x00007f61b324b5cd:   mov    %rax,0x1b8(%r15)
   0.17%               0x00007f61b324b5d4:   prefetchw 0xd0(%rsi)
   0.44%               0x00007f61b324b5db:   movq   $0x1,(%rsi)
   0.74%               0x00007f61b324b5e2:   movl   $0x10c5b80,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.25%               0x00007f61b324b5e9:   movl   $0x0,0xc(%rsi)
   0.16%               0x00007f61b324b5f0:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@63 (line 627)
   0.01%               0x00007f61b324b5f3:   mov    0x1b8(%r15),%rsi
   0.37%               0x00007f61b324b5fa:   lea    0x18(%rsi),%rax
   0.29%               0x00007f61b324b5fe:   xchg   %ax,%ax
   0.00%               0x00007f61b324b600:   cmp    0x1c8(%r15),%rax
                       0x00007f61b324b607:   ja     0x00007f61b324b797
   0.30%               0x00007f61b324b60d:   mov    %rax,0x1b8(%r15)
   0.31%               0x00007f61b324b614:   prefetchw 0xd8(%rsi)
   0.76%               0x00007f61b324b61b:   prefetchw 0x118(%rsi)
   0.12%               0x00007f61b324b622:   prefetchw 0x158(%rsi)
   0.21%               0x00007f61b324b629:   prefetchw 0x198(%rsi)
   0.25%               0x00007f61b324b630:   movq   $0x1,(%rsi)
   1.30%               0x00007f61b324b637:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.46%               0x00007f61b324b63e:   movl   $0x8,0xc(%rsi)
   0.25%               0x00007f61b324b645:   movq   $0x0,0x10(%rsi)
   0.25%               0x00007f61b324b64d:   mov    %r10b,0x17(%rsi)
   0.20%               0x00007f61b324b651:   mov    %r8b,0x16(%rsi)
   0.11%               0x00007f61b324b655:   mov    %r13b,0x15(%rsi)
   0.14%               0x00007f61b324b659:   mov    %dil,0x14(%rsi)
   0.19%               0x00007f61b324b65d:   mov    %cl,0x13(%rsi)
   0.32%               0x00007f61b324b660:   mov    %dl,0x12(%rsi)
   0.10%               0x00007f61b324b663:   mov    %r14b,0x11(%rsi)
   0.19%               0x00007f61b324b667:   mov    %bpl,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 582)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 574)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 570)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 627)
   0.07%               0x00007f61b324b66b:   mov    %rsi,%rax
   0.06%               0x00007f61b324b66e:   shr    $0x3,%rax
   0.04%               0x00007f61b324b672:   mov    %eax,0xc(%r11)
   0.17%               0x00007f61b324b676:   mov    %r11,%rax
   0.06%               0x00007f61b324b679:   xor    %rsi,%rax
   0.07%               0x00007f61b324b67c:   nopl   0x0(%rax)
   0.04%               0x00007f61b324b680:   test   $0xffffffffffe00000,%rax
                       0x00007f61b324b687:   je     0x00007f61b324b6b2
                       0x00007f61b324b68d:   test   %rsi,%rsi
                       0x00007f61b324b690:   je     0x00007f61b324b6b2
                       0x00007f61b324b696:   mov    %r11,%r10
                       0x00007f61b324b699:   shr    $0x9,%r10
                       0x00007f61b324b69d:   movabs $0x7f61c5762000,%r8
                       0x00007f61b324b6a7:   cmpb   $0x2,(%r10,%r8,1)
                       0x00007f61b324b6ac:   jne    0x00007f61b324b731           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@63 (line 627)
   0.19%               0x00007f61b324b6b2:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  20.50%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 

                                                                       ; - jdk.incubator.vector.IntVector::maskFactory@5 (line 116)
                                                                       ; - jdk.incubator.vector.IntVector::bTest@68 (line 478)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$59@9 (line 2034)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d1ef8::apply@14
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                       ; - jdk.incubator.vector.IntVector::compareTemplate@42 (line 2029)
                                                                       ; - jdk.incubator.vector.Int256Vector::compare@5 (line 384)
                                                                       ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lt@5 (line 1933)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@129 (line 86)
   0.11%     0x00007f61b3273af6:   mov    %r8,%rsi
             0x00007f61b3273af9:   mov    %r11,%rdx
   0.02%     0x00007f61b3273afc:   mov    0x60(%rsp),%rcx              ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@7 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.09%     0x00007f61b3273b01:   mov    %r11,0x28(%rsp)
   0.10%     0x00007f61b3273b06:   mov    %r8,0x20(%rsp)
             0x00007f61b3273b0b:   call   0x00007f61b324b240           ; ImmutableOopMap {[32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [120]=Oop [132]=NarrowOop [136]=Oop }
                                                                       ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@7 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
                                                                       ;   {optimized virtual_call}
   0.05%     0x00007f61b3273b10:   nopl   0xa001880(%rax,%rax,1)       ;   {other}
   0.02%     0x00007f61b3273b18:   mov    %rax,%r10                    ; ImmutableOopMap {r10=Oop [32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [120]=Oop [132]=NarrowOop [136]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@10 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.07%     0x00007f61b3273b1b:   test   %eax,(%r10)                  ; implicit exception: dispatches to 0x00007f61b3275919
   0.02%     0x00007f61b3273b1e:   mov    0x40(%rsp),%r8
   0.06%     0x00007f61b3273b23:   mov    0xc(%r8),%esi                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.10%     0x00007f61b3273b27:   test   %esi,%esi
             0x00007f61b3273b29:   je     0x00007f61b3274251
   0.02%     0x00007f61b3273b2f:   mov    0x8(,%rsi,8),%eax
   0.09%     0x00007f61b3273b36:   movabs $0x7f6137000000,%rdx
   0.02%     0x00007f61b3273b40:   lea    (%rdx,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@20 (line 227)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.11%     0x00007f61b3273b44:   test   %esi,%esi
             0x00007f61b3273b46:   je     0x00007f61b32740d6
   0.00%     0x00007f61b3273b4c:   mov    0x150(%rsp),%r13
   0.04%     0x00007f61b3273b54:   cmp    %rax,%r13
             0x00007f61b3273b57:   jne    0x00007f61b327543b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.06%     0x00007f61b3273b5d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rsi=NarrowOop r8=Oop r10=Oop [32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [120]=Oop [132]=NarrowOop [136]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@10 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.06%     0x00007f61b3273b60:   cmpl   $0x8,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f61b327593c
   0.06%     0x00007f61b3273b68:   jb     0x00007f61b3274fe5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.08%     0x00007f61b3273b6e:   mov    0xc(%r10),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.05%     0x00007f61b3273b72:   test   %eax,%eax
             0x00007f61b3273b74:   je     0x00007f61b3274205
   0.00%     0x00007f61b3273b7a:   mov    0x8(,%rax,8),%edx
   0.04%     0x00007f61b3273b81:   movabs $0x7f6137000000,%rcx
   0.09%     0x00007f61b3273b8b:   lea    (%rcx,%rdx,1),%rdx
   0.06%     0x00007f61b3273b8f:   test   %eax,%eax
             0x00007f61b3273b91:   je     0x00007f61b32740e5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 606)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.01%     0x00007f61b3273b97:   mov    0x110(%rsp),%rcx
   0.03%     0x00007f61b3273b9f:   nop
   0.08%     0x00007f61b3273ba0:   cmp    %rdx,%rcx
             0x00007f61b3273ba3:   jne    0x00007f61b327566c           ; ImmutableOopMap {rax=NarrowOop rsi=NarrowOop r8=Oop r10=Oop [32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [120]=Oop [132]=NarrowOop [136]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@10 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.06%     0x00007f61b3273ba9:   cmpl   $0x8,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f61b327595f
   0.05%     0x00007f61b3273bb1:   jb     0x00007f61b3275105           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007f61380d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.09%     0x00007f61b3273bb7:   nopw   0x0(%rax,%rax,1)
   0.06%     0x00007f61b3273bc0:   cmpb   $0x0,0x10(,%rax,8)
   0.04%     0x00007f61b3273bc8:   jne    0x00007f61b32741a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.10%     0x00007f61b3273bce:   mov    0x10(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.07%     0x00007f61b3273bd5:   mov    %edx,0xa0(%rsp)
   0.01%     0x00007f61b3273bdc:   mov    0x38(%rsp),%r14              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.04%     0x00007f61b3273be1:   cmpb   $0x0,0x11(,%rax,8)
   0.14%     0x00007f61b3273be9:   jne    0x00007f61b32741b5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.05%     0x00007f61b3273bef:   mov    0x14(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.08%     0x00007f61b3273bf6:   mov    %edx,%r9d
   0.06%     0x00007f61b3273bf9:   nopl   0x0(%rax)
   0.04%     0x00007f61b3273c00:   cmpb   $0x0,0x12(,%rax,8)
   0.13%     0x00007f61b3273c08:   jne    0x00007f61b3274197           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.06%     0x00007f61b3273c0e:   mov    0x18(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
                                                                       ;   {no_reloc}
   0.06%     0x00007f61b3273c15:   mov    %edx,%ebx
   0.02%     0x00007f61b3273c17:   nopw   0x0(%rax,%rax,1)
   0.04%     0x00007f61b3273c20:   cmpb   $0x0,0x13(,%rax,8)
   0.21%     0x00007f61b3273c28:   jne    0x00007f61b327418e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.09%     0x00007f61b3273c2e:   mov    0x1c(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.04%     0x00007f61b3273c35:   mov    %edx,%edi
   0.04%     0x00007f61b3273c37:   nopw   0x0(%rax,%rax,1)
   0.04%     0x00007f61b3273c40:   cmpb   $0x0,0x14(,%rax,8)
   0.19%     0x00007f61b3273c48:   jne    0x00007f61b327417c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.09%     0x00007f61b3273c4e:   mov    0x20(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.03%     0x00007f61b3273c55:   mov    %edx,%ebp
   0.04%     0x00007f61b3273c57:   nopw   0x0(%rax,%rax,1)
   0.03%     0x00007f61b3273c60:   cmpb   $0x0,0x15(,%rax,8)
   0.24%     0x00007f61b3273c68:   jne    0x00007f61b3274185           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.14%     0x00007f61b3273c6e:   mov    0x24(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.09%     0x00007f61b3273c75:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.03%     0x00007f61b3273c80:   cmpb   $0x0,0x16(,%rax,8)
   0.16%     0x00007f61b3273c88:   jne    0x00007f61b3274165           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.11%     0x00007f61b3273c8e:   mov    %r10,0x18(%rsp)
   0.02%     0x00007f61b3273c93:   mov    0x28(,%rsi,8),%r10d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.03%     0x00007f61b3273c9b:   nopl   0x0(%rax,%rax,1)
   0.03%     0x00007f61b3273ca0:   cmpb   $0x0,0x17(,%rax,8)
   0.14%     0x00007f61b3273ca8:   jne    0x00007f61b3274173           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.09%     0x00007f61b3273cae:   mov    0x2c(,%rsi,8),%r8d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.05%     0x00007f61b3273cb6:   mov    %r8d,%r14d
   0.04%     0x00007f61b3273cb9:   mov    0x48(%rsp),%r8
   0.01%     0x00007f61b3273cbe:   mov    0xc(%r8),%ecx                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.30%     0x00007f61b3273cc2:   test   %ecx,%ecx
             0x00007f61b3273cc4:   je     0x00007f61b32741f9
   0.13%     0x00007f61b3273cca:   mov    0x8(,%rcx,8),%r8d
   0.61%     0x00007f61b3273cd2:   movabs $0x7f6137000000,%r11
             0x00007f61b3273cdc:   lea    (%r11,%r8,1),%r8             ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.17%     0x00007f61b3273ce0:   mov    %esi,%r11d
   0.00%     0x00007f61b3273ce3:   shl    $0x3,%r11                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007f61b3273ce7:   shl    $0x3,%rax                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007f61b3273ceb:   test   %ecx,%ecx
          ╭  0x00007f61b3273ced:   je     0x00007f61b3273cfc
   0.17%  │  0x00007f61b3273cf3:   cmp    %r8,%r13
          │  0x00007f61b3273cf6:   jne    0x00007f61b3275269           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
          │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
          │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
          │                                                            ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
          │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
          │                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
          │                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.00%  ↘  0x00007f61b3273cfc:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop r11=Oop [24]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [120]=Oop [132]=NarrowOop [136]=Oop }
                                                                       ;*iastore {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007f61b3273d00:   cmpl   $0x8,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f61b3275982
   0.15%     0x00007f61b3273d08:   jb     0x00007f61b32755ef           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007f61b3273d0e:   mov    0x1b8(%r15),%rsi             ;   {no_reloc}
   0.00%     0x00007f61b3273d15:   lea    0x10(%rsi),%r8
   0.00%     0x00007f61b3273d19:   nopl   0x0(%rax)
   0.17%     0x00007f61b3273d20:   cmp    0x1c8(%r15),%r8
             0x00007f61b3273d27:   ja     0x00007f61b327461c
   0.01%     0x00007f61b3273d2d:   mov    %r8,0x1b8(%r15)
             0x00007f61b3273d34:   prefetchw 0xd0(%rsi)
   0.01%     0x00007f61b3273d3b:   movq   $0x1,(%rsi)
   0.20%     0x00007f61b3273d42:   movl   $0x10c5500,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.52%     0x00007f61b3273d49:   movl   $0x0,0xc(%rsi)
   0.01%     0x00007f61b3273d50:   mov    %rsi,%r8
             0x00007f61b3273d53:   mov    %r11,0x10(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@102 (line 233)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.01%     0x00007f61b3273d58:   mov    0x1b8(%r15),%rsi
   0.20%     0x00007f61b3273d5f:   lea    0x30(%rsi),%r11
   0.01%     0x00007f61b3273d63:   cmp    0x1c8(%r15),%r11
             0x00007f61b3273d6a:   ja     0x00007f61b3274374
   0.02%     0x00007f61b3273d70:   mov    %r11,0x1b8(%r15)
   0.07%     0x00007f61b3273d77:   prefetchw 0xf0(%rsi)
   0.25%     0x00007f61b3273d7e:   prefetchw 0x130(%rsi)
   0.01%     0x00007f61b3273d85:   prefetchw 0x170(%rsi)
   0.04%     0x00007f61b3273d8c:   prefetchw 0x1b0(%rsi)
   0.09%     0x00007f61b3273d93:   movq   $0x1,(%rsi)
   0.67%     0x00007f61b3273d9a:   movl   $0x26a0,0x8(%rsi)            ;   {metadata({type array int})}
   0.02%     0x00007f61b3273da1:   movl   $0x8,0xc(%rsi)
   0.18%     0x00007f61b3273da8:   movq   $0x0,0x10(%rsi)
   0.01%     0x00007f61b3273db0:   movq   $0x0,0x18(%rsi)
   0.11%     0x00007f61b3273db8:   movq   $0x0,0x20(%rsi)
   0.15%     0x00007f61b3273dc0:   movq   $0x0,0x28(%rsi)
   0.16%     0x00007f61b3273dc8:   mov    %rsi,%r11
   0.00%     0x00007f61b3273dcb:   mov    0xa0(%rsp),%esi
   0.03%     0x00007f61b3273dd2:   mov    %r14d,0x2c(%r11)
   0.11%     0x00007f61b3273dd6:   mov    %r10d,0x28(%r11)
   0.16%     0x00007f61b3273dda:   mov    %edx,0x24(%r11)
   0.07%     0x00007f61b3273dde:   mov    %ebp,0x20(%r11)
   0.09%     0x00007f61b3273de2:   mov    %edi,0x1c(%r11)
   0.14%     0x00007f61b3273de6:   mov    %ebx,0x18(%r11)
   0.13%     0x00007f61b3273dea:   mov    %r9d,0x14(%r11)
   0.16%     0x00007f61b3273dee:   mov    %esi,0x10(%r11)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.15%     0x00007f61b3273df2:   mov    %r10d,0xa4(%rsp)
   0.14%     0x00007f61b3273dfa:   mov    0x1b8(%r15),%r10
   0.04%     0x00007f61b3273e01:   mov    %r9d,0xb8(%rsp)
   0.16%     0x00007f61b3273e09:   lea    0x10(%r10),%r9
   0.05%     0x00007f61b3273e0d:   cmp    0x1c8(%r15),%r9
             0x00007f61b3273e14:   ja     0x00007f61b32745cb
   0.01%     0x00007f61b3273e1a:   mov    %r9,0x1b8(%r15)
   0.12%     0x00007f61b3273e21:   prefetchw 0xd0(%r10)
   0.01%     0x00007f61b3273e29:   movq   $0x1,(%r10)
   0.15%     0x00007f61b3273e30:   movl   $0x10c5500,0x8(%r10)         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.17%     0x00007f61b3273e38:   movl   $0x0,0xc(%r10)
   0.19%     0x00007f61b3273e40:   mov    %ebx,0x90(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@62 (line 210)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.19%     0x00007f61b3273e47:   mov    0x1b8(%r15),%r9
   0.03%     0x00007f61b3273e4e:   lea    0x30(%r9),%rbx
   0.00%     0x00007f61b3273e52:   cmp    0x1c8(%r15),%rbx
             0x00007f61b3273e59:   ja     0x00007f61b3274580
   0.02%     0x00007f61b3273e5f:   mov    %rbx,0x1b8(%r15)
   0.16%     0x00007f61b3273e66:   prefetchw 0xf0(%r9)
   0.05%     0x00007f61b3273e6e:   prefetchw 0x130(%r9)
   0.01%     0x00007f61b3273e76:   prefetchw 0x170(%r9)
   0.08%     0x00007f61b3273e7e:   prefetchw 0x1b0(%r9)
   0.24%     0x00007f61b3273e86:   movq   $0x1,(%r9)
   0.84%     0x00007f61b3273e8d:   movl   $0x26a0,0x8(%r9)             ;   {metadata({type array int})}
   0.02%     0x00007f61b3273e95:   movl   $0x8,0xc(%r9)
   0.14%     0x00007f61b3273e9d:   movq   $0x0,0x10(%r9)
   0.03%     0x00007f61b3273ea5:   movq   $0x0,0x18(%r9)
   0.12%     0x00007f61b3273ead:   movq   $0x0,0x20(%r9)
   0.03%     0x00007f61b3273eb5:   movq   $0x0,0x28(%r9)
   0.12%     0x00007f61b3273ebd:   mov    %r9,%rdi
             0x00007f61b3273ec0:   mov    0x68(%rsp),%r9               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007f61b3273ec5:   mov    0x2c(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007f61b3273ecc:   add    0x2c(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.10%     0x00007f61b3273ed0:   mov    %esi,0x2c(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.03%     0x00007f61b3273ed3:   mov    0x28(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007f61b3273eda:   add    0x28(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007f61b3273ede:   mov    %esi,0x28(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.10%     0x00007f61b3273ee1:   mov    0x24(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007f61b3273ee8:   add    0x24(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007f61b3273eec:   mov    %esi,0x24(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007f61b3273eef:   mov    0x20(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.08%     0x00007f61b3273ef6:   add    0x20(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007f61b3273efa:   mov    %esi,0x20(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007f61b3273efd:   mov    0x1c(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007f61b3273f04:   add    0x1c(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007f61b3273f08:   mov    %esi,0x1c(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.04%     0x00007f61b3273f0b:   mov    0x18(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.06%     0x00007f61b3273f12:   add    0x18(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007f61b3273f16:   mov    %esi,0x18(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.10%     0x00007f61b3273f19:   mov    0x14(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007f61b3273f20:   add    0x14(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007f61b3273f24:   mov    %esi,0x14(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.06%     0x00007f61b3273f27:   mov    0x10(,%rcx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.04%     0x00007f61b3273f2e:   add    0x10(%r9),%esi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007f61b3273f32:   mov    %esi,0x10(%rdi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f61380d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.12%     0x00007f61b3273f35:   mov    %r11,%rsi
   0.01%     0x00007f61b3273f38:   shr    $0x3,%rsi
   0.03%     0x00007f61b3273f3c:   mov    %esi,0xc(%r8)
   0.06%     0x00007f61b3273f40:   mov    %r8,%rsi
   0.03%     0x00007f61b3273f43:   xor    %r11,%rsi
   0.00%     0x00007f61b3273f46:   test   $0xffffffffffe00000,%rsi
             0x00007f61b3273f4d:   je     0x00007f61b327425d
             0x00007f61b3273f53:   test   %r11,%r11
             0x00007f61b3273f56:   je     0x00007f61b32742aa
             0x00007f61b3273f5c:   mov    0x120(%rsp),%rbx
             0x00007f61b3273f64:   mov    %r8,%rcx
             0x00007f61b3273f67:   shr    $0x9,%rcx
             0x00007f61b3273f6b:   cmpb   $0x2,(%rcx,%rbx,1)
             0x00007f61b3273f6f:   jne    0x00007f61b3274320           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
....................................................................................................
  14.71%  <total for region 3>

....[Hottest Regions]...............................................................................
  27.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
  20.50%       jvmci, level 4  jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1209 
  14.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   7.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   7.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   6.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   4.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   2.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   1.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   1.92%       jvmci, level 4  jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1209 
   0.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   0.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   0.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   0.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   2.12%  <...other 537 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1285 
  22.42%       jvmci, level 4  jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1209 
   1.40%               kernel  [unknown] 
   0.14%                       <unknown> 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 4, compile id 1315 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%         libc-2.31.so  __memset_avx2_erms 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  G1FromCardCache::clear 
   0.01%            libjvm.so  G1CardSet::clear 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  HeapRegionClaimer::claim_region 
   0.01%            libjvm.so  oopFactory::new_typeArray 
   0.01%            libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  G1CardSetMemoryManager::memory_stats 
   0.56%  <...other 180 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.63%       jvmci, level 4
   1.40%               kernel
   0.56%            libjvm.so
   0.15%         libc-2.31.so
   0.14%                     
   0.06%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.02%               [vdso]
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%     perf-2129583.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 1024, vectorSize = 512)

# Run progress: 58.33% complete, ETA 00:09:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1705.218 us/op
# Warmup Iteration   2: 386.168 us/op
# Warmup Iteration   3: 386.122 us/op
# Warmup Iteration   4: 385.083 us/op
# Warmup Iteration   5: 384.928 us/op
Iteration   1: 384.927 us/op
Iteration   2: 384.877 us/op
Iteration   3: 384.805 us/op
Iteration   4: 384.836 us/op
Iteration   5: 384.797 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  384.848 ±(99.9%) 0.208 us/op [Average]
  (min, avg, max) = (384.797, 384.848, 384.927), stdev = 0.054
  CI (99.9%): [384.640, 385.057] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 335899 total address lines.
Perf output processed (skipped 60.647 seconds):
 Column 1: cycles (51218 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 

 <region is too big to display, has 1910 lines, but threshold is 1000>
....................................................................................................
  34.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1168 

               # parm1:    rcx:rcx   = &apos;jdk/incubator/vector/AbstractMask$MBinOp&apos;
               #           [sp+0x60]  (sp of caller)
               0x00007fd9fb24d080:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
               0x00007fd9fb24d084:   movabs $0x7fd97f000000,%r12
               0x00007fd9fb24d08e:   add    %r12,%r10
               0x00007fd9fb24d091:   xor    %r12,%r12
               0x00007fd9fb24d094:   cmp    %r10,%rax
               0x00007fd9fb24d097:   jne    0x00007fd9fac2f080           ;   {runtime_call ic_miss_stub}
               0x00007fd9fb24d09d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.21%       0x00007fd9fb24d0a0:   mov    %eax,-0x14000(%rsp)
   0.09%       0x00007fd9fb24d0a7:   sub    $0x58,%rsp
   0.04%       0x00007fd9fb24d0ab:   nop
   0.09%       0x00007fd9fb24d0ac:   cmpl   $0x0,0x20(%r15)
   0.01%       0x00007fd9fb24d0b4:   jne    0x00007fd9fb24dee5
   0.06%       0x00007fd9fb24d0ba:   mov    %rbp,0x50(%rsp)
   0.06%       0x00007fd9fb24d0bf:   nop
   0.13%       0x00007fd9fb24d0c0:   test   %rdx,%rdx
               0x00007fd9fb24d0c3:   je     0x00007fd9fb24d80d
   0.01%       0x00007fd9fb24d0c9:   mov    0x8(%rdx),%eax
   0.08%       0x00007fd9fb24d0cc:   movabs $0x7fd97f000000,%r10
   0.05%       0x00007fd9fb24d0d6:   lea    (%r10,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@17 (line 639)
   0.09%       0x00007fd9fb24d0da:   nopw   0x0(%rax,%rax,1)
   0.00%       0x00007fd9fb24d0e0:   test   %rdx,%rdx
          ╭    0x00007fd9fb24d0e3:   je     0x00007fd9fb24d0fc
   0.05%  │    0x00007fd9fb24d0e9:   movabs $0x7fd9800c6758,%r10         ;   {metadata(&apos;jdk/incubator/vector/Int512Vector$Int512Mask&apos;)}
   0.04%  │    0x00007fd9fb24d0f3:   cmp    %rax,%r10
          │    0x00007fd9fb24d0f6:   jne    0x00007fd9fb24dd0c           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.10%  ↘    0x00007fd9fb24d0fc:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007fd9fb24df09
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.01%       0x00007fd9fb24d0fe:   mov    0x8(%rcx),%eax               ; implicit exception: dispatches to 0x00007fd9fb24df2d
   0.05%       0x00007fd9fb24d101:   mov    0xc(%rsi),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@11 (line 638)
   0.05%       0x00007fd9fb24d105:   test   %r10d,%r10d
               0x00007fd9fb24d108:   je     0x00007fd9fb24d825
   0.09%       0x00007fd9fb24d10e:   mov    0x8(,%r10,8),%r11d
   0.05%       0x00007fd9fb24d116:   movabs $0x7fd97f000000,%r8
   0.04%       0x00007fd9fb24d120:   lea    (%r8,%r11,1),%r11
   0.05%       0x00007fd9fb24d124:   movabs $0x7fd97f001b00,%r8          ;   {metadata({type array bool})}
   0.10%       0x00007fd9fb24d12e:   test   %r10d,%r10d
           ╭   0x00007fd9fb24d131:   je     0x00007fd9fb24d140           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@4 (line 622)
           │                                                             ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@11 (line 638)
   0.00%   │   0x00007fd9fb24d137:   cmp    %r11,%r8
           │   0x00007fd9fb24d13a:   jne    0x00007fd9fb24da7a           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r10=NarrowOop }
           │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                             ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.04%   ↘   0x00007fd9fb24d140:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fd9fb24df50
   0.04%       0x00007fd9fb24d148:   test   %r11d,%r11d
               0x00007fd9fb24d14b:   je     0x00007fd9fb24dcba           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.12%       0x00007fd9fb24d151:   mov    0xc(%rdx),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@20 (line 639)
   0.00%       0x00007fd9fb24d155:   test   %r9d,%r9d
               0x00007fd9fb24d158:   je     0x00007fd9fb24d831
   0.06%       0x00007fd9fb24d15e:   mov    0x8(,%r9,8),%ebx
   0.17%       0x00007fd9fb24d166:   movabs $0x7fd97f000000,%rdi
   0.07%       0x00007fd9fb24d170:   lea    (%rdi,%rbx,1),%rbx
   0.12%       0x00007fd9fb24d174:   test   %r9d,%r9d
            ╭  0x00007fd9fb24d177:   je     0x00007fd9fb24d189           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@4 (line 622)
            │                                                            ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@20 (line 639)
   0.01%    │  0x00007fd9fb24d17d:   data16 xchg %ax,%ax
   0.00%    │  0x00007fd9fb24d180:   cmp    %rbx,%r8
            │  0x00007fd9fb24d183:   jne    0x00007fd9fb24db9c           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop }
            │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.20%    ↘  0x00007fd9fb24d189:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007fd9fb24df73
   0.00%       0x00007fd9fb24d191:   test   %ebx,%ebx
               0x00007fd9fb24d193:   je     0x00007fd9fb24dd30
   0.01%       0x00007fd9fb24d199:   movzbl 0x10(,%r9,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.00%       0x00007fd9fb24d1a2:   movzbl 0x10(,%r10,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.20%       0x00007fd9fb24d1ab:   movabs $0x7fd97f000000,%r13
               0x00007fd9fb24d1b5:   lea    0x0(%r13,%rax,1),%rax
   0.00%       0x00007fd9fb24d1ba:   cmp    -0x161(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.01%       0x00007fd9fb24d1c1:   je     0x00007fd9fb24d791
   0.08%       0x00007fd9fb24d1c7:   cmp    -0x166(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.00%       0x00007fd9fb24d1ce:   jne    0x00007fd9fb24d9cf
   0.01%       0x00007fd9fb24d1d4:   xor    %edi,%ebp                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.09%       0x00007fd9fb24d1d6:   mov    %ebp,0x44(%rsp)
   0.09%       0x00007fd9fb24d1da:   mov    %r9d,%edi
               0x00007fd9fb24d1dd:   shl    $0x3,%rdi                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@20 (line 639)
   0.02%       0x00007fd9fb24d1e1:   mov    %r10d,%r13d
   0.08%       0x00007fd9fb24d1e4:   shl    $0x3,%r13                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@11 (line 638)
   0.06%       0x00007fd9fb24d1e8:   cmp    $0x2,%r11d
               0x00007fd9fb24d1ec:   jb     0x00007fd9fb24dd69           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
               0x00007fd9fb24d1f2:   cmp    $0x2,%ebx
               0x00007fd9fb24d1f5:   jb     0x00007fd9fb24dc69
   0.02%       0x00007fd9fb24d1fb:   movzbl 0x11(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.12%       0x00007fd9fb24d204:   movzbl 0x11(,%r10,8),%edx
   0.12%       0x00007fd9fb24d20d:   cmp    -0x1b4(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.00%       0x00007fd9fb24d214:   je     0x00007fd9fb24d7ed
   0.04%       0x00007fd9fb24d21a:   cmp    -0x1b9(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
               0x00007fd9fb24d221:   jne    0x00007fd9fb24dc20
   0.10%       0x00007fd9fb24d227:   xor    %esi,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.01%       0x00007fd9fb24d229:   mov    %edx,0x40(%rsp)
   0.12%       0x00007fd9fb24d22d:   cmp    $0x3,%r11d
               0x00007fd9fb24d231:   jb     0x00007fd9fb24d9fc           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
               0x00007fd9fb24d237:   cmp    $0x3,%ebx
               0x00007fd9fb24d23a:   jb     0x00007fd9fb24de37
   0.09%       0x00007fd9fb24d240:   movzbl 0x12(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.05%       0x00007fd9fb24d249:   movzbl 0x12(,%r10,8),%edx
   0.12%       0x00007fd9fb24d252:   cmp    -0x1f9(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.07%       0x00007fd9fb24d259:   je     0x00007fd9fb24d7c5
   0.07%       0x00007fd9fb24d25f:   cmp    -0x1fe(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.00%       0x00007fd9fb24d266:   jne    0x00007fd9fb24de49
   0.10%       0x00007fd9fb24d26c:   xor    %esi,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.09%       0x00007fd9fb24d26e:   mov    %edx,0x3c(%rsp)
   0.07%       0x00007fd9fb24d272:   cmp    $0x4,%r11d
               0x00007fd9fb24d276:   jb     0x00007fd9fb24daf5           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%       0x00007fd9fb24d27c:   nopl   0x0(%rax)
   0.06%       0x00007fd9fb24d280:   cmp    $0x4,%ebx
               0x00007fd9fb24d283:   jb     0x00007fd9fb24dea5
   0.11%       0x00007fd9fb24d289:   mov    %rcx,0x18(%rsp)
   0.11%       0x00007fd9fb24d28e:   movzbl 0x13(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
               0x00007fd9fb24d297:   movzbl 0x13(,%r10,8),%ecx
   0.05%       0x00007fd9fb24d2a0:   cmp    -0x247(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.08%       0x00007fd9fb24d2a7:   je     0x00007fd9fb24d7ae
   0.07%       0x00007fd9fb24d2ad:   cmp    -0x24c(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.04%       0x00007fd9fb24d2b4:   jne    0x00007fd9fb24de1b
   0.10%       0x00007fd9fb24d2ba:   xor    %esi,%ecx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.11%       0x00007fd9fb24d2bc:   mov    %ecx,0x38(%rsp)
   0.15%       0x00007fd9fb24d2c0:   cmp    $0x5,%r11d
               0x00007fd9fb24d2c4:   jb     0x00007fd9fb24d99d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%       0x00007fd9fb24d2ca:   cmp    $0x5,%ebx
               0x00007fd9fb24d2cd:   jb     0x00007fd9fb24dcde
   0.01%       0x00007fd9fb24d2d3:   mov    %rdi,0x8(%rsp)
   0.30%       0x00007fd9fb24d2d8:   movzbl 0x14(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.01%       0x00007fd9fb24d2e1:   movzbl 0x14(,%r10,8),%edi
   0.00%       0x00007fd9fb24d2ea:   cmp    -0x291(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.05%       0x00007fd9fb24d2f1:   je     0x00007fd9fb24d798
   0.09%       0x00007fd9fb24d2f7:   cmp    -0x296(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.05%       0x00007fd9fb24d2fe:   xchg   %ax,%ax
               0x00007fd9fb24d300:   jne    0x00007fd9fb24dd9f
   0.11%       0x00007fd9fb24d306:   xor    %esi,%edi                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.09%       0x00007fd9fb24d308:   mov    %edi,0x34(%rsp)
   0.12%       0x00007fd9fb24d30c:   cmp    $0x6,%r11d
               0x00007fd9fb24d310:   jb     0x00007fd9fb24dec6           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
               0x00007fd9fb24d316:   cmp    $0x6,%ebx
               0x00007fd9fb24d319:   jb     0x00007fd9fb24ddff
   0.02%       0x00007fd9fb24d31f:   mov    %r13,0x10(%rsp)
   0.21%       0x00007fd9fb24d324:   movzbl 0x15(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.02%       0x00007fd9fb24d32d:   movzbl 0x15(,%r10,8),%r13d
   0.02%       0x00007fd9fb24d336:   cmp    -0x2dd(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.07%       0x00007fd9fb24d33d:   data16 xchg %ax,%ax
   0.16%       0x00007fd9fb24d340:   je     0x00007fd9fb24d7fb
   0.06%       0x00007fd9fb24d346:   cmp    -0x2e5(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.05%       0x00007fd9fb24d34d:   jne    0x00007fd9fb24ddb6
   0.08%       0x00007fd9fb24d353:   xor    %esi,%r13d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.10%       0x00007fd9fb24d356:   mov    %r13d,0x30(%rsp)
   0.23%       0x00007fd9fb24d35b:   nopl   0x0(%rax,%rax,1)
               0x00007fd9fb24d360:   cmp    $0x7,%r11d
               0x00007fd9fb24d364:   jb     0x00007fd9fb24db2d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.01%       0x00007fd9fb24d36a:   cmp    $0x7,%ebx
               0x00007fd9fb24d36d:   jb     0x00007fd9fb24de7f
   0.07%       0x00007fd9fb24d373:   mov    %r8,0x28(%rsp)
   0.15%       0x00007fd9fb24d378:   movzbl 0x16(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.00%       0x00007fd9fb24d381:   movzbl 0x16(,%r10,8),%r8d
   0.01%       0x00007fd9fb24d38a:   cmp    -0x331(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.11%       0x00007fd9fb24d391:   je     0x00007fd9fb24d7db
   0.10%       0x00007fd9fb24d397:   cmp    -0x336(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.05%       0x00007fd9fb24d39e:   xchg   %ax,%ax
               0x00007fd9fb24d3a0:   jne    0x00007fd9fb24dc0e
   0.09%       0x00007fd9fb24d3a6:   xor    %esi,%r8d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.10%       0x00007fd9fb24d3a9:   mov    %r8d,0x24(%rsp)
   0.10%       0x00007fd9fb24d3ae:   cmp    $0x8,%r11d
               0x00007fd9fb24d3b2:   jb     0x00007fd9fb24de6d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
               0x00007fd9fb24d3b8:   nopl   0x0(%rax,%rax,1)
   0.02%       0x00007fd9fb24d3c0:   cmp    $0x8,%ebx
               0x00007fd9fb24d3c3:   jb     0x00007fd9fb24da8c
   0.07%       0x00007fd9fb24d3c9:   movzbl 0x17(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.11%       0x00007fd9fb24d3d2:   movzbl 0x17(,%r10,8),%ebp
   0.01%       0x00007fd9fb24d3db:   cmp    -0x382(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.06%       0x00007fd9fb24d3e2:   je     0x00007fd9fb24d7d4
   0.13%       0x00007fd9fb24d3e8:   cmp    -0x387(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
               0x00007fd9fb24d3ef:   jne    0x00007fd9fb24dd57
   0.10%       0x00007fd9fb24d3f5:   xor    %esi,%ebp                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.07%       0x00007fd9fb24d3f7:   mov    %ebp,0x20(%rsp)
   0.09%       0x00007fd9fb24d3fb:   nopl   0x0(%rax,%rax,1)
               0x00007fd9fb24d400:   cmp    $0x9,%r11d
               0x00007fd9fb24d404:   jb     0x00007fd9fb24db5a           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.06%       0x00007fd9fb24d40a:   cmp    $0x9,%ebx
               0x00007fd9fb24d40d:   jb     0x00007fd9fb24dd45
   0.06%       0x00007fd9fb24d413:   movzbl 0x18(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.10%       0x00007fd9fb24d41c:   movzbl 0x18(,%r10,8),%r14d
   0.00%       0x00007fd9fb24d425:   cmp    -0x3cc(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.12%       0x00007fd9fb24d42c:   je     0x00007fd9fb24d7cc
   0.09%       0x00007fd9fb24d432:   cmp    -0x3d1(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.01%       0x00007fd9fb24d439:   jne    0x00007fd9fb24dac8
   0.07%       0x00007fd9fb24d43f:   xor    %esi,%r14d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.10%       0x00007fd9fb24d442:   cmp    $0xa,%r11d
               0x00007fd9fb24d446:   jb     0x00007fd9fb24dab9           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.04%       0x00007fd9fb24d44c:   cmp    $0xa,%ebx
               0x00007fd9fb24d44f:   jb     0x00007fd9fb24de91
   0.00%       0x00007fd9fb24d455:   movzbl 0x19(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.14%       0x00007fd9fb24d45e:   movzbl 0x19(,%r10,8),%edx
   0.10%       0x00007fd9fb24d467:   cmp    -0x40e(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.04%       0x00007fd9fb24d46e:   je     0x00007fd9fb24d7bc
   0.11%       0x00007fd9fb24d474:   cmp    -0x413(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.00%       0x00007fd9fb24d47b:   nopl   0x0(%rax,%rax,1)
               0x00007fd9fb24d480:   jne    0x00007fd9fb24da45
   0.04%       0x00007fd9fb24d486:   xor    %esi,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.09%       0x00007fd9fb24d488:   cmp    $0xb,%r11d
               0x00007fd9fb24d48c:   jb     0x00007fd9fb24da33           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
               0x00007fd9fb24d492:   cmp    $0xb,%ebx
               0x00007fd9fb24d495:   jb     0x00007fd9fb24dcfa
   0.03%       0x00007fd9fb24d49b:   movzbl 0x1a(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.19%       0x00007fd9fb24d4a4:   movzbl 0x1a(,%r10,8),%ecx
   0.09%       0x00007fd9fb24d4ad:   cmp    -0x454(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.06%       0x00007fd9fb24d4b4:   je     0x00007fd9fb24d7b5
   0.10%       0x00007fd9fb24d4ba:   cmp    -0x459(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
               0x00007fd9fb24d4c1:   jne    0x00007fd9fb24d96d
   0.06%       0x00007fd9fb24d4c7:   xor    %esi,%ecx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.09%       0x00007fd9fb24d4c9:   cmp    $0xc,%r11d
               0x00007fd9fb24d4cd:   jb     0x00007fd9fb24d93d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.03%       0x00007fd9fb24d4d3:   cmp    $0xc,%ebx
               0x00007fd9fb24d4d6:   jb     0x00007fd9fb24dccc
               0x00007fd9fb24d4dc:   movzbl 0x1b(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.24%       0x00007fd9fb24d4e5:   movzbl 0x1b(,%r10,8),%edi
   0.04%       0x00007fd9fb24d4ee:   cmp    -0x495(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.09%       0x00007fd9fb24d4f5:   je     0x00007fd9fb24d7a7
   0.07%       0x00007fd9fb24d4fb:   cmp    -0x49a(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.00%       0x00007fd9fb24d502:   jne    0x00007fd9fb24dbed
   0.09%       0x00007fd9fb24d508:   xor    %esi,%edi                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.09%       0x00007fd9fb24d50a:   cmp    $0xd,%r11d
               0x00007fd9fb24d50e:   jb     0x00007fd9fb24de5b           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.01%       0x00007fd9fb24d514:   cmp    $0xd,%ebx
               0x00007fd9fb24d517:   jb     0x00007fd9fb24dc8a
               0x00007fd9fb24d51d:   movzbl 0x1c(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.22%       0x00007fd9fb24d526:   movzbl 0x1c(,%r10,8),%r13d
   0.09%       0x00007fd9fb24d52f:   cmp    -0x4d6(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.06%       0x00007fd9fb24d536:   je     0x00007fd9fb24d79f
   0.09%       0x00007fd9fb24d53c:   cmp    -0x4db(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.00%       0x00007fd9fb24d543:   jne    0x00007fd9fb24dd1e
   0.11%       0x00007fd9fb24d549:   xor    %esi,%r13d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.10%       0x00007fd9fb24d54c:   cmp    $0xe,%r11d
               0x00007fd9fb24d550:   jb     0x00007fd9fb24dd7b           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
               0x00007fd9fb24d556:   cmp    $0xe,%ebx
               0x00007fd9fb24d559:   jb     0x00007fd9fb24d90d
               0x00007fd9fb24d55f:   movzbl 0x1d(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.26%       0x00007fd9fb24d568:   movzbl 0x1d(,%r10,8),%r8d
   0.08%       0x00007fd9fb24d571:   cmp    -0x518(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.09%       0x00007fd9fb24d578:   je     0x00007fd9fb24d805
   0.12%       0x00007fd9fb24d57e:   cmp    -0x51d(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
               0x00007fd9fb24d585:   jne    0x00007fd9fb24dc78
   0.08%       0x00007fd9fb24d58b:   xor    %esi,%r8d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.10%       0x00007fd9fb24d58e:   cmp    $0xf,%r11d
               0x00007fd9fb24d592:   jb     0x00007fd9fb24dd8d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.02%       0x00007fd9fb24d598:   nopl   0x0(%rax,%rax,1)
               0x00007fd9fb24d5a0:   cmp    $0xf,%ebx
               0x00007fd9fb24d5a3:   jb     0x00007fd9fb24dbde
   0.15%       0x00007fd9fb24d5a9:   movzbl 0x1e(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.16%       0x00007fd9fb24d5b2:   movzbl 0x1e(,%r10,8),%ebp
   0.01%       0x00007fd9fb24d5bb:   cmp    -0x562(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.05%       0x00007fd9fb24d5c2:   je     0x00007fd9fb24d7f4
   0.11%       0x00007fd9fb24d5c8:   cmp    -0x567(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
   0.01%       0x00007fd9fb24d5cf:   jne    0x00007fd9fb24db6c
   0.12%       0x00007fd9fb24d5d5:   xor    %esi,%ebp                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.06%       0x00007fd9fb24d5d7:   nopw   0x0(%rax,%rax,1)
               0x00007fd9fb24d5e0:   cmp    $0x10,%r11d
               0x00007fd9fb24d5e4:   jb     0x00007fd9fb24dc57           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%       0x00007fd9fb24d5ea:   cmp    $0x10,%ebx
               0x00007fd9fb24d5ed:   jb     0x00007fd9fb24dbae
   0.28%       0x00007fd9fb24d5f3:   movzbl 0x1f(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.10%       0x00007fd9fb24d5fc:   movzbl 0x1f(,%r10,8),%r10d
               0x00007fd9fb24d605:   cmp    -0x5ac(%rip),%rax        # 0x00007fd9fb24d060
                                                                         ;   {section_word}
   0.14%       0x00007fd9fb24d60c:   je     0x00007fd9fb24d7e5
   0.10%       0x00007fd9fb24d612:   cmp    -0x5b1(%rip),%rax        # 0x00007fd9fb24d068
                                                                         ;   {section_word}
               0x00007fd9fb24d619:   jne    0x00007fd9fb24dbff
   0.09%       0x00007fd9fb24d61f:   xor    %esi,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007fd9800d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.07%       0x00007fd9fb24d622:   mov    0x1b8(%r15),%rsi
   0.00%       0x00007fd9fb24d629:   lea    0x10(%rsi),%rax
               0x00007fd9fb24d62d:   cmp    0x1c8(%r15),%rax
               0x00007fd9fb24d634:   ja     0x00007fd9fb24d8a5
   0.15%       0x00007fd9fb24d63a:   mov    %rax,0x1b8(%r15)
   0.21%       0x00007fd9fb24d641:   prefetchw 0xd0(%rsi)
   0.40%       0x00007fd9fb24d648:   movq   $0x1,(%rsi)
   0.37%       0x00007fd9fb24d64f:   movl   $0x10c6758,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int512Vector$Int512Mask&apos;)}
   0.17%       0x00007fd9fb24d656:   movl   $0x0,0xc(%rsi)
   0.39%       0x00007fd9fb24d65d:   mov    %rsi,(%rsp)                  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@63 (line 643)
   0.01%       0x00007fd9fb24d661:   mov    0x1b8(%r15),%rsi
   0.10%       0x00007fd9fb24d668:   lea    0x20(%rsi),%rax
   0.14%       0x00007fd9fb24d66c:   cmp    0x1c8(%r15),%rax
               0x00007fd9fb24d673:   ja     0x00007fd9fb24d85d
   0.17%       0x00007fd9fb24d679:   mov    %rax,0x1b8(%r15)
   0.18%       0x00007fd9fb24d680:   prefetchw 0xe0(%rsi)
   0.33%       0x00007fd9fb24d687:   prefetchw 0x120(%rsi)
               0x00007fd9fb24d68e:   prefetchw 0x160(%rsi)
   0.22%       0x00007fd9fb24d695:   prefetchw 0x1a0(%rsi)
   0.10%       0x00007fd9fb24d69c:   movq   $0x1,(%rsi)
   0.03%       0x00007fd9fb24d6a3:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.93%       0x00007fd9fb24d6aa:   movl   $0x10,0xc(%rsi)
   0.05%       0x00007fd9fb24d6b1:   movq   $0x0,0x10(%rsi)
   0.30%       0x00007fd9fb24d6b9:   movq   $0x0,0x18(%rsi)
   0.02%       0x00007fd9fb24d6c1:   mov    0x20(%rsp),%r9d
   0.07%       0x00007fd9fb24d6c6:   mov    0x24(%rsp),%ebx
   0.01%       0x00007fd9fb24d6ca:   mov    0x30(%rsp),%eax
   0.10%       0x00007fd9fb24d6ce:   mov    0x34(%rsp),%r11d
   0.02%       0x00007fd9fb24d6d3:   mov    %r10b,0x1f(%rsi)
   0.08%       0x00007fd9fb24d6d7:   mov    %bpl,0x1e(%rsi)
   0.04%       0x00007fd9fb24d6db:   mov    %r8b,0x1d(%rsi)
   0.16%       0x00007fd9fb24d6df:   mov    %r13b,0x1c(%rsi)
   0.13%       0x00007fd9fb24d6e3:   mov    %dil,0x1b(%rsi)
   0.07%       0x00007fd9fb24d6e7:   mov    %cl,0x1a(%rsi)
   0.10%       0x00007fd9fb24d6ea:   mov    %dl,0x19(%rsi)
   0.14%       0x00007fd9fb24d6ed:   mov    %r14b,0x18(%rsi)
   0.17%       0x00007fd9fb24d6f1:   mov    %r9b,0x17(%rsi)
   0.13%       0x00007fd9fb24d6f5:   mov    %bl,0x16(%rsi)
   0.14%       0x00007fd9fb24d6f8:   mov    %al,0x15(%rsi)
   0.17%       0x00007fd9fb24d6fb:   mov    %r11b,0x14(%rsi)
   0.20%       0x00007fd9fb24d6ff:   mov    0x38(%rsp),%eax
   0.01%       0x00007fd9fb24d703:   mov    %al,0x13(%rsi)
   0.18%       0x00007fd9fb24d706:   mov    0x3c(%rsp),%eax
               0x00007fd9fb24d70a:   mov    %al,0x12(%rsi)
   0.19%       0x00007fd9fb24d70d:   mov    0x40(%rsp),%eax
   0.00%       0x00007fd9fb24d711:   mov    %al,0x11(%rsi)
   0.22%       0x00007fd9fb24d714:   mov    0x44(%rsp),%eax
   0.00%       0x00007fd9fb24d718:   mov    %al,0x10(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::prepare@6 (line 598)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::&lt;init&gt;@3 (line 590)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::&lt;init&gt;@3 (line 586)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@68 (line 643)
   0.21%       0x00007fd9fb24d71b:   mov    %rsi,%rax
               0x00007fd9fb24d71e:   shr    $0x3,%rax
               0x00007fd9fb24d722:   mov    (%rsp),%rdx
   0.01%       0x00007fd9fb24d726:   mov    %eax,0xc(%rdx)
   0.24%       0x00007fd9fb24d729:   mov    %rdx,%rax
               0x00007fd9fb24d72c:   xor    %rsi,%rax
   0.00%       0x00007fd9fb24d72f:   test   $0xffffffffffe00000,%rax
               0x00007fd9fb24d736:   je     0x00007fd9fb24d819
               0x00007fd9fb24d73c:   nopl   0x0(%rax)
               0x00007fd9fb24d740:   test   %rsi,%rsi
               0x00007fd9fb24d743:   je     0x00007fd9fb24d83d
               0x00007fd9fb24d749:   mov    %rdx,%r10
               0x00007fd9fb24d74c:   shr    $0x9,%r10
               0x00007fd9fb24d750:   movabs $0x7fd9eeeef000,%r11
               0x00007fd9fb24d75a:   nopw   0x0(%rax,%rax,1)
               0x00007fd9fb24d760:   cmpb   $0x2,(%r10,%r11,1)
               0x00007fd9fb24d765:   jne    0x00007fd9fb24d845
....................................................................................................
  20.84%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 

 <region is too big to display, has 1568 lines, but threshold is 1000>
....................................................................................................
  11.95%  <total for region 3>

....[Hottest Regions]...............................................................................
  34.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
  20.84%      jvmci, level 4  jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1168 
  11.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   8.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   4.91%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   3.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   2.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   2.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   2.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   2.04%      jvmci, level 4  jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1168 
   1.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   1.20%              kernel  [unknown] 
   0.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   0.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   0.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   0.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   2.06%  <...other 492 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 5, compile id 1300 
  22.88%      jvmci, level 4  jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1168 
   2.28%              kernel  [unknown] 
   0.14%                      <unknown> 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  TypeArrayKlass::allocate_common 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SortVectorApiBenchmark_sortVector_jmhTest::sortVector_avgt_jmhStub, version 4, compile id 1342 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.57%  <...other 165 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.69%      jvmci, level 4
   2.28%              kernel
   0.60%           libjvm.so
   0.18%        libc-2.31.so
   0.14%                    
   0.03%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 65536, vectorSize = 64)

# Run progress: 66.67% complete, ETA 00:07:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5879.793 us/op
# Warmup Iteration   2: 3188.591 us/op
# Warmup Iteration   3: 3185.628 us/op
# Warmup Iteration   4: 3184.761 us/op
# Warmup Iteration   5: 3184.420 us/op
Iteration   1: 3184.256 us/op
Iteration   2: 3184.714 us/op
Iteration   3: 3185.022 us/op
Iteration   4: 3184.271 us/op
Iteration   5: 3191.092 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  3185.871 ±(99.9%) 11.306 us/op [Average]
  (min, avg, max) = (3184.256, 3185.871, 3191.092), stdev = 2.936
  CI (99.9%): [3174.565, 3197.177] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 303206 total address lines.
Perf output processed (skipped 60.730 seconds):
 Column 1: cycles (50971 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1284 

 <region is too big to display, has 1398 lines, but threshold is 1000>
....................................................................................................
  82.83%  <total for region 1>

....[Hottest Regions]...............................................................................
  82.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1284 
   6.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1284 
   5.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1284 
   1.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1284 
   0.17%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.06%               kernel  [unknown] 
   0.05%            libjvm.so  G1CardSet::reset_table_scanner 
   0.05%               kernel  [unknown] 
   0.04%           ld-2.31.so  __tls_get_addr 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.03%               kernel  [unknown] 
   0.03%                       <unknown> 
   2.35%  <...other 600 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1284 
   1.56%               kernel  [unknown] 
   0.18%                       <unknown> 
   0.09%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.05%            libjvm.so  G1CardSet::reset_table_scanner 
   0.04%           ld-2.31.so  __tls_get_addr 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.03%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%            libjvm.so  ObjArrayAllocator::initialize 
   0.03%               [vdso]  __vdso_clock_gettime 
   0.03%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%            libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.02%         libc-2.31.so  __memset_avx2_erms 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%            libjvm.so  WeakProcessor::Task::work<G1STWIsAliveClosure, G1KeepAliveClosure> 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  G1RebuildFreeListTask::work 
   1.00%  <...other 256 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.70%       jvmci, level 4
   1.56%               kernel
   0.99%            libjvm.so
   0.22%         libc-2.31.so
   0.18%                     
   0.11%  libjvmcicompiler.so
   0.09%          interpreter
   0.06%   libpthread-2.31.so
   0.04%           ld-2.31.so
   0.03%               [vdso]
   0.02%       hsdis-amd64.so
   0.01%          c1, level 3
   0.01%     perf-2129716.map
   0.00%          c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 65536, vectorSize = 128)

# Run progress: 75.00% complete, ETA 00:05:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15609.030 us/op
# Warmup Iteration   2: 7646.640 us/op
# Warmup Iteration   3: 7624.705 us/op
# Warmup Iteration   4: 7627.333 us/op
# Warmup Iteration   5: 7630.480 us/op
Iteration   1: 7631.712 us/op
Iteration   2: 7631.260 us/op
Iteration   3: 7632.380 us/op
Iteration   4: 7630.741 us/op
Iteration   5: 7627.209 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  7630.660 ±(99.9%) 7.782 us/op [Average]
  (min, avg, max) = (7627.209, 7630.660, 7632.380), stdev = 2.021
  CI (99.9%): [7622.878, 7638.442] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 300709 total address lines.
Perf output processed (skipped 60.649 seconds):
 Column 1: cycles (51103 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 

 <region is too big to display, has 1366 lines, but threshold is 1000>
....................................................................................................
  35.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1239 

                   # parm1:    rcx:rcx   = &apos;jdk/incubator/vector/AbstractMask$MBinOp&apos;
                   #           [sp+0x20]  (sp of caller)
                   0x00007f86ab24f800:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                   0x00007f86ab24f804:   movabs $0x7f862f000000,%r12
                   0x00007f86ab24f80e:   add    %r12,%r10
                   0x00007f86ab24f811:   xor    %r12,%r12
                   0x00007f86ab24f814:   cmp    %r10,%rax
                   0x00007f86ab24f817:   jne    0x00007f86aac2f080           ;   {runtime_call ic_miss_stub}
                   0x00007f86ab24f81d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   0.33%           0x00007f86ab24f820:   mov    %eax,-0x14000(%rsp)
   0.49%           0x00007f86ab24f827:   sub    $0x18,%rsp
   0.18%           0x00007f86ab24f82b:   nop
   0.10%           0x00007f86ab24f82c:   cmpl   $0x1,0x20(%r15)
   0.06%           0x00007f86ab24f834:   jne    0x00007f86ab24fd85
   0.38%           0x00007f86ab24f83a:   mov    %rbp,0x10(%rsp)
   0.19%           0x00007f86ab24f83f:   nop
   0.10%           0x00007f86ab24f840:   test   %rdx,%rdx
                   0x00007f86ab24f843:   je     0x00007f86ab24fb6e
   0.01%           0x00007f86ab24f849:   mov    0x8(%rdx),%eax
   0.37%           0x00007f86ab24f84c:   movabs $0x7f862f000000,%r10
   0.13%           0x00007f86ab24f856:   lea    (%r10,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@17 (line 615)
   0.10%           0x00007f86ab24f85a:   nopw   0x0(%rax,%rax,1)
   0.02%           0x00007f86ab24f860:   test   %rdx,%rdx
          ╭        0x00007f86ab24f863:   je     0x00007f86ab24f87c
   0.36%  │        0x00007f86ab24f869:   movabs $0x7f86300c4fa8,%r10         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector$Int128Mask&apos;)}
   0.15%  │        0x00007f86ab24f873:   cmp    %rax,%r10
          │        0x00007f86ab24f876:   jne    0x00007f86ab24fce5           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.09%  ↘        0x00007f86ab24f87c:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f86ab24fda9
                                                                             ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.04%           0x00007f86ab24f87e:   mov    0x8(%rcx),%eax               ; implicit exception: dispatches to 0x00007f86ab24fdcd
   0.41%           0x00007f86ab24f881:   mov    0xc(%rsi),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@11 (line 614)
   0.21%           0x00007f86ab24f885:   test   %r10d,%r10d
                   0x00007f86ab24f888:   je     0x00007f86ab24fb7a
   0.10%           0x00007f86ab24f88e:   mov    0x8(,%r10,8),%r11d
   0.06%           0x00007f86ab24f896:   movabs $0x7f862f000000,%r8
   0.32%           0x00007f86ab24f8a0:   lea    (%r8,%r11,1),%r11
   0.17%           0x00007f86ab24f8a4:   movabs $0x7f862f001b00,%r8          ;   {metadata({type array bool})}
   0.10%           0x00007f86ab24f8ae:   test   %r10d,%r10d
           ╭       0x00007f86ab24f8b1:   je     0x00007f86ab24f8c0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@4 (line 598)
           │                                                                 ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@11 (line 614)
   0.02%   │       0x00007f86ab24f8b7:   cmp    %r11,%r8
           │       0x00007f86ab24f8ba:   jne    0x00007f86ab24fd18           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r10=NarrowOop }
           │                                                                 ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                                 ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.45%   ↘       0x00007f86ab24f8c0:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f86ab24fdf0
   0.18%           0x00007f86ab24f8c8:   test   %r11d,%r11d
                   0x00007f86ab24f8cb:   je     0x00007f86ab24fca7           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.07%           0x00007f86ab24f8d1:   mov    0xc(%rdx),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@20 (line 615)
   0.02%           0x00007f86ab24f8d5:   test   %r9d,%r9d
                   0x00007f86ab24f8d8:   je     0x00007f86ab24fb86
   0.38%           0x00007f86ab24f8de:   mov    0x8(,%r9,8),%ebx
   0.48%           0x00007f86ab24f8e6:   movabs $0x7f862f000000,%rdi
   0.05%           0x00007f86ab24f8f0:   lea    (%rdi,%rbx,1),%rbx
   0.21%           0x00007f86ab24f8f4:   test   %r9d,%r9d
            ╭      0x00007f86ab24f8f7:   je     0x00007f86ab24f909           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@4 (line 598)
            │                                                                ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@20 (line 615)
   0.22%    │      0x00007f86ab24f8fd:   data16 xchg %ax,%ax
   0.07%    │      0x00007f86ab24f900:   cmp    %rbx,%r8
            │      0x00007f86ab24f903:   jne    0x00007f86ab24fd4b           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop }
            │                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                                ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::bOp@0 (line 613)
   0.32%    ↘      0x00007f86ab24f909:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f86ab24fe13
   0.02%           0x00007f86ab24f911:   test   %ebx,%ebx
                   0x00007f86ab24f913:   je     0x00007f86ab24fd5d
   0.27%           0x00007f86ab24f919:   movzbl 0x10(,%r9,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
   0.12%           0x00007f86ab24f922:   movzbl 0x10(,%r10,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.37%           0x00007f86ab24f92b:   movabs $0x7f862f000000,%r13
   0.03%           0x00007f86ab24f935:   lea    0x0(%r13,%rax,1),%rax
   0.22%           0x00007f86ab24f93a:   cmp    -0x161(%rip),%rax        # 0x00007f86ab24f7e0
                                                                             ;   {section_word}
   0.08%     ╭     0x00007f86ab24f941:   je     0x00007f86ab24f959
   0.03%     │     0x00007f86ab24f947:   cmp    -0x166(%rip),%rax        # 0x00007f86ab24f7e8
             │                                                               ;   {section_word}
   0.03%     │     0x00007f86ab24f94e:   je     0x00007f86ab24fb51
             │     0x00007f86ab24f954:   jmp    0x00007f86ab24fd27
   0.24%     ↘     0x00007f86ab24f959:   and    %edi,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.25%           0x00007f86ab24f95b:   mov    %r9d,%edi
   0.05%           0x00007f86ab24f95e:   shl    $0x3,%rdi                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@20 (line 615)
   0.01%           0x00007f86ab24f962:   mov    %r10d,%r13d
   0.37%           0x00007f86ab24f965:   shl    $0x3,%r13                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@11 (line 614)
   0.23%           0x00007f86ab24f969:   cmp    $0x2,%r11d
                   0x00007f86ab24f96d:   jb     0x00007f86ab24fc98           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.05%           0x00007f86ab24f973:   cmp    $0x2,%ebx
                   0x00007f86ab24f976:   jb     0x00007f86ab24fc1d
   0.02%           0x00007f86ab24f97c:   movzbl 0x11(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
   0.37%           0x00007f86ab24f985:   movzbl 0x11(,%r10,8),%edx
   0.27%           0x00007f86ab24f98e:   cmp    -0x1b5(%rip),%rax        # 0x00007f86ab24f7e0
                                                                             ;   {section_word}
   0.05%      ╭    0x00007f86ab24f995:   je     0x00007f86ab24f9ad
              │    0x00007f86ab24f99b:   cmp    -0x1ba(%rip),%rax        # 0x00007f86ab24f7e8
              │                                                              ;   {section_word}
   0.07%      │    0x00007f86ab24f9a2:   je     0x00007f86ab24fb67
              │    0x00007f86ab24f9a8:   jmp    0x00007f86ab24fd39
   0.01%      ↘    0x00007f86ab24f9ad:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.61%           0x00007f86ab24f9af:   mov    %edx,%r14d
                   0x00007f86ab24f9b2:   cmp    $0x3,%r11d
                   0x00007f86ab24f9b6:   jb     0x00007f86ab24fc70           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.03%           0x00007f86ab24f9bc:   nopl   0x0(%rax)
   0.01%           0x00007f86ab24f9c0:   cmp    $0x3,%ebx
                   0x00007f86ab24f9c3:   jb     0x00007f86ab24fd6f
   0.63%           0x00007f86ab24f9c9:   movzbl 0x12(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
                   0x00007f86ab24f9d2:   movzbl 0x12(,%r10,8),%edx
   0.06%           0x00007f86ab24f9db:   cmp    -0x202(%rip),%rax        # 0x00007f86ab24f7e0
                                                                             ;   {section_word}
   0.01%       ╭   0x00007f86ab24f9e2:   je     0x00007f86ab24f9fa
   0.35%       │   0x00007f86ab24f9e8:   cmp    -0x207(%rip),%rax        # 0x00007f86ab24f7e8
               │                                                             ;   {section_word}
               │   0x00007f86ab24f9ef:   je     0x00007f86ab24fb60
               │   0x00007f86ab24f9f5:   jmp    0x00007f86ab24fd06
   0.24%       ↘   0x00007f86ab24f9fa:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.38%           0x00007f86ab24f9fc:   nopl   0x0(%rax)
   0.02%           0x00007f86ab24fa00:   cmp    $0x4,%r11d
                   0x00007f86ab24fa04:   jb     0x00007f86ab24fcf4           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@45 (line 617)
   0.08%           0x00007f86ab24fa0a:   cmp    $0x4,%ebx
                   0x00007f86ab24fa0d:   jb     0x00007f86ab24fccf
   0.21%           0x00007f86ab24fa13:   movzbl 0x13(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@50 (line 617)
   0.31%           0x00007f86ab24fa1c:   movzbl 0x13(,%r10,8),%r10d
   0.06%           0x00007f86ab24fa25:   cmp    -0x24c(%rip),%rax        # 0x00007f86ab24f7e0
                                                                             ;   {section_word}
   0.09%        ╭  0x00007f86ab24fa2c:   je     0x00007f86ab24fa45
                │  0x00007f86ab24fa32:   cmp    -0x251(%rip),%rax        # 0x00007f86ab24f7e8
                │                                                            ;   {section_word}
   0.32%        │  0x00007f86ab24fa39:   je     0x00007f86ab24fb58
                │  0x00007f86ab24fa3f:   nop
                │  0x00007f86ab24fa40:   jmp    0x00007f86ab24fc45
   0.20%        ↘  0x00007f86ab24fa45:   and    %esi,%r10d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$3@2 (line 691)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3580::apply@3
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@51 (line 617)
   0.35%           0x00007f86ab24fa48:   mov    0x1b8(%r15),%rsi
   0.03%           0x00007f86ab24fa4f:   lea    0x10(%rsi),%rax
   0.05%           0x00007f86ab24fa53:   cmp    0x1c8(%r15),%rax
                   0x00007f86ab24fa5a:   ja     0x00007f86ab24fbc9
   0.22%           0x00007f86ab24fa60:   mov    %rax,0x1b8(%r15)
   0.38%           0x00007f86ab24fa67:   prefetchw 0xd0(%rsi)
   0.40%           0x00007f86ab24fa6e:   movq   $0x1,(%rsi)
   0.33%           0x00007f86ab24fa75:   movl   $0x10c4fa8,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector$Int128Mask&apos;)}
   0.25%           0x00007f86ab24fa7c:   movl   $0x0,0xc(%rsi)
   0.61%           0x00007f86ab24fa83:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@63 (line 619)
   0.01%           0x00007f86ab24fa86:   mov    0x1b8(%r15),%rsi
   0.04%           0x00007f86ab24fa8d:   lea    0x18(%rsi),%rax
   0.25%           0x00007f86ab24fa91:   cmp    0x1c8(%r15),%rax
                   0x00007f86ab24fa98:   ja     0x00007f86ab24fbea
   0.66%           0x00007f86ab24fa9e:   mov    %rax,0x1b8(%r15)
   0.27%           0x00007f86ab24faa5:   prefetchw 0xd8(%rsi)
   0.75%           0x00007f86ab24faac:   prefetchw 0x118(%rsi)
   0.02%           0x00007f86ab24fab3:   prefetchw 0x158(%rsi)
   0.50%           0x00007f86ab24faba:   prefetchw 0x198(%rsi)
   0.35%           0x00007f86ab24fac1:   movq   $0x1,(%rsi)
   0.89%           0x00007f86ab24fac8:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.68%           0x00007f86ab24facf:   movl   $0x4,0xc(%rsi)
   0.28%           0x00007f86ab24fad6:   movq   $0x0,0x10(%rsi)
   0.69%           0x00007f86ab24fade:   mov    %r10b,0x13(%rsi)
   0.25%           0x00007f86ab24fae2:   mov    %dl,0x12(%rsi)
   0.10%           0x00007f86ab24fae5:   mov    %r14b,0x11(%rsi)
   0.23%           0x00007f86ab24fae9:   mov    %bpl,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::prepare@6 (line 574)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::&lt;init&gt;@3 (line 566)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::&lt;init&gt;@3 (line 562)
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@68 (line 619)
   0.35%           0x00007f86ab24faed:   mov    %rsi,%rax
   0.14%           0x00007f86ab24faf0:   shr    $0x3,%rax
   0.05%           0x00007f86ab24faf4:   mov    %eax,0xc(%r11)
   0.19%           0x00007f86ab24faf8:   mov    %r11,%rax
   0.26%           0x00007f86ab24fafb:   xor    %rsi,%rax
   0.18%           0x00007f86ab24fafe:   xchg   %ax,%ax
   0.04%           0x00007f86ab24fb00:   test   $0xffffffffffe00000,%rax
                   0x00007f86ab24fb07:   je     0x00007f86ab24fb32
                   0x00007f86ab24fb0d:   test   %rsi,%rsi
                   0x00007f86ab24fb10:   je     0x00007f86ab24fb32
                   0x00007f86ab24fb16:   mov    %r11,%r10
                   0x00007f86ab24fb19:   shr    $0x9,%r10
                   0x00007f86ab24fb1d:   movabs $0x7f86bdf9f000,%r8
                   0x00007f86ab24fb27:   cmpb   $0x2,(%r10,%r8,1)
   0.00%           0x00007f86ab24fb2c:   jne    0x00007f86ab24fb92           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int128Vector$Int128Mask::bOp@63 (line 619)
   0.19%           0x00007f86ab24fb32:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  23.50%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 

                                                                       ; - jdk.incubator.vector.IntVector::maskFactory@5 (line 116)
                                                                       ; - jdk.incubator.vector.IntVector::bTest@68 (line 478)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$59@9 (line 2034)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d1ef8::apply@14
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                       ; - jdk.incubator.vector.IntVector::compareTemplate@42 (line 2029)
                                                                       ; - jdk.incubator.vector.Int128Vector::compare@5 (line 384)
                                                                       ; - jdk.incubator.vector.Int128Vector::compare@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lt@5 (line 1933)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@129 (line 86)
   0.10%     0x00007f86ab26e711:   mov    %rdi,%rsi
             0x00007f86ab26e714:   mov    %rbx,%rdx
   0.10%     0x00007f86ab26e717:   mov    0x60(%rsp),%rcx              ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@7 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.18%     0x00007f86ab26e71c:   mov    %rbx,0x20(%rsp)
   0.09%     0x00007f86ab26e721:   mov    %rdi,0x18(%rsp)
   0.10%     0x00007f86ab26e726:   nop
   0.07%     0x00007f86ab26e727:   call   0x00007f86ab24f820           ; ImmutableOopMap {[24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [140]=NarrowOop [144]=Oop }
                                                                       ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@7 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
                                                                       ;   {optimized virtual_call}
   0.08%     0x00007f86ab26e72c:   nopl   0x1000149c(%rax,%rax,1)      ;   {other}
   0.01%     0x00007f86ab26e734:   mov    %rax,%r10                    ; ImmutableOopMap {r10=Oop [24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [140]=NarrowOop [144]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@10 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.02%     0x00007f86ab26e737:   test   %eax,(%r10)                  ; implicit exception: dispatches to 0x00007f86ab2700d6
   0.27%     0x00007f86ab26e73a:   mov    0x40(%rsp),%rcx
   0.11%     0x00007f86ab26e73f:   mov    0xc(%rcx),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   1.22%     0x00007f86ab26e742:   test   %esi,%esi
             0x00007f86ab26e744:   je     0x00007f86ab26ebf2
   0.33%     0x00007f86ab26e74a:   mov    0x8(,%rsi,8),%eax
   1.25%     0x00007f86ab26e751:   movabs $0x7f862f000000,%rdx
             0x00007f86ab26e75b:   lea    (%rdx,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@20 (line 227)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.30%     0x00007f86ab26e75f:   nop
   0.00%     0x00007f86ab26e760:   test   %esi,%esi
             0x00007f86ab26e762:   je     0x00007f86ab26eb40
   0.00%     0x00007f86ab26e768:   mov    0x110(%rsp),%r13
   0.00%     0x00007f86ab26e770:   cmp    %rax,%r13
             0x00007f86ab26e773:   jne    0x00007f86ab26feb5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.33%     0x00007f86ab26e779:   nopl   0x0(%rax)                    ; ImmutableOopMap {rcx=Oop rsi=NarrowOop r10=Oop [24]=Oop [32]=Oop [56]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [140]=NarrowOop [144]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@10 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.01%     0x00007f86ab26e780:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f86ab2700f9
   0.01%     0x00007f86ab26e788:   jb     0x00007f86ab26f826           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.32%     0x00007f86ab26e78e:   mov    0xc(%r10),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.02%     0x00007f86ab26e792:   test   %eax,%eax
             0x00007f86ab26e794:   je     0x00007f86ab26ebdb
   0.00%     0x00007f86ab26e79a:   mov    0x8(,%rax,8),%edx
             0x00007f86ab26e7a1:   movabs $0x7f862f000000,%rdi
   0.30%     0x00007f86ab26e7ab:   lea    (%rdi,%rdx,1),%rdx
   0.01%     0x00007f86ab26e7af:   test   %eax,%eax
             0x00007f86ab26e7b1:   je     0x00007f86ab26eb33           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@4 (line 598)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007f86ab26e7b7:   mov    0xe0(%rsp),%r9
   0.01%     0x00007f86ab26e7bf:   nop
   0.28%     0x00007f86ab26e7c0:   cmp    %rdx,%r9
             0x00007f86ab26e7c3:   jne    0x00007f86ab26fe25           ; ImmutableOopMap {rax=NarrowOop rcx=Oop rsi=NarrowOop r10=Oop [24]=Oop [32]=Oop [56]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [140]=NarrowOop [144]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int128Vector$Int128Mask::lambda$and$4@10 (line 691)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.01%     0x00007f86ab26e7c9:   cmpl   $0x4,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f86ab27011c
             0x00007f86ab26e7d1:   jb     0x00007f86ab26fc66           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask$$Lambda/0x00007f86300d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@29 (line 689)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::and@2 (line 557)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.32%     0x00007f86ab26e7d7:   nopw   0x0(%rax,%rax,1)
   0.01%     0x00007f86ab26e7e0:   cmpb   $0x0,0x10(,%rax,8)
   0.00%     0x00007f86ab26e7e8:   jne    0x00007f86ab26eb85           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.30%     0x00007f86ab26e7ee:   mov    0x10(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.09%     0x00007f86ab26e7f5:   mov    %edx,%r11d
   0.00%     0x00007f86ab26e7f8:   mov    0x38(%rsp),%rbx              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.08%     0x00007f86ab26e7fd:   data16 xchg %ax,%ax
   0.22%     0x00007f86ab26e800:   cmpb   $0x0,0x11(,%rax,8)
   0.04%     0x00007f86ab26e808:   jne    0x00007f86ab26eb95           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.14%     0x00007f86ab26e80e:   mov    0x14(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.23%     0x00007f86ab26e815:   mov    %edx,%r8d
   0.01%     0x00007f86ab26e818:   nopl   0x0(%rax,%rax,1)
   0.00%     0x00007f86ab26e820:   cmpb   $0x0,0x12(,%rax,8)
   0.38%     0x00007f86ab26e828:   jne    0x00007f86ab26eb9d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
                                                                       ;   {no_reloc}
   0.08%     0x00007f86ab26e82e:   mov    0x18(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.09%     0x00007f86ab26e835:   mov    %edx,%edi
   0.15%     0x00007f86ab26e837:   nopw   0x0(%rax,%rax,1)
   0.06%     0x00007f86ab26e840:   cmpb   $0x0,0x13(,%rax,8)
   0.15%     0x00007f86ab26e848:   jne    0x00007f86ab26eb7a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.18%     0x00007f86ab26e84e:   mov    0x1c(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007f86ab26e855:   mov    %edx,%ebp
   0.02%     0x00007f86ab26e857:   mov    0x48(%rsp),%r14
   0.14%     0x00007f86ab26e85c:   mov    0xc(%r14),%edx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.23%     0x00007f86ab26e860:   test   %edx,%edx
             0x00007f86ab26e862:   je     0x00007f86ab26ebca
   0.07%     0x00007f86ab26e868:   mov    %r10,0x10(%rsp)
   0.01%     0x00007f86ab26e86d:   mov    0x8(,%rdx,8),%ebx
   1.20%     0x00007f86ab26e874:   movabs $0x7f862f000000,%r10
   0.00%     0x00007f86ab26e87e:   lea    (%r10,%rbx,1),%rbx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.31%     0x00007f86ab26e882:   mov    %esi,%r10d
             0x00007f86ab26e885:   shl    $0x3,%r10                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007f86ab26e889:   shl    $0x3,%rax                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int128Vector$Int128Mask::getBits@1 (line 598)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007f86ab26e88d:   test   %edx,%edx
          ╭  0x00007f86ab26e88f:   je     0x00007f86ab26e89e
   0.32%  │  0x00007f86ab26e895:   cmp    %rbx,%r13
          │  0x00007f86ab26e898:   jne    0x00007f86ab26fc8a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - jdk.incubator.vector.Int128Vector::vec@4 (line 117)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
          │                                                            ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
          │                                                            ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
          │                                                            ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
          │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
          │                                                            ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
          │                                                            ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
          ↘  0x00007f86ab26e89e:   xchg   %ax,%ax                      ; ImmutableOopMap {rax=Oop rcx=Oop rdx=NarrowOop r10=Oop r14=Oop [16]=Oop [56]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [140]=NarrowOop [144]=Oop }
                                                                       ;*iastore {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007f86ab26e8a0:   cmpl   $0x4,0xc(,%rdx,8)            ; implicit exception: dispatches to 0x00007f86ab27013f
   0.32%     0x00007f86ab26e8a8:   jb     0x00007f86ab26fdfb           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
             0x00007f86ab26e8ae:   mov    0x1b8(%r15),%rsi
   0.00%     0x00007f86ab26e8b5:   lea    0x10(%rsi),%rbx
             0x00007f86ab26e8b9:   nopl   0x0(%rax)
   0.31%     0x00007f86ab26e8c0:   cmp    0x1c8(%r15),%rbx
             0x00007f86ab26e8c7:   ja     0x00007f86ab26ed6b
             0x00007f86ab26e8cd:   mov    %rbx,0x1b8(%r15)
   0.00%     0x00007f86ab26e8d4:   prefetchw 0xd0(%rsi)
   0.01%     0x00007f86ab26e8db:   movq   $0x1,(%rsi)
   0.46%     0x00007f86ab26e8e2:   movl   $0x10c4928,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector&apos;)}
   0.00%     0x00007f86ab26e8e9:   movl   $0x0,0xc(%rsi)
   0.06%     0x00007f86ab26e8f0:   mov    %rsi,%rbx
             0x00007f86ab26e8f3:   mov    %r10,0x8(%rsp)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@102 (line 233)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.28%     0x00007f86ab26e8f8:   mov    0x1b8(%r15),%rsi
   0.03%     0x00007f86ab26e8ff:   lea    0x20(%rsi),%r10
   0.03%     0x00007f86ab26e903:   cmp    0x1c8(%r15),%r10
             0x00007f86ab26e90a:   ja     0x00007f86ab26edb5
   0.02%     0x00007f86ab26e910:   mov    %r10,0x1b8(%r15)
   0.28%     0x00007f86ab26e917:   prefetchw 0xe0(%rsi)
   0.08%     0x00007f86ab26e91e:   prefetchw 0x120(%rsi)
   0.03%     0x00007f86ab26e925:   prefetchw 0x160(%rsi)
   0.03%     0x00007f86ab26e92c:   prefetchw 0x1a0(%rsi)
   0.37%     0x00007f86ab26e933:   movq   $0x1,(%rsi)
   0.08%     0x00007f86ab26e93a:   movl   $0x26a0,0x8(%rsi)            ;   {metadata({type array int})}
   0.27%     0x00007f86ab26e941:   movl   $0x4,0xc(%rsi)
   0.27%     0x00007f86ab26e948:   movq   $0x0,0x10(%rsi)
   0.32%     0x00007f86ab26e950:   movq   $0x0,0x18(%rsi)
   0.21%     0x00007f86ab26e958:   mov    %rsi,%r10
   0.05%     0x00007f86ab26e95b:   mov    %ebp,0x1c(%r10)
   0.44%     0x00007f86ab26e95f:   mov    %edi,0x18(%r10)
   0.20%     0x00007f86ab26e963:   mov    %r8d,0x14(%r10)
   0.18%     0x00007f86ab26e967:   mov    %r11d,0x10(%r10)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int128Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.10%     0x00007f86ab26e96b:   mov    0x1b8(%r15),%rsi
   0.10%     0x00007f86ab26e972:   mov    %r11d,0xa4(%rsp)
   0.12%     0x00007f86ab26e97a:   lea    0x10(%rsi),%r11
   0.09%     0x00007f86ab26e97e:   xchg   %ax,%ax
   0.07%     0x00007f86ab26e980:   cmp    0x1c8(%r15),%r11
             0x00007f86ab26e987:   ja     0x00007f86ab26ece5
   0.13%     0x00007f86ab26e98d:   mov    %r11,0x1b8(%r15)
   0.15%     0x00007f86ab26e994:   prefetchw 0xd0(%rsi)
   0.07%     0x00007f86ab26e99b:   movq   $0x1,(%rsi)
   0.46%     0x00007f86ab26e9a2:   movl   $0x10c4928,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int128Vector&apos;)}
   0.27%     0x00007f86ab26e9a9:   movl   $0x0,0xc(%rsi)
   0.20%     0x00007f86ab26e9b0:   mov    %rsi,%r11
   0.00%     0x00007f86ab26e9b3:   mov    %r8d,0xa0(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@62 (line 210)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.06%     0x00007f86ab26e9bb:   mov    0x1b8(%r15),%rsi
   0.15%     0x00007f86ab26e9c2:   lea    0x20(%rsi),%r8
   0.23%     0x00007f86ab26e9c6:   cmp    0x1c8(%r15),%r8
             0x00007f86ab26e9cd:   ja     0x00007f86ab26ed2c
   0.01%     0x00007f86ab26e9d3:   mov    %r8,0x1b8(%r15)
   0.10%     0x00007f86ab26e9da:   prefetchw 0xe0(%rsi)
   0.47%     0x00007f86ab26e9e1:   prefetchw 0x120(%rsi)
   0.12%     0x00007f86ab26e9e8:   prefetchw 0x160(%rsi)
   0.14%     0x00007f86ab26e9ef:   prefetchw 0x1a0(%rsi)
   0.18%     0x00007f86ab26e9f6:   movq   $0x1,(%rsi)
   0.43%     0x00007f86ab26e9fd:   movl   $0x26a0,0x8(%rsi)            ;   {metadata({type array int})}
   0.67%     0x00007f86ab26ea04:   movl   $0x4,0xc(%rsi)
   0.32%     0x00007f86ab26ea0b:   movq   $0x0,0x10(%rsi)
   0.26%     0x00007f86ab26ea13:   movq   $0x0,0x18(%rsi)
   0.21%     0x00007f86ab26ea1b:   mov    %rsi,%rcx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.05%     0x00007f86ab26ea1e:   mov    0x68(%rsp),%rbp
   0.04%     0x00007f86ab26ea23:   mov    0x1c(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.08%     0x00007f86ab26ea2a:   add    0x1c(%rbp),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.23%     0x00007f86ab26ea2d:   mov    %esi,0x1c(%rcx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.14%     0x00007f86ab26ea30:   mov    0x18(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.04%     0x00007f86ab26ea37:   add    0x18(%rbp),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.06%     0x00007f86ab26ea3a:   mov    %esi,0x18(%rcx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.18%     0x00007f86ab26ea3d:   mov    0x14(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.11%     0x00007f86ab26ea44:   add    0x14(%rbp),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.04%     0x00007f86ab26ea47:   mov    %esi,0x14(%rcx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.13%     0x00007f86ab26ea4a:   mov    0x10(,%rdx,8),%esi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.11%     0x00007f86ab26ea51:   add    0x10(%rbp),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.10%     0x00007f86ab26ea54:   mov    %esi,0x10(%rcx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int128Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007f86300d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int128Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.11%     0x00007f86ab26ea57:   mov    %r10,%rsi
   0.05%     0x00007f86ab26ea5a:   shr    $0x3,%rsi
   0.10%     0x00007f86ab26ea5e:   mov    %esi,0xc(%rbx)
   0.07%     0x00007f86ab26ea61:   mov    %rbx,%rsi
   0.07%     0x00007f86ab26ea64:   xor    %r10,%rsi
   0.06%     0x00007f86ab26ea67:   test   $0xffffffffffe00000,%rsi
             0x00007f86ab26ea6e:   je     0x00007f86ab26ebbd
             0x00007f86ab26ea74:   test   %r10,%r10
             0x00007f86ab26ea77:   je     0x00007f86ab26ec25
             0x00007f86ab26ea7d:   mov    0xf0(%rsp),%r8
             0x00007f86ab26ea85:   mov    %rbx,%rdi
             0x00007f86ab26ea88:   shr    $0x9,%rdi
             0x00007f86ab26ea8c:   cmpb   $0x2,(%rdi,%r8,1)
             0x00007f86ab26ea91:   jne    0x00007f86ab26ec96           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int128Vector::vectorFactory@2 (line 41)
....................................................................................................
  21.59%  <total for region 3>

....[Hottest Regions]...............................................................................
  35.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 
  23.50%       jvmci, level 4  jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1239 
  21.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 
   6.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 
   3.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 
   2.30%       jvmci, level 4  jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1239 
   1.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 
   0.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 
   0.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 
   0.25%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.13%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 
   0.07%               kernel  [unknown] 
   0.05%            libjvm.so  G1CardSet::reset_table_scanner 
   0.05%               kernel  [unknown] 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.04%           ld-2.31.so  __tls_get_addr 
   2.45%  <...other 595 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1279 
  25.80%       jvmci, level 4  jdk.incubator.vector.Int128Vector$Int128Mask::bOp, version 2, compile id 1239 
   1.62%               kernel  [unknown] 
   0.17%                       <unknown> 
   0.14%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%            libjvm.so  G1CardSet::reset_table_scanner 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.04%           ld-2.31.so  __tls_get_addr 
   0.04%         libc-2.31.so  __memset_avx2_erms 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%            libjvm.so  TypeArrayKlass::allocate_common 
   0.02%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.02%            libjvm.so  HeapRegion::clear_cardtable 
   1.00%  <...other 258 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.61%       jvmci, level 4
   1.62%               kernel
   1.10%            libjvm.so
   0.20%         libc-2.31.so
   0.17%                     
   0.10%  libjvmcicompiler.so
   0.06%          interpreter
   0.04%           ld-2.31.so
   0.03%   libpthread-2.31.so
   0.02%               [vdso]
   0.02%       hsdis-amd64.so
   0.01%          c1, level 3
   0.01%     perf-2129780.map
   0.00%          c1, level 2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 65536, vectorSize = 256)

# Run progress: 83.33% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 33352.344 us/op
# Warmup Iteration   2: 14073.185 us/op
# Warmup Iteration   3: 14059.838 us/op
# Warmup Iteration   4: 14056.323 us/op
# Warmup Iteration   5: 14052.082 us/op
Iteration   1: 14054.542 us/op
Iteration   2: 14048.417 us/op
Iteration   3: 14054.010 us/op
Iteration   4: 14047.642 us/op
Iteration   5: 14049.043 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  14050.731 ±(99.9%) 12.628 us/op [Average]
  (min, avg, max) = (14047.642, 14050.731, 14054.542), stdev = 3.279
  CI (99.9%): [14038.103, 14063.359] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 317760 total address lines.
Perf output processed (skipped 60.710 seconds):
 Column 1: cycles (50874 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 

 <region is too big to display, has 1277 lines, but threshold is 1000>
....................................................................................................
  28.18%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1216 

                       # parm1:    rcx:rcx   = &apos;jdk/incubator/vector/AbstractMask$MBinOp&apos;
                       #           [sp+0x40]  (sp of caller)
                       0x00007fca8324e7a0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                       0x00007fca8324e7a4:   movabs $0x7fca07000000,%r12
                       0x00007fca8324e7ae:   add    %r12,%r10
                       0x00007fca8324e7b1:   xor    %r12,%r12
                       0x00007fca8324e7b4:   cmp    %r10,%rax
                       0x00007fca8324e7b7:   jne    0x00007fca82c2f080           ;   {runtime_call ic_miss_stub}
                       0x00007fca8324e7bd:   data16 xchg %ax,%ax
                     [Verified Entry Point]
   0.23%               0x00007fca8324e7c0:   mov    %eax,-0x14000(%rsp)
   0.19%               0x00007fca8324e7c7:   sub    $0x38,%rsp
   0.06%               0x00007fca8324e7cb:   nop
   0.14%               0x00007fca8324e7cc:   cmpl   $0x1,0x20(%r15)
   0.05%               0x00007fca8324e7d4:   jne    0x00007fca8324f065
   0.12%               0x00007fca8324e7da:   mov    %rbp,0x30(%rsp)
   0.08%               0x00007fca8324e7df:   nop
   0.12%               0x00007fca8324e7e0:   test   %rdx,%rdx
                       0x00007fca8324e7e3:   je     0x00007fca8324ec8d
   0.02%               0x00007fca8324e7e9:   mov    0x8(%rdx),%eax
   0.11%               0x00007fca8324e7ec:   movabs $0x7fca07000000,%r10
   0.07%               0x00007fca8324e7f6:   lea    (%r10,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@17 (line 623)
   0.14%               0x00007fca8324e7fa:   nopw   0x0(%rax,%rax,1)
   0.01%               0x00007fca8324e800:   test   %rdx,%rdx
          ╭            0x00007fca8324e803:   je     0x00007fca8324e81c
   0.09%  │            0x00007fca8324e809:   movabs $0x7fca080c5b80,%r10         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.06%  │            0x00007fca8324e813:   cmp    %rax,%r10
          │            0x00007fca8324e816:   jne    0x00007fca8324efa5           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                      ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.11%  ↘            0x00007fca8324e81c:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007fca8324f089
                                                                                 ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
                                                                                 ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                 ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.05%               0x00007fca8324e81e:   mov    0x8(%rcx),%eax               ; implicit exception: dispatches to 0x00007fca8324f0ad
   0.11%               0x00007fca8324e821:   mov    0xc(%rsi),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 622)
   0.09%               0x00007fca8324e825:   test   %r10d,%r10d
                       0x00007fca8324e828:   je     0x00007fca8324ec99
   0.14%               0x00007fca8324e82e:   mov    0x8(,%r10,8),%r11d
   0.07%               0x00007fca8324e836:   movabs $0x7fca07000000,%r8
   0.14%               0x00007fca8324e840:   lea    (%r8,%r11,1),%r11
   0.06%               0x00007fca8324e844:   movabs $0x7fca07001b00,%r8          ;   {metadata({type array bool})}
   0.15%               0x00007fca8324e84e:   test   %r10d,%r10d
           ╭           0x00007fca8324e851:   je     0x00007fca8324e860           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                     ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 606)
           │                                                                     ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 622)
   0.03%   │           0x00007fca8324e857:   cmp    %r11,%r8
           │           0x00007fca8324e85a:   jne    0x00007fca8324ee62           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r10=NarrowOop }
           │                                                                     ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                                     ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.13%   ↘           0x00007fca8324e860:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fca8324f0d0
   0.06%               0x00007fca8324e868:   test   %r11d,%r11d
                       0x00007fca8324e86b:   je     0x00007fca8324ef5c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.13%               0x00007fca8324e871:   mov    0xc(%rdx),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 623)
   0.03%               0x00007fca8324e875:   test   %r9d,%r9d
                       0x00007fca8324e878:   je     0x00007fca8324eca5
   0.12%               0x00007fca8324e87e:   mov    0x8(,%r9,8),%ebx
   0.10%               0x00007fca8324e886:   movabs $0x7fca07000000,%rdi
   0.14%               0x00007fca8324e890:   lea    (%rdi,%rbx,1),%rbx
   0.07%               0x00007fca8324e894:   test   %r9d,%r9d
            ╭          0x00007fca8324e897:   je     0x00007fca8324e8a9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                                    ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 606)
            │                                                                    ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 623)
   0.12%    │          0x00007fca8324e89d:   data16 xchg %ax,%ax
   0.07%    │          0x00007fca8324e8a0:   cmp    %rbx,%r8
            │          0x00007fca8324e8a3:   jne    0x00007fca8324eeea           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop }
            │                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                                    ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::bOp@0 (line 621)
   0.14%    ↘          0x00007fca8324e8a9:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007fca8324f0f3
   0.02%               0x00007fca8324e8b1:   test   %ebx,%ebx
                       0x00007fca8324e8b3:   je     0x00007fca8324ef0e
   0.10%               0x00007fca8324e8b9:   movzbl 0x10(,%r9,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.05%               0x00007fca8324e8c2:   movzbl 0x10(,%r10,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.19%               0x00007fca8324e8cb:   movabs $0x7fca07000000,%r13
   0.01%               0x00007fca8324e8d5:   lea    0x0(%r13,%rax,1),%rax
   0.11%               0x00007fca8324e8da:   cmp    -0x161(%rip),%rax        # 0x00007fca8324e780
                                                                                 ;   {section_word}
   0.07%     ╭         0x00007fca8324e8e1:   je     0x00007fca8324e8f9
   0.04%     │         0x00007fca8324e8e7:   cmp    -0x166(%rip),%rax        # 0x00007fca8324e788
             │                                                                   ;   {section_word}
   0.02%     │         0x00007fca8324e8ee:   je     0x00007fca8324ec51
             │         0x00007fca8324e8f4:   jmp    0x00007fca8324eff7
   0.14%     ↘         0x00007fca8324e8f9:   and    %edi,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.16%               0x00007fca8324e8fb:   mov    %r9d,%edi
   0.02%               0x00007fca8324e8fe:   shl    $0x3,%rdi                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 623)
   0.02%               0x00007fca8324e902:   mov    %r10d,%r13d
   0.14%               0x00007fca8324e905:   shl    $0x3,%r13                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 622)
   0.12%               0x00007fca8324e909:   cmp    $0x2,%r11d
                       0x00007fca8324e90d:   jb     0x00007fca8324edd4           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.02%               0x00007fca8324e913:   cmp    $0x2,%ebx
                       0x00007fca8324e916:   jb     0x00007fca8324ed4c
   0.02%               0x00007fca8324e91c:   movzbl 0x11(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.18%               0x00007fca8324e925:   movzbl 0x11(,%r10,8),%edx
   0.20%               0x00007fca8324e92e:   cmp    -0x1b5(%rip),%rax        # 0x00007fca8324e780
                                                                                 ;   {section_word}
   0.01%      ╭        0x00007fca8324e935:   je     0x00007fca8324e94d
   0.00%      │        0x00007fca8324e93b:   cmp    -0x1ba(%rip),%rax        # 0x00007fca8324e788
              │                                                                  ;   {section_word}
   0.04%      │        0x00007fca8324e942:   je     0x00007fca8324ec7d
              │        0x00007fca8324e948:   jmp    0x00007fca8324f009
   0.02%      ↘        0x00007fca8324e94d:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.39%               0x00007fca8324e94f:   mov    %edx,%r14d
                       0x00007fca8324e952:   cmp    $0x3,%r11d
                       0x00007fca8324e956:   jb     0x00007fca8324efe5           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.07%               0x00007fca8324e95c:   nopl   0x0(%rax)
   0.01%               0x00007fca8324e960:   cmp    $0x3,%ebx
                       0x00007fca8324e963:   jb     0x00007fca8324f051
   0.33%               0x00007fca8324e969:   movzbl 0x12(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
                       0x00007fca8324e972:   movzbl 0x12(,%r10,8),%edx
   0.03%               0x00007fca8324e97b:   cmp    -0x202(%rip),%rax        # 0x00007fca8324e780
                                                                                 ;   {section_word}
   0.02%       ╭       0x00007fca8324e982:   je     0x00007fca8324e99a
   0.17%       │       0x00007fca8324e988:   cmp    -0x207(%rip),%rax        # 0x00007fca8324e788
               │                                                                 ;   {section_word}
   0.00%       │       0x00007fca8324e98f:   je     0x00007fca8324ec66
               │       0x00007fca8324e995:   jmp    0x00007fca8324ee8f
   0.12%       ↘       0x00007fca8324e99a:   and    %esi,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.20%               0x00007fca8324e99c:   nopl   0x0(%rax)
   0.01%               0x00007fca8324e9a0:   cmp    $0x4,%r11d
                       0x00007fca8324e9a4:   jb     0x00007fca8324eec6           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.03%               0x00007fca8324e9aa:   cmp    $0x4,%ebx
                       0x00007fca8324e9ad:   jb     0x00007fca8324f02d
   0.10%               0x00007fca8324e9b3:   mov    %rcx,0x18(%rsp)
   0.24%               0x00007fca8324e9b8:   movzbl 0x13(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.03%               0x00007fca8324e9c1:   movzbl 0x13(,%r10,8),%ecx
   0.02%               0x00007fca8324e9ca:   cmp    -0x251(%rip),%rax        # 0x00007fca8324e780
                                                                                 ;   {section_word}
   0.15%        ╭      0x00007fca8324e9d1:   je     0x00007fca8324e9eb
   0.16%        │      0x00007fca8324e9d7:   cmp    -0x256(%rip),%rax        # 0x00007fca8324e788
                │                                                                ;   {section_word}
                │      0x00007fca8324e9de:   xchg   %ax,%ax
   0.00%        │      0x00007fca8324e9e0:   je     0x00007fca8324ec5f
                │      0x00007fca8324e9e6:   jmp    0x00007fca8324ee2d
   0.03%        ↘      0x00007fca8324e9eb:   and    %esi,%ecx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.10%               0x00007fca8324e9ed:   cmp    $0x5,%r11d
                       0x00007fca8324e9f1:   jb     0x00007fca8324ee11           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.05%               0x00007fca8324e9f7:   cmp    $0x5,%ebx
                       0x00007fca8324e9fa:   jb     0x00007fca8324ef85
   0.15%               0x00007fca8324ea00:   mov    %rdi,0x8(%rsp)
   0.41%               0x00007fca8324ea05:   movzbl 0x14(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.02%               0x00007fca8324ea0e:   movzbl 0x14(,%r10,8),%edi
   0.01%               0x00007fca8324ea17:   cmp    -0x29e(%rip),%rax        # 0x00007fca8324e780
                                                                                 ;   {section_word}
   0.18%               0x00007fca8324ea1e:   xchg   %ax,%ax
   0.15%         ╭     0x00007fca8324ea20:   je     0x00007fca8324ea38
   0.07%         │     0x00007fca8324ea26:   cmp    -0x2a5(%rip),%rax        # 0x00007fca8324e788
                 │                                                               ;   {section_word}
   0.08%         │     0x00007fca8324ea2d:   je     0x00007fca8324ec58
                 │     0x00007fca8324ea33:   jmp    0x00007fca8324eda4
   0.03%         ↘     0x00007fca8324ea38:   and    %esi,%edi                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.13%               0x00007fca8324ea3a:   nopw   0x0(%rax,%rax,1)
   0.09%               0x00007fca8324ea40:   cmp    $0x6,%r11d
                       0x00007fca8324ea44:   jb     0x00007fca8324efb7           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.06%               0x00007fca8324ea4a:   cmp    $0x6,%ebx
                       0x00007fca8324ea4d:   jb     0x00007fca8324ed74
   0.12%               0x00007fca8324ea53:   mov    %r13,0x10(%rsp)
   0.16%               0x00007fca8324ea58:   movzbl 0x15(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.06%               0x00007fca8324ea61:   movzbl 0x15(,%r10,8),%r13d
   0.04%               0x00007fca8324ea6a:   cmp    -0x2f1(%rip),%rax        # 0x00007fca8324e780
                                                                                 ;   {section_word}
   0.08%          ╭    0x00007fca8324ea71:   je     0x00007fca8324ea8b
   0.11%          │    0x00007fca8324ea77:   cmp    -0x2f6(%rip),%rax        # 0x00007fca8324e788
                  │                                                              ;   {section_word}
   0.00%          │    0x00007fca8324ea7e:   xchg   %ax,%ax
   0.00%          │    0x00007fca8324ea80:   je     0x00007fca8324ec85
                  │    0x00007fca8324ea86:   jmp    0x00007fca8324ef6e
   0.04%          ↘    0x00007fca8324ea8b:   and    %esi,%r13d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.22%               0x00007fca8324ea8e:   cmp    $0x7,%r11d
                       0x00007fca8324ea92:   jb     0x00007fca8324ef4d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.04%               0x00007fca8324ea98:   nopl   0x0(%rax,%rax,1)
   0.04%               0x00007fca8324eaa0:   cmp    $0x7,%ebx
                       0x00007fca8324eaa3:   jb     0x00007fca8324f01b
   0.05%               0x00007fca8324eaa9:   mov    %r8,0x20(%rsp)
   0.37%               0x00007fca8324eaae:   movzbl 0x16(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.03%               0x00007fca8324eab7:   movzbl 0x16(,%r10,8),%r8d
   0.03%               0x00007fca8324eac0:   cmp    -0x347(%rip),%rax        # 0x00007fca8324e780
                                                                                 ;   {section_word}
   0.12%           ╭   0x00007fca8324eac7:   je     0x00007fca8324eadf
   0.16%           │   0x00007fca8324eacd:   cmp    -0x34c(%rip),%rax        # 0x00007fca8324e788
                   │                                                             ;   {section_word}
   0.02%           │   0x00007fca8324ead4:   je     0x00007fca8324ec75
                   │   0x00007fca8324eada:   jmp    0x00007fca8324ef20
   0.14%           ↘   0x00007fca8324eadf:   and    %esi,%r8d                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.19%               0x00007fca8324eae2:   cmp    $0x8,%r11d
                       0x00007fca8324eae6:   jb     0x00007fca8324eefc           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 625)
   0.03%               0x00007fca8324eaec:   cmp    $0x8,%ebx
                       0x00007fca8324eaef:   jb     0x00007fca8324efd1
   0.02%               0x00007fca8324eaf5:   movzbl 0x17(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 625)
   0.19%               0x00007fca8324eafe:   movzbl 0x17(,%r10,8),%r10d
   0.19%               0x00007fca8324eb07:   cmp    -0x38e(%rip),%rax        # 0x00007fca8324e780
                                                                                 ;   {section_word}
   0.05%            ╭  0x00007fca8324eb0e:   je     0x00007fca8324eb2b
   0.08%            │  0x00007fca8324eb14:   cmp    -0x393(%rip),%rax        # 0x00007fca8324e788
                    │                                                            ;   {section_word}
   0.01%            │  0x00007fca8324eb1b:   nopl   0x0(%rax,%rax,1)
   0.10%            │  0x00007fca8324eb20:   je     0x00007fca8324ec6d
                    │  0x00007fca8324eb26:   jmp    0x00007fca8324ede6
   0.06%            ↘  0x00007fca8324eb2b:   and    %esi,%r10d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$3@2 (line 699)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3580::apply@3
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 625)
   0.27%               0x00007fca8324eb2e:   mov    0x1b8(%r15),%rsi
   0.03%               0x00007fca8324eb35:   lea    0x10(%rsi),%rax
   0.03%               0x00007fca8324eb39:   nopl   0x0(%rax)
   0.04%               0x00007fca8324eb40:   cmp    0x1c8(%r15),%rax
                       0x00007fca8324eb47:   ja     0x00007fca8324ecf6
   1.18%               0x00007fca8324eb4d:   mov    %rax,0x1b8(%r15)
   0.11%               0x00007fca8324eb54:   prefetchw 0xd0(%rsi)
   0.31%               0x00007fca8324eb5b:   movq   $0x1,(%rsi)
   0.56%               0x00007fca8324eb62:   movl   $0x10c5b80,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.27%               0x00007fca8324eb69:   movl   $0x0,0xc(%rsi)
   0.06%               0x00007fca8324eb70:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@63 (line 627)
   0.00%               0x00007fca8324eb73:   mov    0x1b8(%r15),%rsi
   0.25%               0x00007fca8324eb7a:   lea    0x18(%rsi),%rax
   0.26%               0x00007fca8324eb7e:   xchg   %ax,%ax
   0.01%               0x00007fca8324eb80:   cmp    0x1c8(%r15),%rax
                       0x00007fca8324eb87:   ja     0x00007fca8324ed17
   0.27%               0x00007fca8324eb8d:   mov    %rax,0x1b8(%r15)
   0.35%               0x00007fca8324eb94:   prefetchw 0xd8(%rsi)
   0.76%               0x00007fca8324eb9b:   prefetchw 0x118(%rsi)
   0.12%               0x00007fca8324eba2:   prefetchw 0x158(%rsi)
   0.21%               0x00007fca8324eba9:   prefetchw 0x198(%rsi)
   0.27%               0x00007fca8324ebb0:   movq   $0x1,(%rsi)
   1.15%               0x00007fca8324ebb7:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.55%               0x00007fca8324ebbe:   movl   $0x8,0xc(%rsi)
   0.25%               0x00007fca8324ebc5:   movq   $0x0,0x10(%rsi)
   0.22%               0x00007fca8324ebcd:   mov    %r10b,0x17(%rsi)
   0.29%               0x00007fca8324ebd1:   mov    %r8b,0x16(%rsi)
   0.10%               0x00007fca8324ebd5:   mov    %r13b,0x15(%rsi)
   0.14%               0x00007fca8324ebd9:   mov    %dil,0x14(%rsi)
   0.17%               0x00007fca8324ebdd:   mov    %cl,0x13(%rsi)
   0.24%               0x00007fca8324ebe0:   mov    %dl,0x12(%rsi)
   0.11%               0x00007fca8324ebe3:   mov    %r14b,0x11(%rsi)
   0.18%               0x00007fca8324ebe7:   mov    %bpl,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 582)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 574)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 570)
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 627)
   0.17%               0x00007fca8324ebeb:   mov    %rsi,%rax
   0.06%               0x00007fca8324ebee:   shr    $0x3,%rax
   0.04%               0x00007fca8324ebf2:   mov    %eax,0xc(%r11)
   0.17%               0x00007fca8324ebf6:   mov    %r11,%rax
   0.11%               0x00007fca8324ebf9:   xor    %rsi,%rax
   0.05%               0x00007fca8324ebfc:   nopl   0x0(%rax)
   0.02%               0x00007fca8324ec00:   test   $0xffffffffffe00000,%rax
                       0x00007fca8324ec07:   je     0x00007fca8324ec32
                       0x00007fca8324ec0d:   test   %rsi,%rsi
                       0x00007fca8324ec10:   je     0x00007fca8324ec32
                       0x00007fca8324ec16:   mov    %r11,%r10
                       0x00007fca8324ec19:   shr    $0x9,%r10
                       0x00007fca8324ec1d:   movabs $0x7fca96425000,%r8
                       0x00007fca8324ec27:   cmpb   $0x2,(%r10,%r8,1)
                       0x00007fca8324ec2c:   jne    0x00007fca8324ecb1           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@63 (line 627)
   0.14%               0x00007fca8324ec32:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  20.98%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 

                                                                       ; - jdk.incubator.vector.IntVector::maskFactory@5 (line 116)
                                                                       ; - jdk.incubator.vector.IntVector::bTest@68 (line 478)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$59@9 (line 2034)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d1ef8::apply@14
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                       ; - jdk.incubator.vector.IntVector::compareTemplate@42 (line 2029)
                                                                       ; - jdk.incubator.vector.Int256Vector::compare@5 (line 384)
                                                                       ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lt@5 (line 1933)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@129 (line 86)
   0.11%     0x00007fca83277975:   mov    %r11,%rsi
             0x00007fca83277978:   mov    %r14,%rdx
   0.01%     0x00007fca8327797b:   mov    0x60(%rsp),%rcx              ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@7 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.03%     0x00007fca83277980:   mov    %r14,0x28(%rsp)
   0.14%     0x00007fca83277985:   mov    %r11,0x20(%rsp)
             0x00007fca8327798a:   nop
   0.04%     0x00007fca8327798b:   call   0x00007fca8324e7c0           ; ImmutableOopMap {[32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [136]=Oop [148]=NarrowOop [152]=Oop }
                                                                       ;*invokevirtual bOp {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@7 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
                                                                       ;   {optimized virtual_call}
   0.03%     0x00007fca83277990:   nopl   0x10001c00(%rax,%rax,1)      ;   {other}
   0.02%     0x00007fca83277998:   mov    %rax,%r10                    ; ImmutableOopMap {r10=Oop [32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [136]=Oop [148]=NarrowOop [152]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@10 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.08%     0x00007fca8327799b:   test   %eax,(%r10)                  ; implicit exception: dispatches to 0x00007fca83279bb0
   0.05%     0x00007fca8327799e:   mov    0x40(%rsp),%r13
   0.07%     0x00007fca832779a3:   mov    0xc(%r13),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.06%     0x00007fca832779a7:   test   %esi,%esi
             0x00007fca832779a9:   je     0x00007fca83278048
   0.06%     0x00007fca832779af:   mov    0x8(,%rsi,8),%eax
   0.10%     0x00007fca832779b6:   movabs $0x7fca07000000,%rdx
   0.01%     0x00007fca832779c0:   lea    (%rdx,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@20 (line 227)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.12%     0x00007fca832779c4:   test   %esi,%esi
             0x00007fca832779c6:   je     0x00007fca83277f14
   0.00%     0x00007fca832779cc:   mov    0x160(%rsp),%rbp
   0.03%     0x00007fca832779d4:   cmp    %rax,%rbp
             0x00007fca832779d7:   jne    0x00007fca832795f0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.12%     0x00007fca832779dd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rsi=NarrowOop r10=Oop r13=Oop [32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [136]=Oop [148]=NarrowOop [152]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@10 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.03%     0x00007fca832779e0:   cmpl   $0x8,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fca83279bd3
   0.03%     0x00007fca832779e8:   jb     0x00007fca832795a8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.10%     0x00007fca832779ee:   mov    0xc(%r10),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.04%     0x00007fca832779f2:   test   %eax,%eax
             0x00007fca832779f4:   je     0x00007fca8327809e
   0.01%     0x00007fca832779fa:   mov    0x8(,%rax,8),%edx
   0.03%     0x00007fca83277a01:   movabs $0x7fca07000000,%rcx
   0.11%     0x00007fca83277a0b:   lea    (%rcx,%rdx,1),%rdx
   0.03%     0x00007fca83277a0f:   test   %eax,%eax
             0x00007fca83277a11:   je     0x00007fca83277f25           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 606)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.01%     0x00007fca83277a17:   mov    0x120(%rsp),%rdi
   0.01%     0x00007fca83277a1f:   nop
   0.08%     0x00007fca83277a20:   cmp    %rdx,%rdi
             0x00007fca83277a23:   jne    0x00007fca83279588           ; ImmutableOopMap {rax=NarrowOop rsi=NarrowOop r10=Oop r13=Oop [32]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [136]=Oop [148]=NarrowOop [152]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$4@10 (line 699)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3368::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.04%     0x00007fca83277a29:   cmpl   $0x8,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007fca83279bf6
   0.04%     0x00007fca83277a31:   jb     0x00007fca83278e10           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda/0x00007fca080d3368::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@29 (line 697)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 565)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@148 (line 87)
   0.12%     0x00007fca83277a37:   nopw   0x0(%rax,%rax,1)
   0.04%     0x00007fca83277a40:   cmpb   $0x0,0x10(,%rax,8)
   0.02%     0x00007fca83277a48:   jne    0x00007fca83277fe9           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.14%     0x00007fca83277a4e:   mov    0x10(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.05%     0x00007fca83277a55:   mov    %edx,0xc0(%rsp)
   0.02%     0x00007fca83277a5c:   mov    0x38(%rsp),%r14              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.02%     0x00007fca83277a61:   cmpb   $0x0,0x11(,%rax,8)
   0.13%     0x00007fca83277a69:   jne    0x00007fca83277ffe           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.05%     0x00007fca83277a6f:   mov    0x14(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.06%     0x00007fca83277a76:   mov    %edx,%r8d
   0.07%     0x00007fca83277a79:   nopl   0x0(%rax)
   0.04%     0x00007fca83277a80:   cmpb   $0x0,0x12(,%rax,8)
   0.17%     0x00007fca83277a88:   jne    0x00007fca83278007           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.11%     0x00007fca83277a8e:   mov    0x18(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
                                                                       ;   {no_reloc}
   0.03%     0x00007fca83277a95:   mov    %edx,%r9d
   0.02%     0x00007fca83277a98:   nopl   0x0(%rax,%rax,1)
   0.03%     0x00007fca83277aa0:   cmpb   $0x0,0x13(,%rax,8)
   0.26%     0x00007fca83277aa8:   jne    0x00007fca83277fc5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.11%     0x00007fca83277aae:   mov    0x1c(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.05%     0x00007fca83277ab5:   mov    %edx,%ecx
   0.05%     0x00007fca83277ab7:   nopw   0x0(%rax,%rax,1)
   0.02%     0x00007fca83277ac0:   cmpb   $0x0,0x14(,%rax,8)
   0.20%     0x00007fca83277ac8:   jne    0x00007fca83277fd7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.10%     0x00007fca83277ace:   mov    0x20(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.04%     0x00007fca83277ad5:   mov    %edx,%ebx
   0.04%     0x00007fca83277ad7:   nopw   0x0(%rax,%rax,1)
   0.02%     0x00007fca83277ae0:   cmpb   $0x0,0x15(,%rax,8)
   0.17%     0x00007fca83277ae8:   jne    0x00007fca83277fe0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.15%     0x00007fca83277aee:   mov    0x24(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.14%     0x00007fca83277af5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.02%     0x00007fca83277b00:   cmpb   $0x0,0x16(,%rax,8)
   0.16%     0x00007fca83277b08:   jne    0x00007fca83277fb5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.11%     0x00007fca83277b0e:   mov    %r10,0x18(%rsp)
   0.01%     0x00007fca83277b13:   mov    0x28(,%rsi,8),%r10d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.01%     0x00007fca83277b1b:   nopl   0x0(%rax,%rax,1)
   0.06%     0x00007fca83277b20:   cmpb   $0x0,0x17(,%rax,8)
   0.16%     0x00007fca83277b28:   jne    0x00007fca83277fce           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@63 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.08%     0x00007fca83277b2e:   mov    0x2c(,%rsi,8),%r13d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@91 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.04%     0x00007fca83277b36:   mov    %r13d,%r14d
   0.03%     0x00007fca83277b39:   mov    0x48(%rsp),%r13
   0.00%     0x00007fca83277b3e:   mov    0xc(%r13),%edi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.28%     0x00007fca83277b42:   test   %edi,%edi
             0x00007fca83277b44:   je     0x00007fca83278092
   0.16%     0x00007fca83277b4a:   mov    0x8(,%rdi,8),%r13d
   0.59%     0x00007fca83277b52:   movabs $0x7fca07000000,%r11
             0x00007fca83277b5c:   lea    (%r11,%r13,1),%r13           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.19%     0x00007fca83277b60:   mov    %esi,%r11d
   0.00%     0x00007fca83277b63:   shl    $0x3,%r11                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007fca83277b67:   shl    $0x3,%rax                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                       ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 606)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@38 (line 229)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
             0x00007fca83277b6b:   test   %edi,%edi
          ╭  0x00007fca83277b6d:   je     0x00007fca83277b7c
   0.18%  │  0x00007fca83277b73:   cmp    %r13,%rbp
          │  0x00007fca83277b76:   jne    0x00007fca8327996f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 205)
          │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
          │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
          │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
          │                                                            ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
          │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │                                                            ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
          │                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
          │                                                            ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
          │                                                            ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.00%  ↘  0x00007fca83277b7c:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=Oop rdi=NarrowOop r11=Oop [24]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [136]=Oop [148]=NarrowOop [152]=Oop }
                                                                       ;*iastore {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.IntVector::bOpTemplate@92 (line 231)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.00%     0x00007fca83277b80:   cmpl   $0x8,0xc(,%rdi,8)            ; implicit exception: dispatches to 0x00007fca83279c19
   0.20%     0x00007fca83277b88:   jb     0x00007fca832796f7           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007fca83277b8e:   mov    0x1b8(%r15),%rsi             ;   {no_reloc}
   0.00%     0x00007fca83277b95:   lea    0x10(%rsi),%r13
             0x00007fca83277b99:   nopl   0x0(%rax)
   0.17%     0x00007fca83277ba0:   cmp    0x1c8(%r15),%r13
             0x00007fca83277ba7:   ja     0x00007fca83278505
   0.00%     0x00007fca83277bad:   mov    %r13,0x1b8(%r15)
             0x00007fca83277bb4:   prefetchw 0xd0(%rsi)
   0.01%     0x00007fca83277bbb:   movq   $0x1,(%rsi)
   0.21%     0x00007fca83277bc2:   movl   $0x10c5500,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.42%     0x00007fca83277bc9:   movl   $0x0,0xc(%rsi)
   0.01%     0x00007fca83277bd0:   mov    %rsi,%r13
             0x00007fca83277bd3:   mov    %r11,0x10(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@102 (line 233)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.02%     0x00007fca83277bd8:   mov    0x1b8(%r15),%rsi
   0.16%     0x00007fca83277bdf:   lea    0x30(%rsi),%r11
   0.01%     0x00007fca83277be3:   cmp    0x1c8(%r15),%r11
             0x00007fca83277bea:   ja     0x00007fca832785b8
   0.04%     0x00007fca83277bf0:   mov    %r11,0x1b8(%r15)
   0.07%     0x00007fca83277bf7:   prefetchw 0xf0(%rsi)
   0.23%     0x00007fca83277bfe:   prefetchw 0x130(%rsi)
   0.01%     0x00007fca83277c05:   prefetchw 0x170(%rsi)
   0.04%     0x00007fca83277c0c:   prefetchw 0x1b0(%rsi)
   0.09%     0x00007fca83277c13:   movq   $0x1,(%rsi)
   0.61%     0x00007fca83277c1a:   movl   $0x26a0,0x8(%rsi)            ;   {metadata({type array int})}
   0.02%     0x00007fca83277c21:   movl   $0x8,0xc(%rsi)
   0.16%     0x00007fca83277c28:   movq   $0x0,0x10(%rsi)
   0.03%     0x00007fca83277c30:   movq   $0x0,0x18(%rsi)
   0.14%     0x00007fca83277c38:   movq   $0x0,0x20(%rsi)
   0.09%     0x00007fca83277c40:   movq   $0x0,0x28(%rsi)
   0.17%     0x00007fca83277c48:   mov    %rsi,%r11
   0.01%     0x00007fca83277c4b:   mov    0xc0(%rsp),%esi
   0.04%     0x00007fca83277c52:   mov    %r14d,0x2c(%r11)
   0.11%     0x00007fca83277c56:   mov    %r10d,0x28(%r11)
   0.12%     0x00007fca83277c5a:   mov    %edx,0x24(%r11)
   0.06%     0x00007fca83277c5e:   mov    %ebx,0x20(%r11)
   0.12%     0x00007fca83277c62:   mov    %ecx,0x1c(%r11)
   0.17%     0x00007fca83277c66:   mov    %r9d,0x18(%r11)
   0.10%     0x00007fca83277c6a:   mov    %r8d,0x14(%r11)
   0.13%     0x00007fca83277c6e:   mov    %esi,0x10(%r11)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$blendTemplate$63@8 (line 2185)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d3990::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
                                                                       ; - jdk.incubator.vector.IntVector::blendTemplate@26 (line 2182)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@11 (line 410)
                                                                       ; - jdk.incubator.vector.Int256Vector::blend@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@158 (line 88)
   0.16%     0x00007fca83277c72:   mov    %r10d,0xcc(%rsp)
   0.12%     0x00007fca83277c7a:   mov    0x1b8(%r15),%r10
   0.03%     0x00007fca83277c81:   mov    %r8d,0xc8(%rsp)
   0.13%     0x00007fca83277c89:   lea    0x10(%r10),%r8
   0.06%     0x00007fca83277c8d:   cmp    0x1c8(%r15),%r8
             0x00007fca83277c94:   ja     0x00007fca83278631
   0.01%     0x00007fca83277c9a:   mov    %r8,0x1b8(%r15)
   0.13%     0x00007fca83277ca1:   prefetchw 0xd0(%r10)
   0.01%     0x00007fca83277ca9:   movq   $0x1,(%r10)
   0.17%     0x00007fca83277cb0:   movl   $0x10c5500,0x8(%r10)         ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.17%     0x00007fca83277cb8:   movl   $0x0,0xc(%r10)
   0.16%     0x00007fca83277cc0:   mov    %r9d,0xa4(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@62 (line 210)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.14%     0x00007fca83277cc8:   mov    0x1b8(%r15),%r8
   0.03%     0x00007fca83277ccf:   lea    0x30(%r8),%r9
   0.00%     0x00007fca83277cd3:   cmp    0x1c8(%r15),%r9
             0x00007fca83277cda:   ja     0x00007fca83278572
   0.02%     0x00007fca83277ce0:   mov    %r9,0x1b8(%r15)
   0.17%     0x00007fca83277ce7:   prefetchw 0xf0(%r8)
   0.06%     0x00007fca83277cef:   prefetchw 0x130(%r8)
   0.00%     0x00007fca83277cf7:   prefetchw 0x170(%r8)
   0.09%     0x00007fca83277cff:   prefetchw 0x1b0(%r8)
   0.19%     0x00007fca83277d07:   movq   $0x1,(%r8)
   0.71%     0x00007fca83277d0e:   movl   $0x26a0,0x8(%r8)             ;   {metadata({type array int})}
   0.06%     0x00007fca83277d16:   movl   $0x8,0xc(%r8)
   0.18%     0x00007fca83277d1e:   movq   $0x0,0x10(%r8)
   0.05%     0x00007fca83277d26:   movq   $0x0,0x18(%r8)
   0.16%     0x00007fca83277d2e:   movq   $0x0,0x20(%r8)
   0.06%     0x00007fca83277d36:   movq   $0x0,0x28(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.09%     0x00007fca83277d3e:   mov    0x68(%rsp),%rsi
   0.02%     0x00007fca83277d43:   mov    0x2c(,%rdi,8),%eax           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007fca83277d4a:   add    0x2c(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007fca83277d4d:   mov    %eax,0x2c(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.15%     0x00007fca83277d51:   mov    0x28(,%rdi,8),%eax           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007fca83277d58:   add    0x28(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.05%     0x00007fca83277d5b:   mov    %eax,0x28(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.05%     0x00007fca83277d5f:   mov    0x24(,%rdi,8),%eax           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.10%     0x00007fca83277d66:   add    0x24(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.03%     0x00007fca83277d69:   mov    %eax,0x24(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.11%     0x00007fca83277d6d:   mov    0x20(,%rdi,8),%eax           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007fca83277d74:   add    0x20(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.09%     0x00007fca83277d77:   mov    %eax,0x20(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.05%     0x00007fca83277d7b:   mov    0x1c(,%rdi,8),%eax           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.03%     0x00007fca83277d82:   add    0x1c(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007fca83277d85:   mov    %eax,0x1c(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.10%     0x00007fca83277d89:   mov    0x18(,%rdi,8),%eax           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.00%     0x00007fca83277d90:   add    0x18(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.04%     0x00007fca83277d93:   mov    %eax,0x18(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.09%     0x00007fca83277d97:   mov    0x14(,%rdi,8),%eax           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.05%     0x00007fca83277d9e:   add    0x14(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.02%     0x00007fca83277da1:   mov    %eax,0x14(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.11%     0x00007fca83277da5:   mov    0x10(,%rdi,8),%eax           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.01%     0x00007fca83277dac:   add    0x10(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$16@2 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d43e8::apply@3
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 208)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007fca83277daf:   mov    %eax,0x10(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 204)
                                                                       ; - jdk.incubator.vector.IntVector::bOpTemplate@7 (line 224)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@10 (line 214)
                                                                       ; - jdk.incubator.vector.Int256Vector::bOp@4 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::lambda$binaryOperations$17@8 (line 847)
                                                                       ; - jdk.incubator.vector.IntVector$$Lambda/0x00007fca080d41d0::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                       ; - jdk.incubator.vector.IntVector::lanewiseTemplate@154 (line 784)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 285)
                                                                       ; - jdk.incubator.vector.Int256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.IntVector::add@5 (line 1352)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector@166 (line 89)
   0.07%     0x00007fca83277db3:   mov    %r11,%rax
   0.03%     0x00007fca83277db6:   shr    $0x3,%rax
   0.02%     0x00007fca83277dba:   mov    %eax,0xc(%r13)
   0.11%     0x00007fca83277dbe:   mov    %r13,%rax
   0.01%     0x00007fca83277dc1:   xor    %r11,%rax
   0.04%     0x00007fca83277dc4:   test   $0xffffffffffe00000,%rax
             0x00007fca83277dcb:   je     0x00007fca83278085
             0x00007fca83277dd1:   test   %r11,%r11
             0x00007fca83277dd4:   je     0x00007fca832780e5
             0x00007fca83277dda:   mov    0x130(%rsp),%r9
             0x00007fca83277de2:   mov    %r13,%rcx
             0x00007fca83277de5:   shr    $0x9,%rcx
             0x00007fca83277de9:   cmpb   $0x2,(%rcx,%r9,1)
             0x00007fca83277dee:   jne    0x00007fca83278171           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
....................................................................................................
  14.72%  <total for region 3>

....[Hottest Regions]...............................................................................
  28.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
  20.98%       jvmci, level 4  jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1216 
  14.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   8.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   6.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   6.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   4.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   2.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   2.00%       jvmci, level 4  jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1216 
   1.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   0.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   0.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
   0.17%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   2.46%  <...other 623 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1288 
  22.98%       jvmci, level 4  jdk.incubator.vector.Int256Vector$Int256Mask::bOp, version 2, compile id 1216 
   1.73%               kernel  [unknown] 
   0.12%                       <unknown> 
   0.06%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%         libc-2.31.so  __memset_avx2_erms 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.02%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.01%            libjvm.so  ObjArrayAllocator::initialize 
   0.79%  <...other 244 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.97%       jvmci, level 4
   1.73%               kernel
   0.73%            libjvm.so
   0.17%         libc-2.31.so
   0.12%                     
   0.12%  libjvmcicompiler.so
   0.07%          interpreter
   0.04%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%          c1, level 3
   0.00%          c1, level 1
   0.00%       libz.so.1.2.11
   0.00%         runtime stub
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector
# Parameters: (arraySize = 65536, vectorSize = 512)

# Run progress: 91.67% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 87732.935 us/op
# Warmup Iteration   2: 24854.632 us/op
# Warmup Iteration   3: 24855.434 us/op
# Warmup Iteration   4: 24824.099 us/op
# Warmup Iteration   5: 24820.590 us/op
Iteration   1: 24824.409 us/op
Iteration   2: 24829.305 us/op
Iteration   3: 24823.065 us/op
Iteration   4: 24820.423 us/op
Iteration   5: 24818.803 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector":
  24823.201 ±(99.9%) 15.617 us/op [Average]
  (min, avg, max) = (24818.803, 24823.201, 24829.305), stdev = 4.056
  CI (99.9%): [24807.584, 24838.818] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark.sortVector:asm":
PrintAssembly processed: 332484 total address lines.
Perf output processed (skipped 60.495 seconds):
 Column 1: cycles (51051 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 

 <region is too big to display, has 1918 lines, but threshold is 1000>
....................................................................................................
  34.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1172 

               # parm1:    rcx:rcx   = &apos;jdk/incubator/vector/AbstractMask$MBinOp&apos;
               #           [sp+0x60]  (sp of caller)
               0x00007f7303247400:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
               0x00007f7303247404:   movabs $0x7f7287000000,%r12
               0x00007f730324740e:   add    %r12,%r10
               0x00007f7303247411:   xor    %r12,%r12
               0x00007f7303247414:   cmp    %r10,%rax
               0x00007f7303247417:   jne    0x00007f7302c2f080           ;   {runtime_call ic_miss_stub}
               0x00007f730324741d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.10%       0x00007f7303247420:   mov    %eax,-0x14000(%rsp)
   0.20%       0x00007f7303247427:   sub    $0x58,%rsp
   0.00%       0x00007f730324742b:   nop
   0.01%       0x00007f730324742c:   cmpl   $0x1,0x20(%r15)
   0.02%       0x00007f7303247434:   jne    0x00007f7303248265
   0.15%       0x00007f730324743a:   mov    %rbp,0x50(%rsp)
   0.00%       0x00007f730324743f:   nop
   0.01%       0x00007f7303247440:   test   %rdx,%rdx
               0x00007f7303247443:   je     0x00007f7303247b8d
   0.00%       0x00007f7303247449:   mov    0x8(%rdx),%eax
   0.23%       0x00007f730324744c:   movabs $0x7f7287000000,%r10
   0.00%       0x00007f7303247456:   lea    (%r10,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@17 (line 639)
   0.01%       0x00007f730324745a:   nopw   0x0(%rax,%rax,1)
   0.01%       0x00007f7303247460:   test   %rdx,%rdx
          ╭    0x00007f7303247463:   je     0x00007f730324747c
   0.20%  │    0x00007f7303247469:   movabs $0x7f72880c6758,%r10         ;   {metadata(&apos;jdk/incubator/vector/Int512Vector$Int512Mask&apos;)}
   0.00%  │    0x00007f7303247473:   cmp    %rax,%r10
          │    0x00007f7303247476:   jne    0x00007f730324808c           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.01%  ↘    0x00007f730324747c:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f7303248289
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
               0x00007f730324747e:   mov    0x8(%rcx),%eax               ; implicit exception: dispatches to 0x00007f73032482ad
   0.19%       0x00007f7303247481:   mov    0xc(%rsi),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@11 (line 638)
   0.00%       0x00007f7303247485:   test   %r10d,%r10d
               0x00007f7303247488:   je     0x00007f7303247ba5
   0.01%       0x00007f730324748e:   mov    0x8(,%r10,8),%r11d
   0.02%       0x00007f7303247496:   movabs $0x7f7287000000,%r8
   0.16%       0x00007f73032474a0:   lea    (%r8,%r11,1),%r11
   0.01%       0x00007f73032474a4:   movabs $0x7f7287001b00,%r8          ;   {metadata({type array bool})}
               0x00007f73032474ae:   test   %r10d,%r10d
           ╭   0x00007f73032474b1:   je     0x00007f73032474c0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@4 (line 622)
           │                                                             ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@11 (line 638)
   0.00%   │   0x00007f73032474b7:   cmp    %r11,%r8
           │   0x00007f73032474ba:   jne    0x00007f7303247dfa           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r10=NarrowOop }
           │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                             ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.19%   ↘   0x00007f73032474c0:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f73032482d0
   0.00%       0x00007f73032474c8:   test   %r11d,%r11d
               0x00007f73032474cb:   je     0x00007f730324803a           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.02%       0x00007f73032474d1:   mov    0xc(%rdx),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@20 (line 639)
   0.01%       0x00007f73032474d5:   test   %r9d,%r9d
               0x00007f73032474d8:   je     0x00007f7303247bb1
   0.19%       0x00007f73032474de:   mov    0x8(,%r9,8),%ebx
   0.19%       0x00007f73032474e6:   movabs $0x7f7287000000,%rdi
               0x00007f73032474f0:   lea    (%rdi,%rbx,1),%rbx
   0.13%       0x00007f73032474f4:   test   %r9d,%r9d
            ╭  0x00007f73032474f7:   je     0x00007f7303247509           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@4 (line 622)
            │                                                            ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@20 (line 639)
   0.05%    │  0x00007f73032474fd:   data16 xchg %ax,%ax
            │  0x00007f7303247500:   cmp    %rbx,%r8
            │  0x00007f7303247503:   jne    0x00007f7303247f1c           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop }
            │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) jdk.incubator.vector.Int512Vector$Int512Mask::bOp@0 (line 637)
   0.14%    ↘  0x00007f7303247509:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f73032482f3
   0.00%       0x00007f7303247511:   test   %ebx,%ebx
               0x00007f7303247513:   je     0x00007f73032480b0
   0.05%       0x00007f7303247519:   movzbl 0x10(,%r9,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
               0x00007f7303247522:   movzbl 0x10(,%r10,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.15%       0x00007f730324752b:   movabs $0x7f7287000000,%r13
   0.00%       0x00007f7303247535:   lea    0x0(%r13,%rax,1),%rax
   0.05%       0x00007f730324753a:   cmp    -0x161(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.00%       0x00007f7303247541:   je     0x00007f7303247b11
   0.10%       0x00007f7303247547:   cmp    -0x166(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
   0.00%       0x00007f730324754e:   jne    0x00007f7303247d4f
               0x00007f7303247554:   xor    %edi,%ebp                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.10%       0x00007f7303247556:   mov    %ebp,0x44(%rsp)
   0.11%       0x00007f730324755a:   mov    %r9d,%edi
   0.00%       0x00007f730324755d:   shl    $0x3,%rdi                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@20 (line 639)
   0.00%       0x00007f7303247561:   mov    %r10d,%r13d
   0.11%       0x00007f7303247564:   shl    $0x3,%r13                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::getBits@1 (line 622)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@11 (line 638)
   0.11%       0x00007f7303247568:   cmp    $0x2,%r11d
               0x00007f730324756c:   jb     0x00007f73032480e9           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%       0x00007f7303247572:   cmp    $0x2,%ebx
               0x00007f7303247575:   jb     0x00007f7303247fe9
   0.01%       0x00007f730324757b:   movzbl 0x11(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.11%       0x00007f7303247584:   movzbl 0x11(,%r10,8),%edx
   0.13%       0x00007f730324758d:   cmp    -0x1b4(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.00%       0x00007f7303247594:   je     0x00007f7303247b6d
   0.00%       0x00007f730324759a:   cmp    -0x1b9(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
   0.00%       0x00007f73032475a1:   jne    0x00007f7303247fa0
   0.08%       0x00007f73032475a7:   xor    %esi,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
               0x00007f73032475a9:   mov    %edx,0x40(%rsp)
   0.16%       0x00007f73032475ad:   cmp    $0x3,%r11d
               0x00007f73032475b1:   jb     0x00007f7303247d7c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
               0x00007f73032475b7:   cmp    $0x3,%ebx
               0x00007f73032475ba:   jb     0x00007f73032481b7
   0.04%       0x00007f73032475c0:   movzbl 0x12(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.06%       0x00007f73032475c9:   movzbl 0x12(,%r10,8),%edx
   0.12%       0x00007f73032475d2:   cmp    -0x1f9(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.01%       0x00007f73032475d9:   je     0x00007f7303247b45
   0.06%       0x00007f73032475df:   cmp    -0x1fe(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
   0.00%       0x00007f73032475e6:   jne    0x00007f73032481c9
   0.11%       0x00007f73032475ec:   xor    %esi,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.12%       0x00007f73032475ee:   mov    %edx,0x3c(%rsp)
   0.08%       0x00007f73032475f2:   cmp    $0x4,%r11d
               0x00007f73032475f6:   jb     0x00007f7303247e75           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%       0x00007f73032475fc:   nopl   0x0(%rax)
   0.06%       0x00007f7303247600:   cmp    $0x4,%ebx
               0x00007f7303247603:   jb     0x00007f7303248225
   0.05%       0x00007f7303247609:   mov    %rcx,0x18(%rsp)
   0.14%       0x00007f730324760e:   movzbl 0x13(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.01%       0x00007f7303247617:   movzbl 0x13(,%r10,8),%ecx
   0.08%       0x00007f7303247620:   cmp    -0x247(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.10%       0x00007f7303247627:   je     0x00007f7303247b2e
   0.08%       0x00007f730324762d:   cmp    -0x24c(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
   0.03%       0x00007f7303247634:   jne    0x00007f730324819b
   0.09%       0x00007f730324763a:   xor    %esi,%ecx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.12%       0x00007f730324763c:   mov    %ecx,0x38(%rsp)
   0.34%       0x00007f7303247640:   cmp    $0x5,%r11d
               0x00007f7303247644:   jb     0x00007f7303247d1d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
               0x00007f730324764a:   cmp    $0x5,%ebx
               0x00007f730324764d:   jb     0x00007f730324805e
   0.00%       0x00007f7303247653:   mov    %rdi,0x8(%rsp)
   0.18%       0x00007f7303247658:   movzbl 0x14(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.06%       0x00007f7303247661:   movzbl 0x14(,%r10,8),%edi
   0.00%       0x00007f730324766a:   cmp    -0x291(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.04%       0x00007f7303247671:   je     0x00007f7303247b18
   0.07%       0x00007f7303247677:   cmp    -0x296(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
   0.09%       0x00007f730324767e:   xchg   %ax,%ax
               0x00007f7303247680:   jne    0x00007f730324811f
   0.10%       0x00007f7303247686:   xor    %esi,%edi                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.04%       0x00007f7303247688:   mov    %edi,0x34(%rsp)
   0.16%       0x00007f730324768c:   cmp    $0x6,%r11d
               0x00007f7303247690:   jb     0x00007f7303248246           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
               0x00007f7303247696:   cmp    $0x6,%ebx
               0x00007f7303247699:   jb     0x00007f730324817f
   0.04%       0x00007f730324769f:   mov    %r13,0x10(%rsp)
   0.26%       0x00007f73032476a4:   movzbl 0x15(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.03%       0x00007f73032476ad:   movzbl 0x15(,%r10,8),%r13d
   0.02%       0x00007f73032476b6:   cmp    -0x2dd(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.05%       0x00007f73032476bd:   data16 xchg %ax,%ax
   0.12%       0x00007f73032476c0:   je     0x00007f7303247b7b
   0.02%       0x00007f73032476c6:   cmp    -0x2e5(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
   0.07%       0x00007f73032476cd:   jne    0x00007f7303248136
   0.09%       0x00007f73032476d3:   xor    %esi,%r13d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.05%       0x00007f73032476d6:   mov    %r13d,0x30(%rsp)
   0.21%       0x00007f73032476db:   nopl   0x0(%rax,%rax,1)
               0x00007f73032476e0:   cmp    $0x7,%r11d
               0x00007f73032476e4:   jb     0x00007f7303247ead           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%       0x00007f73032476ea:   cmp    $0x7,%ebx
               0x00007f73032476ed:   jb     0x00007f73032481ff
   0.04%       0x00007f73032476f3:   mov    %r8,0x28(%rsp)
   0.19%       0x00007f73032476f8:   movzbl 0x16(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.00%       0x00007f7303247701:   movzbl 0x16(,%r10,8),%r8d
   0.01%       0x00007f730324770a:   cmp    -0x331(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.11%       0x00007f7303247711:   je     0x00007f7303247b5b
   0.11%       0x00007f7303247717:   cmp    -0x336(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
   0.07%       0x00007f730324771e:   xchg   %ax,%ax
   0.00%       0x00007f7303247720:   jne    0x00007f7303247f8e
   0.10%       0x00007f7303247726:   xor    %esi,%r8d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.09%       0x00007f7303247729:   mov    %r8d,0x24(%rsp)
   0.07%       0x00007f730324772e:   cmp    $0x8,%r11d
               0x00007f7303247732:   jb     0x00007f73032481ed           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%       0x00007f7303247738:   nopl   0x0(%rax,%rax,1)
   0.05%       0x00007f7303247740:   cmp    $0x8,%ebx
               0x00007f7303247743:   jb     0x00007f7303247e0c
   0.05%       0x00007f7303247749:   movzbl 0x17(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.08%       0x00007f7303247752:   movzbl 0x17(,%r10,8),%ebp
   0.01%       0x00007f730324775b:   cmp    -0x382(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.09%       0x00007f7303247762:   je     0x00007f7303247b54
   0.10%       0x00007f7303247768:   cmp    -0x387(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
               0x00007f730324776f:   jne    0x00007f73032480d7
   0.08%       0x00007f7303247775:   xor    %esi,%ebp                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.08%       0x00007f7303247777:   mov    %ebp,0x20(%rsp)
   0.10%       0x00007f730324777b:   nopl   0x0(%rax,%rax,1)
               0x00007f7303247780:   cmp    $0x9,%r11d
               0x00007f7303247784:   jb     0x00007f7303247eda           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.06%       0x00007f730324778a:   cmp    $0x9,%ebx
               0x00007f730324778d:   jb     0x00007f73032480c5
   0.07%       0x00007f7303247793:   movzbl 0x18(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.08%       0x00007f730324779c:   movzbl 0x18(,%r10,8),%r14d
               0x00007f73032477a5:   cmp    -0x3cc(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.14%       0x00007f73032477ac:   je     0x00007f7303247b4c
   0.10%       0x00007f73032477b2:   cmp    -0x3d1(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
   0.00%       0x00007f73032477b9:   jne    0x00007f7303247e48
   0.07%       0x00007f73032477bf:   xor    %esi,%r14d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.09%       0x00007f73032477c2:   cmp    $0xa,%r11d
               0x00007f73032477c6:   jb     0x00007f7303247e39           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.01%       0x00007f73032477cc:   cmp    $0xa,%ebx
               0x00007f73032477cf:   jb     0x00007f7303248211
   0.01%       0x00007f73032477d5:   movzbl 0x19(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.17%       0x00007f73032477de:   movzbl 0x19(,%r10,8),%edx
   0.10%       0x00007f73032477e7:   cmp    -0x40e(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.02%       0x00007f73032477ee:   je     0x00007f7303247b3c
   0.11%       0x00007f73032477f4:   cmp    -0x413(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
               0x00007f73032477fb:   nopl   0x0(%rax,%rax,1)
   0.00%       0x00007f7303247800:   jne    0x00007f7303247dc5
   0.02%       0x00007f7303247806:   xor    %esi,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.11%       0x00007f7303247808:   cmp    $0xb,%r11d
               0x00007f730324780c:   jb     0x00007f7303247db3           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%       0x00007f7303247812:   cmp    $0xb,%ebx
               0x00007f7303247815:   jb     0x00007f730324807a
   0.00%       0x00007f730324781b:   movzbl 0x1a(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.15%       0x00007f7303247824:   movzbl 0x1a(,%r10,8),%ecx
   0.13%       0x00007f730324782d:   cmp    -0x454(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.08%       0x00007f7303247834:   je     0x00007f7303247b35
   0.09%       0x00007f730324783a:   cmp    -0x459(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
               0x00007f7303247841:   jne    0x00007f7303247ced
   0.09%       0x00007f7303247847:   xor    %esi,%ecx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.06%       0x00007f7303247849:   cmp    $0xc,%r11d
               0x00007f730324784d:   jb     0x00007f7303247cbd           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.02%       0x00007f7303247853:   cmp    $0xc,%ebx
               0x00007f7303247856:   jb     0x00007f730324804c
   0.00%       0x00007f730324785c:   movzbl 0x1b(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.21%       0x00007f7303247865:   movzbl 0x1b(,%r10,8),%edi
   0.05%       0x00007f730324786e:   cmp    -0x495(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.06%       0x00007f7303247875:   je     0x00007f7303247b27
   0.08%       0x00007f730324787b:   cmp    -0x49a(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
   0.00%       0x00007f7303247882:   jne    0x00007f7303247f6d
   0.08%       0x00007f7303247888:   xor    %esi,%edi                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.08%       0x00007f730324788a:   cmp    $0xd,%r11d
               0x00007f730324788e:   jb     0x00007f73032481db           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%       0x00007f7303247894:   cmp    $0xd,%ebx
               0x00007f7303247897:   jb     0x00007f730324800a
   0.01%       0x00007f730324789d:   movzbl 0x1c(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.22%       0x00007f73032478a6:   movzbl 0x1c(,%r10,8),%r13d
   0.09%       0x00007f73032478af:   cmp    -0x4d6(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.04%       0x00007f73032478b6:   je     0x00007f7303247b1f
   0.09%       0x00007f73032478bc:   cmp    -0x4db(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
               0x00007f73032478c3:   jne    0x00007f730324809e
   0.08%       0x00007f73032478c9:   xor    %esi,%r13d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.10%       0x00007f73032478cc:   cmp    $0xe,%r11d
               0x00007f73032478d0:   jb     0x00007f73032480fb           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.00%       0x00007f73032478d6:   cmp    $0xe,%ebx
               0x00007f73032478d9:   jb     0x00007f7303247c8d
   0.00%       0x00007f73032478df:   movzbl 0x1d(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.24%       0x00007f73032478e8:   movzbl 0x1d(,%r10,8),%r8d
   0.08%       0x00007f73032478f1:   cmp    -0x518(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.06%       0x00007f73032478f8:   je     0x00007f7303247b85
   0.08%       0x00007f73032478fe:   cmp    -0x51d(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
   0.00%       0x00007f7303247905:   jne    0x00007f7303247ff8
   0.07%       0x00007f730324790b:   xor    %esi,%r8d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.12%       0x00007f730324790e:   cmp    $0xf,%r11d
               0x00007f7303247912:   jb     0x00007f730324810d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
   0.05%       0x00007f7303247918:   nopl   0x0(%rax,%rax,1)
               0x00007f7303247920:   cmp    $0xf,%ebx
               0x00007f7303247923:   jb     0x00007f7303247f5e
   0.10%       0x00007f7303247929:   movzbl 0x1e(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.14%       0x00007f7303247932:   movzbl 0x1e(,%r10,8),%ebp
   0.05%       0x00007f730324793b:   cmp    -0x562(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.08%       0x00007f7303247942:   je     0x00007f7303247b74
   0.08%       0x00007f7303247948:   cmp    -0x567(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
               0x00007f730324794f:   jne    0x00007f7303247eec
   0.09%       0x00007f7303247955:   xor    %esi,%ebp                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.02%       0x00007f7303247957:   nopw   0x0(%rax,%rax,1)
               0x00007f7303247960:   cmp    $0x10,%r11d
               0x00007f7303247964:   jb     0x00007f7303247fd7           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@45 (line 641)
               0x00007f730324796a:   cmp    $0x10,%ebx
               0x00007f730324796d:   jb     0x00007f7303247f2e
   0.41%       0x00007f7303247973:   movzbl 0x1f(,%r9,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@50 (line 641)
   0.07%       0x00007f730324797c:   movzbl 0x1f(,%r10,8),%r10d
               0x00007f7303247985:   cmp    -0x5ac(%rip),%rax        # 0x00007f73032473e0
                                                                         ;   {section_word}
   0.17%       0x00007f730324798c:   je     0x00007f7303247b65
   0.10%       0x00007f7303247992:   cmp    -0x5b1(%rip),%rax        # 0x00007f73032473e8
                                                                         ;   {section_word}
               0x00007f7303247999:   jne    0x00007f7303247f7f
   0.11%       0x00007f730324799f:   xor    %esi,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::lambda$xor$7@2 (line 735)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask$$Lambda/0x00007f72880d3150::apply@3
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@51 (line 641)
   0.11%       0x00007f73032479a2:   mov    0x1b8(%r15),%rsi
   0.00%       0x00007f73032479a9:   lea    0x10(%rsi),%rax
   0.01%       0x00007f73032479ad:   cmp    0x1c8(%r15),%rax
               0x00007f73032479b4:   ja     0x00007f7303247c25
   0.16%       0x00007f73032479ba:   mov    %rax,0x1b8(%r15)
   0.21%       0x00007f73032479c1:   prefetchw 0xd0(%rsi)
   0.45%       0x00007f73032479c8:   movq   $0x1,(%rsi)
   0.23%       0x00007f73032479cf:   movl   $0x10c6758,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Int512Vector$Int512Mask&apos;)}
   0.16%       0x00007f73032479d6:   movl   $0x0,0xc(%rsi)
   0.44%       0x00007f73032479dd:   mov    %rsi,(%rsp)                  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@63 (line 643)
   0.01%       0x00007f73032479e1:   mov    0x1b8(%r15),%rsi
   0.07%       0x00007f73032479e8:   lea    0x20(%rsi),%rax
   0.12%       0x00007f73032479ec:   cmp    0x1c8(%r15),%rax
               0x00007f73032479f3:   ja     0x00007f7303247bdd
   0.15%       0x00007f73032479f9:   mov    %rax,0x1b8(%r15)
   0.22%       0x00007f7303247a00:   prefetchw 0xe0(%rsi)
   0.29%       0x00007f7303247a07:   prefetchw 0x120(%rsi)
   0.01%       0x00007f7303247a0e:   prefetchw 0x160(%rsi)
   0.15%       0x00007f7303247a15:   prefetchw 0x1a0(%rsi)
   0.09%       0x00007f7303247a1c:   movq   $0x1,(%rsi)
   0.11%       0x00007f7303247a23:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.79%       0x00007f7303247a2a:   movl   $0x10,0xc(%rsi)
   0.03%       0x00007f7303247a31:   movq   $0x0,0x10(%rsi)
   0.32%       0x00007f7303247a39:   movq   $0x0,0x18(%rsi)
   0.02%       0x00007f7303247a41:   mov    0x20(%rsp),%r9d
   0.05%       0x00007f7303247a46:   mov    0x24(%rsp),%ebx
   0.01%       0x00007f7303247a4a:   mov    0x30(%rsp),%eax
   0.12%       0x00007f7303247a4e:   mov    0x34(%rsp),%r11d
   0.02%       0x00007f7303247a53:   mov    %r10b,0x1f(%rsi)
   0.09%       0x00007f7303247a57:   mov    %bpl,0x1e(%rsi)
   0.03%       0x00007f7303247a5b:   mov    %r8b,0x1d(%rsi)
   0.17%       0x00007f7303247a5f:   mov    %r13b,0x1c(%rsi)
   0.13%       0x00007f7303247a63:   mov    %dil,0x1b(%rsi)
   0.11%       0x00007f7303247a67:   mov    %cl,0x1a(%rsi)
   0.07%       0x00007f7303247a6a:   mov    %dl,0x19(%rsi)
   0.10%       0x00007f7303247a6d:   mov    %r14b,0x18(%rsi)
   0.28%       0x00007f7303247a71:   mov    %r9b,0x17(%rsi)
   0.09%       0x00007f7303247a75:   mov    %bl,0x16(%rsi)
   0.11%       0x00007f7303247a78:   mov    %al,0x15(%rsi)
   0.14%       0x00007f7303247a7b:   mov    %r11b,0x14(%rsi)
   0.17%       0x00007f7303247a7f:   mov    0x38(%rsp),%eax
   0.00%       0x00007f7303247a83:   mov    %al,0x13(%rsi)
   0.21%       0x00007f7303247a86:   mov    0x3c(%rsp),%eax
   0.00%       0x00007f7303247a8a:   mov    %al,0x12(%rsi)
   0.21%       0x00007f7303247a8d:   mov    0x40(%rsp),%eax
   0.01%       0x00007f7303247a91:   mov    %al,0x11(%rsi)
   0.21%       0x00007f7303247a94:   mov    0x44(%rsp),%eax
   0.00%       0x00007f7303247a98:   mov    %al,0x10(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::prepare@6 (line 598)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::&lt;init&gt;@3 (line 590)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::&lt;init&gt;@3 (line 586)
                                                                         ; - jdk.incubator.vector.Int512Vector$Int512Mask::bOp@68 (line 643)
   0.21%       0x00007f7303247a9b:   mov    %rsi,%rax
               0x00007f7303247a9e:   shr    $0x3,%rax
               0x00007f7303247aa2:   mov    (%rsp),%rdx
   0.01%       0x00007f7303247aa6:   mov    %eax,0xc(%rdx)
   0.22%       0x00007f7303247aa9:   mov    %rdx,%rax
               0x00007f7303247aac:   xor    %rsi,%rax
               0x00007f7303247aaf:   test   $0xffffffffffe00000,%rax
               0x00007f7303247ab6:   je     0x00007f7303247b99
               0x00007f7303247abc:   nopl   0x0(%rax)
               0x00007f7303247ac0:   test   %rsi,%rsi
               0x00007f7303247ac3:   je     0x00007f7303247bbd
               0x00007f7303247ac9:   mov    %rdx,%r10
               0x00007f7303247acc:   shr    $0x9,%r10
               0x00007f7303247ad0:   movabs $0x7f72f76ef000,%r11
               0x00007f7303247ada:   nopw   0x0(%rax,%rax,1)
....................................................................................................
  20.44%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 

 <region is too big to display, has 1570 lines, but threshold is 1000>
....................................................................................................
  12.26%  <total for region 3>

....[Hottest Regions]...............................................................................
  34.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
  20.44%      jvmci, level 4  jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1172 
  12.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   7.87%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   6.70%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   3.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   2.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   2.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   2.12%      jvmci, level 4  jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1172 
   2.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   2.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   0.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   0.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   0.24%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   0.13%              kernel  [unknown] 
   0.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   2.53%  <...other 640 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SortVectorApiBenchmark::sortVector, version 4, compile id 1286 
  22.56%      jvmci, level 4  jdk.incubator.vector.Int512Vector$Int512Mask::bOp, version 2, compile id 1172 
   2.04%              kernel  [unknown] 
   0.21%                      <unknown> 
   0.06%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  defaultStream::write 
   0.01%         interpreter  fast_iload  224 fast_iload  
   0.01%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%         interpreter  fast_aaccess_0  222 fast_aaccess_0  
   0.01%           libjvm.so  G1CardSet::clear 
   0.70%  <...other 200 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.72%      jvmci, level 4
   2.04%              kernel
   0.66%           libjvm.so
   0.21%                    
   0.21%        libc-2.31.so
   0.06%         interpreter
   0.05%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%    perf-2129906.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:52

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

Benchmark                              (arraySize)  (vectorSize)  Mode  Cnt      Score    Error  Units
SortVectorApiBenchmark.sortVector               64            64  avgt    5      3.126 ±  0.041  us/op
SortVectorApiBenchmark.sortVector:asm           64            64  avgt             NaN             ---
SortVectorApiBenchmark.sortVector               64           128  avgt    5      7.330 ±  0.119  us/op
SortVectorApiBenchmark.sortVector:asm           64           128  avgt             NaN             ---
SortVectorApiBenchmark.sortVector               64           256  avgt    5     10.781 ±  0.032  us/op
SortVectorApiBenchmark.sortVector:asm           64           256  avgt             NaN             ---
SortVectorApiBenchmark.sortVector               64           512  avgt    5     20.585 ±  0.022  us/op
SortVectorApiBenchmark.sortVector:asm           64           512  avgt             NaN             ---
SortVectorApiBenchmark.sortVector             1024            64  avgt    5     50.174 ±  0.463  us/op
SortVectorApiBenchmark.sortVector:asm         1024            64  avgt             NaN             ---
SortVectorApiBenchmark.sortVector             1024           128  avgt    5    124.461 ±  1.870  us/op
SortVectorApiBenchmark.sortVector:asm         1024           128  avgt             NaN             ---
SortVectorApiBenchmark.sortVector             1024           256  avgt    5    213.319 ±  0.154  us/op
SortVectorApiBenchmark.sortVector:asm         1024           256  avgt             NaN             ---
SortVectorApiBenchmark.sortVector             1024           512  avgt    5    384.848 ±  0.208  us/op
SortVectorApiBenchmark.sortVector:asm         1024           512  avgt             NaN             ---
SortVectorApiBenchmark.sortVector            65536            64  avgt    5   3185.871 ± 11.306  us/op
SortVectorApiBenchmark.sortVector:asm        65536            64  avgt             NaN             ---
SortVectorApiBenchmark.sortVector            65536           128  avgt    5   7630.660 ±  7.782  us/op
SortVectorApiBenchmark.sortVector:asm        65536           128  avgt             NaN             ---
SortVectorApiBenchmark.sortVector            65536           256  avgt    5  14050.731 ± 12.628  us/op
SortVectorApiBenchmark.sortVector:asm        65536           256  avgt             NaN             ---
SortVectorApiBenchmark.sortVector            65536           512  avgt    5  24823.201 ± 15.617  us/op
SortVectorApiBenchmark.sortVector:asm        65536           512  avgt             NaN             ---
