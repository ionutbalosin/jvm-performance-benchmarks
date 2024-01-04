# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = _)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 408.044 us/op
# Warmup Iteration   2: 236.899 us/op
# Warmup Iteration   3: 233.102 us/op
# Warmup Iteration   4: 231.346 us/op
# Warmup Iteration   5: 233.155 us/op
Iteration   1: 231.491 us/op
Iteration   2: 231.929 us/op
Iteration   3: 231.588 us/op
Iteration   4: 232.074 us/op
Iteration   5: 236.042 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  232.625 ±(99.9%) 7.414 us/op [Average]
  (min, avg, max) = (231.491, 232.625, 236.042), stdev = 1.925
  CI (99.9%): [225.211, 240.039] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 261918 total address lines.
Perf output processed (skipped 80.349 seconds):
 Column 1: cycles (51541 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 3, compile id 1079 

 <region is too big to display, has 2599 lines, but threshold is 1000>
....................................................................................................
  90.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.80%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 3, compile id 1079 
   3.61%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.67%                kernel  [unknown] 
   0.33%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 3, compile id 1079 
   0.31%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.05%                kernel  [unknown] 
   2.75%  <...other 425 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 3, compile id 1079 
   3.69%                kernel  [unknown] 
   3.61%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.12%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.09%                        <unknown> 
   0.06%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libjvm.so  G1CardSet::clear 
   0.04%             libc.so.6  __memset_avx2_unaligned_erms 
   0.04%             libc.so.6  __strchr_avx2 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.03%             libjvm.so  HeapRegionManager::par_iterate 
   0.03%             libjvm.so  xmlStream::write_text 
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  G1BarrierSet::invalidate 
   0.84%  <...other 187 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.14%        jvmci, level 4
   3.69%                kernel
   3.61%          runtime stub
   1.02%             libjvm.so
   0.32%             libc.so.6
   0.09%                      
   0.06%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.02%           interpreter
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%        libz.so.1.2.11
   0.00%         perf-6813.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = __)

# Run progress: 25.00% complete, ETA 00:06:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 386.890 us/op
# Warmup Iteration   2: 207.856 us/op
# Warmup Iteration   3: 208.645 us/op
# Warmup Iteration   4: 207.526 us/op
# Warmup Iteration   5: 207.006 us/op
Iteration   1: 207.746 us/op
Iteration   2: 207.541 us/op
Iteration   3: 207.146 us/op
Iteration   4: 208.053 us/op
Iteration   5: 210.672 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  208.232 ±(99.9%) 5.405 us/op [Average]
  (min, avg, max) = (207.146, 208.232, 210.672), stdev = 1.404
  CI (99.9%): [202.827, 213.636] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 271088 total address lines.
Perf output processed (skipped 80.599 seconds):
 Column 1: cycles (51457 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 3, compile id 1129 

 <region is too big to display, has 2804 lines, but threshold is 1000>
....................................................................................................
  90.46%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.46%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 3, compile id 1129 
   4.29%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.75%                kernel  [unknown] 
   0.44%                kernel  [unknown] 
   0.33%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 3, compile id 1129 
   0.33%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.07%             libjvm.so  HeapRegionManager::par_iterate 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%             libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%                kernel  [unknown] 
   0.04%             libjvm.so  stringStream::~stringStream 
   2.49%  <...other 393 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.80%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::pattern_split, version 3, compile id 1129 
   4.29%          runtime stub  StubRoutines::checkcast_arraycopy 
   3.45%                kernel  [unknown] 
   0.10%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.07%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.07%             libjvm.so  HeapRegionManager::par_iterate 
   0.05%             libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%             libjvm.so  stringStream::~stringStream 
   0.04%             libjvm.so  G1CardSet::is_empty 
   0.04%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  xmlTextStream::flush 
   0.03%             libjvm.so  FreeListAllocator::reset 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%                [vdso]  [unknown] 
   0.02%             libjvm.so  G1BarrierSet::invalidate 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  __GI___libc_write 
   0.80%  <...other 200 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.80%        jvmci, level 4
   4.29%          runtime stub
   3.45%                kernel
   1.01%             libjvm.so
   0.27%             libc.so.6
   0.06%   libjvmcicompiler.so
   0.05%        hsdis-amd64.so
   0.02%                [vdso]
   0.02%           interpreter
   0.02%                      
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%            libjava.so
   0.00%         perf-6885.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = _)

