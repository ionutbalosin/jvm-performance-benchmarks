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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6797.101 ns/op
# Warmup Iteration   2: 6754.213 ns/op
# Warmup Iteration   3: 6752.993 ns/op
# Warmup Iteration   4: 6758.056 ns/op
# Warmup Iteration   5: 6751.114 ns/op
Iteration   1: 6757.669 ns/op
Iteration   2: 6748.621 ns/op
Iteration   3: 6748.865 ns/op
Iteration   4: 6751.419 ns/op
Iteration   5: 6757.025 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  6752.720 ±(99.9%) 16.826 ns/op [Average]
  (min, avg, max) = (6748.621, 6752.720, 6757.669), stdev = 4.370
  CI (99.9%): [6735.894, 6769.546] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:asm":
PrintAssembly processed: 220375 total address lines.
Perf output processed (skipped 60.392 seconds):
 Column 1: cycles (50476 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 971 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
                                                                        ;   {optimized virtual_call}
   0.01%      0x00007f7ce723db3c:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
              0x00007f7ce723db44:   mov    $0x1,%r11d
          ╭   0x00007f7ce723db4a:   jmp    0x00007f7ce723db8c           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@10 (line 92)
          │   0x00007f7ce723db4f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f7ce723db5a:   data16 data16 xchg %ax,%ax
          │   0x00007f7ce723db5e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 92)
   0.12%  │↗  0x00007f7ce723db60:   mov    0x10(%rdx,%r11,4),%r8d
  25.73%  ││  0x00007f7ce723db65:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 92)
   5.81%  ││  0x00007f7ce723db69:   mov    %rsi,%r9
          ││  0x00007f7ce723db6c:   mov    %r8,%rdx                     ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
   0.09%  ││  0x00007f7ce723db6f:   mov    %r11d,0x10(%rsp)
          ││  0x00007f7ce723db74:   data16 xchg %ax,%ax
   5.54%  ││  0x00007f7ce723db77:   call   0x00007f7ce723cea0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 94)
          ││                                                            ;   {optimized virtual_call}
  19.93%  ││  0x00007f7ce723db7c:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
          ││  0x00007f7ce723db84:   mov    0x10(%rsp),%r11d
   5.71%  ││  0x00007f7ce723db89:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 92)
   5.61%  ↘│  0x00007f7ce723db8c:   mov    (%rsp),%rdx
   2.85%   │  0x00007f7ce723db90:   mov    0x14(%rsp),%r10d
           │  0x00007f7ce723db95:   mov    0x8(%rsp),%rsi
   2.86%   │  0x00007f7ce723db9a:   cmp    %r11d,%r10d
           ╰  0x00007f7ce723db9d:   jg     0x00007f7ce723db60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 92)
   0.09%      0x00007f7ce723db9f:   mov    0x20(%rsp),%rbp
   0.05%      0x00007f7ce723dba4:   add    $0x28,%rsp
              0x00007f7ce723dba8:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f7ce723dbaf:   ja     0x00007f7ce723dbe9
   0.01%      0x00007f7ce723dbb5:   ret                                 ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@38 (line 99)
              0x00007f7ce723dbb6:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@6 (line 92)
              0x00007f7ce723dbc1:   movq   $0x18,0x490(%r15)
              0x00007f7ce723dbcc:   call   0x00007f7ce6c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@0 (line 92)
                                                                        ;   {runtime_call DeoptimizationBlob}
              0x00007f7ce723dbd1:   nopl   0x0(%rax,%rax,1)
              0x00007f7ce723dbd9:   mov    %rbp,0x20(%rsp)
