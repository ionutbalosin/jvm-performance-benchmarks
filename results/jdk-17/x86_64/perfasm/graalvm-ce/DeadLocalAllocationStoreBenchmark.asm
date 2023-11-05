# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 12.046 ns/op
# Warmup Iteration   2: 11.955 ns/op
# Warmup Iteration   3: 11.976 ns/op
# Warmup Iteration   4: 11.918 ns/op
# Warmup Iteration   5: 11.913 ns/op
Iteration   1: 11.919 ns/op
Iteration   2: 11.926 ns/op
Iteration   3: 11.918 ns/op
Iteration   4: 11.920 ns/op
Iteration   5: 11.919 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline":
  11.920 ±(99.9%) 0.012 ns/op [Average]
  (min, avg, max) = (11.918, 11.920, 11.926), stdev = 0.003
  CI (99.9%): [11.908, 11.932] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:·asm":
PrintAssembly processed: 191998 total address lines.
Perf output processed (skipped 58.675 seconds):
 Column 1: cycles (50866 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 738 

                   #           [sp+0x20]  (sp of caller)
                   0x00007f21aaffcda0:   mov    0x8(%rsi),%r10d
                   0x00007f21aaffcda4:   movabs $0x800000000,%r12
                   0x00007f21aaffcdae:   add    %r12,%r10
                   0x00007f21aaffcdb1:   xor    %r12,%r12
                   0x00007f21aaffcdb4:   cmp    %r10,%rax
                   0x00007f21aaffcdb7:   jne    0x00007f21a34ff780           ;   {runtime_call ic_miss_stub}
                   0x00007f21aaffcdbd:   nop
                   0x00007f21aaffcdbe:   xchg   %ax,%ax
                 [Verified Entry Point]
   0.17%           0x00007f21aaffcdc0:   mov    %eax,-0x14000(%rsp)
   3.41%           0x00007f21aaffcdc7:   sub    $0x18,%rsp
   0.16%           0x00007f21aaffcdcb:   mov    %rbp,0x10(%rsp)
   0.57%           0x00007f21aaffcdd0:   mov    %rsi,%rcx
   2.68%           0x00007f21aaffcdd3:   mov    0x108(%r15),%r10
   0.15%           0x00007f21aaffcdda:   mov    0x118(%r15),%rax             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@4 (line 154)
   0.18%           0x00007f21aaffcde1:   mov    0xc(%rcx),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@1 (line 154)
   0.37%           0x00007f21aaffcde4:   mov    %edx,%esi
   2.60%           0x00007f21aaffcde6:   lea    0x17(%rsi),%rsi
   0.21%           0x00007f21aaffcdea:   and    $0xfffffffffffffff8,%rsi
   0.28%           0x00007f21aaffcdee:   mov    %rsi,%rdi
   0.23%           0x00007f21aaffcdf1:   add    %r10,%rdi
   4.83%           0x00007f21aaffcdf4:   cmp    %rax,%rdi
          ╭        0x00007f21aaffcdf7:   ja     0x00007f21aaffce8a
   0.30%  │        0x00007f21aaffcdfd:   mov    %rdi,0x108(%r15)
   0.67%  │        0x00007f21aaffce04:   prefetchw 0xc0(%rsi,%r10,1)
   4.68%  │        0x00007f21aaffce0d:   prefetchw 0x100(%rsi,%r10,1)
   2.00%  │        0x00007f21aaffce16:   prefetchw 0x140(%rsi,%r10,1)
   2.54%  │        0x00007f21aaffce1f:   prefetchw 0x180(%rsi,%r10,1)
   3.30%  │        0x00007f21aaffce28:   movq   $0x1,(%r10)
   0.77%  │        0x00007f21aaffce2f:   movl   $0x6848,0x8(%r10)            ;   {metadata({type array byte})}
   1.02%  │        0x00007f21aaffce37:   mov    %edx,0xc(%r10)
   1.44%  │        0x00007f21aaffce3b:   lea    -0x10(%rsi),%rcx
   0.20%  │        0x00007f21aaffce3f:   nop
   0.70%  │        0x00007f21aaffce40:   cmp    $0x800,%rcx
          │╭       0x00007f21aaffce47:   jae    0x00007f21aaffcea2
   0.92%  ││       0x00007f21aaffce4d:   mov    $0x10,%rax
   1.37%  ││╭      0x00007f21aaffce54:   jmp    0x00007f21aaffce6c
          │││      0x00007f21aaffce59:   nopl   0x0(%rax)
  20.60%  │││↗     0x00007f21aaffce60:   movq   $0x0,(%r10,%rax,1)
   5.37%  ││││     0x00007f21aaffce68:   lea    0x8(%rax),%rax
   2.65%  ││↘│     0x00007f21aaffce6c:   cmp    %rax,%rsi
          ││ ╰     0x00007f21aaffce6f:   ja     0x00007f21aaffce60           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@4 (line 154)
          ││   ↗↗  0x00007f21aaffce71:   mov    %r10,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@6 (line 154)
   2.69%  ││   ││  0x00007f21aaffce74:   mov    0x10(%rsp),%rbp
   0.50%  ││   ││  0x00007f21aaffce79:   add    $0x18,%rsp
   0.13%  ││   ││  0x00007f21aaffce7d:   mov    0x348(%r15),%rcx
   0.34%  ││   ││  0x00007f21aaffce84:   test   %eax,(%rcx)                  ;   {poll_return}
   3.85%  ││   ││  0x00007f21aaffce86:   vzeroupper 
   3.25%  ││   ││  0x00007f21aaffce89:   ret    
   0.01%  ↘│   ││  0x00007f21aaffce8a:   movabs $0x800006848,%rsi            ;   {metadata({type array byte})}
   0.00%   │   ││  0x00007f21aaffce94:   call   0x00007f21a3658c00           ; ImmutableOopMap {rcx=Oop }
           │   ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@0 (line 154)
           │   ││                                                            ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
   0.00%   │   ││  0x00007f21aaffce99:   nop                                 ; ImmutableOopMap {rax=Oop rcx=Oop }
           │   ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@0 (line 154)
           │  ╭││  0x00007f21aaffce9a:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f21aaffceae
   0.00%   │  │││  0x00007f21aaffce9c:   mov    %rax,%r10
           │  │││  0x00007f21aaffce9f:   nop
           │  │╰│  0x00007f21aaffcea0:   jmp    0x00007f21aaffce71
           ↘  │ │  0x00007f21aaffcea2:   lea    0x10(%r10),%rdi
              │ │  0x00007f21aaffcea6:   xor    %rax,%rax
              │ │  0x00007f21aaffcea9:   rep rex.W stos %al,%es:(%rdi)
              │ ╰  0x00007f21aaffceac:   jmp    0x00007f21aaffce71           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@4 (line 154)
              ↘    0x00007f21aaffceae:   movl   $0xffffff8f,0x370(%r15)
                   0x00007f21aaffceb9:   movq   $0x0,0x378(%r15)
                   0x00007f21aaffcec4:   call   0x00007f21a350527a           ; ImmutableOopMap {rax=Oop rcx=Oop }
....................................................................................................
  75.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 757 

              0x00007f21aafff2f5:   mov    0x18(%rsp),%rsi
              0x00007f21aafff2fa:   nopw   0x0(%rax,%rax,1)
              0x00007f21aafff300:   cmpb   $0x0,0x94(%rsi)
              0x00007f21aafff307:   jne    0x00007f21aafff38e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 192)
              0x00007f21aafff30d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f21aafff316:   jmp    0x00007f21aafff32f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@13 (line 190)
          │   0x00007f21aafff31b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 192)
   3.12%  │↗  0x00007f21aafff320:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 192)
   0.07%  ││  0x00007f21aafff327:   test   %eax,(%r11)                  ;   {poll}
   0.30%  ││  0x00007f21aafff32a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@13 (line 190)
   0.02%  ↘│  0x00007f21aafff32f:   mov    0x8(%rsp),%r10
   2.90%   │  0x00007f21aafff334:   mov    %r10,%rsi
   0.03%   │  0x00007f21aafff337:   call   0x00007f21a34ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_baseline {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.56%   │  0x00007f21aafff33c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@20 (line 190)
   0.01%   │  0x00007f21aafff33d:   mov    0x20(%rsp),%r10
   3.02%   │  0x00007f21aafff342:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@26 (line 191)
   1.02%   │  0x00007f21aafff345:   mov    0x18(%rsp),%rsi
   0.01%   │  0x00007f21aafff34a:   cmpb   $0x0,0x94(%rsi)
  10.14%   ╰  0x00007f21aafff351:   je     0x00007f21aafff320           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 192)
              0x00007f21aafff353:   mov    %r10,0x20(%rsp)
              0x00007f21aafff358:   call   0x00007f21c24a26f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f21aafff35d:   nop
              0x00007f21aafff35e:   mov    0x10(%rsp),%rdx
              0x00007f21aafff363:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@40 (line 193)
              0x00007f21aafff367:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@46 (line 194)
              0x00007f21aafff36f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  21.21%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 738 
  21.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 757 
   0.17%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%                       <unknown> 
   0.09%               kernel  [unknown] 
   0.09%            libjvm.so  HeapRegionManager::par_iterate 
   0.08%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%            libjvm.so  TypeArrayKlass::allocate_common 
   0.05%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%               kernel  [unknown] 
   0.05%            libjvm.so  G1FromCardCache::clear 
   0.04%            libjvm.so  HandleMark::initialize 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.04%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   2.32%  <...other 517 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 738 
  21.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 757 
   1.42%               kernel  [unknown] 
   0.34%                       <unknown> 
   0.09%            libjvm.so  HeapRegionManager::par_iterate 
   0.08%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.08%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.06%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.06%            libjvm.so  JVMCIRuntime::new_array_common 
   0.05%            libjvm.so  TypeArrayKlass::allocate_common 
   0.05%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%            libjvm.so  G1FromCardCache::clear 
   0.04%            libjvm.so  HandleMark::initialize 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.04%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%            libjvm.so  ObjArrayAllocator::initialize 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%            libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.03%               [vdso]  __vdso_clock_gettime 
   1.05%  <...other 197 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.37%       jvmci, level 4
   1.61%            libjvm.so
   1.42%               kernel
   0.34%                     
   0.07%         libc-2.31.so
   0.06%   libpthread-2.31.so
   0.05%           ld-2.31.so
   0.03%               [vdso]
   0.02%       hsdis-amd64.so
   0.02%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%       perf-27351.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse
# Parameters: (size = 64)

# Run progress: 12.50% complete, ETA 00:13:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.721 ns/op
# Warmup Iteration   2: 13.961 ns/op
# Warmup Iteration   3: 14.511 ns/op
# Warmup Iteration   4: 13.780 ns/op
# Warmup Iteration   5: 13.998 ns/op
Iteration   1: 14.380 ns/op
Iteration   2: 14.548 ns/op
Iteration   3: 14.128 ns/op
Iteration   4: 14.242 ns/op
Iteration   5: 14.303 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse":
  14.320 ±(99.9%) 0.605 ns/op [Average]
  (min, avg, max) = (14.128, 14.320, 14.548), stdev = 0.157
  CI (99.9%): [13.715, 14.925] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:·asm":