# Run progress: 50.00% complete, ETA 00:04:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 186.644 us/op
# Warmup Iteration   2: 145.378 us/op
# Warmup Iteration   3: 143.382 us/op
# Warmup Iteration   4: 142.334 us/op
# Warmup Iteration   5: 142.546 us/op
Iteration   1: 142.061 us/op
Iteration   2: 141.721 us/op
Iteration   3: 142.389 us/op
Iteration   4: 143.026 us/op
Iteration   5: 146.859 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  143.211 ±(99.9%) 8.067 us/op [Average]
  (min, avg, max) = (141.721, 143.211, 146.859), stdev = 2.095
  CI (99.9%): [135.144, 151.279] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 248614 total address lines.
Perf output processed (skipped 79.596 seconds):
 Column 1: cycles (51021 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.String::split, version 4, compile id 1096 

 <region is too big to display, has 2039 lines, but threshold is 1000>
....................................................................................................
  76.25%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

                                      --------------------------------------------------------------------------------
                                      [/Disassembly]
                                      </print_nmethod>
                                      - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                      Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.indexOf1S1&gt; 0x00007f6eba90c610
                                      --------------------------------------------------------------------------------
   0.71%                                0x00007f6eba90c680:   sub    $0x18,%rsp
   0.44%                                0x00007f6eba90c684:   mov    %rdx,%rax
   0.52%                                0x00007f6eba90c687:   mov    %ecx,%edx
   0.19%                                0x00007f6eba90c689:   mov    %r8d,%edi
   0.28%                                0x00007f6eba90c68c:   mov    %r9d,%ecx
   0.22%                                0x00007f6eba90c68f:   lea    (%rsi,%rax,1),%rsi
   0.48%                                0x00007f6eba90c693:   lea    0x20(%rdi),%r10
   0.18%                                0x00007f6eba90c697:   vmovd  %ecx,%xmm0
   0.35%                                0x00007f6eba90c69b:   vpbroadcastb %xmm0,%ymm0
   0.35%                                0x00007f6eba90c6a0:   cmp    %rdx,%r10
          ╭                             0x00007f6eba90c6a3:   jle    0x00007f6eba90c75d
          │                             0x00007f6eba90c6a9:   sub    $0x10,%r10
          │                             0x00007f6eba90c6ad:   cmp    %rdx,%r10
          │╭                            0x00007f6eba90c6b0:   jg     0x00007f6eba90c6ee
          ││                            0x00007f6eba90c6b6:   vmovdqu -0x10(%rsi,%r10,1),%xmm1
          ││                            0x00007f6eba90c6bd:   vpcmpeqb %xmm1,%xmm0,%xmm1
   0.00%  ││                            0x00007f6eba90c6c1:   vpmovmskb %xmm1,%edi
          ││                            0x00007f6eba90c6c5:   test   %edi,%edi
          ││╭                           0x00007f6eba90c6c7:   jne    0x00007f6eba90c6e5
          │││                           0x00007f6eba90c6c9:   mov    %rdx,%r10
          │││                           0x00007f6eba90c6cc:   vmovdqu -0x10(%rsi,%r10,1),%xmm1
          │││                           0x00007f6eba90c6d3:   vpcmpeqb %xmm1,%xmm0,%xmm1
          │││                           0x00007f6eba90c6d7:   vpmovmskb %xmm1,%edi
          │││                           0x00007f6eba90c6db:   test   %edi,%edi
          │││╭                          0x00007f6eba90c6dd:   jne    0x00007f6eba90c6e5
          ││││                          0x00007f6eba90c6df:   nop
          ││││╭                         0x00007f6eba90c6e0:   jmp    0x00007f6eba90c752
          ││↘↘│                         0x00007f6eba90c6e5:   sub    $0x10,%r10
          ││  │╭                        0x00007f6eba90c6e9:   jmp    0x00007f6eba90c846
          │↘  ││                        0x00007f6eba90c6ee:   sub    $0x8,%r10
          │   ││                        0x00007f6eba90c6f2:   cmp    %rdx,%r10
          │   ││╭                       0x00007f6eba90c6f5:   jg     0x00007f6eba90c737
          │   │││                       0x00007f6eba90c6fb:   vmovq  -0x8(%rsi,%r10,1),%xmm1
   0.01%  │   │││                       0x00007f6eba90c702:   vpcmpeqb %xmm1,%xmm0,%xmm1
   0.00%  │   │││                       0x00007f6eba90c706:   vpmovmskb %xmm1,%edi
          │   │││                       0x00007f6eba90c70a:   and    $0xff,%edi
          │   │││╭                      0x00007f6eba90c710:   jne    0x00007f6eba90c72e
          │   ││││                      0x00007f6eba90c712:   mov    %rdx,%r10
          │   ││││                      0x00007f6eba90c715:   vmovq  -0x8(%rsi,%r10,1),%xmm1
          │   ││││                      0x00007f6eba90c71c:   vpcmpeqb %xmm1,%xmm0,%xmm1
   0.00%  │   ││││                      0x00007f6eba90c720:   vpmovmskb %xmm1,%edi
          │   ││││                      0x00007f6eba90c724:   and    $0xff,%edi
          │   ││││╭                     0x00007f6eba90c72a:   jne    0x00007f6eba90c72e
   0.00%  │   │││││╭                    0x00007f6eba90c72c:   jmp    0x00007f6eba90c752
          │   │││↘↘│                    0x00007f6eba90c72e:   sub    $0x8,%r10
          │   │││  │╭                   0x00007f6eba90c732:   jmp    0x00007f6eba90c846
          │   ││↘  ││                   0x00007f6eba90c737:   sub    $0x8,%r10
          │   ││   ││                   0x00007f6eba90c73b:   cmp    %rdx,%r10
          │   ││   ││╭                  0x00007f6eba90c73e:   jge    0x00007f6eba90c752
          │   ││   │││ ↗                0x00007f6eba90c740:   movzbq (%rsi,%r10,1),%rdi
          │   ││   │││ │                0x00007f6eba90c745:   cmp    %rcx,%rdi
          │   ││   │││╭│                0x00007f6eba90c748:   je     0x00007f6eba90c758
          │   ││   │││││                0x00007f6eba90c74a:   inc    %r10
          │   ││   │││││                0x00007f6eba90c74d:   cmp    %rdx,%r10
          │   ││   ││││╰                0x00007f6eba90c750:   jl     0x00007f6eba90c740
          │   ↘│   ↘│↘│                 0x00007f6eba90c752:   xor    %r10,%r10
          │    │    │ │                 0x00007f6eba90c755:   dec    %r10
          │    │    │ ↘ ╭               0x00007f6eba90c758:   jmp    0x00007f6eba90c84e
   0.73%  ↘    │    │   │               0x00007f6eba90c75d:   vmovdqu -0x20(%rsi,%r10,1),%ymm1
   0.93%       │    │   │               0x00007f6eba90c764:   vpcmpeqb %ymm1,%ymm0,%ymm1
   2.42%       │    │   │               0x00007f6eba90c768:   vpmovmskb %ymm1,%edi
   0.09%       │    │   │               0x00007f6eba90c76c:   test   %edi,%edi
               │    │   │╭              0x00007f6eba90c76e:   jne    0x00007f6eba90c82d
               │    │   ││              0x00007f6eba90c774:   mov    %esi,%edi
               │    │   ││              0x00007f6eba90c776:   add    %rdi,%r10
               │    │   ││              0x00007f6eba90c779:   and    $0xffffffffffffffe0,%r10
               │    │   ││              0x00007f6eba90c77d:   sub    %rdi,%r10
               │    │   ││              0x00007f6eba90c780:   add    $0x80,%r10
               │    │   ││              0x00007f6eba90c787:   cmp    %rdx,%r10
               │    │   ││╭             0x00007f6eba90c78a:   jg     0x00007f6eba90c7f8
               │    │   │││             0x00007f6eba90c78c:   nopl   0x0(%rax)
               │    │   │││    ↗        0x00007f6eba90c790:   vmovdqu -0x80(%rsi,%r10,1),%ymm1
               │    │   │││    │        0x00007f6eba90c797:   vmovdqu -0x60(%rsi,%r10,1),%ymm2
               │    │   │││    │        0x00007f6eba90c79e:   vmovdqu -0x40(%rsi,%r10,1),%ymm3
               │    │   │││    │        0x00007f6eba90c7a5:   vmovdqu -0x20(%rsi,%r10,1),%ymm4
               │    │   │││    │        0x00007f6eba90c7ac:   vpcmpeqb %ymm1,%ymm0,%ymm1
               │    │   │││    │        0x00007f6eba90c7b0:   vpmovmskb %ymm1,%edi
               │    │   │││    │        0x00007f6eba90c7b4:   test   %edi,%edi
               │    │   │││╭   │        0x00007f6eba90c7b6:   jne    0x00007f6eba90c83f
               │    │   ││││   │        0x00007f6eba90c7bc:   vpcmpeqb %ymm2,%ymm0,%ymm2
               │    │   ││││   │        0x00007f6eba90c7c0:   vpmovmskb %ymm2,%edi
               │    │   ││││   │        0x00007f6eba90c7c4:   test   %edi,%edi
               │    │   ││││╭  │        0x00007f6eba90c7c6:   jne    0x00007f6eba90c839
               │    │   │││││  │        0x00007f6eba90c7cc:   vpcmpeqb %ymm3,%ymm0,%ymm3
               │    │   │││││  │        0x00007f6eba90c7d0:   vpmovmskb %ymm3,%edi
               │    │   │││││  │        0x00007f6eba90c7d4:   test   %edi,%edi
               │    │   │││││╭ │        0x00007f6eba90c7d6:   jne    0x00007f6eba90c833
               │    │   ││││││ │        0x00007f6eba90c7dc:   vpcmpeqb %ymm4,%ymm0,%ymm4
               │    │   ││││││ │        0x00007f6eba90c7e0:   vpmovmskb %ymm4,%edi
               │    │   ││││││ │        0x00007f6eba90c7e4:   test   %edi,%edi
               │    │   ││││││╭│        0x00007f6eba90c7e6:   jne    0x00007f6eba90c82d
               │    │   ││││││││        0x00007f6eba90c7ec:   add    $0x80,%r10
               │    │   ││││││││        0x00007f6eba90c7f3:   cmp    %rdx,%r10
               │    │   │││││││╰        0x00007f6eba90c7f6:   jle    0x00007f6eba90c790
               │    │   ││↘││││         0x00007f6eba90c7f8:   sub    $0x80,%r10
               │    │   ││ ││││         0x00007f6eba90c7ff:   nop
               │    │   ││ ││││  ↗      0x00007f6eba90c800:   add    $0x20,%r10
               │    │   ││ ││││  │      0x00007f6eba90c804:   cmp    %rdx,%r10
               │    │   ││ ││││  │      0x00007f6eba90c807:   cmovg  %rdx,%r10
               │    │   ││ ││││  │      0x00007f6eba90c80b:   vmovdqu -0x20(%rsi,%r10,1),%ymm1
               │    │   ││ ││││  │      0x00007f6eba90c812:   vpcmpeqb %ymm1,%ymm0,%ymm1
               │    │   ││ ││││  │      0x00007f6eba90c816:   vpmovmskb %ymm1,%edi
               │    │   ││ ││││  │      0x00007f6eba90c81a:   test   %edi,%edi
               │    │   ││ ││││ ╭│      0x00007f6eba90c81c:   jne    0x00007f6eba90c82d
               │    │   ││ ││││ ││      0x00007f6eba90c81e:   xchg   %ax,%ax
               │    │   ││ ││││ ││      0x00007f6eba90c820:   cmp    %rdx,%r10
               │    │   ││ ││││ │╰      0x00007f6eba90c823:   jl     0x00007f6eba90c800
               │    │   ││ ││││ │       0x00007f6eba90c825:   mov    $0xffffffff,%r10d
               │    │   ││ ││││ │ ╭     0x00007f6eba90c82b:   jmp    0x00007f6eba90c84e
   1.96%       │    │   │↘ │││↘ ↘ │     0x00007f6eba90c82d:   sub    $0x20,%r10
   0.10%       │    │   │  │││    │╭    0x00007f6eba90c831:   jmp    0x00007f6eba90c846
               │    │   │  ││↘    ││    0x00007f6eba90c833:   sub    $0x40,%r10
               │    │   │  ││     ││╭   0x00007f6eba90c837:   jmp    0x00007f6eba90c846
               │    │   │  │↘     │││   0x00007f6eba90c839:   sub    $0x60,%r10
               │    │   │  │      │││╭  0x00007f6eba90c83d:   jmp    0x00007f6eba90c846
               │    │   │  ↘      ││││  0x00007f6eba90c83f:   sub    $0x80,%r10
   1.10%       ↘    ↘   │         │↘↘↘  0x00007f6eba90c846:   tzcnt  %rdi,%rdi
   0.21%                │         │     0x00007f6eba90c84b:   add    %rdi,%r10
   0.39%                ↘         ↘     0x00007f6eba90c84e:   mov    %r10d,%eax
   0.02%                                0x00007f6eba90c851:   add    $0x18,%rsp
   0.83%                                0x00007f6eba90c855:   ret    
                                        0x00007f6eba90c856:   hlt    
                                        0x00007f6eba90c857:   hlt    
                                      --------------------------------------------------------------------------------
                                      - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                      ImmutableOopMapSet contains 0 OopMaps
                                      - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                      <nmethod compile_id='1077' compile_kind='osr' compiler='c1' level='3' entry='0x00007f6eb33a8640' size='19312' address='0x00007f6eb33a8210' relocation_offset='344' insts_offset='1072' stub_offset='13048' scopes_data_offset='13328' scopes_pcs_offset='15720' dependencies_offset='19048' nul_chk_table_offset='19072' metadata_offset='13192' method='java.lang.String split (CIZ)[Ljava/lang/String;' bytes='242' count='44' backedge_count='85707' iicount='44' stamp='28,809'/>
                                      <print_nmethod compile_id='1077' compile_kind='osr' compiler='c1' level='3' stamp='28,809'>
                                      ============================= C1-compiled nmethod ==============================
                                      ----------------------------------- Assembly -----------------------------------
....................................................................................................
  12.55%  <total for region 2>

....[Hottest Regions]...............................................................................
  76.25%        jvmci, level 4  java.lang.String::split, version 4, compile id 1096 
  12.55%                        <unknown> 
   6.17%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.70%                kernel  [unknown] 
   0.35%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.08%                kernel  [unknown] 
   0.08%             libc.so.6  __memset_avx2_unaligned_erms 
   0.07%             libjvm.so  HeapRegionManager::par_iterate 
   0.07%                kernel  [unknown] 
   0.06%             libjvm.so  G1CardSet::is_empty 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   2.65%  <...other 365 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  76.29%        jvmci, level 4  java.lang.String::split, version 4, compile id 1096 
  12.58%                        <unknown> 
   6.17%          runtime stub  StubRoutines::checkcast_arraycopy 
   3.35%                kernel  [unknown] 
   0.09%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.08%             libc.so.6  __memset_avx2_unaligned_erms 
   0.07%             libjvm.so  HeapRegionManager::par_iterate 
   0.06%             libjvm.so  G1CardSet::is_empty 
   0.06%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.04%             libjvm.so  G1BarrierSet::invalidate 
   0.04%             libjvm.so  xmlTextStream::flush 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%             libjvm.so  FreeListAllocator::reset 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  MemAllocator::Allocation::notify_allocation_jfr_sampler 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  __strchr_avx2 
   0.92%  <...other 182 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  76.32%        jvmci, level 4
  12.58%                      
   6.17%          runtime stub
   3.35%                kernel
   1.15%             libjvm.so
   0.32%             libc.so.6
   0.03%        hsdis-amd64.so
   0.03%           interpreter
   0.02%                [vdso]
   0.02%  ld-linux-x86-64.so.2
   0.00%           c1, level 1
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = __)