....................................................................................................
  74.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 967 

                 # parm0:    rdx:rdx   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark$Wrapper&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007f7ce723ce80:   mov    0x8(%rsi),%r10d
                 0x00007f7ce723ce84:   movabs $0x7f7c6b000000,%r12
                 0x00007f7ce723ce8e:   add    %r12,%r10
                 0x00007f7ce723ce91:   xor    %r12,%r12
                 0x00007f7ce723ce94:   cmp    %r10,%rax
                 0x00007f7ce723ce97:   jne    0x00007f7ce6c2f080           ;   {runtime_call ic_miss_stub}
                 0x00007f7ce723ce9d:   data16 xchg %ax,%ax
               [Verified Entry Point]
   0.07%         0x00007f7ce723cea0:   mov    %eax,-0x14000(%rsp)
   5.70%         0x00007f7ce723cea7:   sub    $0x18,%rsp
                 0x00007f7ce723ceab:   nop
   0.07%         0x00007f7ce723ceac:   cmpl   $0x1,0x20(%r15)
          ╭      0x00007f7ce723ceb4:   jne    0x00007f7ce723ced9
   5.52%  │  ↗   0x00007f7ce723ceba:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {}
          │  │                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@0 (line 103)
          │╭ │   0x00007f7ce723cebf:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f7ce723cefa
  12.49%  ││ │   0x00007f7ce723cec2:   mov    0x10(%rsp),%rbp
   0.00%  ││ │   0x00007f7ce723cec7:   add    $0x18,%rsp
   0.00%  ││ │↗  0x00007f7ce723cecb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││╭││  0x00007f7ce723ced2:   ja     0x00007f7ce723cee6
   0.01%  │││││  0x00007f7ce723ced8:   ret    
          ↘││││  0x00007f7ce723ced9:   mov    %rbp,0x10(%rsp)
           ││││  0x00007f7ce723cede:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           ││╰│  0x00007f7ce723cee3:   jmp    0x00007f7ce723ceba
           ││ │  0x00007f7ce723cee5:   hlt    
           │↘ ╰  0x00007f7ce723cee6:   lea    -0x22(%rip),%rcx        # 0x00007f7ce723cecb
           │     0x00007f7ce723ceed:   mov    %rcx,0x468(%r15)
           │     0x00007f7ce723cef4:   jmp    0x00007f7ce6c36000           ;   {runtime_call SafepointBlob}
           │     0x00007f7ce723cef9:   hlt    
           ↘     0x00007f7ce723cefa:   movl   $0xffffffed,0x484(%r15)
                 0x00007f7ce723cf05:   movq   $0x14,0x490(%r15)
....................................................................................................
  23.87%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 971 
  23.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 967 
   0.18%               kernel  [unknown] 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 994 
   0.10%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 971 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 971 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.79%  <...other 260 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 971 
  23.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 967 
   1.18%               kernel  [unknown] 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 994 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.49%       jvmci, level 4
   1.18%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 16.67% complete, ETA 00:09:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2101714.192 ns/op
# Warmup Iteration   2: 2088282.042 ns/op
# Warmup Iteration   3: 2087697.448 ns/op
# Warmup Iteration   4: 2087544.892 ns/op
# Warmup Iteration   5: 2088235.171 ns/op
Iteration   1: 2086373.593 ns/op
Iteration   2: 2088905.029 ns/op
Iteration   3: 2094202.372 ns/op
Iteration   4: 2089105.808 ns/op
Iteration   5: 2087301.135 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  2089177.587 ±(99.9%) 11665.506 ns/op [Average]
  (min, avg, max) = (2086373.593, 2089177.587, 2094202.372), stdev = 3029.495
  CI (99.9%): [2077512.081, 2100843.093] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:asm":
