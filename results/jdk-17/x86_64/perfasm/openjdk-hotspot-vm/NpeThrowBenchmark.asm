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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5999.821 ns/op
# Warmup Iteration   2: 5959.339 ns/op
# Warmup Iteration   3: 5957.552 ns/op
# Warmup Iteration   4: 5957.505 ns/op
# Warmup Iteration   5: 5957.484 ns/op
Iteration   1: 5957.411 ns/op
Iteration   2: 5957.424 ns/op
Iteration   3: 5957.447 ns/op
Iteration   4: 5957.221 ns/op
Iteration   5: 5957.564 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  5957.413 ±(99.9%) 0.475 ns/op [Average]
  (min, avg, max) = (5957.221, 5957.413, 5957.564), stdev = 0.123
  CI (99.9%): [5956.938, 5957.889] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 116601 total address lines.
Perf output processed (skipped 55.687 seconds):
 Column 1: cycles (50980 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 487 

                # {method} {0x00007fc61fc75570} &apos;explicit_throw_npe&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark&apos;
                #           [sp+0x40]  (sp of caller)
                0x00007fc658f640a0:   mov    0x8(%rsi),%r10d
                0x00007fc658f640a4:   movabs $0x800000000,%r11
                0x00007fc658f640ae:   add    %r11,%r10
                0x00007fc658f640b1:   cmp    %r10,%rax
                0x00007fc658f640b4:   jne    0x00007fc6589fbd80           ;   {runtime_call ic_miss_stub}
                0x00007fc658f640ba:   xchg   %ax,%ax
                0x00007fc658f640bc:   nopl   0x0(%rax)
              [Verified Entry Point]
   0.00%        0x00007fc658f640c0:   mov    %eax,-0x14000(%rsp)
   0.01%        0x00007fc658f640c7:   push   %rbp
                0x00007fc658f640c8:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@-1 (line 94)
   0.00%        0x00007fc658f640cc:   mov    %rsi,%r10
   0.00%        0x00007fc658f640cf:   mov    0x18(%rsi),%ecx              ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@1 (line 94)
                0x00007fc658f640d2:   mov    0xc(%r12,%rcx,8),%r8d        ; implicit exception: dispatches to 0x00007fc658f6417e
                                                                          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@6 (line 94)
   0.01%        0x00007fc658f640d7:   test   %r8d,%r8d
   0.00%        0x00007fc658f640da:   nopw   0x0(%rax,%rax,1)
          ╭     0x00007fc658f640e0:   jbe    0x00007fc658f64138           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 94)
   0.02%  │     0x00007fc658f640e6:   mov    %r8d,%r11d
          │     0x00007fc658f640e9:   dec    %r11d
          │     0x00007fc658f640ec:   cmp    %r8d,%r11d
          │╭    0x00007fc658f640ef:   jae    0x00007fc658f6414b
          ││    0x00007fc658f640f5:   lea    (%r12,%rcx,8),%r11           ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@1 (line 94)
   0.00%  ││    0x00007fc658f640f9:   xor    %ebp,%ebp
          ││    0x00007fc658f640fb:   mov    %rsi,0x8(%rsp)
          ││    0x00007fc658f64100:   mov    %r8d,0x10(%rsp)
          ││╭   0x00007fc658f64105:   jmp    0x00007fc658f64114
          │││   0x00007fc658f64107:   nopw   0x0(%rax,%rax,1)
   6.49%  │││↗  0x00007fc658f64110:   mov    (%rsp),%r11                  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@15 (line 94)
   0.01%  ││↘│  0x00007fc658f64114:   mov    0x10(%r11,%rbp,4),%r10d
   2.32%  ││ │  0x00007fc658f64119:   mov    %r11,(%rsp)
          ││ │  0x00007fc658f6411d:   mov    %r10,%rdx
   4.43%  ││ │  0x00007fc658f64120:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   2.14%  ││ │  0x00007fc658f64124:   mov    0x8(%rsp),%rsi
          ││ │  0x00007fc658f64129:   xchg   %ax,%ax
          ││ │  0x00007fc658f6412b:   call   0x00007fc658f63840           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
          ││ │                                                            ;   {optimized virtual_call}
  53.38%  ││ │  0x00007fc658f64130:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
          ││ │  0x00007fc658f64132:   cmp    0x10(%rsp),%ebp
          ││ ╰  0x00007fc658f64136:   jl     0x00007fc658f64110           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 94)
   0.06%  ↘│    0x00007fc658f64138:   add    $0x30,%rsp
   0.04%   │    0x00007fc658f6413c:   pop    %rbp
   0.04%   │    0x00007fc658f6413d:   cmp    0x340(%r15),%rsp             ;   {poll_return}
           │    0x00007fc658f64144:   ja     0x00007fc658f6418c
   0.01%   │    0x00007fc658f6414a:   ret    
           ↘    0x00007fc658f6414b:   mov    $0xffffff76,%esi
                0x00007fc658f64150:   mov    %r10,%rbp
                0x00007fc658f64153:   mov    %r8d,0x4(%rsp)
                0x00007fc658f64158:   mov    %ecx,0x8(%rsp)
                0x00007fc658f6415c:   data16 xchg %ax,%ax
                0x00007fc658f6415f:   call   0x00007fc658a01600           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                          ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 94)
                                                                          ;   {runtime_call UncommonTrapBlob}
                0x00007fc658f64164:   mov    0x8(%rax),%r10d
