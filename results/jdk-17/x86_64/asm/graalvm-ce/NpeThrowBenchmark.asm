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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6403.209 ns/op
# Warmup Iteration   2: 6355.758 ns/op
# Warmup Iteration   3: 6356.321 ns/op
# Warmup Iteration   4: 6356.004 ns/op
# Warmup Iteration   5: 6355.979 ns/op
Iteration   1: 6355.607 ns/op
Iteration   2: 6356.351 ns/op
Iteration   3: 6355.433 ns/op
Iteration   4: 6355.739 ns/op
Iteration   5: 6355.551 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe":
  6355.736 ±(99.9%) 1.389 ns/op [Average]
  (min, avg, max) = (6355.433, 6355.736, 6356.351), stdev = 0.361
  CI (99.9%): [6354.348, 6357.125] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 193819 total address lines.
Perf output processed (skipped 58.583 seconds):
 Column 1: cycles (50735 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 735 

                 #           [sp+0x30]  (sp of caller)
                 0x00007f9cd2ffcd20:   mov    0x8(%rsi),%r10d
                 0x00007f9cd2ffcd24:   movabs $0x800000000,%r12
                 0x00007f9cd2ffcd2e:   add    %r12,%r10
                 0x00007f9cd2ffcd31:   xor    %r12,%r12
                 0x00007f9cd2ffcd34:   cmp    %r10,%rax
                 0x00007f9cd2ffcd37:   jne    0x00007f9ccb4ff780           ;   {runtime_call ic_miss_stub}
                 0x00007f9cd2ffcd3d:   nop
                 0x00007f9cd2ffcd3e:   xchg   %ax,%ax
               [Verified Entry Point]
   0.00%         0x00007f9cd2ffcd40:   mov    %eax,-0x14000(%rsp)
   0.01%         0x00007f9cd2ffcd47:   sub    $0x28,%rsp
                 0x00007f9cd2ffcd4b:   mov    %rbp,0x20(%rsp)
   0.01%         0x00007f9cd2ffcd50:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@0 (line 94)
                 0x00007f9cd2ffcd53:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f9cd2ffce27
   0.01%         0x00007f9cd2ffcd5b:   nopl   0x0(%rax,%rax,1)
                 0x00007f9cd2ffcd60:   test   %r10d,%r10d
          ╭      0x00007f9cd2ffcd63:   je     0x00007f9cd2ffcdf8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 94)
   0.01%  │      0x00007f9cd2ffcd69:   mov    %rsi,0x8(%rsp)
          │      0x00007f9cd2ffcd6e:   mov    %r10d,0x14(%rsp)
   0.01%  │      0x00007f9cd2ffcd73:   mov    %r10d,%r11d
          │      0x00007f9cd2ffcd76:   dec    %r11d
   0.00%  │      0x00007f9cd2ffcd79:   movslq %r11d,%r11
          │      0x00007f9cd2ffcd7c:   mov    %r10d,%r8d
   0.01%  │      0x00007f9cd2ffcd7f:   nop
          │      0x00007f9cd2ffcd80:   cmp    %r11,%r8
          │╭     0x00007f9cd2ffcd83:   ja     0x00007f9cd2ffcd93
          ││     0x00007f9cd2ffcd89:   cmp    $0x2,%r10d
          ││╭    0x00007f9cd2ffcd8d:   jae    0x00007f9cd2ffce0b
   0.00%  │↘│    0x00007f9cd2ffcd93:   mov    0x10(,%rdx,8),%r11d
          │ │    0x00007f9cd2ffcd9b:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   0.01%  │ │    0x00007f9cd2ffcd9f:   shl    $0x3,%rdx                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@1 (line 94)
          │ │    0x00007f9cd2ffcda3:   mov    %rdx,(%rsp)
   0.01%  │ │    0x00007f9cd2ffcda7:   mov    %rsi,%r8
          │ │    0x00007f9cd2ffcdaa:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
   0.00%  │ │    0x00007f9cd2ffcdad:   xchg   %ax,%ax
          │ │    0x00007f9cd2ffcdaf:   call   0x00007f9cd2ffc1a0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          │ │                                                              ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
          │ │                                                              ;   {optimized virtual_call}
   0.04%  │ │    0x00007f9cd2ffcdb4:   nop
          │ │    0x00007f9cd2ffcdb5:   mov    $0x1,%r11d
          │ │╭   0x00007f9cd2ffcdbb:   jmp    0x00007f9cd2ffcde5           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@10 (line 94)
   6.04%  │ ││↗  0x00007f9cd2ffcdc0:   mov    0x10(%rdx,%r11,4),%r8d
  24.23%  │ │││  0x00007f9cd2ffcdc5:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   5.82%  │ │││  0x00007f9cd2ffcdc9:   mov    %rsi,%r9
   0.07%  │ │││  0x00007f9cd2ffcdcc:   mov    %r8,%rdx                     ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
          │ │││  0x00007f9cd2ffcdcf:   mov    %r11d,0x10(%rsp)
   0.02%  │ │││  0x00007f9cd2ffcdd4:   data16 xchg %ax,%ax
   5.99%  │ │││  0x00007f9cd2ffcdd7:   call   0x00007f9cd2ffc1a0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          │ │││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
          │ │││                                                            ;   {optimized virtual_call}
   7.47%  │ │││  0x00007f9cd2ffcddc:   nop
   0.05%  │ │││  0x00007f9cd2ffcddd:   mov    0x10(%rsp),%r11d
   5.49%  │ │││  0x00007f9cd2ffcde2:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
   6.04%  │ │↘│  0x00007f9cd2ffcde5:   mov    (%rsp),%rdx
   0.02%  │ │ │  0x00007f9cd2ffcde9:   mov    0x14(%rsp),%r10d
          │ │ │  0x00007f9cd2ffcdee:   mov    0x8(%rsp),%rsi
   0.14%  │ │ │  0x00007f9cd2ffcdf3:   cmp    %r11d,%r10d
          │ │ ╰  0x00007f9cd2ffcdf6:   jg     0x00007f9cd2ffcdc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 94)
   0.11%  ↘ │    0x00007f9cd2ffcdf8:   mov    0x20(%rsp),%rbp
   0.05%    │    0x00007f9cd2ffcdfd:   add    $0x28,%rsp
            │    0x00007f9cd2ffce01:   mov    0x348(%r15),%rcx
   0.01%    │    0x00007f9cd2ffce08:   test   %eax,(%rcx)                  ;   {poll_return}
   0.04%    │    0x00007f9cd2ffce0a:   ret                                 ;*return {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@38 (line 101)
            ↘    0x00007f9cd2ffce0b:   movl   $0xffffffe5,0x370(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@6 (line 94)
                 0x00007f9cd2ffce16:   movq   $0x14,0x378(%r15)
                 0x00007f9cd2ffce21:   call   0x00007f9ccb50527a           ; ImmutableOopMap {rsi=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe@0 (line 94)
                                                                           ;   {runtime_call DeoptimizationBlob}
                 0x00007f9cd2ffce26:   nop
                 0x00007f9cd2ffce27:   movl   $0xfffffff5,0x370(%r15)
....................................................................................................
  61.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 732 

             #           [sp+0x20]  (sp of caller)
             0x00007f9cd2ffc180:   mov    0x8(%rsi),%r10d
             0x00007f9cd2ffc184:   movabs $0x800000000,%r12
             0x00007f9cd2ffc18e:   add    %r12,%r10
             0x00007f9cd2ffc191:   xor    %r12,%r12
             0x00007f9cd2ffc194:   cmp    %r10,%rax
             0x00007f9cd2ffc197:   jne    0x00007f9ccb4ff780           ;   {runtime_call ic_miss_stub}
             0x00007f9cd2ffc19d:   nop
             0x00007f9cd2ffc19e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.08%     0x00007f9cd2ffc1a0:   mov    %eax,-0x14000(%rsp)
   6.05%     0x00007f9cd2ffc1a7:   sub    $0x18,%rsp
   0.07%     0x00007f9cd2ffc1ab:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {}
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicitThrowNpe@0 (line 105)
   0.01%  ╭  0x00007f9cd2ffc1b0:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f9cd2ffc1c6
  19.01%  │  0x00007f9cd2ffc1b3:   mov    0x10(%rsp),%rbp
   0.00%  │  0x00007f9cd2ffc1b8:   add    $0x18,%rsp
   0.06%  │  0x00007f9cd2ffc1bc:   mov    0x348(%r15),%rcx
   0.00%  │  0x00007f9cd2ffc1c3:   test   %eax,(%rcx)                  ;   {poll_return}
  11.00%  │  0x00007f9cd2ffc1c5:   ret    
          ↘  0x00007f9cd2ffc1c6:   movl   $0xffffffed,0x370(%r15)
             0x00007f9cd2ffc1d1:   movq   $0x10,0x378(%r15)
             0x00007f9cd2ffc1dc:   nopl   0x0(%rax)
             0x00007f9cd2ffc1e0:   call   0x00007f9ccb50527a           ; ImmutableOopMap {}
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicitThrowNpe@0 (line 105)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f9cd2ffc1e5:   nop
           [Exception Handler]
             0x00007f9cd2ffc1e6:   call   0x00007f9ccb64b100           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  36.28%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 735 
  36.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 732 
   0.47%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 749 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.87%  <...other 294 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  61.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 735 
  36.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 732 
   1.53%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 749 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.17%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.08%       jvmci, level 4
   1.53%               kernel
   0.15%            libjvm.so
   0.10%         libc-2.31.so
   0.06%                     
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%          c1, level 3
   0.00%       perf-33673.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 16.67% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2690866.580 ns/op
# Warmup Iteration   2: 2674982.272 ns/op
# Warmup Iteration   3: 2676398.452 ns/op
# Warmup Iteration   4: 2676234.484 ns/op
# Warmup Iteration   5: 2674464.094 ns/op
Iteration   1: 2674765.656 ns/op
Iteration   2: 2673954.454 ns/op
Iteration   3: 2677348.194 ns/op
Iteration   4: 2675876.764 ns/op
Iteration   5: 2676009.393 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe":
  2675590.892 ±(99.9%) 4985.030 ns/op [Average]
  (min, avg, max) = (2673954.454, 2675590.892, 2677348.194), stdev = 1294.596
  CI (99.9%): [2670605.862, 2680575.922] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 195236 total address lines.
Perf output processed (skipped 58.638 seconds):
 Column 1: cycles (50953 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   8.63%            libjvm.so  CodeBlob::is_compiled 
   8.41%            libjvm.so  CodeHeap::find_blob_unsafe 
   6.99%            libjvm.so  frame::sender 
   6.42%            libjvm.so  CodeCache::find_blob 
   6.26%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   5.97%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   5.71%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.89%            libjvm.so  frame::sender_for_interpreter_frame 
   3.15%            libjvm.so  frame::sender_for_interpreter_frame 
   2.43%                       <unknown> 
   2.41%            libjvm.so  CodeBlob::is_deoptimization_stub 
   1.81%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.78%            libjvm.so  ObjArrayAllocator::initialize 
   1.69%            libjvm.so  frame::sender_for_compiled_frame 
   1.63%            libjvm.so  ObjArrayKlass::allocate 
   1.52%            libjvm.so  nmethod::is_zombie 
   1.41%           ld-2.31.so  _dl_tunable_set_hwcaps 
   1.34%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.33%            libjvm.so  CompiledMethod::is_compiled 
   1.32%            libjvm.so  frame::is_interpreted_frame 
  25.90%  <...other 502 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  16.39%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   8.63%            libjvm.so  CodeBlob::is_compiled 
   8.41%            libjvm.so  CodeHeap::find_blob_unsafe 
   7.38%            libjvm.so  frame::sender 
   7.04%            libjvm.so  frame::sender_for_interpreter_frame 
   6.42%            libjvm.so  CodeCache::find_blob 
   5.97%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   2.95%                       <unknown> 
   2.41%            libjvm.so  CodeBlob::is_deoptimization_stub 
   2.02%            libjvm.so  frame::sender_for_compiled_frame 
   1.90%               kernel  [unknown] 
   1.81%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.78%            libjvm.so  ObjArrayAllocator::initialize 
   1.77%            libjvm.so  MemAllocator::allocate 
   1.63%            libjvm.so  ObjArrayKlass::allocate 
   1.52%            libjvm.so  nmethod::is_zombie 
   1.41%           ld-2.31.so  _dl_tunable_set_hwcaps 
   1.33%            libjvm.so  CompiledMethod::is_compiled 
   1.32%            libjvm.so  frame::is_interpreted_frame 
   1.31%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
  16.60%  <...other 157 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.54%            libjvm.so
   2.95%                     
   1.90%               kernel
   1.63%       jvmci, level 4
   1.41%           ld-2.31.so
   0.34%     Unknown, level 0
   0.09%         libc-2.31.so
   0.08%           libjava.so
   0.02%          interpreter
   0.02%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.00%       perf-33741.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 33.33% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5643658.285 ns/op
# Warmup Iteration   2: 5618116.654 ns/op
# Warmup Iteration   3: 5617484.546 ns/op
# Warmup Iteration   4: 5617014.853 ns/op
# Warmup Iteration   5: 5614254.324 ns/op
Iteration   1: 5610534.100 ns/op
Iteration   2: 5607059.088 ns/op
Iteration   3: 5606880.185 ns/op
Iteration   4: 5610962.744 ns/op
Iteration   5: 5607641.705 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe":
  5608615.564 ±(99.9%) 7597.729 ns/op [Average]
  (min, avg, max) = (5606880.185, 5608615.564, 5610962.744), stdev = 1973.106
  CI (99.9%): [5601017.835, 5616213.293] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 192363 total address lines.
Perf output processed (skipped 58.429 seconds):
 Column 1: cycles (51011 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   8.35%            libjvm.so  CodeHeap::find_blob_unsafe 
   8.08%            libjvm.so  CodeBlob::is_compiled 
   7.02%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.86%            libjvm.so  frame::sender 
   6.23%            libjvm.so  CodeCache::find_blob 
   5.49%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   5.42%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.86%            libjvm.so  frame::sender_for_interpreter_frame 
   3.09%            libjvm.so  frame::sender_for_interpreter_frame 
   2.51%            libjvm.so  CodeBlob::is_deoptimization_stub 
   2.50%         libc-2.31.so  [unknown] 
   2.16%            libjvm.so  frame::sender_for_compiled_frame 
   1.86%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.81%            libjvm.so  ObjArrayAllocator::initialize 
   1.65%            libjvm.so  nmethod::is_zombie 
   1.62%            libjvm.so  ObjArrayKlass::allocate 
   1.61%            libjvm.so  CompiledMethod::is_compiled 
   1.53%           ld-2.31.so  _dl_tunable_set_hwcaps 
   1.49%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.41%            libjvm.so  frame::is_interpreted_frame 
  25.44%  <...other 438 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  17.28%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   8.35%            libjvm.so  CodeHeap::find_blob_unsafe 
   8.08%            libjvm.so  CodeBlob::is_compiled 
   7.15%            libjvm.so  frame::sender 
   6.95%            libjvm.so  frame::sender_for_interpreter_frame 
   6.23%            libjvm.so  CodeCache::find_blob 
   5.49%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   2.58%         libc-2.31.so  [unknown] 
   2.58%            libjvm.so  frame::sender_for_compiled_frame 
   2.51%            libjvm.so  CodeBlob::is_deoptimization_stub 
   1.93%               kernel  [unknown] 
   1.86%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.81%            libjvm.so  ObjArrayAllocator::initialize 
   1.65%            libjvm.so  nmethod::is_zombie 
   1.62%            libjvm.so  ObjArrayKlass::allocate 
   1.61%            libjvm.so  CompiledMethod::is_compiled 
   1.60%            libjvm.so  MemAllocator::allocate 
   1.53%           ld-2.31.so  _dl_tunable_set_hwcaps 
   1.41%            libjvm.so  frame::is_interpreted_frame 
   1.34%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
  16.43%  <...other 161 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.48%            libjvm.so
   2.66%         libc-2.31.so
   1.93%               kernel
   1.53%           ld-2.31.so
   1.36%       jvmci, level 4
   0.55%                     
   0.31%     Unknown, level 0
   0.07%           libjava.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.02%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%       perf-33804.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 50.00% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6398.207 ns/op
# Warmup Iteration   2: 6356.591 ns/op
# Warmup Iteration   3: 6359.728 ns/op
# Warmup Iteration   4: 6360.162 ns/op
# Warmup Iteration   5: 6356.977 ns/op
Iteration   1: 6357.844 ns/op
Iteration   2: 6356.274 ns/op
Iteration   3: 6359.689 ns/op
Iteration   4: 6363.172 ns/op
Iteration   5: 6360.188 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe":
  6359.433 ±(99.9%) 10.027 ns/op [Average]
  (min, avg, max) = (6356.274, 6359.433, 6363.172), stdev = 2.604
  CI (99.9%): [6349.406, 6369.461] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 189118 total address lines.
Perf output processed (skipped 58.477 seconds):
 Column 1: cycles (50951 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 746 

                 0x00007f8dd2ffcea0:   mov    0x8(%rsi),%r10d
                 0x00007f8dd2ffcea4:   movabs $0x800000000,%r12
                 0x00007f8dd2ffceae:   add    %r12,%r10
                 0x00007f8dd2ffceb1:   xor    %r12,%r12
                 0x00007f8dd2ffceb4:   cmp    %r10,%rax
                 0x00007f8dd2ffceb7:   jne    0x00007f8dcb4ff780           ;   {runtime_call ic_miss_stub}
                 0x00007f8dd2ffcebd:   nop
                 0x00007f8dd2ffcebe:   xchg   %ax,%ax
               [Verified Entry Point]
                 0x00007f8dd2ffcec0:   mov    %eax,-0x14000(%rsp)
   0.01%         0x00007f8dd2ffcec7:   sub    $0x28,%rsp
                 0x00007f8dd2ffcecb:   mov    %rbp,0x20(%rsp)
   0.01%         0x00007f8dd2ffced0:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@0 (line 82)
   0.00%         0x00007f8dd2ffced3:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f8dd2ffcfa7
   0.01%         0x00007f8dd2ffcedb:   nopl   0x0(%rax,%rax,1)
                 0x00007f8dd2ffcee0:   test   %r10d,%r10d
          ╭      0x00007f8dd2ffcee3:   je     0x00007f8dd2ffcf78           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 82)
   0.00%  │      0x00007f8dd2ffcee9:   mov    %rsi,0x8(%rsp)
          │      0x00007f8dd2ffceee:   mov    %r10d,0x14(%rsp)
   0.01%  │      0x00007f8dd2ffcef3:   mov    %r10d,%r11d
          │      0x00007f8dd2ffcef6:   dec    %r11d
          │      0x00007f8dd2ffcef9:   movslq %r11d,%r11
          │      0x00007f8dd2ffcefc:   mov    %r10d,%r8d
   0.00%  │      0x00007f8dd2ffceff:   nop
          │      0x00007f8dd2ffcf00:   cmp    %r11,%r8
          │╭     0x00007f8dd2ffcf03:   ja     0x00007f8dd2ffcf13
          ││     0x00007f8dd2ffcf09:   cmp    $0x2,%r10d
          ││╭    0x00007f8dd2ffcf0d:   jae    0x00007f8dd2ffcf8b
          │↘│    0x00007f8dd2ffcf13:   mov    0x10(,%rdx,8),%r11d
          │ │    0x00007f8dd2ffcf1b:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   0.01%  │ │    0x00007f8dd2ffcf1f:   shl    $0x3,%rdx                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@1 (line 82)
          │ │    0x00007f8dd2ffcf23:   mov    %rdx,(%rsp)
   0.00%  │ │    0x00007f8dd2ffcf27:   mov    %rsi,%r8
          │ │    0x00007f8dd2ffcf2a:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
   0.01%  │ │    0x00007f8dd2ffcf2d:   xchg   %ax,%ax
          │ │    0x00007f8dd2ffcf2f:   call   0x00007f8dd2ffc320           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          │ │                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
          │ │                                                              ;   {optimized virtual_call}
   0.05%  │ │    0x00007f8dd2ffcf34:   nop
          │ │    0x00007f8dd2ffcf35:   mov    $0x1,%r11d
          │ │╭   0x00007f8dd2ffcf3b:   jmp    0x00007f8dd2ffcf65           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@10 (line 82)
   5.96%  │ ││↗  0x00007f8dd2ffcf40:   mov    0x10(%rdx,%r11,4),%r8d
  23.64%  │ │││  0x00007f8dd2ffcf45:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   6.05%  │ │││  0x00007f8dd2ffcf49:   mov    %rsi,%r9
   0.06%  │ │││  0x00007f8dd2ffcf4c:   mov    %r8,%rdx                     ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
          │ │││  0x00007f8dd2ffcf4f:   mov    %r11d,0x10(%rsp)
   0.01%  │ │││  0x00007f8dd2ffcf54:   data16 xchg %ax,%ax
   6.01%  │ │││  0x00007f8dd2ffcf57:   call   0x00007f8dd2ffc320           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          │ │││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
          │ │││                                                            ;   {optimized virtual_call}
   7.93%  │ │││  0x00007f8dd2ffcf5c:   nop
   0.07%  │ │││  0x00007f8dd2ffcf5d:   mov    0x10(%rsp),%r11d
   5.10%  │ │││  0x00007f8dd2ffcf62:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
   6.06%  │ │↘│  0x00007f8dd2ffcf65:   mov    (%rsp),%rdx
   0.02%  │ │ │  0x00007f8dd2ffcf69:   mov    0x14(%rsp),%r10d
          │ │ │  0x00007f8dd2ffcf6e:   mov    0x8(%rsp),%rsi
   0.14%  │ │ │  0x00007f8dd2ffcf73:   cmp    %r11d,%r10d
          │ │ ╰  0x00007f8dd2ffcf76:   jg     0x00007f8dd2ffcf40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 82)
   0.11%  ↘ │    0x00007f8dd2ffcf78:   mov    0x20(%rsp),%rbp
   0.09%    │    0x00007f8dd2ffcf7d:   add    $0x28,%rsp
            │    0x00007f8dd2ffcf81:   mov    0x348(%r15),%rcx
   0.00%    │    0x00007f8dd2ffcf88:   test   %eax,(%rcx)                  ;   {poll_return}
   0.05%    │    0x00007f8dd2ffcf8a:   ret                                 ;*return {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@38 (line 89)
            ↘    0x00007f8dd2ffcf8b:   movl   $0xffffffe5,0x370(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@6 (line 82)
                 0x00007f8dd2ffcf96:   movq   $0x14,0x378(%r15)
                 0x00007f8dd2ffcfa1:   call   0x00007f8dcb50527a           ; ImmutableOopMap {rsi=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe@0 (line 82)
                                                                           ;   {runtime_call DeoptimizationBlob}
                 0x00007f8dd2ffcfa6:   nop
                 0x00007f8dd2ffcfa7:   movl   $0xfffffff5,0x370(%r15)
....................................................................................................
  61.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 743 

             #           [sp+0x20]  (sp of caller)
             0x00007f8dd2ffc300:   mov    0x8(%rsi),%r10d
             0x00007f8dd2ffc304:   movabs $0x800000000,%r12
             0x00007f8dd2ffc30e:   add    %r12,%r10
             0x00007f8dd2ffc311:   xor    %r12,%r12
             0x00007f8dd2ffc314:   cmp    %r10,%rax
             0x00007f8dd2ffc317:   jne    0x00007f8dcb4ff780           ;   {runtime_call ic_miss_stub}
             0x00007f8dd2ffc31d:   nop
             0x00007f8dd2ffc31e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.07%     0x00007f8dd2ffc320:   mov    %eax,-0x14000(%rsp)
   6.00%     0x00007f8dd2ffc327:   sub    $0x18,%rsp
   0.09%     0x00007f8dd2ffc32b:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {}
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicitThrowNpe@0 (line 113)
   0.00%  ╭  0x00007f8dd2ffc330:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f8dd2ffc346
  18.97%  │  0x00007f8dd2ffc333:   mov    0x10(%rsp),%rbp
   0.00%  │  0x00007f8dd2ffc338:   add    $0x18,%rsp
   0.07%  │  0x00007f8dd2ffc33c:   mov    0x348(%r15),%rcx
   0.00%  │  0x00007f8dd2ffc343:   test   %eax,(%rcx)                  ;   {poll_return}
  10.96%  │  0x00007f8dd2ffc345:   ret    
          ↘  0x00007f8dd2ffc346:   movl   $0xfffffff5,0x370(%r15)
             0x00007f8dd2ffc351:   movq   $0x0,0x378(%r15)
             0x00007f8dd2ffc35c:   nopl   0x0(%rax)
             0x00007f8dd2ffc360:   call   0x00007f8dcb50527a           ; ImmutableOopMap {}
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicitThrowNpe@0 (line 113)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f8dd2ffc365:   nop
           [Exception Handler]
             0x00007f8dd2ffc366:   call   0x00007f8dcb64ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  36.16%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 746 
  36.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 743 
   1.16%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 762 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.72%  <...other 269 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  61.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 746 
  36.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 743 
   1.98%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 762 
   0.06%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  stringStream::write 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.15%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.66%       jvmci, level 4
   1.98%               kernel
   0.13%            libjvm.so
   0.10%         libc-2.31.so
   0.06%                     
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 66.67% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8566358.603 ns/op
# Warmup Iteration   2: 8501920.943 ns/op
# Warmup Iteration   3: 8520638.488 ns/op
# Warmup Iteration   4: 8520969.986 ns/op
# Warmup Iteration   5: 8515810.609 ns/op
Iteration   1: 8516175.342 ns/op
Iteration   2: 8509087.181 ns/op
Iteration   3: 8515137.502 ns/op
Iteration   4: 8517545.432 ns/op
Iteration   5: 8519967.520 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe":
  8515582.595 ±(99.9%) 15620.064 ns/op [Average]
  (min, avg, max) = (8509087.181, 8515582.595, 8519967.520), stdev = 4056.481
  CI (99.9%): [8499962.532, 8531202.659] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 197200 total address lines.
Perf output processed (skipped 58.854 seconds):
 Column 1: cycles (50809 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   6.67%         libc-2.31.so  _int_malloc 
   5.55%            libjvm.so  stringStream::write 
   4.13%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.92%                       <unknown> 
   3.59%            libjvm.so  CodeHeap::find_blob_unsafe 
   3.15%            libjvm.so  CodeBlob::is_compiled 
   3.10%         libc-2.31.so  __strncat_ssse3 
   2.80%                       <unknown> 
   2.72%         libc-2.31.so  ptmalloc_init.part.0 
   2.66%            libjvm.so  CodeCache::find_blob 
   2.53%         libc-2.31.so  _int_realloc 
   2.49%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.47%            libjvm.so  frame::sender 
   2.39%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.13%                       <unknown> 
   1.89%         libc-2.31.so  __strncat_ssse3 
   1.89%                       <unknown> 
   1.80%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.66%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   1.44%         libc-2.31.so  _nl_parse_alt_digit 
  41.00%  <...other 674 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  12.71%                       <unknown> 
   9.41%         libc-2.31.so  __strncat_ssse3 
   6.67%         libc-2.31.so  _int_malloc 
   5.84%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   5.67%            libjvm.so  stringStream::write 
   4.79%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.59%            libjvm.so  CodeHeap::find_blob_unsafe 
   3.25%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   3.15%            libjvm.so  CodeBlob::is_compiled 
   2.76%         libc-2.31.so  ptmalloc_init.part.0 
   2.66%            libjvm.so  CodeCache::find_blob 
   2.58%            libjvm.so  frame::sender 
   2.53%         libc-2.31.so  _int_realloc 
   2.27%            libjvm.so  frame::sender_for_interpreter_frame 
   2.10%            libjvm.so  outputStream::print 
   1.66%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   1.57%               kernel  [unknown] 
   1.44%         libc-2.31.so  _nl_parse_alt_digit 
   1.38%         libc-2.31.so  _nl_cleanup_time 
   1.24%            libjvm.so  frame::sender_for_compiled_frame 
  22.72%  <...other 226 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  51.92%            libjvm.so
  31.71%         libc-2.31.so
  12.71%                     
   1.57%               kernel
   0.60%       jvmci, level 4
   0.58%           ld-2.31.so
   0.26%   libpthread-2.31.so
   0.26%               [vdso]
   0.14%         runtime stub
   0.14%     Unknown, level 0
   0.04%       perf-33920.map
   0.03%           libjava.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 83.33% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17126881.870 ns/op
# Warmup Iteration   2: 17018351.981 ns/op
# Warmup Iteration   3: 17007631.952 ns/op
# Warmup Iteration   4: 17025465.427 ns/op
# Warmup Iteration   5: 17027964.687 ns/op
Iteration   1: 17024633.570 ns/op
Iteration   2: 17004015.443 ns/op
Iteration   3: 17009456.711 ns/op
Iteration   4: 17027234.993 ns/op
Iteration   5: 17013546.322 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe":
  17015777.408 ±(99.9%) 38167.080 ns/op [Average]
  (min, avg, max) = (17004015.443, 17015777.408, 17027234.993), stdev = 9911.870
  CI (99.9%): [16977610.327, 17053944.488] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 193561 total address lines.
Perf output processed (skipped 58.582 seconds):
 Column 1: cycles (50726 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   5.74%         libc-2.31.so  _int_malloc 
   5.37%            libjvm.so  stringStream::write 
   3.99%            libjvm.so  CodeHeap::find_blob_unsafe 
   3.82%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.71%            libjvm.so  CodeBlob::is_compiled 
   3.54%                       <unknown> 
   3.07%         libc-2.31.so  __strncat_ssse3 
   2.90%            libjvm.so  frame::sender 
   2.67%            libjvm.so  CodeCache::find_blob 
   2.57%         libc-2.31.so  _int_realloc 
   2.55%         libc-2.31.so  ptmalloc_init.part.0 
   2.46%                       <unknown> 
   2.44%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.33%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.11%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   2.06%                       <unknown> 
   1.92%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.87%                       <unknown> 
   1.73%         libc-2.31.so  __strncat_ssse3 
   1.39%         libc-2.31.so  _nl_parse_alt_digit 
  41.77%  <...other 573 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  11.61%                       <unknown> 
   8.98%         libc-2.31.so  __strncat_ssse3 
   6.30%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   5.74%         libc-2.31.so  _int_malloc 
   5.46%            libjvm.so  stringStream::write 
   4.41%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.99%            libjvm.so  CodeHeap::find_blob_unsafe 
   3.71%            libjvm.so  CodeBlob::is_compiled 
   3.04%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   3.01%            libjvm.so  frame::sender 
   2.67%            libjvm.so  CodeCache::find_blob 
   2.57%         libc-2.31.so  _int_realloc 
   2.55%         libc-2.31.so  ptmalloc_init.part.0 
   2.34%            libjvm.so  frame::sender_for_interpreter_frame 
   2.11%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   2.04%            libjvm.so  outputStream::print 
   1.39%         libc-2.31.so  _nl_parse_alt_digit 
   1.36%            libjvm.so  frame::sender_for_compiled_frame 
   1.22%         libc-2.31.so  _nl_cleanup_time 
   1.14%               kernel  [unknown] 
  24.35%  <...other 210 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  55.32%            libjvm.so
  29.75%         libc-2.31.so
  11.61%                     
   1.14%               kernel
   0.61%       jvmci, level 4
   0.58%           ld-2.31.so
   0.27%   libpthread-2.31.so
   0.25%               [vdso]
   0.22%         runtime stub
   0.11%     Unknown, level 0
   0.07%       perf-33986.map
   0.03%           libjava.so
   0.02%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:07

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

Benchmark                                  (size)  (threshold)  Mode  Cnt         Score       Error  Units
NpeThrowBenchmark.explicit_throw_npe         1024          0.0  avgt    5      6355.736 ±     1.389  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          0.0  avgt                NaN                ---
NpeThrowBenchmark.explicit_throw_npe         1024          0.5  avgt    5   2675590.892 ±  4985.030  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          0.5  avgt                NaN                ---
NpeThrowBenchmark.explicit_throw_npe         1024          1.0  avgt    5   5608615.564 ±  7597.729  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          1.0  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe         1024          0.0  avgt    5      6359.433 ±    10.027  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          0.0  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe         1024          0.5  avgt    5   8515582.595 ± 15620.064  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          0.5  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe         1024          1.0  avgt    5  17015777.408 ± 38167.080  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          1.0  avgt                NaN                ---