PrintAssembly processed: 227141 total address lines.
Perf output processed (skipped 60.543 seconds):
 Column 1: cycles (51368 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   8.56%            libjvm.so  frame::sender 
   8.12%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   5.68%            libjvm.so  CodeBlob::is_upcall_stub 
   5.64%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   5.01%            libjvm.so  CodeHeap::find_blob 
   3.60%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.56%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.43%         libc-2.31.so  __memset_avx2_erms 
   3.20%            libjvm.so  Continuation::is_return_barrier_entry 
   3.11%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.76%            libjvm.so  frame::sender_for_interpreter_frame 
   2.45%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.36%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   2.36%            libjvm.so  CodeCache::find_blob 
   2.35%            libjvm.so  ObjArrayKlass::allocate 
   1.99%            libjvm.so  ObjArrayAllocator::initialize 
   1.93%            libjvm.so  frame::sender_for_interpreter_frame 
   1.76%            libjvm.so  Method::bcp_from 
   1.59%           ld-2.31.so  __tls_get_addr 
   1.27%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
  29.27%  <...other 454 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  22.45%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   9.76%            libjvm.so  frame::sender 
   8.12%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   5.68%            libjvm.so  CodeBlob::is_upcall_stub 
   5.01%            libjvm.so  CodeHeap::find_blob 
   5.00%            libjvm.so  frame::sender_for_interpreter_frame 
   3.43%         libc-2.31.so  __memset_avx2_erms 
   3.20%            libjvm.so  Continuation::is_return_barrier_entry 
   2.77%               kernel  [unknown] 
   2.51%            libjvm.so  MemAllocator::allocate 
   2.36%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   2.36%            libjvm.so  CodeCache::find_blob 
   2.35%            libjvm.so  ObjArrayKlass::allocate 
   1.99%            libjvm.so  ObjArrayAllocator::initialize 
   1.76%            libjvm.so  Method::bcp_from 
   1.59%           ld-2.31.so  __tls_get_addr 
   1.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 976 
   1.27%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.17%            libjvm.so  TypeArrayKlass::allocate_common 
   1.13%            libjvm.so  Universe::should_fill_in_stack_trace 
  14.60%  <...other 175 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.81%            libjvm.so
   3.55%         libc-2.31.so
   2.77%               kernel
   2.18%       jvmci, level 4
   1.59%           ld-2.31.so
   0.54%                     
   0.42%     Unknown, level 0
   0.04%  libjvmcicompiler.so
   0.04%           libjava.so
   0.03%   libpthread-2.31.so
   0.03%          interpreter
   0.02%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%     perf-2118033.map
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 33.33% complete, ETA 00:07:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4349997.586 ns/op
# Warmup Iteration   2: 4332392.002 ns/op
# Warmup Iteration   3: 4330944.091 ns/op
# Warmup Iteration   4: 4328141.705 ns/op
# Warmup Iteration   5: 4329619.458 ns/op
Iteration   1: 4336655.103 ns/op
Iteration   2: 4338694.972 ns/op
Iteration   3: 4333612.526 ns/op
Iteration   4: 4328866.591 ns/op
Iteration   5: 4327798.540 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  4333125.546 ±(99.9%) 18288.443 ns/op [Average]
  (min, avg, max) = (4327798.540, 4333125.546, 4338694.972), stdev = 4749.451
  CI (99.9%): [4314837.103, 4351413.989] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:asm":
PrintAssembly processed: 220331 total address lines.
Perf output processed (skipped 60.385 seconds):
 Column 1: cycles (50690 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   9.38%           libjvm.so  frame::sender 
   7.92%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   6.08%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   5.91%           libjvm.so  CodeBlob::is_upcall_stub 
   4.18%           libjvm.so  CodeHeap::find_blob 
   4.05%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.63%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.49%           libjvm.so  Continuation::is_return_barrier_entry 
   3.21%           libjvm.so  frame::sender_for_interpreter_frame 
   3.11%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   3.07%           libjvm.so  CodeCache::find_blob 
   3.00%        libc-2.31.so  __memset_avx2_unaligned_erms 
   2.92%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.29%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   2.08%           libjvm.so  ObjArrayKlass::allocate 
   2.07%           libjvm.so  Method::bcp_from 
   2.04%           libjvm.so  frame::sender_for_interpreter_frame 
   1.79%           libjvm.so  ObjArrayAllocator::initialize 
   1.39%          ld-2.31.so  __tls_get_addr 
   1.35%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
  27.05%  <...other 513 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  24.35%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
  10.65%           libjvm.so  frame::sender 
   7.92%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   5.91%           libjvm.so  CodeBlob::is_upcall_stub 
   5.57%           libjvm.so  frame::sender_for_interpreter_frame 
   4.18%           libjvm.so  CodeHeap::find_blob 
   3.49%           libjvm.so  Continuation::is_return_barrier_entry 
   3.07%           libjvm.so  CodeCache::find_blob 
   3.00%        libc-2.31.so  __memset_avx2_unaligned_erms 
   2.29%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 2383974ul>::oop_access_barrier 
   2.26%           libjvm.so  MemAllocator::allocate 
   2.08%           libjvm.so  ObjArrayKlass::allocate 
   2.07%           libjvm.so  Method::bcp_from 
   1.79%           libjvm.so  ObjArrayAllocator::initialize 
   1.43%              kernel  [unknown] 
   1.39%          ld-2.31.so  __tls_get_addr 
   1.35%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.07%           libjvm.so  TypeArrayKlass::allocate_common 
   1.02%      jvmci, level 4  java.lang.Throwable::&lt;init&gt;, version 2, compile id 962 
   0.98%           libjvm.so  BacktraceBuilder::expand 
  14.14%  <...other 153 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.24%           libjvm.so
   3.12%        libc-2.31.so
   1.81%      jvmci, level 4
   1.43%              kernel
   1.39%          ld-2.31.so
   0.48%                    
   0.40%    Unknown, level 0
   0.04%          libjava.so
   0.04%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-2118098.map
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 50.00% complete, ETA 00:05:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6803.873 ns/op
# Warmup Iteration   2: 6748.965 ns/op
# Warmup Iteration   3: 6751.626 ns/op
# Warmup Iteration   4: 6757.594 ns/op
# Warmup Iteration   5: 6748.594 ns/op
Iteration   1: 6749.703 ns/op
Iteration   2: 6747.280 ns/op
Iteration   3: 6753.743 ns/op
Iteration   4: 6754.454 ns/op
Iteration   5: 6750.158 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  6751.068 ±(99.9%) 11.498 ns/op [Average]
  (min, avg, max) = (6747.280, 6751.068, 6754.454), stdev = 2.986
  CI (99.9%): [6739.570, 6762.565] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:asm":
PrintAssembly processed: 221379 total address lines.
Perf output processed (skipped 60.627 seconds):
 Column 1: cycles (50843 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 998 

                0x00007ff21f240906:   mov    %r10d,%r8d
   0.01%        0x00007ff21f240909:   cmp    %r11,%r8
          ╭     0x00007ff21f24090c:   ja     0x00007ff21f24091c
          │     0x00007ff21f240912:   cmp    $0x2,%r10d
          │╭    0x00007ff21f240916:   jae    0x00007ff21f2409b6
          ↘│    0x00007ff21f24091c:   mov    0x10(,%rdx,8),%r11d
           │    0x00007ff21f240924:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
           │    0x00007ff21f240928:   shl    $0x3,%rdx                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@1 (line 80)
   0.01%   │    0x00007ff21f24092c:   mov    %rdx,(%rsp)
           │    0x00007ff21f240930:   mov    %rsi,%r8
           │    0x00007ff21f240933:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
           │    0x00007ff21f240936:   nop
   0.00%   │    0x00007ff21f240937:   call   0x00007ff21f23fca0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
           │                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
           │                                                              ;   {optimized virtual_call}
   0.00%   │    0x00007ff21f24093c:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
           │    0x00007ff21f240944:   mov    $0x1,%r11d
   0.00%   │╭   0x00007ff21f24094a:   jmp    0x00007ff21f24098c           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@10 (line 80)
           ││   0x00007ff21f24094f:   data16 data16 nopw 0x0(%rax,%rax,1)
           ││   0x00007ff21f24095a:   data16 data16 xchg %ax,%ax
           ││   0x00007ff21f24095e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 80)
   0.15%   ││↗  0x00007ff21f240960:   mov    0x10(%rdx,%r11,4),%r8d
  25.32%   │││  0x00007ff21f240965:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 80)
   5.67%   │││  0x00007ff21f240969:   mov    %rsi,%r9
           │││  0x00007ff21f24096c:   mov    %r8,%rdx                     ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
   0.07%   │││  0x00007ff21f24096f:   mov    %r11d,0x10(%rsp)
           │││  0x00007ff21f240974:   data16 xchg %ax,%ax
   5.53%   │││  0x00007ff21f240977:   call   0x00007ff21f23fca0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
           │││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 82)
           │││                                                            ;   {optimized virtual_call}
  19.55%   │││  0x00007ff21f24097c:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
           │││  0x00007ff21f240984:   mov    0x10(%rsp),%r11d
   5.57%   │││  0x00007ff21f240989:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 80)
   5.73%   │↘│  0x00007ff21f24098c:   mov    (%rsp),%rdx
   2.87%   │ │  0x00007ff21f240990:   mov    0x14(%rsp),%r10d
   0.01%   │ │  0x00007ff21f240995:   mov    0x8(%rsp),%rsi
   2.86%   │ │  0x00007ff21f24099a:   cmp    %r11d,%r10d
           │ ╰  0x00007ff21f24099d:   jg     0x00007ff21f240960           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 80)
   0.10%   │    0x00007ff21f24099f:   mov    0x20(%rsp),%rbp
   0.06%   │    0x00007ff21f2409a4:   add    $0x28,%rsp
           │    0x00007ff21f2409a8:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │    0x00007ff21f2409af:   ja     0x00007ff21f2409e9
   0.01%   │    0x00007ff21f2409b5:   ret                                 ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@38 (line 87)
           ↘    0x00007ff21f2409b6:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@6 (line 80)
                0x00007ff21f2409c1:   movq   $0x18,0x490(%r15)
                0x00007ff21f2409cc:   call   0x00007ff21ec3517a           ; ImmutableOopMap {rsi=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@0 (line 80)
                                                                          ;   {runtime_call DeoptimizationBlob}
                0x00007ff21f2409d1:   nopl   0x0(%rax,%rax,1)
                0x00007ff21f2409d9:   mov    %rbp,0x20(%rsp)
....................................................................................................
  73.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 994 

                 # parm0:    rdx:rdx   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark$Wrapper&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007ff21f23fc80:   mov    0x8(%rsi),%r10d
                 0x00007ff21f23fc84:   movabs $0x7ff1a3000000,%r12
                 0x00007ff21f23fc8e:   add    %r12,%r10
                 0x00007ff21f23fc91:   xor    %r12,%r12
                 0x00007ff21f23fc94:   cmp    %r10,%rax
                 0x00007ff21f23fc97:   jne    0x00007ff21ec2f080           ;   {runtime_call ic_miss_stub}
                 0x00007ff21f23fc9d:   data16 xchg %ax,%ax
               [Verified Entry Point]
   0.09%         0x00007ff21f23fca0:   mov    %eax,-0x14000(%rsp)
   5.60%         0x00007ff21f23fca7:   sub    $0x18,%rsp
                 0x00007ff21f23fcab:   nop
   0.10%         0x00007ff21f23fcac:   cmpl   $0x1,0x20(%r15)
          ╭      0x00007ff21f23fcb4:   jne    0x00007ff21f23fcd9
   5.59%  │  ↗   0x00007ff21f23fcba:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {}
          │  │                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@0 (line 111)
          │╭ │   0x00007ff21f23fcbf:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007ff21f23fcfa
  12.70%  ││ │   0x00007ff21f23fcc2:   mov    0x10(%rsp),%rbp
   0.00%  ││ │   0x00007ff21f23fcc7:   add    $0x18,%rsp
   0.00%  ││ │↗  0x00007ff21f23fccb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││╭││  0x00007ff21f23fcd2:   ja     0x00007ff21f23fce6
   0.01%  │││││  0x00007ff21f23fcd8:   ret    
          ↘││││  0x00007ff21f23fcd9:   mov    %rbp,0x10(%rsp)
           ││││  0x00007ff21f23fcde:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           ││╰│  0x00007ff21f23fce3:   jmp    0x00007ff21f23fcba
           ││ │  0x00007ff21f23fce5:   hlt    
           │↘ ╰  0x00007ff21f23fce6:   lea    -0x22(%rip),%rcx        # 0x00007ff21f23fccb
           │     0x00007ff21f23fced:   mov    %rcx,0x468(%r15)
           │     0x00007ff21f23fcf4:   jmp    0x00007ff21ec36000           ;   {runtime_call SafepointBlob}
           │     0x00007ff21f23fcf9:   hlt    
           ↘     0x00007ff21f23fcfa:   movl   $0xfffffff5,0x484(%r15)
                 0x00007ff21f23fd05:   movq   $0x0,0x490(%r15)
....................................................................................................
  24.09%  <total for region 2>

....[Hottest Regions]...............................................................................
  73.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 998 
  24.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 994 
   0.69%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 1022 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 998 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 998 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  fileStream::write 
   0.96%  <...other 334 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 998 
  24.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 994 
   1.86%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 1022 
   0.04%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  _IO_fflush 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  printf_to_env 
   0.01%         libc-2.31.so  syscall 
   0.01%   libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.19%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.77%       jvmci, level 4
   1.86%               kernel
   0.17%            libjvm.so
   0.06%         libc-2.31.so
   0.04%                     
   0.03%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%     perf-2118165.map
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 66.67% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7721762.867 ns/op
# Warmup Iteration   2: 7657374.577 ns/op
# Warmup Iteration   3: 7656024.720 ns/op
# Warmup Iteration   4: 7649038.463 ns/op
# Warmup Iteration   5: 7646717.035 ns/op
Iteration   1: 7656521.993 ns/op
Iteration   2: 7661626.657 ns/op
Iteration   3: 7665155.295 ns/op
Iteration   4: 7654040.264 ns/op
Iteration   5: 7664936.658 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  7660456.173 ±(99.9%) 19269.404 ns/op [Average]
  (min, avg, max) = (7654040.264, 7660456.173, 7665155.295), stdev = 5004.203
  CI (99.9%): [7641186.770, 7679725.577] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:asm":
PrintAssembly processed: 216382 total address lines.
Perf output processed (skipped 60.320 seconds):
 Column 1: cycles (50700 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   6.50%         libc-2.31.so  __vfprintf_internal 
   5.91%            libjvm.so  stringStream::write 
   5.12%         libc-2.31.so  __strchrnul_avx2 
   3.99%         libc-2.31.so  __vsnprintf_internal 
   3.18%         libc-2.31.so  _IO_default_xsputn 
   2.77%         libc-2.31.so  __vfprintf_internal 
   2.73%         libc-2.31.so  __vfprintf_internal 
   2.57%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.44%            libjvm.so  frame::sender 
   2.44%         libc-2.31.so  __strchr_avx2 
   1.97%         libc-2.31.so  _IO_old_init 
   1.91%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.85%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.79%         libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.78%            libjvm.so  CodeBlob::is_upcall_stub 
   1.75%            libjvm.so  CodeHeap::find_blob 
   1.69%         libc-2.31.so  _IO_str_init_static_internal 
   1.51%            libjvm.so  Continuation::is_return_barrier_entry 
   1.46%         libc-2.31.so  __memmove_sse2_unaligned_erms 
   1.36%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
  45.29%  <...other 677 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  14.55%         libc-2.31.so  __vfprintf_internal 
   7.49%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.35%         libc-2.31.so  __strchrnul_avx2 
   6.00%            libjvm.so  stringStream::write 
   4.55%         libc-2.31.so  _IO_default_xsputn 
   3.99%         libc-2.31.so  __vsnprintf_internal 
   3.78%         libc-2.31.so  __strchr_avx2 
   3.31%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.99%            libjvm.so  frame::sender 
   2.14%            libjvm.so  outputStream::print 
   1.98%            libjvm.so  vframeStream::vframeStream 
   1.97%         libc-2.31.so  _IO_old_init 
   1.85%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.79%         libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.78%            libjvm.so  CodeBlob::is_upcall_stub 
   1.75%            libjvm.so  CodeHeap::find_blob 
   1.69%         libc-2.31.so  _IO_str_init_static_internal 
   1.55%               kernel  [unknown] 
   1.51%            libjvm.so  Continuation::is_return_barrier_entry 
   1.46%         libc-2.31.so  __memmove_sse2_unaligned_erms 
  27.53%  <...other 223 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  51.41%            libjvm.so
  44.32%         libc-2.31.so
   1.55%               kernel
   0.73%       jvmci, level 4
   0.53%           ld-2.31.so
   0.42%                     
   0.36%   libpthread-2.31.so
   0.24%               [vdso]
   0.16%     Unknown, level 0
   0.14%         runtime stub
   0.07%     perf-2118228.map
   0.03%  libjvmcicompiler.so
   0.02%          interpreter
   0.02%           libjava.so
   0.01%       hsdis-amd64.so
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 83.33% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15963756.474 ns/op
# Warmup Iteration   2: 15825482.051 ns/op
# Warmup Iteration   3: 15852362.873 ns/op
# Warmup Iteration   4: 15835123.959 ns/op
# Warmup Iteration   5: 15829668.873 ns/op
Iteration   1: 15818048.068 ns/op
Iteration   2: 15838754.557 ns/op
Iteration   3: 15819729.583 ns/op
Iteration   4: 15824669.111 ns/op
Iteration   5: 15842101.078 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  15828660.479 ±(99.9%) 42655.998 ns/op [Average]
  (min, avg, max) = (15818048.068, 15828660.479, 15842101.078), stdev = 11077.627
  CI (99.9%): [15786004.482, 15871316.477] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:asm":
PrintAssembly processed: 224161 total address lines.
Perf output processed (skipped 60.642 seconds):
 Column 1: cycles (50963 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   6.52%        libc-2.31.so  __vfprintf_internal 
   5.84%           libjvm.so  stringStream::write 
   5.16%        libc-2.31.so  __strchrnul_avx2 
   4.03%        libc-2.31.so  __vsnprintf_internal 
   3.38%        libc-2.31.so  _IO_default_xsputn 
   2.72%        libc-2.31.so  __vfprintf_internal 
   2.69%        libc-2.31.so  __vfprintf_internal 
   2.64%           libjvm.so  frame::sender 
   2.44%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.25%        libc-2.31.so  __strchr_avx2 
   2.07%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.98%        libc-2.31.so  _IO_old_init 
   1.97%           libjvm.so  CodeBlob::is_upcall_stub 
   1.75%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.74%           libjvm.so  CodeHeap::find_blob 
   1.66%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.60%        libc-2.31.so  _IO_str_init_static_internal 
   1.51%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.42%           libjvm.so  vframeStream::vframeStream 
   1.39%           libjvm.so  Continuation::is_return_barrier_entry 
  45.22%  <...other 691 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  14.46%        libc-2.31.so  __vfprintf_internal 
   7.68%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.38%        libc-2.31.so  __strchrnul_avx2 
   5.92%           libjvm.so  stringStream::write 
   4.79%        libc-2.31.so  _IO_default_xsputn 
   4.03%        libc-2.31.so  __vsnprintf_internal 
   3.53%        libc-2.31.so  __strchr_avx2 
   3.17%           libjvm.so  frame::sender 
   3.17%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.29%           libjvm.so  outputStream::print 
   2.16%              kernel  [unknown] 
   1.98%        libc-2.31.so  _IO_old_init 
   1.97%           libjvm.so  CodeBlob::is_upcall_stub 
   1.93%           libjvm.so  vframeStream::vframeStream 
   1.75%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.74%           libjvm.so  CodeHeap::find_blob 
   1.66%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.60%        libc-2.31.so  _IO_str_init_static_internal 
   1.39%           libjvm.so  Continuation::is_return_barrier_entry 
   1.39%        libc-2.31.so  __memmove_sse2_unaligned_erms 
  27.00%  <...other 214 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  51.11%           libjvm.so
  44.20%        libc-2.31.so
   2.16%              kernel
   0.57%          ld-2.31.so
   0.55%      jvmci, level 4
   0.36%                    
   0.31%              [vdso]
   0.28%  libpthread-2.31.so
   0.24%        runtime stub
   0.11%    Unknown, level 0
   0.05%    perf-2118290.map
   0.03%          libjava.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:21

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

Benchmark                                 (size)  (threshold)  Mode  Cnt         Score       Error  Units
NpeThrowBenchmark.explicit_throw_npe        1024          0.0  avgt    5      6752.720 ±    16.826  ns/op
NpeThrowBenchmark.explicit_throw_npe:asm    1024          0.0  avgt                NaN                ---
NpeThrowBenchmark.explicit_throw_npe        1024          0.5  avgt    5   2089177.587 ± 11665.506  ns/op
NpeThrowBenchmark.explicit_throw_npe:asm    1024          0.5  avgt                NaN                ---
NpeThrowBenchmark.explicit_throw_npe        1024          1.0  avgt    5   4333125.546 ± 18288.443  ns/op
NpeThrowBenchmark.explicit_throw_npe:asm    1024          1.0  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe        1024          0.0  avgt    5      6751.068 ±    11.498  ns/op
NpeThrowBenchmark.implicit_throw_npe:asm    1024          0.0  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe        1024          0.5  avgt    5   7660456.173 ± 19269.404  ns/op
NpeThrowBenchmark.implicit_throw_npe:asm    1024          0.5  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe        1024          1.0  avgt    5  15828660.479 ± 42655.998  ns/op
NpeThrowBenchmark.implicit_throw_npe:asm    1024          1.0  avgt                NaN                ---