PrintAssembly processed: 190596 total address lines.
Perf output processed (skipped 58.567 seconds):
 Column 1: cycles (50805 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 725 

               #           [sp+0x20]  (sp of caller)
               0x00007f1a76ffa020:   mov    0x8(%rsi),%r10d
               0x00007f1a76ffa024:   movabs $0x800000000,%r12
               0x00007f1a76ffa02e:   add    %r12,%r10
               0x00007f1a76ffa031:   xor    %r12,%r12
               0x00007f1a76ffa034:   cmp    %r10,%rax
               0x00007f1a76ffa037:   jne    0x00007f1a6f4ff780           ;   {runtime_call ic_miss_stub}
               0x00007f1a76ffa03d:   nop
               0x00007f1a76ffa03e:   xchg   %ax,%ax
             [Verified Entry Point]
   0.19%       0x00007f1a76ffa040:   mov    %eax,-0x14000(%rsp)
   6.67%       0x00007f1a76ffa047:   sub    $0x18,%rsp
   0.10%       0x00007f1a76ffa04b:   mov    %rbp,0x10(%rsp)
   0.90%       0x00007f1a76ffa050:   mov    %rsi,%r10
   1.28%       0x00007f1a76ffa053:   mov    0xc(%r10),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@1 (line 162)
   0.97%       0x00007f1a76ffa057:   test   %edx,%edx
               0x00007f1a76ffa059:   jl     0x00007f1a76ffa14e           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@4 (line 162)
   0.09%       0x00007f1a76ffa05f:   mov    0x108(%r15),%r11
   0.31%       0x00007f1a76ffa066:   mov    %edx,%eax
   1.32%       0x00007f1a76ffa068:   lea    0x17(%rax),%rax
   0.92%       0x00007f1a76ffa06c:   and    $0xfffffffffffffff8,%rax
   0.09%       0x00007f1a76ffa070:   mov    %rax,%rsi
   0.28%       0x00007f1a76ffa073:   add    %r11,%rsi
   1.55%       0x00007f1a76ffa076:   data16 nopw 0x0(%rax,%rax,1)
   1.09%       0x00007f1a76ffa080:   cmp    0x118(%r15),%rsi
          ╭    0x00007f1a76ffa087:   ja     0x00007f1a76ffa12a
   0.13%  │    0x00007f1a76ffa08d:   mov    %rsi,0x108(%r15)
   0.44%  │    0x00007f1a76ffa094:   prefetchw 0xc0(%rax,%r11,1)
   2.95%  │    0x00007f1a76ffa09d:   prefetchw 0x100(%rax,%r11,1)
   1.55%  │    0x00007f1a76ffa0a6:   prefetchw 0x140(%rax,%r11,1)
   1.96%  │    0x00007f1a76ffa0af:   prefetchw 0x180(%rax,%r11,1)
   2.30%  │    0x00007f1a76ffa0b8:   movq   $0x1,(%r11)
   0.34%  │    0x00007f1a76ffa0bf:   movl   $0x6848,0x8(%r11)            ;   {metadata({type array byte})}
   1.02%  │    0x00007f1a76ffa0c7:   mov    %edx,0xc(%r11)
   1.20%  │    0x00007f1a76ffa0cb:   lea    -0x10(%rax),%rcx
   0.12%  │    0x00007f1a76ffa0cf:   cmp    $0x800,%rcx
          │    0x00007f1a76ffa0d6:   jae    0x00007f1a76ffa142
   0.26%  │    0x00007f1a76ffa0dc:   mov    $0x10,%rsi
   0.97%  │╭   0x00007f1a76ffa0e3:   jmp    0x00007f1a76ffa10c
          ││   0x00007f1a76ffa0e8:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007f1a76ffa0f3:   data16 data16 xchg %ax,%ax
          ││   0x00007f1a76ffa0f7:   nopw   0x0(%rax,%rax,1)
  12.46%  ││↗  0x00007f1a76ffa100:   movq   $0x0,(%r11,%rsi,1)
  15.25%  │││  0x00007f1a76ffa108:   lea    0x8(%rsi),%rsi
   4.19%  │↘│  0x00007f1a76ffa10c:   cmp    %rsi,%rax
          │ ╰  0x00007f1a76ffa10f:   ja     0x00007f1a76ffa100           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@25 (line 165)
   0.01%  │    0x00007f1a76ffa111:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@29 (line 166)
   1.02%  │    0x00007f1a76ffa114:   mov    0x10(%rsp),%rbp
   1.84%  │    0x00007f1a76ffa119:   add    $0x18,%rsp
   0.04%  │    0x00007f1a76ffa11d:   mov    0x348(%r15),%rcx
   1.25%  │    0x00007f1a76ffa124:   test   %eax,(%rcx)                  ;   {poll_return}
   6.47%  │    0x00007f1a76ffa126:   vzeroupper 
   2.67%  │    0x00007f1a76ffa129:   ret    
          ↘    0x00007f1a76ffa12a:   movabs $0x800006848,%rsi            ;   {metadata({type array byte})}
   0.01%       0x00007f1a76ffa134:   call   0x00007f1a6f658a80           ; ImmutableOopMap {r10=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@0 (line 162)
                                                                         ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
               0x00007f1a76ffa139:   nop                                 ; ImmutableOopMap {rax=Oop r10=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@0 (line 162)
               0x00007f1a76ffa13a:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f1a76ffa16a
               0x00007f1a76ffa13c:   mov    %rax,%r11
               0x00007f1a76ffa13f:   nop
               0x00007f1a76ffa140:   jmp    0x00007f1a76ffa111
....................................................................................................
  74.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 746 

              0x00007f1a76ffe6f5:   mov    0x18(%rsp),%rsi
              0x00007f1a76ffe6fa:   nopw   0x0(%rax,%rax,1)
              0x00007f1a76ffe700:   cmpb   $0x0,0x94(%rsi)
              0x00007f1a76ffe707:   jne    0x00007f1a76ffe78e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 192)
              0x00007f1a76ffe70d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f1a76ffe716:   jmp    0x00007f1a76ffe72f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@13 (line 190)
          │   0x00007f1a76ffe71b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 192)
   2.50%  │↗  0x00007f1a76ffe720:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 192)
   0.06%  ││  0x00007f1a76ffe727:   test   %eax,(%r11)                  ;   {poll}
   0.21%  ││  0x00007f1a76ffe72a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@13 (line 190)
   0.01%  ↘│  0x00007f1a76ffe72f:   mov    0x8(%rsp),%r10
   2.44%   │  0x00007f1a76ffe734:   mov    %r10,%rsi
   0.02%   │  0x00007f1a76ffe737:   call   0x00007f1a6f4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_dse {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.28%   │  0x00007f1a76ffe73c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@20 (line 190)
   0.01%   │  0x00007f1a76ffe73d:   mov    0x20(%rsp),%r10
   7.95%   │  0x00007f1a76ffe742:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@26 (line 191)
   1.69%   │  0x00007f1a76ffe745:   mov    0x18(%rsp),%rsi
   0.03%   │  0x00007f1a76ffe74a:   cmpb   $0x0,0x94(%rsi)
   7.40%   ╰  0x00007f1a76ffe751:   je     0x00007f1a76ffe720           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 192)
              0x00007f1a76ffe753:   mov    %r10,0x20(%rsp)
              0x00007f1a76ffe758:   call   0x00007f1a8ec126f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1a76ffe75d:   nop
              0x00007f1a76ffe75e:   mov    0x10(%rsp),%rdx
              0x00007f1a76ffe763:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@40 (line 193)
              0x00007f1a76ffe767:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@46 (line 194)
              0x00007f1a76ffe76f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  22.60%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 725 
  22.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 746 
   0.22%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%            libjvm.so  HeapRegionClaimer::claim_region 
   0.07%         libc-2.31.so  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%               kernel  [unknown] 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.04%               kernel  [unknown] 
   0.04%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%            libjvm.so  ObjArrayAllocator::initialize 
   0.04%            libjvm.so  OtherRegionsTable::is_empty 
   0.04%               kernel  [unknown] 
   0.04%            libjvm.so  G1FromCardCache::clear 
   0.04%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   2.12%  <...other 489 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 725 
  22.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 746 
   1.36%               kernel  [unknown] 
   0.15%                       <unknown> 
   0.13%         libc-2.31.so  [unknown] 
   0.07%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.06%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.05%            libjvm.so  ObjArrayAllocator::initialize 
   0.04%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%            libjvm.so  OtherRegionsTable::is_empty 
   0.04%            libjvm.so  G1FromCardCache::clear 
   0.04%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.04%            libjvm.so  JVMCIRuntime::new_array_common 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%               [vdso]  __vdso_clock_gettime 
   0.03%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.03%            libjvm.so  TypeArrayKlass::allocate_common 
   0.91%  <...other 194 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.80%       jvmci, level 4
   1.36%               kernel
   1.28%            libjvm.so
   0.21%         libc-2.31.so
   0.15%                     
   0.07%   libpthread-2.31.so
   0.06%           ld-2.31.so
   0.03%               [vdso]
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 25.00% complete, ETA 00:11:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.947 ns/op
# Warmup Iteration   2: 28.744 ns/op
# Warmup Iteration   3: 28.686 ns/op
# Warmup Iteration   4: 28.409 ns/op
# Warmup Iteration   5: 28.330 ns/op
Iteration   1: 28.368 ns/op
Iteration   2: 28.294 ns/op
Iteration   3: 28.304 ns/op
Iteration   4: 28.526 ns/op
Iteration   5: 28.497 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural":
  28.398 ±(99.9%) 0.416 ns/op [Average]
  (min, avg, max) = (28.294, 28.398, 28.526), stdev = 0.108
  CI (99.9%): [27.982, 28.814] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·asm":