....................................................................................................
  68.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 484 

              # parm0:    rdx:rdx   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark$Wrapper&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007fc658f63820:   mov    0x8(%rsi),%r10d
              0x00007fc658f63824:   movabs $0x800000000,%r11
              0x00007fc658f6382e:   add    %r11,%r10
              0x00007fc658f63831:   cmp    %r10,%rax
              0x00007fc658f63834:   jne    0x00007fc6589fbd80           ;   {runtime_call ic_miss_stub}
              0x00007fc658f6383a:   xchg   %ax,%ax
              0x00007fc658f6383c:   nopl   0x0(%rax)
            [Verified Entry Point]
   6.45%      0x00007fc658f63840:   mov    %eax,-0x14000(%rsp)
   2.25%      0x00007fc658f63847:   push   %rbp
   3.57%      0x00007fc658f63848:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@-1 (line 105)
   2.07%  ╭   0x00007fc658f6384c:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007fc658f63862
          │                                                             ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@15 (line 108)
   7.65%  │   0x00007fc658f6384f:   add    $0x20,%rsp
   3.47%  │   0x00007fc658f63853:   pop    %rbp
   0.00%  │   0x00007fc658f63854:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │╭  0x00007fc658f6385b:   ja     0x00007fc658f63870
   2.88%  ││  0x00007fc658f63861:   ret    
          ↘│  0x00007fc658f63862:   mov    $0xffffff45,%esi
           │  0x00007fc658f63867:   mov    %rdx,(%rsp)
           │  0x00007fc658f6386b:   call   0x00007fc658a01600           ; ImmutableOopMap {[0]=Oop }
           │                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@1 (line 105)
           │                                                            ;   {runtime_call UncommonTrapBlob}
           ↘  0x00007fc658f63870:   movabs $0x7fc658f63854,%r10         ;   {internal_word}
              0x00007fc658f6387a:   mov    %r10,0x358(%r15)
              0x00007fc658f63881:   jmp    0x00007fc658a02700           ;   {runtime_call SafepointBlob}
              0x00007fc658f63886:   hlt    
....................................................................................................
  28.34%  <total for region 2>

....[Hottest Regions]...............................................................................
  68.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 487 
  28.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 484 
   1.39%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 514 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.74%  <...other 253 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 487 
  28.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 484 
   2.35%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 514 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  defaultStream::hold 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%           libjvm.so  AbstractDisassembler::print_location 
   0.00%           libjvm.so  xmlTextStream::write 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.11%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.40%         c2, level 4
   2.35%              kernel
   0.13%           libjvm.so
   0.05%        libc-2.31.so
   0.03%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 16.67% complete, ETA 00:09:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3053022.104 ns/op