# Run progress: 75.00% complete, ETA 00:02:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 665.129 us/op
# Warmup Iteration   2: 258.374 us/op
# Warmup Iteration   3: 251.266 us/op
# Warmup Iteration   4: 252.741 us/op
# Warmup Iteration   5: 249.737 us/op
Iteration   1: 250.274 us/op
Iteration   2: 249.640 us/op
Iteration   3: 250.973 us/op
Iteration   4: 249.840 us/op
Iteration   5: 254.192 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  250.984 ±(99.9%) 7.181 us/op [Average]
  (min, avg, max) = (249.640, 250.984, 254.192), stdev = 1.865
  CI (99.9%): [243.803, 258.165] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 295383 total address lines.
Perf output processed (skipped 80.390 seconds):
 Column 1: cycles (51621 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1150 

 <region is too big to display, has 3330 lines, but threshold is 1000>
....................................................................................................
  91.17%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.17%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1150 
   3.19%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.69%                kernel  [unknown] 
   0.35%                kernel  [unknown] 
   0.35%                kernel  [unknown] 
   0.26%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1150 
   0.16%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%        jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 1171 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%             libjvm.so  HeapRegionManager::par_iterate 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   2.61%  <...other 411 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.44%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 1150 
   3.76%                kernel  [unknown] 
   3.19%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.18%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.15%        jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 1171 
   0.12%                        <unknown> 
   0.06%             libjvm.so  HeapRegionManager::par_iterate 
   0.04%             libjvm.so  G1CardSet::is_empty 
   0.04%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.04%             libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  __memset_avx2_unaligned_erms 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%             libjvm.so  xmlStream::write_text 
   0.03%             libc.so.6  __strchr_avx2 
   0.02%        hsdis-amd64.so  print_insn 
   0.68%  <...other 165 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.59%        jvmci, level 4
   3.76%                kernel
   3.19%          runtime stub
   0.96%             libjvm.so
   0.27%             libc.so.6
   0.12%                      
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.02%                [vdso]
   0.01%           c1, level 3
   0.00%          libjimage.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:09:10

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

Benchmark                                      (regexp)  Mode  Cnt    Score   Error  Units
StringPatternSplitBenchmark.pattern_split             _  avgt    5  232.625 ± 7.414  us/op
StringPatternSplitBenchmark.pattern_split:asm         _  avgt           NaN            ---
StringPatternSplitBenchmark.pattern_split            __  avgt    5  208.232 ± 5.405  us/op
StringPatternSplitBenchmark.pattern_split:asm        __  avgt           NaN            ---
StringPatternSplitBenchmark.string_split              _  avgt    5  143.211 ± 8.067  us/op
StringPatternSplitBenchmark.string_split:asm          _  avgt           NaN            ---
StringPatternSplitBenchmark.string_split             __  avgt    5  250.984 ± 7.181  us/op
StringPatternSplitBenchmark.string_split:asm         __  avgt           NaN            ---