PrintAssembly processed: 194853 total address lines.
Perf output processed (skipped 58.653 seconds):
 Column 1: cycles (50975 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 735 

               #           [sp+0x20]  (sp of caller)
               0x00007f75f6ffbc40:   mov    0x8(%rsi),%r10d
               0x00007f75f6ffbc44:   movabs $0x800000000,%r12
               0x00007f75f6ffbc4e:   add    %r12,%r10
               0x00007f75f6ffbc51:   xor    %r12,%r12
               0x00007f75f6ffbc54:   cmp    %r10,%rax
               0x00007f75f6ffbc57:   jne    0x00007f75ef4ff780           ;   {runtime_call ic_miss_stub}
               0x00007f75f6ffbc5d:   nop
               0x00007f75f6ffbc5e:   xchg   %ax,%ax
             [Verified Entry Point]
   0.01%       0x00007f75f6ffbc60:   mov    %eax,-0x14000(%rsp)
   3.37%       0x00007f75f6ffbc67:   sub    $0x18,%rsp
   0.01%       0x00007f75f6ffbc6b:   mov    %rbp,0x10(%rsp)
   2.25%       0x00007f75f6ffbc70:   mov    %rsi,(%rsp)
   0.03%       0x00007f75f6ffbc74:   cmpl   $0x0,0xc(%rsi)
   0.56%       0x00007f75f6ffbc78:   jl     0x00007f75f6ffbdec           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@4 (line 174)
   0.00%       0x00007f75f6ffbc7e:   mov    %rsi,%r10
   0.78%       0x00007f75f6ffbc81:   xchg   %ax,%ax
   0.05%       0x00007f75f6ffbc83:   call   0x00007f75f6ffb620           ; ImmutableOopMap {[0]=Oop }
                                                                         ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@8 (line 175)
                                                                         ;   {optimized virtual_call}
   1.05%       0x00007f75f6ffbc88:   nop
   0.08%       0x00007f75f6ffbc89:   mov    (%rsp),%rsi
   0.04%       0x00007f75f6ffbc8d:   cmpl   $0x0,0xc(%rsi)
   6.99%       0x00007f75f6ffbc91:   jl     0x00007f75f6ffbdcd           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@15 (line 176)
   1.29%       0x00007f75f6ffbc97:   mov    %rsi,%r10
               0x00007f75f6ffbc9a:   nop
   0.01%       0x00007f75f6ffbc9b:   call   0x00007f75f6ffb620           ; ImmutableOopMap {[0]=Oop }
                                                                         ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@19 (line 177)
                                                                         ;   {optimized virtual_call}
   1.26%       0x00007f75f6ffbca0:   nop
               0x00007f75f6ffbca1:   mov    (%rsp),%rsi
   1.88%       0x00007f75f6ffbca5:   cmpl   $0x0,0xc(%rsi)
   6.58%       0x00007f75f6ffbca9:   jl     0x00007f75f6ffbdae           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@26 (line 178)
   1.38%       0x00007f75f6ffbcaf:   mov    %rsi,%r10
               0x00007f75f6ffbcb2:   nop
   0.01%       0x00007f75f6ffbcb3:   call   0x00007f75f6ffb620           ; ImmutableOopMap {[0]=Oop }
                                                                         ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@30 (line 179)
                                                                         ;   {optimized virtual_call}
   0.87%       0x00007f75f6ffbcb8:   nop
               0x00007f75f6ffbcb9:   mov    0x108(%r15),%r10
   1.08%       0x00007f75f6ffbcc0:   mov    0x118(%r15),%rax             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@37 (line 180)
   2.60%       0x00007f75f6ffbcc7:   mov    (%rsp),%r11
   0.01%       0x00007f75f6ffbccb:   mov    0xc(%r11),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@34 (line 180)
   5.28%       0x00007f75f6ffbccf:   mov    %edx,%esi
   0.00%       0x00007f75f6ffbcd1:   lea    0x17(%rsi),%rsi
   1.26%       0x00007f75f6ffbcd5:   and    $0xfffffffffffffff8,%rsi
   1.35%       0x00007f75f6ffbcd9:   mov    %rsi,%rcx
               0x00007f75f6ffbcdc:   add    %r10,%rcx
   2.61%       0x00007f75f6ffbcdf:   nop
   0.00%       0x00007f75f6ffbce0:   cmp    %rax,%rcx
          ╭    0x00007f75f6ffbce3:   ja     0x00007f75f6ffbd8a
          │    0x00007f75f6ffbce9:   mov    %rcx,0x108(%r15)
   1.35%  │    0x00007f75f6ffbcf0:   prefetchw 0xc0(%rsi,%r10,1)
   2.65%  │    0x00007f75f6ffbcf9:   prefetchw 0x100(%rsi,%r10,1)
   0.01%  │    0x00007f75f6ffbd02:   prefetchw 0x140(%rsi,%r10,1)
   1.50%  │    0x00007f75f6ffbd0b:   prefetchw 0x180(%rsi,%r10,1)
   0.66%  │    0x00007f75f6ffbd14:   movq   $0x1,(%r10)
   0.00%  │    0x00007f75f6ffbd1b:   movl   $0x6848,0x8(%r10)            ;   {metadata({type array byte})}
   0.01%  │    0x00007f75f6ffbd23:   mov    %edx,0xc(%r10)
   2.56%  │    0x00007f75f6ffbd27:   lea    -0x10(%rsi),%rcx
   0.01%  │    0x00007f75f6ffbd2b:   cmp    $0x800,%rcx
          │    0x00007f75f6ffbd32:   jae    0x00007f75f6ffbda2
   0.01%  │    0x00007f75f6ffbd38:   mov    $0x10,%rax
   0.00%  │    0x00007f75f6ffbd3f:   nop
   1.45%  │╭   0x00007f75f6ffbd40:   jmp    0x00007f75f6ffbd6c
          ││   0x00007f75f6ffbd45:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007f75f6ffbd50:   data16 data16 xchg %ax,%ax
          ││   0x00007f75f6ffbd54:   nopl   0x0(%rax,%rax,1)
          ││   0x00007f75f6ffbd5c:   data16 data16 xchg %ax,%ax
   5.76%  ││↗  0x00007f75f6ffbd60:   movq   $0x0,(%r10,%rax,1)
   6.01%  │││  0x00007f75f6ffbd68:   lea    0x8(%rax),%rax
   1.60%  │↘│  0x00007f75f6ffbd6c:   cmp    %rax,%rsi
          │ ╰  0x00007f75f6ffbd6f:   ja     0x00007f75f6ffbd60           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@37 (line 180)
   0.06%  │    0x00007f75f6ffbd71:   mov    %r10,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@41 (line 181)
   0.35%  │    0x00007f75f6ffbd74:   mov    0x10(%rsp),%rbp
   1.02%  │    0x00007f75f6ffbd79:   add    $0x18,%rsp
          │    0x00007f75f6ffbd7d:   mov    0x348(%r15),%rcx
   0.93%  │    0x00007f75f6ffbd84:   test   %eax,(%rcx)                  ;   {poll_return}
   4.74%  │    0x00007f75f6ffbd86:   vzeroupper 
   1.45%  │    0x00007f75f6ffbd89:   ret    
   0.00%  ↘    0x00007f75f6ffbd8a:   movabs $0x800006848,%rsi            ;   {metadata({type array byte})}
               0x00007f75f6ffbd94:   call   0x00007f75ef658a80           ; ImmutableOopMap {r11=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@33 (line 180)
                                                                         ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
               0x00007f75f6ffbd99:   nop                                 ; ImmutableOopMap {rax=Oop r11=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@33 (line 180)
               0x00007f75f6ffbd9a:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f75f6ffbe0b
               0x00007f75f6ffbd9c:   mov    %rax,%r10
               0x00007f75f6ffbd9f:   nop
....................................................................................................
  74.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 757 

              0x00007f75f70000f5:   mov    0x18(%rsp),%rsi
              0x00007f75f70000fa:   nopw   0x0(%rax,%rax,1)
              0x00007f75f7000100:   cmpb   $0x0,0x94(%rsi)
              0x00007f75f7000107:   jne    0x00007f75f700018e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 192)
              0x00007f75f700010d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f75f7000116:   jmp    0x00007f75f700012f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@13 (line 190)
          │   0x00007f75f700011b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 192)
   1.31%  │↗  0x00007f75f7000120:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 192)
   0.01%  ││  0x00007f75f7000127:   test   %eax,(%r11)                  ;   {poll}
   0.02%  ││  0x00007f75f700012a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@13 (line 190)
   0.00%  ↘│  0x00007f75f700012f:   mov    0x8(%rsp),%r10
   1.31%   │  0x00007f75f7000134:   mov    %r10,%rsi
   0.00%   │  0x00007f75f7000137:   call   0x00007f75ef4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_dse_inter_procedural {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.08%   │  0x00007f75f700013c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@20 (line 190)
           │  0x00007f75f700013d:   mov    0x20(%rsp),%r10
   5.90%   │  0x00007f75f7000142:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@26 (line 191)
   1.12%   │  0x00007f75f7000145:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007f75f700014a:   cmpb   $0x0,0x94(%rsi)
   5.05%   ╰  0x00007f75f7000151:   je     0x00007f75f7000120           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 192)
              0x00007f75f7000153:   mov    %r10,0x20(%rsp)
              0x00007f75f7000158:   call   0x00007f7610ac96f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f75f700015d:   nop
              0x00007f75f700015e:   mov    0x10(%rsp),%rdx
              0x00007f75f7000163:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@40 (line 193)
              0x00007f75f7000167:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@46 (line 194)
              0x00007f75f700016f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  14.79%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 735 
  14.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 757 
   7.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 733 
   0.71%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%               kernel  [unknown] 
   0.02%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%            libjvm.so  HandleMark::initialize 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  SpinPause 
   0.02%                       <unknown> 
   1.59%  <...other 474 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 735 
  14.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 757 
   7.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 733 
   1.74%               kernel  [unknown] 
   0.21%                       <unknown> 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%            libjvm.so  HandleMark::initialize 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%            libjvm.so  ThreadLocalAllocBuffer::fill 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%            libjvm.so  SpinPause 
   0.66%  <...other 175 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.05%       jvmci, level 4
   1.74%               kernel
   0.75%            libjvm.so
   0.21%                     
   0.10%         libc-2.31.so
   0.05%   libpthread-2.31.so
   0.04%           ld-2.31.so
   0.02%               [vdso]
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline
# Parameters: (size = 64)

# Run progress: 37.50% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.845 ns/op
# Warmup Iteration   2: 7.660 ns/op
# Warmup Iteration   3: 7.803 ns/op
# Warmup Iteration   4: 7.683 ns/op
# Warmup Iteration   5: 7.692 ns/op
Iteration   1: 7.663 ns/op
Iteration   2: 7.683 ns/op
Iteration   3: 7.668 ns/op
Iteration   4: 7.684 ns/op
Iteration   5: 7.673 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline":
  7.674 ±(99.9%) 0.036 ns/op [Average]
  (min, avg, max) = (7.663, 7.674, 7.684), stdev = 0.009
  CI (99.9%): [7.638, 7.710] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·asm":
