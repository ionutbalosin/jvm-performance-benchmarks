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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7151.560 ns/op
# Warmup Iteration   2: 7130.388 ns/op
# Warmup Iteration   3: 7118.284 ns/op
# Warmup Iteration   4: 7127.082 ns/op
# Warmup Iteration   5: 7132.254 ns/op
Iteration   1: 7118.844 ns/op
Iteration   2: 7106.453 ns/op
Iteration   3: 7126.861 ns/op
Iteration   4: 7134.964 ns/op
Iteration   5: 7133.015 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  7124.027 ±(99.9%) 44.912 ns/op [Average]
  (min, avg, max) = (7106.453, 7124.027, 7134.964), stdev = 11.663
  CI (99.9%): [7079.116, 7168.939] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:asm":
PrintAssembly processed: 132942 total address lines.
Perf output processed (skipped 56.607 seconds):
 Column 1: cycles (50628 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 590 

                # {method} {0x00007f021847b1d8} &apos;explicit_throw_npe&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark&apos;
                #           [sp+0x40]  (sp of caller)
                0x00007f029c63c1a0:   mov    0x8(%rsi),%r10d
                0x00007f029c63c1a4:   movabs $0x7f0223000000,%r11
                0x00007f029c63c1ae:   add    %r11,%r10
                0x00007f029c63c1b1:   cmp    %r10,%rax
                0x00007f029c63c1b4:   jne    0x00007f029c0c4080           ;   {runtime_call ic_miss_stub}
                0x00007f029c63c1ba:   xchg   %ax,%ax
                0x00007f029c63c1bc:   nopl   0x0(%rax)
              [Verified Entry Point]
   0.00%        0x00007f029c63c1c0:   mov    %eax,-0x14000(%rsp)
   0.02%        0x00007f029c63c1c7:   push   %rbp
                0x00007f029c63c1c8:   sub    $0x30,%rsp
                0x00007f029c63c1cc:   cmpl   $0x1,0x20(%r15)
                0x00007f029c63c1d4:   jne    0x00007f029c63c2c2           ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@-1 (line 92)
                0x00007f029c63c1da:   mov    %rsi,%r10
                0x00007f029c63c1dd:   mov    0x18(%rsi),%ecx              ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@1 (line 92)
                0x00007f029c63c1e0:   mov    0xc(%r12,%rcx,8),%r8d        ; implicit exception: dispatches to 0x00007f029c63c296
                                                                          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@6 (line 92)
   0.01%        0x00007f029c63c1e5:   test   %r8d,%r8d
          ╭     0x00007f029c63c1e8:   jbe    0x00007f029c63c246           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 92)
   0.00%  │     0x00007f029c63c1ee:   mov    %r8d,%r11d
          │     0x00007f029c63c1f1:   dec    %r11d
          │     0x00007f029c63c1f4:   cmp    %r8d,%r11d
          │╭    0x00007f029c63c1f7:   jae    0x00007f029c63c259
   0.00%  ││    0x00007f029c63c1fd:   lea    (%r12,%rcx,8),%r11           ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@1 (line 92)
          ││    0x00007f029c63c201:   xor    %ebp,%ebp
          ││    0x00007f029c63c203:   mov    %rsi,0x8(%rsp)
          ││    0x00007f029c63c208:   mov    %r8d,0x10(%rsp)
   0.00%  ││╭   0x00007f029c63c20d:   jmp    0x00007f029c63c214
          │││   0x00007f029c63c20f:   nop
   6.00%  │││↗  0x00007f029c63c210:   mov    (%rsp),%r11                  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@15 (line 92)
          ││↘│  0x00007f029c63c214:   mov    0x10(%r11,%rbp,4),%r10d
  11.47%  ││ │  0x00007f029c63c219:   mov    %r11,(%rsp)
   3.02%  ││ │  0x00007f029c63c21d:   mov    %r10,%rdx
   0.01%  ││ │  0x00007f029c63c220:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   2.46%  ││ │  0x00007f029c63c224:   mov    0x8(%rsp),%rsi
   0.07%  ││ │  0x00007f029c63c229:   xchg   %ax,%ax
   2.90%  ││ │  0x00007f029c63c22b:   call   0x00007f029c63b8a0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
          ││ │                                                            ;   {optimized virtual_call}
  46.16%  ││ │  0x00007f029c63c230:   nopl   0x220(%rax,%rax,1)           ;   {other}
          ││ │  0x00007f029c63c238:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
          ││ │  0x00007f029c63c23a:   nopw   0x0(%rax,%rax,1)
   0.09%  ││ │  0x00007f029c63c240:   cmp    0x10(%rsp),%ebp
          ││ ╰  0x00007f029c63c244:   jl     0x00007f029c63c210           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 92)
   0.07%  ↘│    0x00007f029c63c246:   add    $0x30,%rsp
   0.02%   │    0x00007f029c63c24a:   pop    %rbp
   0.05%   │    0x00007f029c63c24b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │    0x00007f029c63c252:   ja     0x00007f029c63c2ac
   0.00%   │    0x00007f029c63c258:   ret    
           ↘    0x00007f029c63c259:   mov    $0xffffff76,%esi
                0x00007f029c63c25e:   mov    %r10,%rbp
                0x00007f029c63c261:   mov    %r8d,0x4(%rsp)
                0x00007f029c63c266:   mov    %ecx,0x8(%rsp)
                0x00007f029c63c26a:   nop
                0x00007f029c63c26b:   call   0x00007f029c0c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                          ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 92)
                                                                          ;   {runtime_call UncommonTrapBlob}
                0x00007f029c63c270:   nopl   0x1000260(%rax,%rax,1)       ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  72.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 587 

             # parm0:    rdx:rdx   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark$Wrapper&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f029c63b880:   mov    0x8(%rsi),%r10d
             0x00007f029c63b884:   movabs $0x7f0223000000,%r11
             0x00007f029c63b88e:   add    %r11,%r10
             0x00007f029c63b891:   cmp    %r10,%rax
             0x00007f029c63b894:   jne    0x00007f029c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f029c63b89a:   xchg   %ax,%ax
             0x00007f029c63b89c:   nopl   0x0(%rax)
           [Verified Entry Point]
   2.36%     0x00007f029c63b8a0:   mov    %eax,-0x14000(%rsp)
  10.28%     0x00007f029c63b8a7:   push   %rbp
   0.00%     0x00007f029c63b8a8:   sub    $0x20,%rsp
   0.09%     0x00007f029c63b8ac:   cmpl   $0x0,0x20(%r15)
   5.28%     0x00007f029c63b8b4:   jne    0x00007f029c63b902           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@-1 (line 103)
   0.00%     0x00007f029c63b8ba:   nopw   0x0(%rax,%rax,1)
   0.03%  ╭  0x00007f029c63b8c0:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f029c63b8d6
          │                                                            ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@15 (line 106)
   2.12%  │  0x00007f029c63b8c3:   add    $0x20,%rsp
   4.81%  │  0x00007f029c63b8c7:   pop    %rbp
          │  0x00007f029c63b8c8:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f029c63b8cf:   ja     0x00007f029c63b8ec
   0.76%  │  0x00007f029c63b8d5:   ret    
          ↘  0x00007f029c63b8d6:   mov    $0xffffff45,%esi
             0x00007f029c63b8db:   mov    %rdx,(%rsp)
             0x00007f029c63b8df:   call   0x00007f029c0c9f00           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@1 (line 103)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007f029c63b8e4:   nopl   0x1d4(%rax,%rax,1)           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@1 (line 103)
                                                                       ;   {other}
             0x00007f029c63b8ec:   movabs $0x7f029c63b8c8,%r10         ;   {internal_word}
