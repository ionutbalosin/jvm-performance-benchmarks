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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark.read
# Parameters: (chunkSize = _1_KB, fileSize = _64_MB)

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 152.770 ns/op
# Warmup Iteration   2: 154.847 ns/op
# Warmup Iteration   3: 151.174 ns/op
# Warmup Iteration   4: 151.466 ns/op
# Warmup Iteration   5: 151.789 ns/op
Iteration   1: 153.466 ns/op
Iteration   2: 151.817 ns/op
Iteration   3: 153.079 ns/op
Iteration   4: 151.195 ns/op
Iteration   5: 153.917 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark.read":
  152.695 ±(99.9%) 4.414 ns/op [Average]
  (min, avg, max) = (151.195, 152.695, 153.917), stdev = 1.146
  CI (99.9%): [148.281, 157.109] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark.read:asm":
PrintAssembly processed: 230397 total address lines.
Perf output processed (skipped 60.938 seconds):
 Column 1: cycles (50984 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 2, compile id 989 

                 #           [sp+0x20]  (sp of caller)
                 0x00007f967ed844c0:   mov    0x8(%rsi),%r10d
                 0x00007f967ed844c4:   movabs $0x7f9603000000,%r12
                 0x00007f967ed844ce:   add    %r12,%r10
                 0x00007f967ed844d1:   xor    %r12,%r12
                 0x00007f967ed844d4:   cmp    %r10,%rax
                 0x00007f967ed844d7:   jne    0x00007f967e764080           ;   {runtime_call ic_miss_stub}
                 0x00007f967ed844dd:   data16 xchg %ax,%ax
               [Verified Entry Point]
                 0x00007f967ed844e0:   mov    %eax,-0x14000(%rsp)
   0.26%         0x00007f967ed844e7:   sub    $0x18,%rsp
                 0x00007f967ed844eb:   nop
                 0x00007f967ed844ec:   cmpl   $0x1,0x20(%r15)
   0.00%         0x00007f967ed844f4:   jne    0x00007f967ed84dad
   0.22%         0x00007f967ed844fa:   mov    %rbp,0x10(%rsp)
                 0x00007f967ed844ff:   mov    %rsi,%r11
                 0x00007f967ed84502:   mov    0x10(%r11),%eax              ; ImmutableOopMap {r11=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@0 (line 101)
                 0x00007f967ed84506:   mov    0x18(,%rax,8),%r8d           ; implicit exception: dispatches to 0x00007f967ed84de6
   0.25%         0x00007f967ed8450e:   mov    0x18(%r11),%r9d              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@0 (line 101)
                 0x00007f967ed84512:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
                                                                           ; ImmutableOopMap {r9=NarrowOop r11=Oop }
   0.69%         0x00007f967ed8451a:   nopw   0x0(%rax,%rax,1)
   0.01%         0x00007f967ed84520:   test   %r8d,%r8d
                 0x00007f967ed84523:   jl     0x00007f967ed84d8d
                 0x00007f967ed84529:   mov    0x1b8(%r15),%r10
                 0x00007f967ed84530:   mov    %r8d,%eax
   0.20%         0x00007f967ed84533:   lea    0x17(%rax),%rax
   0.02%         0x00007f967ed84537:   and    $0xfffffffffffffff8,%rax
                 0x00007f967ed8453b:   mov    %rax,%rsi
                 0x00007f967ed8453e:   add    %r10,%rsi
   0.24%         0x00007f967ed84541:   cmp    0x1c8(%r15),%rsi
                 0x00007f967ed84548:   ja     0x00007f967ed84847
   0.02%         0x00007f967ed8454e:   mov    %rsi,0x1b8(%r15)
                 0x00007f967ed84555:   prefetchw 0xc0(%rax,%r10,1)
   0.36%         0x00007f967ed8455e:   prefetchw 0x100(%rax,%r10,1)
   0.39%         0x00007f967ed84567:   prefetchw 0x140(%rax,%r10,1)
   0.13%         0x00007f967ed84570:   prefetchw 0x180(%rax,%r10,1)
   0.06%         0x00007f967ed84579:   movq   $0x1,(%r10)
   0.00%         0x00007f967ed84580:   movl   $0x22c0,0x8(%r10)            ;   {metadata({type array byte})}
   0.25%         0x00007f967ed84588:   mov    %r8d,0xc(%r10)
   0.03%         0x00007f967ed8458c:   lea    -0x10(%rax),%rcx
   0.00%         0x00007f967ed84590:   cmp    $0x810,%rax
                 0x00007f967ed84597:   jae    0x00007f967ed8489e
                 0x00007f967ed8459d:   data16 xchg %ax,%ax
   0.24%         0x00007f967ed845a0:   test   $0xfffffffffffffff8,%rcx
          ╭      0x00007f967ed845a7:   je     0x00007f967ed845f3
   0.02%  │      0x00007f967ed845ad:   lea    0x10(%r10),%rax
   0.01%  │      0x00007f967ed845b1:   shr    $0x3,%rcx
   0.00%  │      0x00007f967ed845b5:   vpxor  %xmm0,%xmm0,%xmm0
   0.22%  │      0x00007f967ed845b9:   nopl   0x0(%rax)
   0.01%  │      0x00007f967ed845c0:   cmp    $0x4,%rcx
          │      0x00007f967ed845c4:   jb     0x00007f967ed84839
   0.01%  │      0x00007f967ed845ca:   lea    -0x4(%rcx),%rsi
          │      0x00007f967ed845ce:   mov    $0x0,%rdx
   0.20%  │      0x00007f967ed845d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   7.56%  │↗     0x00007f967ed845e0:   vmovdqu %ymm0,(%rax,%rdx,8)
   2.25%  ││     0x00007f967ed845e5:   lea    0x4(%rdx),%rdx
   0.06%  ││     0x00007f967ed845e9:   cmp    %rsi,%rdx
          │╰     0x00007f967ed845ec:   jle    0x00007f967ed845e0
          │      0x00007f967ed845ee:   jmp    0x00007f967ed847f1
   0.23%  ↘      0x00007f967ed845f3:   mov    %r10,%rcx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@7 (line 101)
                 0x00007f967ed845f6:   mov    0x0(,%r9,8),%r10
   0.53%         0x00007f967ed845fe:   lea    (%rsp),%rbx                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.io.ByteArrayInputStream::read@0 (line 174)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
                 0x00007f967ed84602:   mov    %r9d,%edi
   0.22%         0x00007f967ed84605:   shl    $0x3,%rdi                    ;*getfield bais {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@11 (line 102)
                 0x00007f967ed84609:   test   $0x2,%r10
                 0x00007f967ed84610:   jne    0x00007f967ed8486b
   0.00%         0x00007f967ed84616:   or     $0x1,%r10
   0.01%         0x00007f967ed8461a:   mov    %r10,(%rbx)
   0.28%         0x00007f967ed8461d:   mov    %r10,%rax
                 0x00007f967ed84620:   lock cmpxchg %rbx,(%rdi)
  44.56%         0x00007f967ed84625:   cmp    %r10,%rax
                 0x00007f967ed84628:   jne    0x00007f967ed848ad
   0.01%         0x00007f967ed8462e:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.io.ByteArrayInputStream::read@0 (line 174)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
   0.29%         0x00007f967ed84635:   mov    0xc(,%r9,8),%eax             ;*getfield pos {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.io.ByteArrayInputStream::read@9 (line 176)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
                 0x00007f967ed8463d:   mov    0x14(,%r9,8),%esi            ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.io.ByteArrayInputStream::read@13 (line 176)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
   0.24%         0x00007f967ed84645:   cmp    %eax,%esi
                 0x00007f967ed84647:   jle    0x00007f967ed849a5           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.io.ByteArrayInputStream::read@16 (line 176)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
                 0x00007f967ed8464d:   sub    %eax,%esi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.io.ByteArrayInputStream::read@29 (line 180)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
                 0x00007f967ed8464f:   cmp    %esi,%r8d
                 0x00007f967ed84652:   jg     0x00007f967ed84d5b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.io.ByteArrayInputStream::read@35 (line 181)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
                 0x00007f967ed84658:   nopl   0x0(%rax,%rax,1)
   0.23%         0x00007f967ed84660:   cmp    $0x1,%r8d
                 0x00007f967ed84664:   jl     0x00007f967ed84d15           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.io.ByteArrayInputStream::read@42 (line 184)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
                 0x00007f967ed8466a:   mov    0x18(,%r9,8),%esi            ; ImmutableOopMap {rcx=Oop rsi=NarrowOop rdi=Oop r9=NarrowOop r11=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.io.ByteArrayInputStream::read@0 (line 174)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
                 0x00007f967ed84672:   mov    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007f967ed84e0d
   0.00%         0x00007f967ed84679:   nopl   0x0(%rax)
   0.25%         0x00007f967ed84680:   test   %eax,%eax
                 0x00007f967ed84682:   jl     0x00007f967ed84d3d           ;   {no_reloc}
                 0x00007f967ed84688:   sub    %r8d,%edx
   0.00%         0x00007f967ed8468b:   cmp    %edx,%eax
                 0x00007f967ed8468d:   jg     0x00007f967ed84d4c
                 0x00007f967ed84693:   lea    0x10(%rcx),%rdx              ;* unwind (locked if synchronized)
                                                                           ; - java.lang.System::arraycopy@-3
                                                                           ; - java.io.ByteArrayInputStream::read@58 (line 187)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
   0.25%         0x00007f967ed84697:   shl    $0x3,%rsi                    ;*getfield buf {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.io.ByteArrayInputStream::read@48 (line 187)
                                                                           ; - java.io.InputStream::read@5 (line 220)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
                 0x00007f967ed8469b:   lea    0x10(%rsi,%rax,1),%rsi
                 0x00007f967ed846a0:   mov    %r8d,%r10d
                 0x00007f967ed846a3:   cmp    $0x20,%r8d
                 0x00007f967ed846a7:   jb     0x00007f967ed8481c
   0.26%         0x00007f967ed846ad:   lea    -0x20(%r10),%rbx
                 0x00007f967ed846b1:   mov    $0x0,%rbp
                 0x00007f967ed846b8:   nopl   0x0(%rax,%rax,1)
   0.00%    ↗    0x00007f967ed846c0:   vmovdqu (%rsi,%rbp,1),%ymm0
  20.93%    │    0x00007f967ed846c5:   vmovdqu %ymm0,(%rdx,%rbp,1)
   3.55%    │    0x00007f967ed846ca:   lea    0x20(%rbp),%rbp
   0.00%    │    0x00007f967ed846ce:   cmp    %rbx,%rbp
            ╰    0x00007f967ed846d1:   jle    0x00007f967ed846c0
                 0x00007f967ed846d3:   lea    -0x10(%r10),%rbx
   0.11%         0x00007f967ed846d7:   cmp    %rbx,%rbp
                 0x00007f967ed846da:   jg     0x00007f967ed84831
                 0x00007f967ed846e0:   vmovdqu (%rsi,%rbp,1),%xmm0
                 0x00007f967ed846e5:   vmovdqu %xmm0,(%rdx,%rbp,1)
                 0x00007f967ed846ea:   lea    0x10(%rbp),%rbx
   0.25%         0x00007f967ed846ee:   lea    -0x8(%r10),%rbp
                 0x00007f967ed846f2:   cmp    %rbp,%rbx
             ╭   0x00007f967ed846f5:   jg     0x00007f967ed8470b
             │   0x00007f967ed846fb:   vmovq  (%rsi,%rbx,1),%xmm0
             │   0x00007f967ed84701:   vmovq  %xmm0,(%rdx,%rbx,1)
             │   0x00007f967ed84707:   lea    0x8(%rbx),%rbx
   0.27%     ↘   0x00007f967ed8470b:   lea    -0x4(%r10),%rbp
                 0x00007f967ed8470f:   cmp    %rbp,%rbx
              ╭  0x00007f967ed84712:   jg     0x00007f967ed84726
              │  0x00007f967ed84718:   vmovd  (%rsi,%rbx,1),%xmm0
              │  0x00007f967ed8471d:   vmovd  %xmm0,(%rdx,%rbx,1)
              │  0x00007f967ed84722:   lea    0x4(%rbx),%rbx
   0.26%      ↘  0x00007f967ed84726:   dec    %r10
                 0x00007f967ed84729:   cmp    %r10,%rbx
                 0x00007f967ed8472c:   jg     0x00007f967ed8476a
                 0x00007f967ed84732:   movsbl (%rsi,%rbx,1),%ebp
                 0x00007f967ed84736:   mov    %bpl,(%rdx,%rbx,1)
                 0x00007f967ed8473a:   mov    %rbx,%rbp
                 0x00007f967ed8473d:   inc    %rbp
                 0x00007f967ed84740:   cmp    %r10,%rbp
                 0x00007f967ed84743:   jg     0x00007f967ed8476a
                 0x00007f967ed84749:   movsbl 0x1(%rsi,%rbx,1),%ebp
                 0x00007f967ed8474e:   mov    %bpl,0x1(%rdx,%rbx,1)
....................................................................................................
  86.43%  <total for region 1>

....[Hottest Regions]...............................................................................
  86.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 2, compile id 989 
   8.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 2, compile id 989 
   0.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.jmh_generated.ByteArrayInputStreamBenchmark_read_jmhTest::read_avgt_jmhStub, version 5, compile id 1021 
   0.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 2, compile id 989 
   0.19%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.11%           libjvm.so  G1CardSet::reset_table_scanner 
   0.11%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.10%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.08%        libc-2.31.so  __memset_avx2_erms 
   0.07%                      <unknown> 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.06%           libjvm.so  HeapRegionClaimer::claim_region 
   0.06%           libjvm.so  TypeArrayKlass::allocate_common 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%              kernel  [unknown] 
   2.78%  <...other 593 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.87%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 2, compile id 989 
   1.65%              kernel  [unknown] 
   0.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.jmh_generated.ByteArrayInputStreamBenchmark_read_jmhTest::read_avgt_jmhStub, version 5, compile id 1021 
   0.29%                      <unknown> 
   0.15%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.11%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.11%           libjvm.so  G1CardSet::reset_table_scanner 
   0.08%        libc-2.31.so  __memset_avx2_erms 
   0.07%           libjvm.so  ObjArrayAllocator::initialize 
   0.06%           libjvm.so  TypeArrayKlass::allocate_common 
   0.06%           libjvm.so  HeapRegionClaimer::claim_region 
   0.06%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.05%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.04%           libjvm.so  G1CardSet::clear 
   0.04%           libjvm.so  G1FromCardCache::clear 
   0.04%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.04%              [vdso]  __vdso_clock_gettime 
   0.03%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   1.17%  <...other 205 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.86%      jvmci, level 4
   1.72%           libjvm.so
   1.65%              kernel
   0.32%        libc-2.31.so
   0.29%                    
   0.08%  libpthread-2.31.so
   0.04%              [vdso]
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:54

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
ByteArrayInputStreamBenchmark.read            _1_KB      _64_MB  avgt    5  152.695 ± 4.414  ns/op
ByteArrayInputStreamBenchmark.read:asm        _1_KB      _64_MB  avgt           NaN            ---