PrintAssembly processed: 193466 total address lines.
Perf output processed (skipped 58.660 seconds):
 Column 1: cycles (50868 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 760 

              0x00007fd2cafffaf5:   mov    0x18(%rsp),%rsi
              0x00007fd2cafffafa:   nopw   0x0(%rax,%rax,1)
              0x00007fd2cafffb00:   cmpb   $0x0,0x94(%rsi)
              0x00007fd2cafffb07:   jne    0x00007fd2cafffb8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 192)
              0x00007fd2cafffb0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fd2cafffb16:   jmp    0x00007fd2cafffb2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@13 (line 190)
          │   0x00007fd2cafffb1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 192)
   3.61%  │↗  0x00007fd2cafffb20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 192)
   1.28%  ││  0x00007fd2cafffb27:   test   %eax,(%r11)                  ;   {poll}
   0.18%  ││  0x00007fd2cafffb2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@13 (line 190)
   0.01%  ↘│  0x00007fd2cafffb2f:   mov    0x8(%rsp),%r10
   3.59%   │  0x00007fd2cafffb34:   mov    %r10,%rsi
   1.26%   │  0x00007fd2cafffb37:   call   0x00007fd2c34ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_alloc_baseline {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  22.12%   │  0x00007fd2cafffb3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@20 (line 190)
   0.00%   │  0x00007fd2cafffb3d:   mov    0x20(%rsp),%r10
   1.23%   │  0x00007fd2cafffb42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@26 (line 191)
   4.64%   │  0x00007fd2cafffb45:   mov    0x18(%rsp),%rsi
   0.26%   │  0x00007fd2cafffb4a:   cmpb   $0x0,0x94(%rsi)
  16.35%   ╰  0x00007fd2cafffb51:   je     0x00007fd2cafffb20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 192)
              0x00007fd2cafffb53:   mov    %r10,0x20(%rsp)
              0x00007fd2cafffb58:   call   0x00007fd2e2b4d6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd2cafffb5d:   nop
              0x00007fd2cafffb5e:   mov    0x10(%rsp),%rdx
              0x00007fd2cafffb63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@40 (line 193)
              0x00007fd2cafffb67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@46 (line 194)
              0x00007fd2cafffb6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  54.54%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 737 

             #           [sp+0x20]  (sp of caller)
             0x00007fd2caffafa0:   mov    0x8(%rsi),%r10d
             0x00007fd2caffafa4:   movabs $0x800000000,%r12
             0x00007fd2caffafae:   add    %r12,%r10
             0x00007fd2caffafb1:   xor    %r12,%r12
             0x00007fd2caffafb4:   cmp    %r10,%rax
             0x00007fd2caffafb7:   jne    0x00007fd2c34ff780           ;   {runtime_call ic_miss_stub}
             0x00007fd2caffafbd:   nop
             0x00007fd2caffafbe:   xchg   %ax,%ax
           [Verified Entry Point]
   0.12%     0x00007fd2caffafc0:   mov    %eax,-0x14000(%rsp)
   5.10%     0x00007fd2caffafc7:   sub    $0x18,%rsp
   0.13%     0x00007fd2caffafcb:   mov    %rbp,0x10(%rsp)
   3.44%     0x00007fd2caffafd0:   mov    0x108(%r15),%rax
   1.53%     0x00007fd2caffafd7:   lea    0x10(%rax),%rsi
   1.40%     0x00007fd2caffafdb:   nopl   0x0(%rax,%rax,1)
   0.11%     0x00007fd2caffafe0:   cmp    0x118(%r15),%rsi
          ╭  0x00007fd2caffafe7:   ja     0x00007fd2caffb026
   1.88%  │  0x00007fd2caffafed:   mov    %rsi,0x108(%r15)
   1.52%  │  0x00007fd2caffaff4:   prefetchw 0xd0(%rax)
   2.21%  │  0x00007fd2caffaffb:   movq   $0x1,(%rax)
   3.93%  │  0x00007fd2caffb002:   movl   $0xd68,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   6.71%  │  0x00007fd2caffb009:   movl   $0x0,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 62)
   1.45%  │  0x00007fd2caffb010:   mov    0x10(%rsp),%rbp
   0.86%  │  0x00007fd2caffb015:   add    $0x18,%rsp
   0.08%  │  0x00007fd2caffb019:   mov    0x348(%r15),%rcx
   3.34%  │  0x00007fd2caffb020:   test   %eax,(%rcx)                  ;   {poll_return}
   4.04%  │  0x00007fd2caffb022:   vzeroupper 
   5.06%  │  0x00007fd2caffb025:   ret    
          ↘  0x00007fd2caffb026:   movabs $0x800000d68,%rsi            ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007fd2caffb030:   call   0x00007fd2c3649f00           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 62)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007fd2caffb035:   nop                                 ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 62)
             0x00007fd2caffb036:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fd2caffb03a
             0x00007fd2caffb038:   jmp    0x00007fd2caffb010           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  42.91%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 760 
  42.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 737 
   0.71%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%         libc-2.31.so  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  InstanceKlass::check_valid_for_instantiation 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.28%  <...other 355 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 760 
  42.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 737 
   1.73%               kernel  [unknown] 
   0.10%                       <unknown> 
   0.07%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  InstanceKlass::check_valid_for_instantiation 
   0.02%            libjvm.so  JVMCIRuntime::new_instance_common 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  fileStream::write 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%            libjvm.so  MemAllocator::allocate 
   0.01%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  JfrObjectAllocationSample::send_event 
   0.01%            libjvm.so  G1RebuildFreeListTask::work 
   0.01%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.39%  <...other 129 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.46%       jvmci, level 4
   1.73%               kernel
   0.51%            libjvm.so
   0.12%         libc-2.31.so
   0.10%                     
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%       hsdis-amd64.so
   0.00%          c1, level 3
   0.00%          interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse
# Parameters: (size = 64)

# Run progress: 50.00% complete, ETA 00:07:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.865 ns/op
# Warmup Iteration   2: 7.806 ns/op
# Warmup Iteration   3: 7.685 ns/op
# Warmup Iteration   4: 7.691 ns/op
# Warmup Iteration   5: 7.677 ns/op
Iteration   1: 7.708 ns/op
Iteration   2: 7.675 ns/op
Iteration   3: 7.702 ns/op
Iteration   4: 7.661 ns/op
Iteration   5: 7.699 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse":
  7.689 ±(99.9%) 0.077 ns/op [Average]
  (min, avg, max) = (7.661, 7.689, 7.708), stdev = 0.020
  CI (99.9%): [7.612, 7.766] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:·asm":
PrintAssembly processed: 191974 total address lines.
Perf output processed (skipped 58.581 seconds):
 Column 1: cycles (50733 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 5, compile id 747 

              0x00007fcd62ffe875:   mov    0x18(%rsp),%rsi
              0x00007fcd62ffe87a:   nopw   0x0(%rax,%rax,1)
              0x00007fcd62ffe880:   cmpb   $0x0,0x94(%rsi)
              0x00007fcd62ffe887:   jne    0x00007fcd62ffe90e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 192)
              0x00007fcd62ffe88d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fcd62ffe896:   jmp    0x00007fcd62ffe8af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@13 (line 190)
          │   0x00007fcd62ffe89b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 192)
   4.12%  │↗  0x00007fcd62ffe8a0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 192)
   0.68%  ││  0x00007fcd62ffe8a7:   test   %eax,(%r11)                  ;   {poll}
   0.25%  ││  0x00007fcd62ffe8aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@13 (line 190)
   0.01%  ↘│  0x00007fcd62ffe8af:   mov    0x8(%rsp),%r10
   4.03%   │  0x00007fcd62ffe8b4:   mov    %r10,%rsi
   0.75%   │  0x00007fcd62ffe8b7:   call   0x00007fcd5b4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_dse {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  20.28%   │  0x00007fcd62ffe8bc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@20 (line 190)
   0.01%   │  0x00007fcd62ffe8bd:   mov    0x20(%rsp),%r10
   1.69%   │  0x00007fcd62ffe8c2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@26 (line 191)
   4.81%   │  0x00007fcd62ffe8c5:   mov    0x18(%rsp),%rsi
   0.21%   │  0x00007fcd62ffe8ca:   cmpb   $0x0,0x94(%rsi)
  17.56%   ╰  0x00007fcd62ffe8d1:   je     0x00007fcd62ffe8a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 192)
              0x00007fcd62ffe8d3:   mov    %r10,0x20(%rsp)
              0x00007fcd62ffe8d8:   call   0x00007fcd7ab156f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fcd62ffe8dd:   nop
              0x00007fcd62ffe8de:   mov    0x10(%rsp),%rdx
              0x00007fcd62ffe8e3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@40 (line 193)
              0x00007fcd62ffe8e7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@46 (line 194)
              0x00007fcd62ffe8ef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  54.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 731 

             #           [sp+0x20]  (sp of caller)
             0x00007fcd62ffa520:   mov    0x8(%rsi),%r10d
             0x00007fcd62ffa524:   movabs $0x800000000,%r12
             0x00007fcd62ffa52e:   add    %r12,%r10
             0x00007fcd62ffa531:   xor    %r12,%r12
             0x00007fcd62ffa534:   cmp    %r10,%rax
             0x00007fcd62ffa537:   jne    0x00007fcd5b4ff780           ;   {runtime_call ic_miss_stub}
             0x00007fcd62ffa53d:   nop
             0x00007fcd62ffa53e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.21%     0x00007fcd62ffa540:   mov    %eax,-0x14000(%rsp)
   5.28%     0x00007fcd62ffa547:   sub    $0x18,%rsp
   0.19%     0x00007fcd62ffa54b:   mov    %rbp,0x10(%rsp)
   2.83%     0x00007fcd62ffa550:   mov    0x108(%r15),%rax
   2.08%     0x00007fcd62ffa557:   lea    0x10(%rax),%rsi
   1.12%     0x00007fcd62ffa55b:   nopl   0x0(%rax,%rax,1)
   0.23%     0x00007fcd62ffa560:   cmp    0x118(%r15),%rsi
          ╭  0x00007fcd62ffa567:   ja     0x00007fcd62ffa5a6
   1.54%  │  0x00007fcd62ffa56d:   mov    %rsi,0x108(%r15)
   2.11%  │  0x00007fcd62ffa574:   prefetchw 0xd0(%rax)
   1.79%  │  0x00007fcd62ffa57b:   movq   $0x1,(%rax)
   3.51%  │  0x00007fcd62ffa582:   movl   $0xd68,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   5.64%  │  0x00007fcd62ffa589:   movl   $0x0,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@120 (line 85)
   1.90%  │  0x00007fcd62ffa590:   mov    0x10(%rsp),%rbp
   1.51%  │  0x00007fcd62ffa595:   add    $0x18,%rsp
   0.04%  │  0x00007fcd62ffa599:   mov    0x348(%r15),%rcx
   3.19%  │  0x00007fcd62ffa5a0:   test   %eax,(%rcx)                  ;   {poll_return}
   5.02%  │  0x00007fcd62ffa5a2:   vzeroupper 
   4.89%  │  0x00007fcd62ffa5a5:   ret    
          ↘  0x00007fcd62ffa5a6:   movabs $0x800000d68,%rsi            ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007fcd62ffa5b0:   call   0x00007fcd5b649b00           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@0 (line 70)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007fcd62ffa5b5:   nop                                 ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@0 (line 70)
             0x00007fcd62ffa5b6:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fcd62ffa5ba
             0x00007fcd62ffa5b8:   jmp    0x00007fcd62ffa590           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  43.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 5, compile id 747 
  43.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 731 
   0.49%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.50%  <...other 428 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 5, compile id 747 
  43.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 731 
   1.69%               kernel  [unknown] 
   0.13%                       <unknown> 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  JVMCIRuntime::new_instance_common 
   0.01%            libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.01%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.01%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.42%  <...other 139 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.49%       jvmci, level 4
   1.69%               kernel
   0.51%            libjvm.so
   0.13%                     
   0.06%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.02%          interpreter
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%               [vdso]
   0.00%          c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 62.50% complete, ETA 00:05:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 73.552 ns/op
# Warmup Iteration   2: 72.873 ns/op
# Warmup Iteration   3: 72.691 ns/op
# Warmup Iteration   4: 72.970 ns/op
# Warmup Iteration   5: 72.965 ns/op
Iteration   1: 72.935 ns/op
Iteration   2: 73.001 ns/op
Iteration   3: 73.005 ns/op
Iteration   4: 72.944 ns/op
Iteration   5: 72.997 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural":
  72.976 ±(99.9%) 0.132 ns/op [Average]
  (min, avg, max) = (72.935, 72.976, 73.005), stdev = 0.034
  CI (99.9%): [72.845, 73.108] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·asm":