# Warmup Iteration   2: 3039193.337 ns/op
# Warmup Iteration   3: 3039942.334 ns/op
# Warmup Iteration   4: 3039359.409 ns/op
# Warmup Iteration   5: 3037405.960 ns/op
Iteration   1: 3035608.800 ns/op
Iteration   2: 3036212.286 ns/op
Iteration   3: 3033957.103 ns/op
Iteration   4: 3034707.039 ns/op
Iteration   5: 3033717.025 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  3034840.451 ±(99.9%) 4098.937 ns/op [Average]
  (min, avg, max) = (3033717.025, 3034840.451, 3036212.286), stdev = 1064.481
  CI (99.9%): [3030741.513, 3038939.388] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 115647 total address lines.
Perf output processed (skipped 55.580 seconds):
 Column 1: cycles (51116 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   8.40%           libjvm.so  CodeBlob::is_compiled 
   7.97%           libjvm.so  CodeHeap::find_blob_unsafe 
   7.79%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   7.00%           libjvm.so  frame::sender 
   6.25%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   6.21%           libjvm.so  CodeCache::find_blob 
   4.74%           libjvm.so  BacktraceBuilder::push 
   3.90%           libjvm.so  frame::sender_for_interpreter_frame 
   3.31%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.12%           libjvm.so  frame::sender_for_interpreter_frame 
   2.44%           libjvm.so  CodeBlob::is_deoptimization_stub 
   2.29%           libjvm.so  frame::sender_for_compiled_frame 
   1.94%        libc-2.31.so  [unknown] 
   1.92%           libjvm.so  nmethod::is_zombie 
   1.74%           libjvm.so  CompiledMethod::is_compiled 
   1.55%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.52%           libjvm.so  frame::is_interpreted_frame 
   1.52%           libjvm.so  ObjArrayAllocator::initialize 
   1.43%           libjvm.so  ObjArrayKlass::allocate 
   1.12%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
  23.82%  <...other 487 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  13.47%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   8.40%           libjvm.so  CodeBlob::is_compiled 
   7.97%           libjvm.so  CodeHeap::find_blob_unsafe 
   7.30%           libjvm.so  frame::sender 
   7.03%           libjvm.so  frame::sender_for_interpreter_frame 
   6.25%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   6.21%           libjvm.so  CodeCache::find_blob 
   5.32%           libjvm.so  BacktraceBuilder::push 
   2.68%           libjvm.so  frame::sender_for_compiled_frame 
   2.44%           libjvm.so  CodeBlob::is_deoptimization_stub 
   2.20%              kernel  [unknown] 
   2.00%        libc-2.31.so  [unknown] 
   1.92%           libjvm.so  nmethod::is_zombie 
   1.74%           libjvm.so  CompiledMethod::is_compiled 
   1.55%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.54%           libjvm.so  MemAllocator::allocate 
   1.52%           libjvm.so  frame::is_interpreted_frame 
   1.52%           libjvm.so  ObjArrayAllocator::initialize 
   1.43%           libjvm.so  ObjArrayKlass::allocate 
   1.12%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
  16.40%  <...other 148 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  92.56%           libjvm.so
   2.20%              kernel
   2.05%        libc-2.31.so
   1.31%         c2, level 4
   1.02%          ld-2.31.so
   0.42%                    
   0.31%    Unknown, level 0
   0.04%  libpthread-2.31.so
   0.04%          libjava.so
   0.02%         interpreter
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 33.33% complete, ETA 00:07:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5964929.363 ns/op
# Warmup Iteration   2: 5945487.011 ns/op
# Warmup Iteration   3: 5949641.780 ns/op
# Warmup Iteration   4: 5941473.645 ns/op
# Warmup Iteration   5: 5947460.454 ns/op
Iteration   1: 5941974.933 ns/op
Iteration   2: 5947167.001 ns/op
Iteration   3: 5943611.412 ns/op
Iteration   4: 5947566.241 ns/op
Iteration   5: 5945986.130 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  5945261.144 ±(99.9%) 9231.947 ns/op [Average]
  (min, avg, max) = (5941974.933, 5945261.144, 5947566.241), stdev = 2397.507
  CI (99.9%): [5936029.197, 5954493.090] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 118032 total address lines.
Perf output processed (skipped 55.738 seconds):
 Column 1: cycles (51026 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   8.60%           libjvm.so  CodeBlob::is_compiled 
   8.33%           libjvm.so  CodeHeap::find_blob_unsafe 
   7.38%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.83%           libjvm.so  frame::sender 
   5.88%           libjvm.so  CodeCache::find_blob 
   5.86%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   4.75%           libjvm.so  BacktraceBuilder::push 
   3.64%           libjvm.so  frame::sender_for_interpreter_frame 
   3.36%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.98%           libjvm.so  frame::sender_for_interpreter_frame 
   2.34%           libjvm.so  CodeBlob::is_deoptimization_stub 
   2.18%           libjvm.so  frame::sender_for_compiled_frame 
   2.11%        libc-2.31.so  [unknown] 
   1.94%           libjvm.so  nmethod::is_zombie 
   1.92%           libjvm.so  CompiledMethod::is_compiled 
   1.59%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.58%           libjvm.so  frame::is_interpreted_frame 
   1.56%           libjvm.so  ObjArrayAllocator::initialize 
   1.51%           libjvm.so  ObjArrayKlass::allocate 
   1.29%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
  24.37%  <...other 432 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  13.07%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   8.60%           libjvm.so  CodeBlob::is_compiled 
   8.33%           libjvm.so  CodeHeap::find_blob_unsafe 
   7.14%           libjvm.so  frame::sender 
   6.62%           libjvm.so  frame::sender_for_interpreter_frame 
   5.88%           libjvm.so  CodeCache::find_blob 
   5.86%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   5.34%           libjvm.so  BacktraceBuilder::push 
   2.61%           libjvm.so  frame::sender_for_compiled_frame 
   2.34%           libjvm.so  CodeBlob::is_deoptimization_stub 
   2.17%        libc-2.31.so  [unknown] 
   2.09%              kernel  [unknown] 
   1.94%           libjvm.so  nmethod::is_zombie 
   1.92%           libjvm.so  CompiledMethod::is_compiled 
   1.59%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.59%           libjvm.so  MemAllocator::allocate 
   1.58%           libjvm.so  frame::is_interpreted_frame 
   1.56%           libjvm.so  ObjArrayAllocator::initialize 
   1.51%           libjvm.so  ObjArrayKlass::allocate 
   1.29%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
  16.98%  <...other 145 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.63%           libjvm.so
   2.21%        libc-2.31.so
   2.09%              kernel
   1.12%         c2, level 4
   1.05%          ld-2.31.so
   0.48%                    
   0.29%    Unknown, level 0
   0.08%          libjava.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 50.00% complete, ETA 00:05:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6003.791 ns/op
# Warmup Iteration   2: 5960.167 ns/op
# Warmup Iteration   3: 5958.172 ns/op
# Warmup Iteration   4: 5957.849 ns/op
# Warmup Iteration   5: 5957.776 ns/op
Iteration   1: 5958.474 ns/op
Iteration   2: 5957.910 ns/op
Iteration   3: 5957.486 ns/op
Iteration   4: 5957.550 ns/op
Iteration   5: 5959.730 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  5958.230 ±(99.9%) 3.565 ns/op [Average]
  (min, avg, max) = (5957.486, 5958.230, 5959.730), stdev = 0.926
  CI (99.9%): [5954.665, 5961.795] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 117385 total address lines.
Perf output processed (skipped 55.695 seconds):
 Column 1: cycles (50856 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 489 

                #           [sp+0x40]  (sp of caller)
                0x00007f7e58f65820:   mov    0x8(%rsi),%r10d
                0x00007f7e58f65824:   movabs $0x800000000,%r11
                0x00007f7e58f6582e:   add    %r11,%r10
                0x00007f7e58f65831:   cmp    %r10,%rax
                0x00007f7e58f65834:   jne    0x00007f7e589fbd80           ;   {runtime_call ic_miss_stub}
                0x00007f7e58f6583a:   xchg   %ax,%ax
                0x00007f7e58f6583c:   nopl   0x0(%rax)
              [Verified Entry Point]
                0x00007f7e58f65840:   mov    %eax,-0x14000(%rsp)
   0.01%        0x00007f7e58f65847:   push   %rbp
                0x00007f7e58f65848:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@-1 (line 82)
                0x00007f7e58f6584c:   mov    %rsi,%r10
   0.01%        0x00007f7e58f6584f:   mov    0x18(%rsi),%ecx              ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@1 (line 82)
                0x00007f7e58f65852:   mov    0xc(%r12,%rcx,8),%r8d        ; implicit exception: dispatches to 0x00007f7e58f658fe
                                                                          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@6 (line 82)
   0.01%        0x00007f7e58f65857:   test   %r8d,%r8d
   0.00%        0x00007f7e58f6585a:   nopw   0x0(%rax,%rax,1)
          ╭     0x00007f7e58f65860:   jbe    0x00007f7e58f658b8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 82)
   0.01%  │     0x00007f7e58f65866:   mov    %r8d,%r11d
          │     0x00007f7e58f65869:   dec    %r11d
          │     0x00007f7e58f6586c:   cmp    %r8d,%r11d
          │╭    0x00007f7e58f6586f:   jae    0x00007f7e58f658cb
          ││    0x00007f7e58f65875:   lea    (%r12,%rcx,8),%r11           ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@1 (line 82)
   0.01%  ││    0x00007f7e58f65879:   xor    %ebp,%ebp
          ││    0x00007f7e58f6587b:   mov    %rsi,0x8(%rsp)
          ││    0x00007f7e58f65880:   mov    %r8d,0x10(%rsp)
          ││╭   0x00007f7e58f65885:   jmp    0x00007f7e58f65894
          │││   0x00007f7e58f65887:   nopw   0x0(%rax,%rax,1)
   6.47%  │││↗  0x00007f7e58f65890:   mov    (%rsp),%r11                  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@15 (line 82)
   0.01%  ││↘│  0x00007f7e58f65894:   mov    0x10(%r11,%rbp,4),%r10d
   2.38%  ││ │  0x00007f7e58f65899:   mov    %r11,(%rsp)
          ││ │  0x00007f7e58f6589d:   mov    %r10,%rdx
   4.31%  ││ │  0x00007f7e58f658a0:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   2.24%  ││ │  0x00007f7e58f658a4:   mov    0x8(%rsp),%rsi
          ││ │  0x00007f7e58f658a9:   xchg   %ax,%ax
          ││ │  0x00007f7e58f658ab:   call   0x00007f7e58f64fc0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
          ││ │                                                            ;   {optimized virtual_call}
  53.35%  ││ │  0x00007f7e58f658b0:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
          ││ │  0x00007f7e58f658b2:   cmp    0x10(%rsp),%ebp
          ││ ╰  0x00007f7e58f658b6:   jl     0x00007f7e58f65890           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 82)
   0.07%  ↘│    0x00007f7e58f658b8:   add    $0x30,%rsp
   0.04%   │    0x00007f7e58f658bc:   pop    %rbp
   0.05%   │    0x00007f7e58f658bd:   cmp    0x340(%r15),%rsp             ;   {poll_return}
           │    0x00007f7e58f658c4:   ja     0x00007f7e58f6590c
   0.00%   │    0x00007f7e58f658ca:   ret    
           ↘    0x00007f7e58f658cb:   mov    $0xffffff76,%esi
                0x00007f7e58f658d0:   mov    %r10,%rbp
                0x00007f7e58f658d3:   mov    %r8d,0x4(%rsp)
                0x00007f7e58f658d8:   mov    %ecx,0x8(%rsp)
                0x00007f7e58f658dc:   data16 xchg %ax,%ax
                0x00007f7e58f658df:   call   0x00007f7e58a01600           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                          ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 82)
                                                                          ;   {runtime_call UncommonTrapBlob}
                0x00007f7e58f658e4:   mov    0x8(%rax),%r10d