....................................................................................................
  25.74%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 590 
  25.74%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 587 
   0.42%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 616 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.73%  <...other 239 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 590 
  25.74%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 587 
   1.54%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 616 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  outputStream::print 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%      hsdis-amd64.so  putop 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.11%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.19%         c2, level 4
   1.54%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 16.67% complete, ETA 00:09:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2313808.303 ns/op
# Warmup Iteration   2: 2288954.977 ns/op
# Warmup Iteration   3: 2300717.270 ns/op
# Warmup Iteration   4: 2295679.631 ns/op
# Warmup Iteration   5: 2299240.859 ns/op
Iteration   1: 2296222.393 ns/op
Iteration   2: 2301892.368 ns/op
Iteration   3: 2299965.673 ns/op
Iteration   4: 2297886.560 ns/op
Iteration   5: 2298464.294 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  2298886.258 ±(99.9%) 8275.629 ns/op [Average]
  (min, avg, max) = (2296222.393, 2298886.258, 2301892.368), stdev = 2149.155
  CI (99.9%): [2290610.628, 2307161.887] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:asm":
PrintAssembly processed: 130613 total address lines.
Perf output processed (skipped 56.344 seconds):
 Column 1: cycles (51024 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   9.00%           libjvm.so  frame::sender 
   7.05%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   6.53%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   5.79%           libjvm.so  CodeBlob::is_upcall_stub 
   5.28%           libjvm.so  CodeCache::find_blob 
   3.98%           libjvm.so  CodeHeap::find_blob 
   3.96%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.51%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.38%           libjvm.so  Continuation::is_return_barrier_entry 
   3.17%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.12%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.68%        libc-2.31.so  __memset_avx2_erms 
   2.38%           libjvm.so  frame::sender_for_interpreter_frame 
   2.14%           libjvm.so  Method::bcp_from 
   2.09%           libjvm.so  frame::sender_for_interpreter_frame 
   2.08%           libjvm.so  ObjArrayKlass::allocate 
   1.90%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   1.71%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.36%           libjvm.so  ObjArrayAllocator::initialize 
   1.26%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
  27.64%  <...other 455 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  24.69%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
  10.66%           libjvm.so  frame::sender 
   7.05%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   5.79%           libjvm.so  CodeBlob::is_upcall_stub 
   5.28%           libjvm.so  CodeCache::find_blob 
   4.81%           libjvm.so  frame::sender_for_interpreter_frame 
   3.98%           libjvm.so  CodeHeap::find_blob 
   3.38%           libjvm.so  Continuation::is_return_barrier_entry 
   2.68%        libc-2.31.so  __memset_avx2_erms 
   2.59%              kernel  [unknown] 
   2.14%           libjvm.so  Method::bcp_from 
   2.08%           libjvm.so  ObjArrayKlass::allocate 
   2.01%           libjvm.so  ObjArrayAllocator::initialize 
   1.90%           libjvm.so  MemAllocator::allocate 
   1.90%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   1.71%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.11%          ld-2.31.so  __tls_get_addr 
   1.03%           libjvm.so  BacktraceBuilder::expand 
   0.94%           libjvm.so  TypeArrayKlass::allocate_common 
   0.93%           libjvm.so  Universe::should_fill_in_stack_trace 
  13.35%  <...other 147 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.89%           libjvm.so
   2.74%        libc-2.31.so
   2.59%              kernel
   1.62%         c2, level 4
   1.11%          ld-2.31.so
   0.64%                    
   0.30%    Unknown, level 0
   0.05%          libjava.so
   0.02%         interpreter
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%    perf-1944674.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 33.33% complete, ETA 00:07:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4501474.099 ns/op
# Warmup Iteration   2: 4497619.772 ns/op
# Warmup Iteration   3: 4475535.010 ns/op
# Warmup Iteration   4: 4472777.220 ns/op
# Warmup Iteration   5: 4528341.625 ns/op
Iteration   1: 4471743.245 ns/op
Iteration   2: 4472878.777 ns/op
Iteration   3: 4479438.952 ns/op
Iteration   4: 4466110.281 ns/op
Iteration   5: 4472338.552 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  4472501.961 ±(99.9%) 18236.749 ns/op [Average]
  (min, avg, max) = (4466110.281, 4472501.961, 4479438.952), stdev = 4736.026
  CI (99.9%): [4454265.213, 4490738.710] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:asm":
PrintAssembly processed: 130349 total address lines.
Perf output processed (skipped 56.453 seconds):
 Column 1: cycles (50789 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   9.30%           libjvm.so  frame::sender 
   7.86%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   6.19%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   5.88%           libjvm.so  CodeBlob::is_upcall_stub 
   4.46%           libjvm.so  CodeCache::find_blob 
   3.95%           libjvm.so  CodeHeap::find_blob 
   3.64%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.28%           libjvm.so  Continuation::is_return_barrier_entry 
   3.17%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.15%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.14%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.97%           libjvm.so  frame::sender_for_interpreter_frame 
   2.80%        libc-2.31.so  __memset_avx2_erms 
   2.10%           libjvm.so  ObjArrayKlass::allocate 
   2.05%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   2.03%           libjvm.so  Method::bcp_from 
   1.96%           libjvm.so  frame::sender_for_interpreter_frame 
   1.56%           libjvm.so  ObjArrayAllocator::initialize 
   1.38%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.28%           libjvm.so  TypeArrayKlass::allocate_common 
  27.85%  <...other 395 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  23.27%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
  11.25%           libjvm.so  frame::sender 
   7.86%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   5.88%           libjvm.so  CodeBlob::is_upcall_stub 
   5.24%           libjvm.so  frame::sender_for_interpreter_frame 
   4.46%           libjvm.so  CodeCache::find_blob 
   3.95%           libjvm.so  CodeHeap::find_blob 
   3.28%           libjvm.so  Continuation::is_return_barrier_entry 
   2.80%        libc-2.31.so  __memset_avx2_erms 
   2.26%           libjvm.so  ObjArrayAllocator::initialize 
   2.22%           libjvm.so  MemAllocator::allocate 
   2.10%           libjvm.so  ObjArrayKlass::allocate 
   2.05%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   2.03%           libjvm.so  Method::bcp_from 
   1.81%              kernel  [unknown] 
   1.38%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.28%           libjvm.so  TypeArrayKlass::allocate_common 
   1.13%          ld-2.31.so  __tls_get_addr 
   1.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<287270ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 287270ul>::oop_access_barrier 
   1.01%           libjvm.so  Universe::should_fill_in_stack_trace 
  13.69%  <...other 145 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.71%           libjvm.so
   2.88%        libc-2.31.so
   1.81%              kernel
   1.39%         c2, level 4
   1.13%          ld-2.31.so
   0.56%                    
   0.40%    Unknown, level 0
   0.06%          libjava.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-1944735.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 50.00% complete, ETA 00:05:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7169.470 ns/op
# Warmup Iteration   2: 7111.816 ns/op
# Warmup Iteration   3: 7093.313 ns/op
# Warmup Iteration   4: 7071.224 ns/op
# Warmup Iteration   5: 7072.582 ns/op
Iteration   1: 7123.721 ns/op
Iteration   2: 7091.047 ns/op
Iteration   3: 7126.268 ns/op
Iteration   4: 7102.882 ns/op
Iteration   5: 7122.102 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  7113.204 ±(99.9%) 59.589 ns/op [Average]
  (min, avg, max) = (7091.047, 7113.204, 7126.268), stdev = 15.475
  CI (99.9%): [7053.615, 7172.793] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:asm":
PrintAssembly processed: 133645 total address lines.
Perf output processed (skipped 56.583 seconds):
 Column 1: cycles (50725 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 2, compile id 589 

                # {method} {0x00007fa01447b0a0} &apos;implicit_throw_npe&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark&apos;
                #           [sp+0x40]  (sp of caller)
                0x00007fa09863a120:   mov    0x8(%rsi),%r10d
                0x00007fa09863a124:   movabs $0x7fa01f000000,%r11
                0x00007fa09863a12e:   add    %r11,%r10
                0x00007fa09863a131:   cmp    %r10,%rax
                0x00007fa09863a134:   jne    0x00007fa0980c4080           ;   {runtime_call ic_miss_stub}
                0x00007fa09863a13a:   xchg   %ax,%ax
                0x00007fa09863a13c:   nopl   0x0(%rax)
              [Verified Entry Point]
   0.01%        0x00007fa09863a140:   mov    %eax,-0x14000(%rsp)
   0.02%        0x00007fa09863a147:   push   %rbp
                0x00007fa09863a148:   sub    $0x30,%rsp
   0.00%        0x00007fa09863a14c:   cmpl   $0x1,0x20(%r15)
   0.00%        0x00007fa09863a154:   jne    0x00007fa09863a242           ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@-1 (line 80)
                0x00007fa09863a15a:   mov    %rsi,%r10
   0.00%        0x00007fa09863a15d:   mov    0x18(%rsi),%ecx              ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@1 (line 80)
                0x00007fa09863a160:   mov    0xc(%r12,%rcx,8),%r8d        ; implicit exception: dispatches to 0x00007fa09863a216
                                                                          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@6 (line 80)
   0.00%        0x00007fa09863a165:   test   %r8d,%r8d
          ╭     0x00007fa09863a168:   jbe    0x00007fa09863a1c6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 80)
   0.00%  │     0x00007fa09863a16e:   mov    %r8d,%r11d
   0.01%  │     0x00007fa09863a171:   dec    %r11d
          │     0x00007fa09863a174:   cmp    %r8d,%r11d
          │╭    0x00007fa09863a177:   jae    0x00007fa09863a1d9
          ││    0x00007fa09863a17d:   lea    (%r12,%rcx,8),%r11           ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@1 (line 80)
          ││    0x00007fa09863a181:   xor    %ebp,%ebp
   0.00%  ││    0x00007fa09863a183:   mov    %rsi,0x8(%rsp)
          ││    0x00007fa09863a188:   mov    %r8d,0x10(%rsp)
   0.01%  ││╭   0x00007fa09863a18d:   jmp    0x00007fa09863a194
          │││   0x00007fa09863a18f:   nop
   5.60%  │││↗  0x00007fa09863a190:   mov    (%rsp),%r11                  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@15 (line 80)
          ││↘│  0x00007fa09863a194:   mov    0x10(%r11,%rbp,4),%r10d
  12.91%  ││ │  0x00007fa09863a199:   mov    %r11,(%rsp)
   2.87%  ││ │  0x00007fa09863a19d:   mov    %r10,%rdx
          ││ │  0x00007fa09863a1a0:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   2.61%  ││ │  0x00007fa09863a1a4:   mov    0x8(%rsp),%rsi
   0.08%  ││ │  0x00007fa09863a1a9:   xchg   %ax,%ax
   2.84%  ││ │  0x00007fa09863a1ab:   call   0x00007fa098639e20           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
          ││ │                                                            ;   {optimized virtual_call}
  45.55%  ││ │  0x00007fa09863a1b0:   nopl   0x220(%rax,%rax,1)           ;   {other}
          ││ │  0x00007fa09863a1b8:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
          ││ │  0x00007fa09863a1ba:   nopw   0x0(%rax,%rax,1)
   0.08%  ││ │  0x00007fa09863a1c0:   cmp    0x10(%rsp),%ebp
          ││ ╰  0x00007fa09863a1c4:   jl     0x00007fa09863a190           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 80)
   0.06%  ↘│    0x00007fa09863a1c6:   add    $0x30,%rsp
   0.02%   │    0x00007fa09863a1ca:   pop    %rbp
   0.03%   │    0x00007fa09863a1cb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │    0x00007fa09863a1d2:   ja     0x00007fa09863a22c
   0.01%   │    0x00007fa09863a1d8:   ret    
           ↘    0x00007fa09863a1d9:   mov    $0xffffff76,%esi
                0x00007fa09863a1de:   mov    %r10,%rbp
                0x00007fa09863a1e1:   mov    %r8d,0x4(%rsp)
                0x00007fa09863a1e6:   mov    %ecx,0x8(%rsp)
                0x00007fa09863a1ea:   nop
                0x00007fa09863a1eb:   call   0x00007fa0980c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                          ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 80)
                                                                          ;   {runtime_call UncommonTrapBlob}
                0x00007fa09863a1f0:   nopl   0x1000260(%rax,%rax,1)       ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  72.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 588 

               # parm0:    rdx:rdx   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark$Wrapper&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007fa098639e00:   mov    0x8(%rsi),%r10d
               0x00007fa098639e04:   movabs $0x7fa01f000000,%r11
               0x00007fa098639e0e:   add    %r11,%r10
               0x00007fa098639e11:   cmp    %r10,%rax
               0x00007fa098639e14:   jne    0x00007fa0980c4080           ;   {runtime_call ic_miss_stub}
               0x00007fa098639e1a:   xchg   %ax,%ax
               0x00007fa098639e1c:   nopl   0x0(%rax)
             [Verified Entry Point]
   2.64%       0x00007fa098639e20:   mov    %eax,-0x14000(%rsp)
  10.47%       0x00007fa098639e27:   push   %rbp
               0x00007fa098639e28:   sub    $0x10,%rsp
   0.09%       0x00007fa098639e2c:   cmpl   $0x1,0x20(%r15)
   5.30%       0x00007fa098639e34:   jne    0x00007fa098639e7e           ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@-1 (line 111)
   0.00%       0x00007fa098639e3a:   nopw   0x0(%rax,%rax,1)
   0.02%  ╭    0x00007fa098639e40:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007fa098639e56
          │                                                              ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@1 (line 111)
   1.23%  │    0x00007fa098639e43:   add    $0x10,%rsp
   5.06%  │    0x00007fa098639e47:   pop    %rbp
          │ ↗  0x00007fa098639e48:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007fa098639e4f:   ja     0x00007fa098639e68
   0.32%  │││  0x00007fa098639e55:   ret    
          ↘││  0x00007fa098639e56:   mov    $0xfffffff6,%esi
           ││  0x00007fa098639e5b:   call   0x00007fa0980c9f00           ; ImmutableOopMap {}
           ││                                                            ;*getfield x {reexecute=1 rethrow=0 return_oop=0}
           ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@1 (line 111)
           ││                                                            ;   {runtime_call UncommonTrapBlob}
           ││  0x00007fa098639e60:   nopl   0x1d0(%rax,%rax,1)           ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@1 (line 111)
           ││                                                            ;   {other}
           ↘╰  0x00007fa098639e68:   movabs $0x7fa098639e48,%r10         ;   {internal_word}
               0x00007fa098639e72:   mov    %r10,0x468(%r15)