PrintAssembly processed: 188215 total address lines.
Perf output processed (skipped 58.570 seconds):
 Column 1: cycles (50979 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 732 

            #           [sp+0x10]  (sp of caller)
            0x00007f6302ffda80:   mov    0x8(%rsi),%r10d
            0x00007f6302ffda84:   movabs $0x800000000,%r12
            0x00007f6302ffda8e:   add    %r12,%r10
            0x00007f6302ffda91:   xor    %r12,%r12
            0x00007f6302ffda94:   cmp    %r10,%rax
            0x00007f6302ffda97:   jne    0x00007f62fb4ff780           ;   {runtime_call ic_miss_stub}
            0x00007f6302ffda9d:   nop
            0x00007f6302ffda9e:   xchg   %ax,%ax
          [Verified Entry Point]
  15.21%    0x00007f6302ffdaa0:   nopl   0x0(%rax,%rax,1)
   0.01%    0x00007f6302ffdaa5:   mov    0x348(%r15),%rcx
   4.38%    0x00007f6302ffdaac:   test   %eax,(%rcx)                  ;   {poll_return}
  36.15%    0x00007f6302ffdaae:   ret    
          [Exception Handler]
            0x00007f6302ffdaaf:   call   0x00007f62fb64aa00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f6302ffdab4:   nop
          [Deopt Handler Code]
            0x00007f6302ffdab5:   call   0x00007f62fb505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f6302ffdaba:   nop
          [Stub Code]
            0x00007f6302ffdabb:   hlt    
            0x00007f6302ffdabc:   hlt    
            0x00007f6302ffdabd:   hlt    
....................................................................................................
  55.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 734 

             #           [sp+0x20]  (sp of caller)
             0x00007f6302ffe140:   mov    0x8(%rsi),%r10d
             0x00007f6302ffe144:   movabs $0x800000000,%r12
             0x00007f6302ffe14e:   add    %r12,%r10
             0x00007f6302ffe151:   xor    %r12,%r12
             0x00007f6302ffe154:   cmp    %r10,%rax
             0x00007f6302ffe157:   jne    0x00007f62fb4ff780           ;   {runtime_call ic_miss_stub}
             0x00007f6302ffe15d:   nop
             0x00007f6302ffe15e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007f6302ffe160:   mov    %eax,-0x14000(%rsp)
   1.48%     0x00007f6302ffe167:   sub    $0x18,%rsp
   0.00%     0x00007f6302ffe16b:   mov    %rbp,0x10(%rsp)
   0.67%     0x00007f6302ffe170:   mov    %rsi,%r10
   0.14%     0x00007f6302ffe173:   mov    %r10,(%rsp)
   0.64%     0x00007f6302ffe177:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@9 (line 95)
                                                                       ;   {optimized virtual_call}
   0.19%     0x00007f6302ffe17c:   nop
             0x00007f6302ffe17d:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 97)
   0.19%     0x00007f6302ffe181:   xchg   %ax,%ax
   0.20%     0x00007f6302ffe183:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 97)
                                                                       ;   {optimized virtual_call}
   0.30%     0x00007f6302ffe188:   nop
   0.00%     0x00007f6302ffe189:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 99)
   1.43%     0x00007f6302ffe18d:   xchg   %ax,%ax
             0x00007f6302ffe18f:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 99)
                                                                       ;   {optimized virtual_call}
   0.28%     0x00007f6302ffe194:   nop
             0x00007f6302ffe195:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 101)
   1.59%     0x00007f6302ffe199:   xchg   %ax,%ax
             0x00007f6302ffe19b:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 101)
                                                                       ;   {optimized virtual_call}
   0.25%     0x00007f6302ffe1a0:   nop
             0x00007f6302ffe1a1:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 103)
   1.68%     0x00007f6302ffe1a5:   xchg   %ax,%ax
             0x00007f6302ffe1a7:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 103)
                                                                       ;   {optimized virtual_call}
   0.27%     0x00007f6302ffe1ac:   nop
             0x00007f6302ffe1ad:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 105)
   2.04%     0x00007f6302ffe1b1:   xchg   %ax,%ax
             0x00007f6302ffe1b3:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 105)
                                                                       ;   {optimized virtual_call}
   0.31%     0x00007f6302ffe1b8:   nop
             0x00007f6302ffe1b9:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 107)
   0.97%     0x00007f6302ffe1bd:   xchg   %ax,%ax
             0x00007f6302ffe1bf:   nop
             0x00007f6302ffe1c0:   data16 xchg %ax,%ax
             0x00007f6302ffe1c3:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 107)
                                                                       ;   {optimized virtual_call}
   0.30%     0x00007f6302ffe1c8:   nop
             0x00007f6302ffe1c9:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 109)
   1.22%     0x00007f6302ffe1cd:   xchg   %ax,%ax
             0x00007f6302ffe1cf:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 109)
                                                                       ;   {optimized virtual_call}
   0.25%     0x00007f6302ffe1d4:   nop
             0x00007f6302ffe1d5:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 111)
   1.59%     0x00007f6302ffe1d9:   xchg   %ax,%ax
             0x00007f6302ffe1db:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 111)
                                                                       ;   {optimized virtual_call}
   0.25%     0x00007f6302ffe1e0:   nop
             0x00007f6302ffe1e1:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 113)
   1.56%     0x00007f6302ffe1e5:   xchg   %ax,%ax
             0x00007f6302ffe1e7:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 113)
                                                                       ;   {optimized virtual_call}
   0.27%     0x00007f6302ffe1ec:   nop
             0x00007f6302ffe1ed:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 115)
   2.03%     0x00007f6302ffe1f1:   xchg   %ax,%ax
             0x00007f6302ffe1f3:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 115)
                                                                       ;   {optimized virtual_call}
   0.24%     0x00007f6302ffe1f8:   nop
             0x00007f6302ffe1f9:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 117)
   1.05%     0x00007f6302ffe1fd:   xchg   %ax,%ax
             0x00007f6302ffe1ff:   nop
             0x00007f6302ffe200:   data16 xchg %ax,%ax
             0x00007f6302ffe203:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 117)
                                                                       ;   {optimized virtual_call}
   0.23%     0x00007f6302ffe208:   nop
             0x00007f6302ffe209:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 119)
   1.48%     0x00007f6302ffe20d:   xchg   %ax,%ax
             0x00007f6302ffe20f:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 119)
                                                                       ;   {optimized virtual_call}
   0.27%     0x00007f6302ffe214:   nop
             0x00007f6302ffe215:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 121)
   1.55%     0x00007f6302ffe219:   xchg   %ax,%ax
             0x00007f6302ffe21b:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 121)
                                                                       ;   {optimized virtual_call}
   0.26%     0x00007f6302ffe220:   nop
             0x00007f6302ffe221:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 123)
   1.52%     0x00007f6302ffe225:   xchg   %ax,%ax
             0x00007f6302ffe227:   call   0x00007f6302ffdaa0           ; ImmutableOopMap {}
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 123)
                                                                       ;   {optimized virtual_call}
   0.28%     0x00007f6302ffe22c:   nop
             0x00007f6302ffe22d:   mov    0x108(%r15),%rax
   1.61%     0x00007f6302ffe234:   lea    0x10(%rax),%rsi
   0.50%     0x00007f6302ffe238:   nopl   0x0(%rax,%rax,1)
             0x00007f6302ffe240:   cmp    0x118(%r15),%rsi
          ╭  0x00007f6302ffe247:   ja     0x00007f6302ffe286
   0.47%  │  0x00007f6302ffe24d:   mov    %rsi,0x108(%r15)
   0.54%  │  0x00007f6302ffe254:   prefetchw 0xd0(%rax)
   1.59%  │  0x00007f6302ffe25b:   movq   $0x1,(%rax)
   0.58%  │  0x00007f6302ffe262:   movl   $0xd68,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.32%  │  0x00007f6302ffe269:   movl   $0x0,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 124)
          │  0x00007f6302ffe270:   mov    0x10(%rsp),%rbp
   0.16%  │  0x00007f6302ffe275:   add    $0x18,%rsp
          │  0x00007f6302ffe279:   mov    0x348(%r15),%rcx
   0.40%  │  0x00007f6302ffe280:   test   %eax,(%rcx)                  ;   {poll_return}
   0.03%  │  0x00007f6302ffe282:   vzeroupper 
   0.51%  │  0x00007f6302ffe285:   ret    
          ↘  0x00007f6302ffe286:   movabs $0x800000d68,%rsi            ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007f6302ffe290:   call   0x00007f62fb655400           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 124)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007f6302ffe295:   nop                                 ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 124)
             0x00007f6302ffe296:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f6302ffe29a
             0x00007f6302ffe298:   jmp    0x00007f6302ffe270           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  34.69%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 732 
  34.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 734 
   7.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 751 
   0.95%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.89%  <...other 284 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 732 
  34.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 734 
   7.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 751 
   1.99%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.04%         libc-2.31.so  [unknown] 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  G1Analytics::predict_young_other_time_ms 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  HeapRegionClaimer::claim_region 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  G1CollectionSet::update_young_region_prediction 
   0.01%            libjvm.so  OtherRegionsTable::occupied 
   0.22%  <...other 95 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.56%       jvmci, level 4
   1.99%               kernel
   0.24%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline
# Parameters: (size = 64)

# Run progress: 75.00% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.769 ns/op
# Warmup Iteration   2: 28.609 ns/op
# Warmup Iteration   3: 28.376 ns/op
# Warmup Iteration   4: 28.375 ns/op
# Warmup Iteration   5: 28.364 ns/op
Iteration   1: 28.378 ns/op
Iteration   2: 28.371 ns/op
Iteration   3: 28.374 ns/op
Iteration   4: 28.371 ns/op
Iteration   5: 28.378 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline":
  28.374 ±(99.9%) 0.014 ns/op [Average]
  (min, avg, max) = (28.371, 28.374, 28.378), stdev = 0.004
  CI (99.9%): [28.361, 28.388] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·asm":
