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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark.read
# Parameters: (chunkSize = _1_KB, fileSize = _64_MB)

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 154.129 ns/op
# Warmup Iteration   2: 156.261 ns/op
# Warmup Iteration   3: 156.240 ns/op
# Warmup Iteration   4: 154.158 ns/op
# Warmup Iteration   5: 154.820 ns/op
Iteration   1: 154.521 ns/op
Iteration   2: 154.041 ns/op
Iteration   3: 154.097 ns/op
Iteration   4: 153.295 ns/op
Iteration   5: 153.477 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark.read":
  153.886 ±(99.9%) 1.913 ns/op [Average]
  (min, avg, max) = (153.295, 153.886, 154.521), stdev = 0.497
  CI (99.9%): [151.973, 155.799] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark.read:asm":
PrintAssembly processed: 133626 total address lines.
Perf output processed (skipped 56.712 seconds):
 Column 1: cycles (50684 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 4, compile id 604 

                      # {method} {0x00007f4f4c47bc40} &apos;read&apos; &apos;()[B&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/diskio/ByteArrayInputStreamBenchmark&apos;
                      #           [sp+0x70]  (sp of caller)
                      0x00007f4fd063dae0:   mov    0x8(%rsi),%r10d
                      0x00007f4fd063dae4:   movabs $0x7f4f57000000,%r11
                      0x00007f4fd063daee:   add    %r11,%r10
                      0x00007f4fd063daf1:   cmp    %r10,%rax
                      0x00007f4fd063daf4:   jne    0x00007f4fd00c4080           ;   {runtime_call ic_miss_stub}
                      0x00007f4fd063dafa:   xchg   %ax,%ax
                      0x00007f4fd063dafc:   nopl   0x0(%rax)
                    [Verified Entry Point]
   0.26%              0x00007f4fd063db00:   mov    %eax,-0x14000(%rsp)
                      0x00007f4fd063db07:   push   %rbp
                      0x00007f4fd063db08:   sub    $0x60,%rsp
   0.24%              0x00007f4fd063db0c:   cmpl   $0x1,0x20(%r15)
                      0x00007f4fd063db14:   jne    0x00007f4fd063e0c8           ;*synchronization entry
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@-1 (line 101)
                      0x00007f4fd063db1a:   mov    %rsi,0x40(%rsp)
   0.23%              0x00007f4fd063db1f:   mov    0x10(%rsi),%r10d             ;*getfield chunkSize {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@1 (line 101)
                      0x00007f4fd063db23:   mov    0x18(%r12,%r10,8),%r13d      ; implicit exception: dispatches to 0x00007f4fd063e050
                                                                                ;*getfield sizeInBytes {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.util.FileUtil$ChunkSize::get@1 (line 59)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@4 (line 101)
   0.00%              0x00007f4fd063db28:   cmp    $0x100000,%r13d
                      0x00007f4fd063db2f:   ja     0x00007f4fd063df24
   0.00%              0x00007f4fd063db35:   movslq %r13d,%rcx
   0.22%              0x00007f4fd063db38:   nopl   0x0(%rax,%rax,1)
                      0x00007f4fd063db40:   cmp    $0x100000,%r13d
                      0x00007f4fd063db47:   ja     0x00007f4fd063de09
   0.00%              0x00007f4fd063db4d:   mov    0x1b8(%r15),%r8
                      0x00007f4fd063db54:   add    $0x17,%rcx
   0.23%              0x00007f4fd063db58:   mov    %rcx,%r10
                      0x00007f4fd063db5b:   and    $0xfffffffffffffff8,%r10
                      0x00007f4fd063db5f:   mov    %r8,%r11
                      0x00007f4fd063db62:   add    %r10,%r11
   0.22%              0x00007f4fd063db65:   cmp    0x1c8(%r15),%r11
                      0x00007f4fd063db6c:   jae    0x00007f4fd063de09
   0.00%              0x00007f4fd063db72:   mov    %r11,0x1b8(%r15)
                      0x00007f4fd063db79:   mov    %r8,%rdi
                      0x00007f4fd063db7c:   add    $0x10,%rdi
   0.25%              0x00007f4fd063db80:   movq   $0x1,(%r8)
                      0x00007f4fd063db87:   prefetchw 0xc0(%r11)
   0.40%              0x00007f4fd063db8f:   movl   $0x22c0,0x8(%r8)             ;   {metadata({type array byte})}
                      0x00007f4fd063db97:   mov    %r13d,0xc(%r8)
   0.24%              0x00007f4fd063db9b:   prefetchw 0x100(%r11)
   0.13%              0x00007f4fd063dba3:   prefetchw 0x140(%r11)
   0.10%              0x00007f4fd063dbab:   prefetchw 0x180(%r11)
   0.08%              0x00007f4fd063dbb3:   shr    $0x3,%rcx
   0.22%              0x00007f4fd063dbb7:   add    $0xfffffffffffffffe,%rcx
   0.00%              0x00007f4fd063dbbb:   xor    %rax,%rax
   0.02%              0x00007f4fd063dbbe:   cmp    $0x8,%rcx
          ╭           0x00007f4fd063dbc2:   jg     0x00007f4fd063dbd4
          │           0x00007f4fd063dbc4:   dec    %rcx
          │╭          0x00007f4fd063dbc7:   js     0x00007f4fd063dc18
          ││↗         0x00007f4fd063dbc9:   mov    %rax,(%rdi,%rcx,8)
          │││         0x00007f4fd063dbcd:   dec    %rcx
          ││╰         0x00007f4fd063dbd0:   jge    0x00007f4fd063dbc9
          ││ ╭        0x00007f4fd063dbd2:   jmp    0x00007f4fd063dc18
   0.01%  ↘│ │        0x00007f4fd063dbd4:   vpxor  %ymm0,%ymm0,%ymm0
   0.20%   │ │╭       0x00007f4fd063dbd8:   jmp    0x00007f4fd063dbea
   3.76%   │ ││↗      0x00007f4fd063dbdd:   vmovdqu %ymm0,(%rdi)
   1.18%   │ │││      0x00007f4fd063dbe1:   vmovdqu %ymm0,0x20(%rdi)
   1.38%   │ │││      0x00007f4fd063dbe6:   add    $0x40,%rdi
   0.02%   │ │↘│      0x00007f4fd063dbea:   sub    $0x8,%rcx
           │ │ ╰      0x00007f4fd063dbee:   jge    0x00007f4fd063dbdd
   0.24%   │ │        0x00007f4fd063dbf0:   add    $0x4,%rcx
           │ │  ╭     0x00007f4fd063dbf4:   jl     0x00007f4fd063dc02
           │ │  │     0x00007f4fd063dbf6:   vmovdqu %ymm0,(%rdi)
           │ │  │     0x00007f4fd063dbfa:   add    $0x20,%rdi
           │ │  │     0x00007f4fd063dbfe:   sub    $0x4,%rcx
   0.01%   │ │  ↘     0x00007f4fd063dc02:   add    $0x4,%rcx
           │ │   ╭    0x00007f4fd063dc06:   jle    0x00007f4fd063dc18
           │ │   │    0x00007f4fd063dc08:   dec    %rcx
           │ │   │↗   0x00007f4fd063dc0b:   vmovq  %xmm0,(%rdi)
           │ │   ││   0x00007f4fd063dc0f:   add    $0x8,%rdi
           │ │   ││   0x00007f4fd063dc13:   dec    %rcx
           │ │   │╰   0x00007f4fd063dc16:   jge    0x00007f4fd063dc0b           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │ │   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@7 (line 101)
   0.29%   ↘ ↘   ↘    0x00007f4fd063dc18:   mov    %r8,0x10(%rsp)
                      0x00007f4fd063dc1d:   mov    0x40(%rsp),%r10
   0.24%              0x00007f4fd063dc22:   mov    0x18(%r10),%r10d             ;*getfield bais {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@11 (line 102)
   0.22%              0x00007f4fd063dc26:   mov    %r10d,0x28(%rsp)
   0.28%              0x00007f4fd063dc2b:   test   %r10d,%r10d
                      0x00007f4fd063dc2e:   je     0x00007f4fd063df09           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.io.ByteArrayInputStream::read@3 (line 174)
                                                                                ; - java.io.InputStream::read@5 (line 220)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
                      0x00007f4fd063dc34:   lea    (%r12,%r10,8),%r14           ;*getfield bais {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@11 (line 102)
                      0x00007f4fd063dc38:   lea    0x50(%rsp),%rbx
                      0x00007f4fd063dc3d:   mov    (%r14),%rax
   0.28%              0x00007f4fd063dc40:   test   $0x2,%al
                   ╭  0x00007f4fd063dc42:   jne    0x00007f4fd063dc6b
   0.01%           │  0x00007f4fd063dc48:   or     $0x1,%rax
                   │  0x00007f4fd063dc4c:   mov    %rax,(%rbx)
   0.03%           │  0x00007f4fd063dc4f:   lock cmpxchg %rbx,(%r14)
  46.83%           │  0x00007f4fd063dc54:   je     0x00007f4fd063dc91
                   │  0x00007f4fd063dc5a:   sub    %rsp,%rax
                   │  0x00007f4fd063dc5d:   and    $0xfffffffffffff007,%rax
                   │  0x00007f4fd063dc63:   mov    %rax,(%rbx)
                   │  0x00007f4fd063dc66:   jmp    0x00007f4fd063dc8f
                   ↘  0x00007f4fd063dc6b:   mov    %rax,%r10
                      0x00007f4fd063dc6e:   xor    %rax,%rax
                      0x00007f4fd063dc71:   lock cmpxchg %r15,0x3e(%r10)
                      0x00007f4fd063dc77:   movq   $0x3,(%rbx)
                      0x00007f4fd063dc7e:   je     0x00007f4fd063dc91
                      0x00007f4fd063dc80:   cmp    %rax,%r15
....................................................................................................
  57.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

                     0x00007f4fd00a8fc4:   mov    %rdx,%rcx
                     0x00007f4fd00a8fc7:   shr    $0x3,%rdx
   0.23%             0x00007f4fd00a8fcb:   lea    -0x8(%rdi,%rdx,8),%rdi
                     0x00007f4fd00a8fd0:   lea    -0x8(%rsi,%rdx,8),%rsi
                     0x00007f4fd00a8fd5:   neg    %rdx
          ╭          0x00007f4fd00a8fd8:   jmp    0x00007f4fd00a9048
          │↗     ↗   0x00007f4fd00a8fdd:   mov    0x8(%rdi,%rdx,8),%rax
          ││     │   0x00007f4fd00a8fe2:   mov    %rax,0x8(%rsi,%rdx,8)
          ││     │   0x00007f4fd00a8fe7:   inc    %rdx
          │╰     │   0x00007f4fd00a8fea:   jne    0x00007f4fd00a8fdd
   0.22%  │      │↗  0x00007f4fd00a8fec:   test   $0x4,%cl
          │ ╭    ││  0x00007f4fd00a8fef:   je     0x00007f4fd00a8fff
          │ │    ││  0x00007f4fd00a8ff1:   mov    0x8(%rdi),%eax
          │ │    ││  0x00007f4fd00a8ff4:   mov    %eax,0x8(%rsi)
          │ │    ││  0x00007f4fd00a8ff7:   add    $0x4,%rdi
          │ │    ││  0x00007f4fd00a8ffb:   add    $0x4,%rsi
   0.23%  │ ↘    ││  0x00007f4fd00a8fff:   test   $0x2,%cl
          │  ╭   ││  0x00007f4fd00a9002:   je     0x00007f4fd00a9014
          │  │   ││  0x00007f4fd00a9004:   mov    0x8(%rdi),%ax
          │  │   ││  0x00007f4fd00a9008:   mov    %ax,0x8(%rsi)
          │  │   ││  0x00007f4fd00a900c:   add    $0x2,%rdi
          │  │   ││  0x00007f4fd00a9010:   add    $0x2,%rsi
   0.25%  │  ↘   ││  0x00007f4fd00a9014:   test   $0x1,%cl
          │   ╭  ││  0x00007f4fd00a9017:   je     0x00007f4fd00a901f
          │   │  ││  0x00007f4fd00a9019:   mov    0x8(%rdi),%al
          │   │  ││  0x00007f4fd00a901c:   mov    %al,0x8(%rsi)
   0.23%  │   ↘  ││  0x00007f4fd00a901f:   xor    %rax,%rax
          │      ││  0x00007f4fd00a9022:   vzeroupper 
   0.25%  │      ││  0x00007f4fd00a9025:   leave  
   0.23%  │      ││  0x00007f4fd00a9026:   ret    
          │      ││  0x00007f4fd00a9027:   nopw   0x0(%rax,%rax,1)
   0.95%  │    ↗ ││  0x00007f4fd00a9030:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
   1.75%  │    │ ││  0x00007f4fd00a9036:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
   1.69%  │    │ ││  0x00007f4fd00a903c:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
  17.92%  │    │ ││  0x00007f4fd00a9042:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
   2.46%  ↘    │ ││  0x00007f4fd00a9048:   add    $0x8,%rdx
               ╰ ││  0x00007f4fd00a904c:   jle    0x00007f4fd00a9030
   0.11%         ││  0x00007f4fd00a904e:   sub    $0x4,%rdx
                ╭││  0x00007f4fd00a9052:   jg     0x00007f4fd00a9068
                │││  0x00007f4fd00a9058:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
                │││  0x00007f4fd00a905e:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
                │││  0x00007f4fd00a9064:   add    $0x4,%rdx
   0.00%        ↘││  0x00007f4fd00a9068:   sub    $0x4,%rdx
                 ╰│  0x00007f4fd00a906c:   jl     0x00007f4fd00a8fdd
   0.01%          ╰  0x00007f4fd00a9072:   jmp    0x00007f4fd00a8fec
                   --------------------------------------------------------------------------------
                   - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   StubRoutines::jbyte_arraycopy [0x00007f4fd00a9080, 0x00007f4fd00a9142] (194 bytes)
                   --------------------------------------------------------------------------------
   0.00%             0x00007f4fd00a9080:   push   %rbp
   0.27%             0x00007f4fd00a9081:   mov    %rsp,%rbp
                     0x00007f4fd00a9084:   cmp    %rdi,%rsi
....................................................................................................
  26.81%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 4, compile id 604 
  26.81%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   8.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 4, compile id 604 
   2.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 4, compile id 604 
   0.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.jmh_generated.ByteArrayInputStreamBenchmark_read_jmhTest::read_avgt_jmhStub, version 5, compile id 642 
   0.23%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.13%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.10%           libjvm.so  G1CardSet::reset_table_scanner 
   0.10%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%        libc-2.31.so  __memset_avx2_erms 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.05%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   2.29%  <...other 499 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 4, compile id 604 
  27.04%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.07%              kernel  [unknown] 
   0.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.jmh_generated.ByteArrayInputStreamBenchmark_read_jmhTest::read_avgt_jmhStub, version 5, compile id 642 
   0.22%                      <unknown> 
   0.17%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.10%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.10%           libjvm.so  G1CardSet::reset_table_scanner 
   0.07%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.06%        libc-2.31.so  __memset_avx2_erms 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.05%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%           libjvm.so  ObjArrayAllocator::initialize 
   0.04%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%           libjvm.so  G1FromCardCache::clear 
   0.04%           libjvm.so  MemAllocator::allocate 
   0.03%           libjvm.so  TypeArrayKlass::allocate_common 
   0.03%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.03%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%           libjvm.so  FreeCSetClosure::do_heap_region 
   1.10%  <...other 191 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  69.68%         c2, level 4
  27.04%        runtime stub
   1.56%           libjvm.so
   1.07%              kernel
   0.27%        libc-2.31.so
   0.22%                    
   0.06%  libpthread-2.31.so
   0.05%          ld-2.31.so
   0.02%              [vdso]
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:50

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

Benchmark                               (chunkSize)  (fileSize)  Mode  Cnt    Score   Error  Units
ByteArrayInputStreamBenchmark.read            _1_KB      _64_MB  avgt    5  153.886 ± 1.913  ns/op
ByteArrayInputStreamBenchmark.read:asm        _1_KB      _64_MB  avgt           NaN            ---