....................................................................................................
  25.14%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 2, compile id 589 
  25.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 588 
   0.49%              kernel  [unknown] 
   0.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 621 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.83%  <...other 273 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 2, compile id 589 
  25.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 588 
   1.71%              kernel  [unknown] 
   0.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 621 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.14%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.00%         c2, level 4
   1.71%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 66.67% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 136653.692 ns/op
# Warmup Iteration   2: 135576.679 ns/op
# Warmup Iteration   3: 135547.205 ns/op
# Warmup Iteration   4: 135703.634 ns/op
# Warmup Iteration   5: 135619.062 ns/op
Iteration   1: 135639.109 ns/op
Iteration   2: 135657.274 ns/op
Iteration   3: 135628.267 ns/op
Iteration   4: 135590.979 ns/op
Iteration   5: 135585.203 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  135620.166 ±(99.9%) 119.861 ns/op [Average]
  (min, avg, max) = (135585.203, 135620.166, 135657.274), stdev = 31.128
  CI (99.9%): [135500.305, 135740.028] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:asm":
PrintAssembly processed: 128103 total address lines.
Perf output processed (skipped 56.308 seconds):
 Column 1: cycles (50476 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   8.28%           libjvm.so  CodeHeap::find_blob 
   7.35%           libjvm.so  CodeCache::find_blob 
   6.16%           libjvm.so  frame::sender 
   5.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 569 
   5.94%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   4.96%                      <unknown> 
   4.44%           libjvm.so  OptoRuntime::handle_exception_C 
   3.81%           libjvm.so  SafepointMechanism::update_poll_values 
   3.59%           libjvm.so  JavaThread::pd_last_frame 
   3.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 573 
   3.50%                      <unknown> 
   3.39%           libjvm.so  SharedRuntime::raw_exception_handler_for_return_address 
   3.37%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   2.92%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   2.52%           libjvm.so  CodeBlob::is_upcall_stub 
   2.08%           libjvm.so  RegisterMap::RegisterMap 
   1.99%           libjvm.so  frame::sender 
   1.93%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   1.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 573 
   1.76%           libjvm.so  CompiledMethod::handler_for_exception_and_pc 
  20.63%  <...other 304 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  14.60%           libjvm.so  OptoRuntime::handle_exception_C_helper 
  10.37%           libjvm.so  frame::sender 
   8.80%                      <unknown> 
   8.28%           libjvm.so  CodeHeap::find_blob 
   7.35%           libjvm.so  CodeCache::find_blob 
   6.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 573 
   5.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 569 
   5.89%           libjvm.so  SharedRuntime::raw_exception_handler_for_return_address 
   5.22%           libjvm.so  SafepointMechanism::update_poll_values 
   4.44%           libjvm.so  OptoRuntime::handle_exception_C 
   4.03%           libjvm.so  JavaThread::pd_last_frame 
   2.52%           libjvm.so  CodeBlob::is_upcall_stub 
   2.37%           libjvm.so  RegisterMap::RegisterMap 
   1.76%           libjvm.so  CompiledMethod::handler_for_exception_and_pc 
   1.41%           libjvm.so  OptoRuntime::rethrow_C 
   1.21%              kernel  [unknown] 
   1.21%           libjvm.so  frame::is_deoptimized_frame 
   1.05%           libjvm.so  Exceptions::debug_check_abort 
   1.02%           libjvm.so  JavaFrameAnchor::make_walkable 
   1.00%           libjvm.so  ExceptionCache::match 
   4.88%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  77.24%           libjvm.so
  12.61%         c2, level 4
   8.80%                    
   1.21%              kernel
   0.08%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-1944865.map
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 83.33% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 249863.579 ns/op
# Warmup Iteration   2: 248197.067 ns/op
# Warmup Iteration   3: 248396.536 ns/op
# Warmup Iteration   4: 248229.069 ns/op
# Warmup Iteration   5: 247937.079 ns/op
Iteration   1: 248179.232 ns/op
Iteration   2: 247932.273 ns/op
Iteration   3: 248256.173 ns/op
Iteration   4: 248225.448 ns/op
Iteration   5: 248221.115 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  248162.848 ±(99.9%) 507.411 ns/op [Average]
  (min, avg, max) = (247932.273, 248162.848, 248256.173), stdev = 131.773
  CI (99.9%): [247655.437, 248670.260] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:asm":
PrintAssembly processed: 131307 total address lines.
Perf output processed (skipped 56.547 seconds):
 Column 1: cycles (50790 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   7.54%           libjvm.so  CodeCache::find_blob 
   7.41%           libjvm.so  CodeHeap::find_blob 
   6.51%           libjvm.so  frame::sender 
   6.42%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   5.46%                      <unknown> 
   4.73%                      <unknown> 
   4.69%           libjvm.so  OptoRuntime::handle_exception_C 
   4.15%           libjvm.so  SharedRuntime::raw_exception_handler_for_return_address 
   3.89%           libjvm.so  SafepointMechanism::update_poll_values 
   3.78%           libjvm.so  JavaThread::pd_last_frame 
   3.17%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   3.09%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   2.83%           libjvm.so  CodeBlob::is_upcall_stub 
   2.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 596 
   2.13%           libjvm.so  RegisterMap::RegisterMap 
   2.10%           libjvm.so  frame::sender 
   1.85%           libjvm.so  SharedRuntime::raw_exception_handler_for_return_address 
   1.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 596 
   1.82%           libjvm.so  OptoRuntime::handle_exception_C_helper 
   1.61%           libjvm.so  frame::sender 
  22.81%  <...other 304 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  14.90%           libjvm.so  OptoRuntime::handle_exception_C_helper 
  11.39%           libjvm.so  frame::sender 
  10.70%                      <unknown> 
   7.54%           libjvm.so  CodeCache::find_blob 
   7.41%           libjvm.so  CodeHeap::find_blob 
   6.86%           libjvm.so  SharedRuntime::raw_exception_handler_for_return_address 
   5.37%           libjvm.so  SafepointMechanism::update_poll_values 
   5.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 596 
   4.69%           libjvm.so  OptoRuntime::handle_exception_C 
   4.28%           libjvm.so  JavaThread::pd_last_frame 
   2.83%           libjvm.so  CodeBlob::is_upcall_stub 
   2.46%           libjvm.so  RegisterMap::RegisterMap 
   1.92%           libjvm.so  CompiledMethod::handler_for_exception_and_pc 
   1.89%              kernel  [unknown] 
   1.40%           libjvm.so  OptoRuntime::rethrow_C 
   1.25%           libjvm.so  frame::is_deoptimized_frame 
   1.18%           libjvm.so  CompiledMethod::is_method_handle_return 
   1.16%           libjvm.so  StackOverflow::reguard_stack 
   1.16%           libjvm.so  ExceptionCache::match 
   1.08%           libjvm.so  Exceptions::debug_check_abort 
   5.34%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  81.09%           libjvm.so
  10.70%                    
   6.21%         c2, level 4
   1.89%              kernel
   0.06%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:10:53

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

Benchmark                                 (size)  (threshold)  Mode  Cnt        Score       Error  Units
NpeThrowBenchmark.explicit_throw_npe        1024          0.0  avgt    5     7124.027 ±    44.912  ns/op
NpeThrowBenchmark.explicit_throw_npe:asm    1024          0.0  avgt               NaN                ---
NpeThrowBenchmark.explicit_throw_npe        1024          0.5  avgt    5  2298886.258 ±  8275.629  ns/op
NpeThrowBenchmark.explicit_throw_npe:asm    1024          0.5  avgt               NaN                ---
NpeThrowBenchmark.explicit_throw_npe        1024          1.0  avgt    5  4472501.961 ± 18236.749  ns/op
NpeThrowBenchmark.explicit_throw_npe:asm    1024          1.0  avgt               NaN                ---
NpeThrowBenchmark.implicit_throw_npe        1024          0.0  avgt    5     7113.204 ±    59.589  ns/op
NpeThrowBenchmark.implicit_throw_npe:asm    1024          0.0  avgt               NaN                ---
NpeThrowBenchmark.implicit_throw_npe        1024          0.5  avgt    5   135620.166 ±   119.861  ns/op
NpeThrowBenchmark.implicit_throw_npe:asm    1024          0.5  avgt               NaN                ---
NpeThrowBenchmark.implicit_throw_npe        1024          1.0  avgt    5   248162.848 ±   507.411  ns/op
NpeThrowBenchmark.implicit_throw_npe:asm    1024          1.0  avgt               NaN                ---