PrintAssembly processed: 194019 total address lines.
Perf output processed (skipped 58.757 seconds):
 Column 1: cycles (50764 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 

              #           [sp+0x20]  (sp of caller)
              0x00007fa4cafd4580:   mov    0x8(%rsi),%r10d
              0x00007fa4cafd4584:   movabs $0x800000000,%r12
              0x00007fa4cafd458e:   add    %r12,%r10
              0x00007fa4cafd4591:   xor    %r12,%r12
              0x00007fa4cafd4594:   cmp    %r10,%rax
              0x00007fa4cafd4597:   jne    0x00007fa4c34d7780           ;   {runtime_call ic_miss_stub}
              0x00007fa4cafd459d:   nop
              0x00007fa4cafd459e:   xchg   %ax,%ax
            [Verified Entry Point]
   0.40%      0x00007fa4cafd45a0:   mov    %eax,-0x14000(%rsp)
   1.02%      0x00007fa4cafd45a7:   sub    $0x18,%rsp
   0.13%      0x00007fa4cafd45ab:   mov    %rbp,0x10(%rsp)
   0.21%      0x00007fa4cafd45b0:   mov    0x108(%r15),%rsi
   0.52%      0x00007fa4cafd45b7:   lea    0x30(%rsi),%rax
   0.58%      0x00007fa4cafd45bb:   nopl   0x0(%rax,%rax,1)
   0.16%      0x00007fa4cafd45c0:   cmp    0x118(%r15),%rax
              0x00007fa4cafd45c7:   ja     0x00007fa4cafd4baa
   0.20%      0x00007fa4cafd45cd:   mov    %rax,0x108(%r15)
   0.44%      0x00007fa4cafd45d4:   prefetchw 0xf0(%rsi)
   1.12%      0x00007fa4cafd45db:   movq   $0x1,(%rsi)
   0.17%      0x00007fa4cafd45e2:   movl   $0xc267e8,0x8(%rsi)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.21%      0x00007fa4cafd45e9:   movl   $0x0,0xc(%rsi)
   0.45%      0x00007fa4cafd45f0:   movq   $0x0,0x10(%rsi)
   0.60%      0x00007fa4cafd45f8:   movq   $0x0,0x18(%rsi)
   0.16%      0x00007fa4cafd4600:   movq   $0x0,0x20(%rsi)
   0.18%      0x00007fa4cafd4608:   movq   $0x0,0x28(%rsi)
   0.45%      0x00007fa4cafd4610:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@0 (line 132)
   0.59%      0x00007fa4cafd4613:   mov    0x108(%r15),%rsi
   0.23%      0x00007fa4cafd461a:   lea    0x10(%rsi),%rax
   0.21%      0x00007fa4cafd461e:   xchg   %ax,%ax
   0.47%      0x00007fa4cafd4620:   cmp    0x118(%r15),%rax
              0x00007fa4cafd4627:   ja     0x00007fa4cafd4b90
   0.59%      0x00007fa4cafd462d:   mov    %rax,0x108(%r15)
   0.12%      0x00007fa4cafd4634:   prefetchw 0xd0(%rsi)
   0.57%      0x00007fa4cafd463b:   movq   $0x1,(%rsi)
   0.58%      0x00007fa4cafd4642:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.64%      0x00007fa4cafd4649:   movl   $0x0,0xc(%rsi)
   0.15%      0x00007fa4cafd4650:   mov    %rsi,%r10                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@5 (line 193)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.22%      0x00007fa4cafd4653:   mov    0x108(%r15),%rsi
   0.86%      0x00007fa4cafd465a:   lea    0x10(%rsi),%rax
   0.53%      0x00007fa4cafd465e:   xchg   %ax,%ax
   0.13%      0x00007fa4cafd4660:   cmp    0x118(%r15),%rax
              0x00007fa4cafd4667:   ja     0x00007fa4cafd4b59
   0.22%      0x00007fa4cafd466d:   mov    %rax,0x108(%r15)
   0.49%      0x00007fa4cafd4674:   prefetchw 0xd0(%rsi)
   0.95%      0x00007fa4cafd467b:   movq   $0x1,(%rsi)
   0.47%      0x00007fa4cafd4682:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.39%      0x00007fa4cafd4689:   movl   $0x0,0xc(%rsi)
   0.43%      0x00007fa4cafd4690:   mov    %rsi,%r8                     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@16 (line 194)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.52%      0x00007fa4cafd4693:   mov    0x108(%r15),%rsi
   0.42%      0x00007fa4cafd469a:   lea    0x10(%rsi),%rax
   0.25%      0x00007fa4cafd469e:   xchg   %ax,%ax
   0.37%      0x00007fa4cafd46a0:   cmp    0x118(%r15),%rax
              0x00007fa4cafd46a7:   ja     0x00007fa4cafd4b25
   0.57%      0x00007fa4cafd46ad:   mov    %rax,0x108(%r15)
   0.21%      0x00007fa4cafd46b4:   prefetchw 0xd0(%rsi)
   1.01%      0x00007fa4cafd46bb:   movq   $0x1,(%rsi)
   1.07%      0x00007fa4cafd46c2:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.01%      0x00007fa4cafd46c9:   movl   $0x0,0xc(%rsi)
   0.34%      0x00007fa4cafd46d0:   mov    %rsi,%r9                     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@27 (line 195)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.16%      0x00007fa4cafd46d3:   mov    0x108(%r15),%rsi
   1.13%      0x00007fa4cafd46da:   lea    0x10(%rsi),%rax
   0.62%      0x00007fa4cafd46de:   xchg   %ax,%ax
   0.21%      0x00007fa4cafd46e0:   cmp    0x118(%r15),%rax
              0x00007fa4cafd46e7:   ja     0x00007fa4cafd4bc5
   0.34%      0x00007fa4cafd46ed:   mov    %rax,0x108(%r15)
   0.39%      0x00007fa4cafd46f4:   prefetchw 0xd0(%rsi)
   1.94%      0x00007fa4cafd46fb:   movq   $0x1,(%rsi)
   2.27%      0x00007fa4cafd4702:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.55%      0x00007fa4cafd4709:   movl   $0x0,0xc(%rsi)
   0.73%      0x00007fa4cafd4710:   mov    %rsi,%rcx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@38 (line 196)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.19%      0x00007fa4cafd4713:   mov    0x108(%r15),%rsi
   0.74%      0x00007fa4cafd471a:   lea    0x10(%rsi),%rax
   0.40%      0x00007fa4cafd471e:   xchg   %ax,%ax
   0.46%      0x00007fa4cafd4720:   cmp    0x118(%r15),%rax
              0x00007fa4cafd4727:   ja     0x00007fa4cafd4b73
   0.24%      0x00007fa4cafd472d:   mov    %rax,0x108(%r15)
   0.37%      0x00007fa4cafd4734:   prefetchw 0xd0(%rsi)
   2.13%      0x00007fa4cafd473b:   movq   $0x1,(%rsi)
   3.29%      0x00007fa4cafd4742:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   2.28%      0x00007fa4cafd4749:   movl   $0x0,0xc(%rsi)
   0.69%      0x00007fa4cafd4750:   mov    %rsi,%rbx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@49 (line 197)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.13%      0x00007fa4cafd4753:   mov    0x108(%r15),%rsi
   0.42%      0x00007fa4cafd475a:   lea    0x10(%rsi),%rax
   0.52%      0x00007fa4cafd475e:   xchg   %ax,%ax
   0.60%      0x00007fa4cafd4760:   cmp    0x118(%r15),%rax
              0x00007fa4cafd4767:   ja     0x00007fa4cafd4b3f
   0.18%      0x00007fa4cafd476d:   mov    %rax,0x108(%r15)
   0.22%      0x00007fa4cafd4774:   prefetchw 0xd0(%rsi)
   2.21%      0x00007fa4cafd477b:   movq   $0x1,(%rsi)
   3.20%      0x00007fa4cafd4782:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.90%      0x00007fa4cafd4789:   movl   $0x0,0xc(%rsi)
   0.85%      0x00007fa4cafd4790:   mov    %rsi,%rdi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@60 (line 198)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.14%      0x00007fa4cafd4793:   mov    0x108(%r15),%rsi
   0.62%      0x00007fa4cafd479a:   lea    0x10(%rsi),%rax
   0.39%      0x00007fa4cafd479e:   xchg   %ax,%ax
   0.71%      0x00007fa4cafd47a0:   cmp    0x118(%r15),%rax
              0x00007fa4cafd47a7:   ja     0x00007fa4cafd4bdf
   0.16%      0x00007fa4cafd47ad:   mov    %rax,0x108(%r15)
   0.17%      0x00007fa4cafd47b4:   prefetchw 0xd0(%rsi)
   2.20%      0x00007fa4cafd47bb:   movq   $0x1,(%rsi)
   3.51%      0x00007fa4cafd47c2:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   2.09%      0x00007fa4cafd47c9:   movl   $0x0,0xc(%rsi)
   0.64%      0x00007fa4cafd47d0:   mov    %rsi,%rdx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@71 (line 199)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.16%      0x00007fa4cafd47d3:   mov    0x108(%r15),%rsi
   0.78%      0x00007fa4cafd47da:   lea    0x10(%rsi),%rax
   0.58%      0x00007fa4cafd47de:   xchg   %ax,%ax
   0.45%      0x00007fa4cafd47e0:   cmp    0x118(%r15),%rax
              0x00007fa4cafd47e7:   ja     0x00007fa4cafd4b0b
   0.19%      0x00007fa4cafd47ed:   mov    %rax,0x108(%r15)
   0.27%      0x00007fa4cafd47f4:   prefetchw 0xd0(%rsi)
   2.16%      0x00007fa4cafd47fb:   movq   $0x1,(%rsi)
   2.45%      0x00007fa4cafd4802:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.86%      0x00007fa4cafd4809:   movl   $0x0,0xc(%rsi)
   0.75%      0x00007fa4cafd4810:   mov    %rsi,%rax                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@82 (line 200)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.13%      0x00007fa4cafd4813:   mov    %r10,%rsi
   0.17%      0x00007fa4cafd4816:   shr    $0x3,%rsi
   0.44%      0x00007fa4cafd481a:   mov    %esi,0xc(%r11)
   0.54%      0x00007fa4cafd481e:   mov    %r11,%rsi
   0.11%      0x00007fa4cafd4821:   xor    %r10,%rsi
   0.19%      0x00007fa4cafd4824:   movabs $0x7fa4bdf06000,%r13
   0.44%      0x00007fa4cafd482e:   test   $0xffffffffffe00000,%rsi
          ╭   0x00007fa4cafd4835:   je     0x00007fa4cafd485b
          │   0x00007fa4cafd483b:   nopl   0x0(%rax,%rax,1)
          │   0x00007fa4cafd4840:   test   %r10,%r10
          │╭  0x00007fa4cafd4843:   je     0x00007fa4cafd485b
          ││  0x00007fa4cafd4849:   mov    %r11,%r10
          ││  0x00007fa4cafd484c:   shr    $0x9,%r10
          ││  0x00007fa4cafd4850:   cmpb   $0x4,(%r10,%r13,1)
   0.01%  ││  0x00007fa4cafd4855:   jne    0x00007fa4cafd4aa5
   0.60%  ↘↘  0x00007fa4cafd485b:   mov    %r8,%rsi
   0.14%      0x00007fa4cafd485e:   shr    $0x3,%rsi
....................................................................................................
  74.32%  <total for region 1>

....[Hottest Regions]...............................................................................
  74.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 
   4.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 5, compile id 755 
   3.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 
   2.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 
   2.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 
   2.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 
   2.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 
   2.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 
   1.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 
   1.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 
   0.20%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.09%            libjvm.so  HeapRegionClaimer::claim_region 
   0.07%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%               kernel  [unknown] 
   0.06%            libjvm.so  HeapRegionManager::par_iterate 
   0.06%                       <unknown> 
   0.05%               kernel  [unknown] 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%               kernel  [unknown] 
   2.47%  <...other 527 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 740 
   4.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 5, compile id 755 
   1.12%               kernel  [unknown] 
   0.30%                       <unknown> 
   0.09%            libjvm.so  HeapRegionClaimer::claim_region 
   0.07%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%            libjvm.so  HeapRegionManager::par_iterate 
   0.06%            libjvm.so  JVMCIRuntime::new_instance_common 
   0.05%               [vdso]  __vdso_clock_gettime 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%            libjvm.so  ObjAllocator::initialize 
   0.04%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.03%            libjvm.so  G1FromCardCache::clear 
   0.03%            libjvm.so  InstanceKlass::check_valid_for_instantiation 
   0.03%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  SpinPause 
   0.03%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.03%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   1.12%  <...other 198 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.76%       jvmci, level 4
   1.49%            libjvm.so
   1.12%               kernel
   0.30%                     
   0.09%   libpthread-2.31.so
   0.07%         libc-2.31.so
   0.07%           ld-2.31.so
   0.05%               [vdso]
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 87.50% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 56.398 ns/op
# Warmup Iteration   2: 55.524 ns/op
# Warmup Iteration   3: 55.495 ns/op
# Warmup Iteration   4: 55.221 ns/op
# Warmup Iteration   5: 55.237 ns/op
Iteration   1: 55.201 ns/op
Iteration   2: 55.281 ns/op
Iteration   3: 55.345 ns/op
Iteration   4: 55.317 ns/op
Iteration   5: 55.590 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural":
  55.347 ±(99.9%) 0.564 ns/op [Average]
  (min, avg, max) = (55.201, 55.347, 55.590), stdev = 0.146
  CI (99.9%): [54.783, 55.910] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·asm":
PrintAssembly processed: 195538 total address lines.
Perf output processed (skipped 58.479 seconds):
 Column 1: cycles (50812 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 735 

             #           [sp+0x40]  (sp of caller)
             0x00007ff3e2ffce80:   mov    0x8(%rsi),%r10d
             0x00007ff3e2ffce84:   movabs $0x800000000,%r12
             0x00007ff3e2ffce8e:   add    %r12,%r10
             0x00007ff3e2ffce91:   xor    %r12,%r12
             0x00007ff3e2ffce94:   cmp    %r10,%rax
             0x00007ff3e2ffce97:   jne    0x00007ff3db4ff780           ;   {runtime_call ic_miss_stub}
             0x00007ff3e2ffce9d:   nop
             0x00007ff3e2ffce9e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.32%     0x00007ff3e2ffcea0:   mov    %eax,-0x14000(%rsp)
   0.40%     0x00007ff3e2ffcea7:   sub    $0x38,%rsp
   0.11%     0x00007ff3e2ffceab:   mov    %rbp,0x30(%rsp)
   0.25%     0x00007ff3e2ffceb0:   mov    0x108(%r15),%rsi
   0.30%     0x00007ff3e2ffceb7:   lea    0x30(%rsi),%rdx
   0.09%     0x00007ff3e2ffcebb:   nopl   0x0(%rax,%rax,1)
   0.09%     0x00007ff3e2ffcec0:   cmp    0x118(%r15),%rdx
          ╭  0x00007ff3e2ffcec7:   ja     0x00007ff3e2ffd148
   0.26%  │  0x00007ff3e2ffcecd:   mov    %rdx,0x108(%r15)
   0.25%  │  0x00007ff3e2ffced4:   prefetchw 0xf0(%rsi)
   0.29%  │  0x00007ff3e2ffcedb:   movq   $0x1,(%rsi)
   0.20%  │  0x00007ff3e2ffcee2:   movl   $0xc265e0,0x8(%rsi)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.32%  │  0x00007ff3e2ffcee9:   movl   $0x0,0xc(%rsi)
   0.23%  │  0x00007ff3e2ffcef0:   movq   $0x0,0x10(%rsi)
   0.09%  │  0x00007ff3e2ffcef8:   movq   $0x0,0x18(%rsi)
   0.08%  │  0x00007ff3e2ffcf00:   movq   $0x0,0x20(%rsi)
   0.32%  │  0x00007ff3e2ffcf08:   movq   $0x0,0x28(%rsi)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@69 (line 147)
   0.30%  │  0x00007ff3e2ffcf10:   mov    0x108(%r15),%rdx
   0.07%  │  0x00007ff3e2ffcf17:   lea    0x10(%rdx),%rcx
   0.06%  │  0x00007ff3e2ffcf1b:   nopl   0x0(%rax,%rax,1)
   0.23%  │  0x00007ff3e2ffcf20:   cmp    0x118(%r15),%rcx
          │  0x00007ff3e2ffcf27:   ja     0x00007ff3e2ffd245
   0.30%  │  0x00007ff3e2ffcf2d:   mov    %rcx,0x108(%r15)
   0.09%  │  0x00007ff3e2ffcf34:   prefetchw 0xd0(%rdx)
   0.24%  │  0x00007ff3e2ffcf3b:   movq   $0x1,(%rdx)
   0.33%  │  0x00007ff3e2ffcf42:   movl   $0xd68,0x8(%rdx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.32%  │  0x00007ff3e2ffcf49:   movl   $0x0,0xc(%rdx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 139)
   0.13%  │  0x00007ff3e2ffcf50:   mov    0x108(%r15),%rcx
   0.18%  │  0x00007ff3e2ffcf57:   lea    0x10(%rcx),%r8
   0.21%  │  0x00007ff3e2ffcf5b:   nopl   0x0(%rax,%rax,1)
   0.26%  │  0x00007ff3e2ffcf60:   cmp    0x118(%r15),%r8
          │  0x00007ff3e2ffcf67:   ja     0x00007ff3e2ffd165
   0.13%  │  0x00007ff3e2ffcf6d:   mov    %r8,0x108(%r15)
   0.10%  │  0x00007ff3e2ffcf74:   prefetchw 0xd0(%rcx)
   0.58%  │  0x00007ff3e2ffcf7b:   movq   $0x1,(%rcx)
   0.74%  │  0x00007ff3e2ffcf82:   movl   $0xd68,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.35%  │  0x00007ff3e2ffcf89:   movl   $0x0,0xc(%rcx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@8 (line 140)
   0.18%  │  0x00007ff3e2ffcf90:   mov    0x108(%r15),%r8
   0.22%  │  0x00007ff3e2ffcf97:   lea    0x10(%r8),%r9
   0.21%  │  0x00007ff3e2ffcf9b:   nopl   0x0(%rax,%rax,1)
   0.14%  │  0x00007ff3e2ffcfa0:   cmp    0x118(%r15),%r9
          │  0x00007ff3e2ffcfa7:   ja     0x00007ff3e2ffd269
   0.14%  │  0x00007ff3e2ffcfad:   mov    %r9,0x108(%r15)
   0.20%  │  0x00007ff3e2ffcfb4:   prefetchw 0xd0(%r8)
   0.80%  │  0x00007ff3e2ffcfbc:   movq   $0x1,(%r8)
   1.05%  │  0x00007ff3e2ffcfc3:   movl   $0xd68,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.35%  │  0x00007ff3e2ffcfcb:   movl   $0x0,0xc(%r8)                ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@16 (line 141)
   0.47%  │  0x00007ff3e2ffcfd3:   mov    0x108(%r15),%r9
   0.18%  │  0x00007ff3e2ffcfda:   lea    0x10(%r9),%rdi
   0.24%  │  0x00007ff3e2ffcfde:   xchg   %ax,%ax
   0.14%  │  0x00007ff3e2ffcfe0:   cmp    0x118(%r15),%rdi
          │  0x00007ff3e2ffcfe7:   ja     0x00007ff3e2ffd21d
   0.28%  │  0x00007ff3e2ffcfed:   mov    %rdi,0x108(%r15)
   0.18%  │  0x00007ff3e2ffcff4:   prefetchw 0xd0(%r9)
   1.17%  │  0x00007ff3e2ffcffc:   movq   $0x1,(%r9)
   1.21%  │  0x00007ff3e2ffd003:   movl   $0xd68,0x8(%r9)              ;   {metadata(&apos;java/lang/Object&apos;)}
   1.32%  │  0x00007ff3e2ffd00b:   movl   $0x0,0xc(%r9)                ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@24 (line 142)
   0.27%  │  0x00007ff3e2ffd013:   mov    0x108(%r15),%rdi
   0.20%  │  0x00007ff3e2ffd01a:   lea    0x10(%rdi),%r10
   0.12%  │  0x00007ff3e2ffd01e:   xchg   %ax,%ax
   0.33%  │  0x00007ff3e2ffd020:   cmp    0x118(%r15),%r10
          │  0x00007ff3e2ffd027:   ja     0x00007ff3e2ffd1d5
   0.22%  │  0x00007ff3e2ffd02d:   mov    %r10,0x108(%r15)
   0.09%  │  0x00007ff3e2ffd034:   prefetchw 0xd0(%rdi)
   1.29%  │  0x00007ff3e2ffd03b:   movq   $0x1,(%rdi)
   1.83%  │  0x00007ff3e2ffd042:   movl   $0xd68,0x8(%rdi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.80%  │  0x00007ff3e2ffd049:   movl   $0x0,0xc(%rdi)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@33 (line 143)
   0.40%  │  0x00007ff3e2ffd050:   mov    0x108(%r15),%r10
   0.15%  │  0x00007ff3e2ffd057:   lea    0x10(%r10),%r11
   0.10%  │  0x00007ff3e2ffd05b:   nopl   0x0(%rax,%rax,1)
   0.20%  │  0x00007ff3e2ffd060:   cmp    0x118(%r15),%r11
          │  0x00007ff3e2ffd067:   ja     0x00007ff3e2ffd189
   0.33%  │  0x00007ff3e2ffd06d:   mov    %r11,0x108(%r15)
   0.12%  │  0x00007ff3e2ffd074:   prefetchw 0xd0(%r10)
   1.33%  │  0x00007ff3e2ffd07c:   movq   $0x1,(%r10)
   1.82%  │  0x00007ff3e2ffd083:   movl   $0xd68,0x8(%r10)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.05%  │  0x00007ff3e2ffd08b:   movl   $0x0,0xc(%r10)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@42 (line 144)
   0.32%  │  0x00007ff3e2ffd093:   mov    0x108(%r15),%r11
   0.59%  │  0x00007ff3e2ffd09a:   lea    0x10(%r11),%rbx
   0.07%  │  0x00007ff3e2ffd09e:   xchg   %ax,%ax
   0.28%  │  0x00007ff3e2ffd0a0:   cmp    0x118(%r15),%rbx
          │  0x00007ff3e2ffd0a7:   ja     0x00007ff3e2ffd1f9
   0.33%  │  0x00007ff3e2ffd0ad:   mov    %rbx,0x108(%r15)
   0.10%  │  0x00007ff3e2ffd0b4:   prefetchw 0xd0(%r11)
   0.76%  │  0x00007ff3e2ffd0bc:   movq   $0x1,(%r11)
   1.70%  │  0x00007ff3e2ffd0c3:   movl   $0xd68,0x8(%r11)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.51%  │  0x00007ff3e2ffd0cb:   movl   $0x0,0xc(%r11)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@51 (line 145)
   0.43%  │  0x00007ff3e2ffd0d3:   mov    0x108(%r15),%rbx
   0.24%  │  0x00007ff3e2ffd0da:   lea    0x10(%rbx),%rax
   0.22%  │  0x00007ff3e2ffd0de:   xchg   %ax,%ax
   0.10%  │  0x00007ff3e2ffd0e0:   cmp    0x118(%r15),%rax
          │  0x00007ff3e2ffd0e7:   ja     0x00007ff3e2ffd1ad
   0.45%  │  0x00007ff3e2ffd0ed:   mov    %rax,0x108(%r15)
   0.14%  │  0x00007ff3e2ffd0f4:   prefetchw 0xd0(%rbx)
   1.03%  │  0x00007ff3e2ffd0fb:   movq   $0x1,(%rbx)
   1.68%  │  0x00007ff3e2ffd102:   movl   $0xd68,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.05%  │  0x00007ff3e2ffd109:   movl   $0x0,0xc(%rbx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@60 (line 146)
   0.41%  │  0x00007ff3e2ffd110:   mov    %rsi,%rax
   0.06%  │  0x00007ff3e2ffd113:   mov    %r10,(%rsp)
   0.05%  │  0x00007ff3e2ffd117:   mov    %r11,0x8(%rsp)
   0.24%  │  0x00007ff3e2ffd11c:   mov    %rbx,0x10(%rsp)              ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@86 (line 147)
   0.31%  │  0x00007ff3e2ffd121:   mov    %rax,0x20(%rsp)
   0.04%  │  0x00007ff3e2ffd126:   nop
   0.06%  │  0x00007ff3e2ffd127:   call   0x00007ff3e2ffb1c0           ; ImmutableOopMap {[32]=Oop }
          │                                                            ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@86 (line 147)
          │                                                            ;   {optimized virtual_call}
   0.09%  │  0x00007ff3e2ffd12c:   nop
   0.14%  │  0x00007ff3e2ffd12d:   mov    0x20(%rsp),%rax              ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@89 (line 147)
   0.53%  │  0x00007ff3e2ffd132:   mov    0x30(%rsp),%rbp
   0.06%  │  0x00007ff3e2ffd137:   add    $0x38,%rsp
   0.12%  │  0x00007ff3e2ffd13b:   mov    0x348(%r15),%rcx
   0.26%  │  0x00007ff3e2ffd142:   test   %eax,(%rcx)                  ;   {poll_return}
   0.38%  │  0x00007ff3e2ffd144:   vzeroupper 
   0.72%  │  0x00007ff3e2ffd147:   ret    
          ↘  0x00007ff3e2ffd148:   movabs $0x800c265e0,%rsi            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
             0x00007ff3e2ffd152:   call   0x00007ff3db64ab00           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 139)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007ff3e2ffd157:   nop                                 ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 139)
             0x00007ff3e2ffd158:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007ff3e2ffd28d
             0x00007ff3e2ffd15a:   mov    %rax,%rsi
....................................................................................................
  40.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 

            # parm7:    [sp+0x30]   = &apos;java/lang/Object&apos;
            0x00007ff3e2ffb1a0:   mov    0x8(%rsi),%r10d
            0x00007ff3e2ffb1a4:   movabs $0x800000000,%r12
            0x00007ff3e2ffb1ae:   add    %r12,%r10
            0x00007ff3e2ffb1b1:   xor    %r12,%r12
            0x00007ff3e2ffb1b4:   cmp    %r10,%rax
            0x00007ff3e2ffb1b7:   jne    0x00007ff3db4ff780           ;   {runtime_call ic_miss_stub}
            0x00007ff3e2ffb1bd:   nop
            0x00007ff3e2ffb1be:   xchg   %ax,%ax
          [Verified Entry Point]
   0.57%    0x00007ff3e2ffb1c0:   mov    %eax,-0x14000(%rsp)
   0.12%    0x00007ff3e2ffb1c7:   sub    $0x18,%rsp
   0.28%    0x00007ff3e2ffb1cb:   mov    %rbp,0x10(%rsp)
   0.35%    0x00007ff3e2ffb1d0:   mov    %rsi,%r11
   0.03%    0x00007ff3e2ffb1d3:   mov    0x20(%rsp),%rbx
   0.19%    0x00007ff3e2ffb1d8:   mov    0x28(%rsp),%r13
   0.31%    0x00007ff3e2ffb1dd:   mov    0x30(%rsp),%r14
   0.38%    0x00007ff3e2ffb1e2:   mov    0x108(%r15),%rsi
   0.10%    0x00007ff3e2ffb1e9:   lea    0x10(%rsi),%rax
   0.08%    0x00007ff3e2ffb1ed:   cmp    0x118(%r15),%rax
            0x00007ff3e2ffb1f4:   ja     0x00007ff3e2ffbeae
   0.31%    0x00007ff3e2ffb1fa:   mov    %rax,0x108(%r15)
   0.36%    0x00007ff3e2ffb201:   prefetchw 0xd0(%rsi)
   0.22%    0x00007ff3e2ffb208:   movq   $0x1,(%rsi)
   0.24%    0x00007ff3e2ffb20f:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.34%    0x00007ff3e2ffb216:   movl   $0x0,0xc(%rsi)
   0.32%    0x00007ff3e2ffb21d:   mov    %rsi,%rax                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@5 (line 193)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@1 (line 214)
   0.10%    0x00007ff3e2ffb220:   cmpb   $0x0,0x38(%r15)
   0.10%    0x00007ff3e2ffb225:   jne    0x00007ff3e2ffbbef
   0.19%    0x00007ff3e2ffb22b:   mov    %rax,%rsi
   0.28%    0x00007ff3e2ffb22e:   shr    $0x3,%rsi
   0.06%    0x00007ff3e2ffb232:   mov    %esi,0xc(%r11)
   0.10%    0x00007ff3e2ffb236:   mov    %r11,%rsi
   0.24%    0x00007ff3e2ffb239:   xor    %rax,%rsi
   0.30%    0x00007ff3e2ffb23c:   movabs $0x7ff3d74b3000,%r10
   0.10%    0x00007ff3e2ffb246:   test   $0xffffffffffe00000,%rsi
            0x00007ff3e2ffb24d:   je     0x00007ff3e2ffba25
            0x00007ff3e2ffb253:   test   %rax,%rax
            0x00007ff3e2ffb256:   je     0x00007ff3e2ffbc5f
            0x00007ff3e2ffb25c:   mov    %r11,%rsi
   0.00%    0x00007ff3e2ffb25f:   shr    $0x9,%rsi
            0x00007ff3e2ffb263:   cmpb   $0x4,(%rsi,%r10,1)
   0.00%    0x00007ff3e2ffb268:   jne    0x00007ff3e2ffbd85
            0x00007ff3e2ffb26e:   mov    %r10,%rax                    ;*putfield obj1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@12 (line 193)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@1 (line 214)
   0.46%    0x00007ff3e2ffb271:   mov    0x108(%r15),%rsi
   0.15%    0x00007ff3e2ffb278:   lea    0x10(%rsi),%r10
            0x00007ff3e2ffb27c:   nopl   0x0(%rax)
   0.22%    0x00007ff3e2ffb280:   cmp    0x118(%r15),%r10
            0x00007ff3e2ffb287:   ja     0x00007ff3e2ffbe6d
   0.45%    0x00007ff3e2ffb28d:   mov    %r10,0x108(%r15)
   0.01%    0x00007ff3e2ffb294:   prefetchw 0xd0(%rsi)
   0.31%    0x00007ff3e2ffb29b:   movq   $0x1,(%rsi)
   0.62%    0x00007ff3e2ffb2a2:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.61%    0x00007ff3e2ffb2a9:   movl   $0x0,0xc(%rsi)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@16 (line 194)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@1 (line 214)
   0.23%    0x00007ff3e2ffb2b0:   cmpb   $0x0,0x38(%r15)
   0.02%    0x00007ff3e2ffb2b5:   jne    0x00007ff3e2ffb93f
   0.16%    0x00007ff3e2ffb2bb:   mov    %r14,(%rsp)
   0.36%    0x00007ff3e2ffb2bf:   mov    %rax,%r14
   0.17%    0x00007ff3e2ffb2c2:   mov    %rsi,%rax
   0.03%    0x00007ff3e2ffb2c5:   mov    %rax,%rsi
   0.17%    0x00007ff3e2ffb2c8:   shr    $0x3,%rsi
   0.35%    0x00007ff3e2ffb2cc:   mov    %esi,0x10(%r11)
   0.16%    0x00007ff3e2ffb2d0:   mov    %r11,%rsi
   0.04%    0x00007ff3e2ffb2d3:   xor    %rax,%rsi
   0.16%    0x00007ff3e2ffb2d6:   data16 nopw 0x0(%rax,%rax,1)
   0.34%    0x00007ff3e2ffb2e0:   test   $0xffffffffffe00000,%rsi
            0x00007ff3e2ffb2e7:   je     0x00007ff3e2ffb30b
            0x00007ff3e2ffb2ed:   test   %rax,%rax
            0x00007ff3e2ffb2f0:   je     0x00007ff3e2ffb30b
            0x00007ff3e2ffb2f6:   mov    %r11,%rsi
            0x00007ff3e2ffb2f9:   shr    $0x9,%rsi
            0x00007ff3e2ffb2fd:   data16 xchg %ax,%ax
            0x00007ff3e2ffb300:   cmpb   $0x4,(%rsi,%r14,1)
   0.00%    0x00007ff3e2ffb305:   jne    0x00007ff3e2ffbd5a           ;*putfield obj2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@23 (line 194)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@1 (line 214)
....................................................................................................
  10.71%  <total for region 2>

....[Hottest Regions]...............................................................................
  40.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 735 
  10.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   5.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   4.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   4.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   4.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   4.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   4.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   2.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 758 
   1.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   1.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   1.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   1.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   1.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   1.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   1.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   1.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   1.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   0.40%               kernel  [unknown] 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
   3.18%  <...other 563 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 734 
  40.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 735 
   2.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 758 
   1.65%               kernel  [unknown] 
   0.17%                       <unknown> 
   0.15%         libc-2.31.so  [unknown] 
   0.07%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%            libjvm.so  HeapRegionManager::par_iterate 
   0.06%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%            libjvm.so  JVMCIRuntime::new_instance_common 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  ObjAllocator::initialize 
   0.04%            libjvm.so  G1FromCardCache::clear 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.03%            libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.02%               [vdso]  __vdso_clock_gettime 
   1.01%  <...other 201 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.44%       jvmci, level 4
   1.65%               kernel
   1.31%            libjvm.so
   0.25%         libc-2.31.so
   0.17%                     
   0.06%   libpthread-2.31.so
   0.06%           ld-2.31.so
   0.02%               [vdso]
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%       perf-27758.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:49

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
DeadLocalAllocationStoreBenchmark.array_baseline                             64  avgt    5  11.920 ± 0.012  ns/op
DeadLocalAllocationStoreBenchmark.array_baseline:·asm                        64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.array_dse                                  64  avgt    5  14.320 ± 0.605  ns/op
DeadLocalAllocationStoreBenchmark.array_dse:·asm                             64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural                 64  avgt    5  28.398 ± 0.416  ns/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·asm            64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline                         64  avgt    5   7.674 ± 0.036  ns/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·asm                    64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.obj_dse                                    64  avgt    5   7.689 ± 0.077  ns/op
DeadLocalAllocationStoreBenchmark.obj_dse:·asm                               64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural                   64  avgt    5  72.976 ± 0.132  ns/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·asm              64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline                       64  avgt    5  28.374 ± 0.014  ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·asm                  64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural           64  avgt    5  55.347 ± 0.564  ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·asm      64  avgt          NaN            ---