....................................................................................................
  68.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 486 

              # parm0:    rdx:rdx   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark$Wrapper&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f7e58f64fa0:   mov    0x8(%rsi),%r10d
              0x00007f7e58f64fa4:   movabs $0x800000000,%r11
              0x00007f7e58f64fae:   add    %r11,%r10
              0x00007f7e58f64fb1:   cmp    %r10,%rax
              0x00007f7e58f64fb4:   jne    0x00007f7e589fbd80           ;   {runtime_call ic_miss_stub}
              0x00007f7e58f64fba:   xchg   %ax,%ax
              0x00007f7e58f64fbc:   nopl   0x0(%rax)
            [Verified Entry Point]
   6.66%      0x00007f7e58f64fc0:   mov    %eax,-0x14000(%rsp)
   2.38%      0x00007f7e58f64fc7:   push   %rbp
   3.68%      0x00007f7e58f64fc8:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@-1 (line 113)
   1.84%  ╭   0x00007f7e58f64fcc:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f7e58f64fe2
          │                                                             ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@1 (line 113)
   7.74%  │   0x00007f7e58f64fcf:   add    $0x10,%rsp
   3.54%  │   0x00007f7e58f64fd3:   pop    %rbp
          │   0x00007f7e58f64fd4:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │╭  0x00007f7e58f64fdb:   ja     0x00007f7e58f64fec
   2.92%  ││  0x00007f7e58f64fe1:   ret    
          ↘│  0x00007f7e58f64fe2:   mov    $0xfffffff6,%esi
           │  0x00007f7e58f64fe7:   call   0x00007f7e58a01600           ; ImmutableOopMap {}
           │                                                            ;*getfield x {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@1 (line 113)
           │                                                            ;   {runtime_call UncommonTrapBlob}
           ↘  0x00007f7e58f64fec:   movabs $0x7f7e58f64fd4,%r10         ;   {internal_word}
              0x00007f7e58f64ff6:   mov    %r10,0x358(%r15)
              0x00007f7e58f64ffd:   jmp    0x00007f7e58a02700           ;   {runtime_call SafepointBlob}
              0x00007f7e58f65002:   hlt    
              0x00007f7e58f65003:   hlt    
....................................................................................................
  28.76%  <total for region 2>

....[Hottest Regions]...............................................................................
  68.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 489 
  28.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 486 
   1.15%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 517 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.63%  <...other 216 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 489 
  28.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 486 
   1.92%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 517 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  event_to_env 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  _int_realloc 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __strncat_ssse3 
   0.00%        libc-2.31.so  ptmalloc_init.part.0 
   0.00%        libc-2.31.so  _int_malloc 
   0.10%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%         c2, level 4
   1.92%              kernel
   0.10%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 66.67% complete, ETA 00:03:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 252232.732 ns/op
# Warmup Iteration   2: 249180.085 ns/op
# Warmup Iteration   3: 249526.394 ns/op
# Warmup Iteration   4: 247455.797 ns/op
# Warmup Iteration   5: 247432.669 ns/op
Iteration   1: 247703.913 ns/op
Iteration   2: 247745.860 ns/op
Iteration   3: 247752.016 ns/op
Iteration   4: 247811.463 ns/op
Iteration   5: 247420.366 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  247686.724 ±(99.9%) 592.054 ns/op [Average]
  (min, avg, max) = (247420.366, 247686.724, 247811.463), stdev = 153.755
  CI (99.9%): [247094.669, 248278.778] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 117955 total address lines.
Perf output processed (skipped 55.652 seconds):
 Column 1: cycles (50842 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
libjvm.so, CodeHeap::find_blob_unsafe 

 <no assembly is recorded, native region>
....................................................................................................
  14.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
libjvm.so, CodeCache::find_blob 

 <no assembly is recorded, native region>
....................................................................................................
  10.19%  <total for region 2>

....[Hottest Regions]...............................................................................
  14.02%           libjvm.so  CodeHeap::find_blob_unsafe 
  10.19%           libjvm.so  CodeCache::find_blob 
   8.87%           libjvm.so  nmethod::is_zombie 
   4.48%           libjvm.so  frame::sender_for_compiled_frame 
   4.21%           libjvm.so  CodeBlob::is_compiled 
   3.83%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   3.72%           libjvm.so  CompiledMethod::is_compiled 
   3.56%           libjvm.so  frame::sender 
   3.53%           libjvm.so  SharedRuntime::raw_exception_handler_for_return_address 
   2.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 476 
   2.84%                      <unknown> 
   2.78%           libjvm.so  JavaThread::pd_last_frame 
   2.67%           libjvm.so  OptoRuntime::handle_exception_C 
   2.26%           libjvm.so  SafepointMechanism::update_poll_values 
   2.13%           libjvm.so  frame::sender 
   2.03%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   1.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 480 
   1.91%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   1.80%                      <unknown> 
   1.64%           libjvm.so  OptoRuntime::handle_exception_C_helper 
  18.73%  <...other 303 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  14.02%           libjvm.so  CodeHeap::find_blob_unsafe 
  10.52%           libjvm.so  OptoRuntime::handle_exception_C_helper 
  10.19%           libjvm.so  CodeCache::find_blob 
   8.87%           libjvm.so  nmethod::is_zombie 
   5.69%           libjvm.so  frame::sender 
   5.55%           libjvm.so  frame::sender_for_compiled_frame 
   4.78%                      <unknown> 
   4.21%           libjvm.so  CodeBlob::is_compiled 
   3.84%           libjvm.so  JavaThread::pd_last_frame 
   3.72%           libjvm.so  CompiledMethod::is_compiled 
   3.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 480 
   3.53%           libjvm.so  SharedRuntime::raw_exception_handler_for_return_address 
   3.17%           libjvm.so  SafepointMechanism::update_poll_values 
   2.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 476 
   2.67%           libjvm.so  OptoRuntime::handle_exception_C 
   1.81%              kernel  [unknown] 
   1.56%           libjvm.so  CodeBlob::is_deoptimization_stub 
   1.44%           libjvm.so  OptoRuntime::rethrow_C 
   1.30%           libjvm.so  StackWatermarkSet::after_unwind 
   1.09%           libjvm.so  CompiledMethod::is_method_handle_return 
   5.60%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  86.88%           libjvm.so
   6.43%         c2, level 4
   4.78%                    
   1.81%              kernel
   0.05%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%      perf-24023.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 83.33% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 475238.144 ns/op
# Warmup Iteration   2: 471126.978 ns/op
# Warmup Iteration   3: 470901.125 ns/op
# Warmup Iteration   4: 470529.123 ns/op
# Warmup Iteration   5: 470585.551 ns/op
Iteration   1: 466212.658 ns/op
Iteration   2: 465997.831 ns/op
Iteration   3: 465894.395 ns/op
Iteration   4: 465900.865 ns/op
Iteration   5: 465783.976 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  465957.945 ±(99.9%) 620.992 ns/op [Average]
  (min, avg, max) = (465783.976, 465957.945, 466212.658), stdev = 161.270
  CI (99.9%): [465336.953, 466578.937] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 117969 total address lines.
Perf output processed (skipped 55.670 seconds):
 Column 1: cycles (50872 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
libjvm.so, CodeHeap::find_blob_unsafe 

 <no assembly is recorded, native region>
....................................................................................................
  14.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
libjvm.so, CodeCache::find_blob 

 <no assembly is recorded, native region>
....................................................................................................
  10.35%  <total for region 2>

....[Hottest Regions]...............................................................................
  14.68%           libjvm.so  CodeHeap::find_blob_unsafe 
  10.35%           libjvm.so  CodeCache::find_blob 
   9.04%           libjvm.so  nmethod::is_zombie 
   4.84%           libjvm.so  frame::sender_for_compiled_frame 
   4.61%           libjvm.so  CodeBlob::is_compiled 
   4.11%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   3.97%           libjvm.so  CompiledMethod::is_compiled 
   3.62%           libjvm.so  frame::sender 
   3.47%           libjvm.so  SharedRuntime::raw_exception_handler_for_return_address 
   2.85%           libjvm.so  OptoRuntime::handle_exception_C 
   2.78%                      <unknown> 
   2.69%           libjvm.so  JavaThread::pd_last_frame 
   2.59%           libjvm.so  SafepointMechanism::update_poll_values 
   2.37%           libjvm.so  frame::sender 
   1.97%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   1.89%                      <unknown> 
   1.79%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   1.78%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   1.61%           libjvm.so  CodeBlob::is_deoptimization_stub 
   1.48%           libjvm.so  OptoRuntime::rethrow_C 
  17.50%  <...other 299 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  14.68%           libjvm.so  CodeHeap::find_blob_unsafe 
  10.84%           libjvm.so  OptoRuntime::handle_exception_C_helper 
  10.35%           libjvm.so  CodeCache::find_blob 
   9.04%           libjvm.so  nmethod::is_zombie 
   6.05%           libjvm.so  frame::sender 
   5.91%           libjvm.so  frame::sender_for_compiled_frame 
   4.70%                      <unknown> 
   4.61%           libjvm.so  CodeBlob::is_compiled 
   3.97%           libjvm.so  CompiledMethod::is_compiled 
   3.82%           libjvm.so  JavaThread::pd_last_frame 
   3.77%           libjvm.so  SafepointMechanism::update_poll_values 
   3.47%           libjvm.so  SharedRuntime::raw_exception_handler_for_return_address 
   2.85%           libjvm.so  OptoRuntime::handle_exception_C 
   2.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 493 
   1.88%              kernel  [unknown] 
   1.61%           libjvm.so  CodeBlob::is_deoptimization_stub 
   1.48%           libjvm.so  OptoRuntime::rethrow_C 
   1.41%           libjvm.so  StackWatermarkSet::after_unwind 
   1.07%           libjvm.so  CompiledMethod::is_method_handle_return 
   0.78%           libjvm.so  CompiledMethod::handler_for_exception_and_pc 
   5.42%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.48%           libjvm.so
   4.70%                    
   2.79%         c2, level 4
   1.88%              kernel
   0.09%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%      perf-24078.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:10:50

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

Benchmark                                  (size)  (threshold)  Mode  Cnt        Score      Error  Units
NpeThrowBenchmark.explicit_throw_npe         1024          0.0  avgt    5     5957.413 ±    0.475  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          0.0  avgt               NaN               ---
NpeThrowBenchmark.explicit_throw_npe         1024          0.5  avgt    5  3034840.451 ± 4098.937  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          0.5  avgt               NaN               ---
NpeThrowBenchmark.explicit_throw_npe         1024          1.0  avgt    5  5945261.144 ± 9231.947  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          1.0  avgt               NaN               ---
NpeThrowBenchmark.implicit_throw_npe         1024          0.0  avgt    5     5958.230 ±    3.565  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          0.0  avgt               NaN               ---
NpeThrowBenchmark.implicit_throw_npe         1024          0.5  avgt    5   247686.724 ±  592.054  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          0.5  avgt               NaN               ---
NpeThrowBenchmark.implicit_throw_npe         1024          1.0  avgt    5   465957.945 ±  620.992  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          1.0  avgt               NaN               ---
