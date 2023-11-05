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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = false)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.138 ns/op
# Warmup Iteration   2: 6.981 ns/op
# Warmup Iteration   3: 7.000 ns/op
# Warmup Iteration   4: 6.966 ns/op
# Warmup Iteration   5: 6.973 ns/op
Iteration   1: 6.971 ns/op
Iteration   2: 6.965 ns/op
Iteration   3: 6.964 ns/op
Iteration   4: 6.966 ns/op
Iteration   5: 6.965 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  6.966 ±(99.9%) 0.010 ns/op [Average]
  (min, avg, max) = (6.964, 6.966, 6.971), stdev = 0.003
  CI (99.9%): [6.956, 6.977] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:·asm":
PrintAssembly processed: 194554 total address lines.
Perf output processed (skipped 58.665 seconds):
 Column 1: cycles (50749 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 734 

             #           [sp+0x20]  (sp of caller)
             0x00007fe63eff9800:   mov    0x8(%rsi),%r10d
             0x00007fe63eff9804:   movabs $0x800000000,%r12
             0x00007fe63eff980e:   add    %r12,%r10
             0x00007fe63eff9811:   xor    %r12,%r12
             0x00007fe63eff9814:   cmp    %r10,%rax
             0x00007fe63eff9817:   jne    0x00007fe6374ff780           ;   {runtime_call ic_miss_stub}
             0x00007fe63eff981d:   nop
             0x00007fe63eff981e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.05%     0x00007fe63eff9820:   mov    %eax,-0x14000(%rsp)
   6.39%     0x00007fe63eff9827:   sub    $0x18,%rsp
   0.03%     0x00007fe63eff982b:   mov    %rbp,0x10(%rsp)
   2.36%     0x00007fe63eff9830:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@1 (line 95)
   2.11%     0x00007fe63eff9833:   nopw   0x0(%rax,%rax,1)
   0.99%     0x00007fe63eff983c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
   0.04%     0x00007fe63eff9840:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007fe63eff9886
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.35%  ╭  0x00007fe63eff984b:   jne    0x00007fe63eff9869           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   5.55%  │  0x00007fe63eff9851:   mov    $0x1,%eax
          │  0x00007fe63eff9856:   mov    0x10(%rsp),%rbp
          │  0x00007fe63eff985b:   add    $0x18,%rsp
          │  0x00007fe63eff985f:   mov    0x348(%r15),%rcx
   5.46%  │  0x00007fe63eff9866:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007fe63eff9868:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@7 (line 95)
          ↘  0x00007fe63eff9869:   movl   $0xffffffdd,0x370(%r15)
             0x00007fe63eff9874:   movq   $0x0,0x378(%r15)             ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
             0x00007fe63eff987f:   nop
             0x00007fe63eff9880:   call   0x00007fe63750527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  49.31%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 757 

              0x00007fe63effdef5:   mov    0x18(%rsp),%rsi
              0x00007fe63effdefa:   nopw   0x0(%rax,%rax,1)
              0x00007fe63effdf00:   cmpb   $0x0,0x94(%rsi)
              0x00007fe63effdf07:   jne    0x00007fe63effdf8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
              0x00007fe63effdf0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fe63effdf16:   jmp    0x00007fe63effdf2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 186)
          │   0x00007fe63effdf1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
   5.49%  │↗  0x00007fe63effdf20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
          ││  0x00007fe63effdf27:   test   %eax,(%r11)                  ;   {poll}
   0.03%  ││  0x00007fe63effdf2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 186)
          ↘│  0x00007fe63effdf2f:   mov    0x8(%rsp),%r10
   5.25%   │  0x00007fe63effdf34:   mov    %r10,%rsi
           │  0x00007fe63effdf37:   call   0x00007fe6374ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
  10.14%   │  0x00007fe63effdf3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@20 (line 186)
           │  0x00007fe63effdf3d:   mov    0x20(%rsp),%r10
   4.40%   │  0x00007fe63effdf42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@26 (line 187)
   5.41%   │  0x00007fe63effdf45:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007fe63effdf4a:   cmpb   $0x0,0x94(%rsi)
  17.75%   ╰  0x00007fe63effdf51:   je     0x00007fe63effdf20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
              0x00007fe63effdf53:   mov    %r10,0x20(%rsp)
              0x00007fe63effdf58:   call   0x00007fe658afc6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe63effdf5d:   nop
              0x00007fe63effdf5e:   mov    0x10(%rsp),%rdx
              0x00007fe63effdf63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@40 (line 189)
              0x00007fe63effdf67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@46 (line 190)
              0x00007fe63effdf6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  48.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 734 
  48.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 757 
   0.69%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.98%  <...other 310 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 734 
  48.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 757 
   1.89%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  outputStream::print 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  __vfwprintf_internal 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  outputStream::update_position 
   0.00%            libjvm.so  os::vsnprintf 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.78%       jvmci, level 4
   1.89%               kernel
   0.14%            libjvm.so
   0.07%         libc-2.31.so
   0.07%                     
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = true)

# Run progress: 8.33% complete, ETA 00:20:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.651 ns/op
# Warmup Iteration   2: 14.912 ns/op
# Warmup Iteration   3: 14.785 ns/op
# Warmup Iteration   4: 14.793 ns/op
# Warmup Iteration   5: 14.806 ns/op
Iteration   1: 14.746 ns/op
Iteration   2: 14.784 ns/op
Iteration   3: 14.789 ns/op
Iteration   4: 14.813 ns/op
Iteration   5: 14.788 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  14.784 ±(99.9%) 0.093 ns/op [Average]
  (min, avg, max) = (14.746, 14.784, 14.813), stdev = 0.024
  CI (99.9%): [14.691, 14.877] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:·asm":
PrintAssembly processed: 193253 total address lines.
Perf output processed (skipped 58.640 seconds):
 Column 1: cycles (50581 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 741 

               #           [sp+0x20]  (sp of caller)
               0x00007f67f6ffb4c0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
               0x00007f67f6ffb4c4:   movabs $0x800000000,%r12
               0x00007f67f6ffb4ce:   add    %r12,%r10
               0x00007f67f6ffb4d1:   xor    %r12,%r12
               0x00007f67f6ffb4d4:   cmp    %r10,%rax
               0x00007f67f6ffb4d7:   jne    0x00007f67ef4ff780           ;   {runtime_call ic_miss_stub}
               0x00007f67f6ffb4dd:   nop
               0x00007f67f6ffb4de:   xchg   %ax,%ax
             [Verified Entry Point]
   1.77%       0x00007f67f6ffb4e0:   mov    %eax,-0x14000(%rsp)
   0.90%       0x00007f67f6ffb4e7:   sub    $0x18,%rsp
   1.89%       0x00007f67f6ffb4eb:   mov    %rbp,0x10(%rsp)
   0.04%       0x00007f67f6ffb4f0:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
   0.54%       0x00007f67f6ffb4f3:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f67f6ffb6b5
   7.55%       0x00007f67f6ffb4fb:   movabs $0x800000000,%r11
               0x00007f67f6ffb505:   lea    (%r11,%r10,1),%r8
   2.66%       0x00007f67f6ffb509:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
               0x00007f67f6ffb513:   cmp    0x20(%r8),%r11
          ╭    0x00007f67f6ffb517:   je     0x00007f67f6ffb52d
  15.15%  │    0x00007f67f6ffb51d:   data16 xchg %ax,%ax
          │    0x00007f67f6ffb520:   cmp    $0xc265e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │    0x00007f67f6ffb527:   jne    0x00007f67f6ffb5bd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   2.54%  ↘    0x00007f67f6ffb52d:   mov    0x8(,%rax,8),%r10d
               0x00007f67f6ffb535:   movabs $0x800000000,%r11
               0x00007f67f6ffb53f:   lea    (%r11,%r10,1),%r8
               0x00007f67f6ffb543:   movabs $0x800c267e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   2.64%       0x00007f67f6ffb54d:   cmp    0x20(%r8),%r11
           ╭   0x00007f67f6ffb551:   je     0x00007f67f6ffb56d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
           │   0x00007f67f6ffb557:   nopw   0x0(%rax,%rax,1)
           │   0x00007f67f6ffb560:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           │   0x00007f67f6ffb567:   jne    0x00007f67f6ffb605
   2.57%   ↘   0x00007f67f6ffb56d:   mov    0x8(,%rax,8),%eax
               0x00007f67f6ffb574:   movabs $0x800000000,%r10
               0x00007f67f6ffb57e:   lea    (%r10,%rax,1),%rax
               0x00007f67f6ffb582:   cmp    -0xe9(%rip),%rax        # 0x00007f67f6ffb4a0
                                                                         ;   {section_word}
   2.67%    ╭  0x00007f67f6ffb589:   je     0x00007f67f6ffb5a5
            │  0x00007f67f6ffb58f:   cmp    -0xee(%rip),%rax        # 0x00007f67f6ffb4a8
            │                                                            ;   {section_word}
            │  0x00007f67f6ffb596:   je     0x00007f67f6ffb657
            │  0x00007f67f6ffb59c:   nopl   0x0(%rax)
            │  0x00007f67f6ffb5a0:   jmp    0x00007f67f6ffb665
            ↘  0x00007f67f6ffb5a5:   mov    $0x1,%eax
               0x00007f67f6ffb5aa:   mov    0x10(%rsp),%rbp
               0x00007f67f6ffb5af:   add    $0x18,%rsp
   2.45%       0x00007f67f6ffb5b3:   mov    0x348(%r15),%rcx
....................................................................................................
  40.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 741 

                                                                          ;   {section_word}
   2.67%        0x00007f67f6ffb589:   je     0x00007f67f6ffb5a5
                0x00007f67f6ffb58f:   cmp    -0xee(%rip),%rax        # 0x00007f67f6ffb4a8
                                                                          ;   {section_word}
                0x00007f67f6ffb596:   je     0x00007f67f6ffb657
                0x00007f67f6ffb59c:   nopl   0x0(%rax)
                0x00007f67f6ffb5a0:   jmp    0x00007f67f6ffb665
                0x00007f67f6ffb5a5:   mov    $0x1,%eax
                0x00007f67f6ffb5aa:   mov    0x10(%rsp),%rbp
                0x00007f67f6ffb5af:   add    $0x18,%rsp
   2.45%        0x00007f67f6ffb5b3:   mov    0x348(%r15),%rcx
                0x00007f67f6ffb5ba:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%        0x00007f67f6ffb5bc:   ret    
                0x00007f67f6ffb5bd:   mov    0x28(%r8),%r10
                0x00007f67f6ffb5c1:   mov    (%r10),%r9d
   8.91%        0x00007f67f6ffb5c4:   mov    $0x0,%ecx
          ╭     0x00007f67f6ffb5c9:   jmp    0x00007f67f6ffb5fa
          │     0x00007f67f6ffb5ce:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007f67f6ffb5d9:   data16 data16 xchg %ax,%ax
          │     0x00007f67f6ffb5dd:   data16 xchg %ax,%ax
   2.52%  │↗    0x00007f67f6ffb5e0:   mov    %ecx,%ebx
          ││    0x00007f67f6ffb5e2:   shl    $0x3,%ebx
          ││    0x00007f67f6ffb5e5:   lea    0x8(%rbx),%ebx
          ││    0x00007f67f6ffb5e8:   movslq %ebx,%rbx
   2.65%  ││    0x00007f67f6ffb5eb:   mov    (%r10,%rbx,1),%rbx
          ││    0x00007f67f6ffb5ef:   cmp    %rbx,%r11
          ││    0x00007f67f6ffb5f2:   je     0x00007f67f6ffb645
          ││    0x00007f67f6ffb5f8:   inc    %ecx
          ↘│    0x00007f67f6ffb5fa:   cmp    %ecx,%r9d
           ╰    0x00007f67f6ffb5fd:   jg     0x00007f67f6ffb5e0
                0x00007f67f6ffb5ff:   nop
                0x00007f67f6ffb600:   jmp    0x00007f67f6ffb686           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
                0x00007f67f6ffb605:   mov    0x28(%r8),%r10
   2.63%        0x00007f67f6ffb609:   mov    (%r10),%r9d
   0.03%        0x00007f67f6ffb60c:   mov    $0x0,%ecx
            ╭   0x00007f67f6ffb611:   jmp    0x00007f67f6ffb63a
            │   0x00007f67f6ffb616:   data16 nopw 0x0(%rax,%rax,1)
   5.16%    │↗  0x00007f67f6ffb620:   mov    %ecx,%ebx
            ││  0x00007f67f6ffb622:   shl    $0x3,%ebx
   0.00%    ││  0x00007f67f6ffb625:   lea    0x8(%rbx),%ebx
            ││  0x00007f67f6ffb628:   movslq %ebx,%rbx
   5.10%    ││  0x00007f67f6ffb62b:   mov    (%r10,%rbx,1),%rbx
            ││  0x00007f67f6ffb62f:   cmp    %rbx,%r11
            ││  0x00007f67f6ffb632:   je     0x00007f67f6ffb64e
            ││  0x00007f67f6ffb638:   inc    %ecx
            ↘│  0x00007f67f6ffb63a:   cmp    %ecx,%r9d
             ╰  0x00007f67f6ffb63d:   jg     0x00007f67f6ffb620
                0x00007f67f6ffb63f:   nop
                0x00007f67f6ffb640:   jmp    0x00007f67f6ffb6a6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
                0x00007f67f6ffb645:   mov    %r11,0x20(%r8)
....................................................................................................
  29.46%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 5, compile id 754 

              0x00007f67f6fff775:   mov    0x18(%rsp),%rsi
              0x00007f67f6fff77a:   nopw   0x0(%rax,%rax,1)
              0x00007f67f6fff780:   cmpb   $0x0,0x94(%rsi)
              0x00007f67f6fff787:   jne    0x00007f67f6fff80e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
              0x00007f67f6fff78d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f67f6fff796:   jmp    0x00007f67f6fff7af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 186)
          │   0x00007f67f6fff79b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
   2.53%  │↗  0x00007f67f6fff7a0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
          ││  0x00007f67f6fff7a7:   test   %eax,(%r11)                  ;   {poll}
   1.81%  ││  0x00007f67f6fff7aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 186)
          ↘│  0x00007f67f6fff7af:   mov    0x8(%rsp),%r10
   0.73%   │  0x00007f67f6fff7b4:   mov    %r10,%rsi
           │  0x00007f67f6fff7b7:   call   0x00007f67ef4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f67f6fff7bc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@20 (line 186)
   2.52%   │  0x00007f67f6fff7bd:   mov    0x20(%rsp),%r10
   7.61%   │  0x00007f67f6fff7c2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@26 (line 187)
   2.41%   │  0x00007f67f6fff7c5:   mov    0x18(%rsp),%rsi
   0.12%   │  0x00007f67f6fff7ca:   cmpb   $0x0,0x94(%rsi)
  10.16%   ╰  0x00007f67f6fff7d1:   je     0x00007f67f6fff7a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
              0x00007f67f6fff7d3:   mov    %r10,0x20(%rsp)
              0x00007f67f6fff7d8:   call   0x00007f680ff5f6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f67f6fff7dd:   nop
              0x00007f67f6fff7de:   mov    0x10(%rsp),%rdx
              0x00007f67f6fff7e3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@40 (line 189)
              0x00007f67f6fff7e7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@46 (line 190)
              0x00007f67f6fff7ef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  27.89%  <total for region 3>

....[Hottest Regions]...............................................................................
  40.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 741 
  29.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 741 
  27.89%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 5, compile id 754 
   0.21%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.98%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 741 
  27.89%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 5, compile id 754 
   1.33%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.18%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.28%       jvmci, level 4
   1.33%               kernel
   0.18%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.02%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.00%          c1, level 3
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
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = false)

# Run progress: 16.67% complete, ETA 00:18:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.017 ns/op
# Warmup Iteration   2: 7.076 ns/op
# Warmup Iteration   3: 6.968 ns/op
# Warmup Iteration   4: 6.978 ns/op
# Warmup Iteration   5: 6.965 ns/op
Iteration   1: 6.965 ns/op
Iteration   2: 6.966 ns/op
Iteration   3: 6.969 ns/op
Iteration   4: 6.965 ns/op
Iteration   5: 6.963 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  6.966 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (6.963, 6.966, 6.969), stdev = 0.002
  CI (99.9%): [6.957, 6.974] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:·asm":
PrintAssembly processed: 193652 total address lines.
Perf output processed (skipped 58.634 seconds):
 Column 1: cycles (100989 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 5, compile id 752 

              0x00007fdd2afffbf5:   mov    0x18(%rsp),%rsi
              0x00007fdd2afffbfa:   nopw   0x0(%rax,%rax,1)
              0x00007fdd2afffc00:   cmpb   $0x0,0x94(%rsi)
              0x00007fdd2afffc07:   jne    0x00007fdd2afffc8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 188)
              0x00007fdd2afffc0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fdd2afffc16:   jmp    0x00007fdd2afffc2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@13 (line 186)
          │   0x00007fdd2afffc1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 188)
   5.46%  │↗  0x00007fdd2afffc20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 188)
          ││  0x00007fdd2afffc27:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007fdd2afffc2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@13 (line 186)
          ↘│  0x00007fdd2afffc2f:   mov    0x8(%rsp),%r10
   5.42%   │  0x00007fdd2afffc34:   mov    %r10,%rsi
           │  0x00007fdd2afffc37:   call   0x00007fdd234ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
   8.15%   │  0x00007fdd2afffc3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@20 (line 186)
   0.80%   │  0x00007fdd2afffc3d:   mov    0x20(%rsp),%r10
   3.77%   │  0x00007fdd2afffc42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@26 (line 187)
   5.19%   │  0x00007fdd2afffc45:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007fdd2afffc4a:   cmpb   $0x0,0x94(%rsi)
  25.00%   ╰  0x00007fdd2afffc51:   je     0x00007fdd2afffc20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 188)
              0x00007fdd2afffc53:   mov    %r10,0x20(%rsp)
              0x00007fdd2afffc58:   call   0x00007fdd448ac6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fdd2afffc5d:   nop
              0x00007fdd2afffc5e:   mov    0x10(%rsp),%rdx
              0x00007fdd2afffc63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@40 (line 189)
              0x00007fdd2afffc67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@46 (line 190)
              0x00007fdd2afffc6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  53.80%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 739 

             #           [sp+0x20]  (sp of caller)
             0x00007fdd2affc280:   mov    0x8(%rsi),%r10d
             0x00007fdd2affc284:   movabs $0x800000000,%r12
             0x00007fdd2affc28e:   add    %r12,%r10
             0x00007fdd2affc291:   xor    %r12,%r12
             0x00007fdd2affc294:   cmp    %r10,%rax
             0x00007fdd2affc297:   jne    0x00007fdd234ff780           ;   {runtime_call ic_miss_stub}
             0x00007fdd2affc29d:   nop
             0x00007fdd2affc29e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.01%     0x00007fdd2affc2a0:   mov    %eax,-0x14000(%rsp)
   6.24%     0x00007fdd2affc2a7:   sub    $0x18,%rsp
   0.00%     0x00007fdd2affc2ab:   mov    %rbp,0x10(%rsp)
   2.04%     0x00007fdd2affc2b0:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@1 (line 102)
   2.78%     0x00007fdd2affc2b3:   nopw   0x0(%rax,%rax,1)
   0.78%     0x00007fdd2affc2bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
   0.00%     0x00007fdd2affc2c0:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007fdd2affc306
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  22.50%  ╭  0x00007fdd2affc2cb:   jne    0x00007fdd2affc2e9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   4.77%  │  0x00007fdd2affc2d1:   mov    $0x1,%eax
          │  0x00007fdd2affc2d6:   mov    0x10(%rsp),%rbp
          │  0x00007fdd2affc2db:   add    $0x18,%rsp
   0.74%  │  0x00007fdd2affc2df:   mov    0x348(%r15),%rcx
   4.80%  │  0x00007fdd2affc2e6:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007fdd2affc2e8:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@7 (line 102)
          ↘  0x00007fdd2affc2e9:   movl   $0xffffffdd,0x370(%r15)
             0x00007fdd2affc2f4:   movq   $0x0,0x378(%r15)             ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
             0x00007fdd2affc2ff:   nop
             0x00007fdd2affc300:   call   0x00007fdd2350527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  44.67%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 5, compile id 752 
  44.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 739 
   0.63%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.51%  <...other 314 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 5, compile id 752 
  44.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 739 
   1.35%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.01%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  HighResTimeSampler::take_sample 
   0.00%               [vdso]  __vdso_clock_gettime 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%            libjvm.so  jio_print 
   0.00%            libjvm.so  os::vsnprintf 
   0.09%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.46%       jvmci, level 4
   1.35%               kernel
   0.08%            libjvm.so
   0.05%         libc-2.31.so
   0.02%                     
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.00%   libpthread-2.31.so
   0.00%               [vdso]
   0.00%          c1, level 3
   0.00%     Unknown, level 0
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
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = true)

# Run progress: 25.00% complete, ETA 00:16:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 40.330 ns/op
# Warmup Iteration   2: 43.022 ns/op
# Warmup Iteration   3: 39.857 ns/op
# Warmup Iteration   4: 53.336 ns/op
# Warmup Iteration   5: 41.101 ns/op
Iteration   1: 53.111 ns/op
Iteration   2: 62.355 ns/op
Iteration   3: 53.374 ns/op
Iteration   4: 52.879 ns/op
Iteration   5: 43.952 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  53.134 ±(99.9%) 25.063 ns/op [Average]
  (min, avg, max) = (43.952, 53.134, 62.355), stdev = 6.509
  CI (99.9%): [28.071, 78.197] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:·asm":
PrintAssembly processed: 193940 total address lines.
Perf output processed (skipped 58.634 seconds):
 Column 1: cycles (100418 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 743 

                            #           [sp+0x20]  (sp of caller)
                            0x00007f5042ffc2c0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                            0x00007f5042ffc2c4:   movabs $0x800000000,%r12
                            0x00007f5042ffc2ce:   add    %r12,%r10
                            0x00007f5042ffc2d1:   xor    %r12,%r12
                            0x00007f5042ffc2d4:   cmp    %r10,%rax
                            0x00007f5042ffc2d7:   jne    0x00007f503b4ff780           ;   {runtime_call ic_miss_stub}
                            0x00007f5042ffc2dd:   nop
                            0x00007f5042ffc2de:   xchg   %ax,%ax
                          [Verified Entry Point]
   0.77%                    0x00007f5042ffc2e0:   mov    %eax,-0x14000(%rsp)
   0.01%                    0x00007f5042ffc2e7:   sub    $0x18,%rsp
   0.70%                    0x00007f5042ffc2eb:   mov    %rbp,0x10(%rsp)
   0.01%                    0x00007f5042ffc2f0:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
   0.00%                    0x00007f5042ffc2f3:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f5042ffc4b5
   0.06%                    0x00007f5042ffc2fb:   movabs $0x800000000,%r11
   0.77%                    0x00007f5042ffc305:   lea    (%r11,%r10,1),%r8
   0.02%                    0x00007f5042ffc309:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                            0x00007f5042ffc313:   cmp    0x20(%r8),%r11
          ╭                 0x00007f5042ffc317:   je     0x00007f5042ffc32d
  19.36%  │                 0x00007f5042ffc31d:   data16 xchg %ax,%ax
   0.24%  │                 0x00007f5042ffc320:   cmp    $0xc265e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │╭                0x00007f5042ffc327:   jne    0x00007f5042ffc3bd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   4.12%  ↘│           ↗    0x00007f5042ffc32d:   mov    0x8(,%rax,8),%r10d
   0.21%   │           │    0x00007f5042ffc335:   movabs $0x800000000,%r11
           │           │    0x00007f5042ffc33f:   lea    (%r11,%r10,1),%r8
   0.03%   │           │    0x00007f5042ffc343:   movabs $0x800c267e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.71%   │           │    0x00007f5042ffc34d:   cmp    0x20(%r8),%r11
           │╭          │    0x00007f5042ffc351:   je     0x00007f5042ffc36d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           ││          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   1.23%   ││          │    0x00007f5042ffc357:   nopw   0x0(%rax,%rax,1)
   0.00%   ││          │    0x00007f5042ffc360:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           ││╭         │    0x00007f5042ffc367:   jne    0x00007f5042ffc405
   1.87%   │↘│         │↗   0x00007f5042ffc36d:   mov    0x8(,%rax,8),%eax
   0.00%   │ │         ││   0x00007f5042ffc374:   movabs $0x800000000,%r10
           │ │         ││   0x00007f5042ffc37e:   lea    (%r10,%rax,1),%rax
           │ │         ││   0x00007f5042ffc382:   cmp    -0xe9(%rip),%rax        # 0x00007f5042ffc2a0
           │ │         ││                                                             ;   {section_word}
   0.70%   │ │╭        ││   0x00007f5042ffc389:   je     0x00007f5042ffc3a5
           │ ││        ││   0x00007f5042ffc38f:   cmp    -0xee(%rip),%rax        # 0x00007f5042ffc2a8
           │ ││        ││                                                             ;   {section_word}
           │ ││╭       ││   0x00007f5042ffc396:   je     0x00007f5042ffc457
           │ │││       ││   0x00007f5042ffc39c:   nopl   0x0(%rax)
           │ │││╭      ││   0x00007f5042ffc3a0:   jmp    0x00007f5042ffc465
   0.00%   │ │↘││      ││   0x00007f5042ffc3a5:   mov    $0x1,%eax
           │ │ ││      ││↗  0x00007f5042ffc3aa:   mov    0x10(%rsp),%rbp
           │ │ ││      │││  0x00007f5042ffc3af:   add    $0x18,%rsp
   0.79%   │ │ ││      │││  0x00007f5042ffc3b3:   mov    0x348(%r15),%rcx
   0.00%   │ │ ││      │││  0x00007f5042ffc3ba:   test   %eax,(%rcx)                  ;   {poll_return}
   0.03%   │ │ ││      │││  0x00007f5042ffc3bc:   ret    
           ↘ │ ││      │││  0x00007f5042ffc3bd:   mov    0x28(%r8),%r10
  53.41%     │ ││      │││  0x00007f5042ffc3c1:   mov    (%r10),%r9d
   2.87%     │ ││      │││  0x00007f5042ffc3c4:   mov    $0x0,%ecx
   0.19%     │ ││╭     │││  0x00007f5042ffc3c9:   jmp    0x00007f5042ffc3fa
             │ │││     │││  0x00007f5042ffc3ce:   data16 data16 nopw 0x0(%rax,%rax,1)
             │ │││     │││  0x00007f5042ffc3d9:   data16 data16 xchg %ax,%ax
             │ │││     │││  0x00007f5042ffc3dd:   data16 xchg %ax,%ax
   0.70%     │ │││ ↗   │││  0x00007f5042ffc3e0:   mov    %ecx,%ebx
             │ │││ │   │││  0x00007f5042ffc3e2:   shl    $0x3,%ebx
             │ │││ │   │││  0x00007f5042ffc3e5:   lea    0x8(%rbx),%ebx
             │ │││ │   │││  0x00007f5042ffc3e8:   movslq %ebx,%rbx
   0.73%     │ │││ │   │││  0x00007f5042ffc3eb:   mov    (%r10,%rbx,1),%rbx
   0.00%     │ │││ │   │││  0x00007f5042ffc3ef:   cmp    %rbx,%r11
             │ │││╭│   │││  0x00007f5042ffc3f2:   je     0x00007f5042ffc445
             │ │││││   │││  0x00007f5042ffc3f8:   inc    %ecx
             │ ││↘││   │││  0x00007f5042ffc3fa:   cmp    %ecx,%r9d
             │ ││ │╰   │││  0x00007f5042ffc3fd:   jg     0x00007f5042ffc3e0
             │ ││ │    │││  0x00007f5042ffc3ff:   nop
             │ ││ │    │││  0x00007f5042ffc400:   jmp    0x00007f5042ffc486           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │ ││ │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
             │ ││ │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.01%     ↘ ││ │    │││  0x00007f5042ffc405:   mov    0x28(%r8),%r10
   3.87%       ││ │    │││  0x00007f5042ffc409:   mov    (%r10),%r9d
   0.20%       ││ │    │││  0x00007f5042ffc40c:   mov    $0x0,%ecx
               ││ │ ╭  │││  0x00007f5042ffc411:   jmp    0x00007f5042ffc43a
               ││ │ │  │││  0x00007f5042ffc416:   data16 nopw 0x0(%rax,%rax,1)
   1.43%       ││ │ │ ↗│││  0x00007f5042ffc420:   mov    %ecx,%ebx
               ││ │ │ ││││  0x00007f5042ffc422:   shl    $0x3,%ebx
   0.01%       ││ │ │ ││││  0x00007f5042ffc425:   lea    0x8(%rbx),%ebx
               ││ │ │ ││││  0x00007f5042ffc428:   movslq %ebx,%rbx
   1.44%       ││ │ │ ││││  0x00007f5042ffc42b:   mov    (%r10,%rbx,1),%rbx
               ││ │ │ ││││  0x00007f5042ffc42f:   cmp    %rbx,%r11
               ││ │ │╭││││  0x00007f5042ffc432:   je     0x00007f5042ffc44e
   0.01%       ││ │ ││││││  0x00007f5042ffc438:   inc    %ecx
               ││ │ ↘│││││  0x00007f5042ffc43a:   cmp    %ecx,%r9d
               ││ │  │╰│││  0x00007f5042ffc43d:   jg     0x00007f5042ffc420
               ││ │  │ │││  0x00007f5042ffc43f:   nop
               ││ │  │ │││  0x00007f5042ffc440:   jmp    0x00007f5042ffc4a6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
               ││ │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
               ││ │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.02%       ││ ↘  │ │││  0x00007f5042ffc445:   mov    %r11,0x20(%r8)
               ││    │ ╰││  0x00007f5042ffc449:   jmp    0x00007f5042ffc32d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
               ││    │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
               ││    │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.01%       ││    ↘  ││  0x00007f5042ffc44e:   mov    %r11,0x20(%r8)
   0.00%       ││       ╰│  0x00007f5042ffc452:   jmp    0x00007f5042ffc36d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
               ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
               ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
               ↘│        │  0x00007f5042ffc457:   mov    $0x0,%eax
                │        │  0x00007f5042ffc45c:   nopl   0x0(%rax)
                │        ╰  0x00007f5042ffc460:   jmp    0x00007f5042ffc3aa           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@7 (line 102)
                ↘           0x00007f5042ffc465:   mov    $0x614,%r11
                            0x00007f5042ffc46c:   mov    $0xffffffcd,%r10d
                            0x00007f5042ffc472:   mov    %r10d,0x370(%r15)            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
....................................................................................................
  96.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 743 
   2.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 5, compile id 757 
   0.24%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.48%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 743 
   2.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 5, compile id 757 
   0.87%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.01%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%            libjvm.so  fileStream::write 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%            libjvm.so  outputStream::print 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  _int_malloc 
   0.00%            libjvm.so  fwrite@plt 
   0.00%         libc-2.31.so  __malloc_fork_unlock_parent 
   0.00%            libjvm.so  defaultStream::write 
   0.08%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.96%       jvmci, level 4
   0.87%               kernel
   0.06%            libjvm.so
   0.04%         libc-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%     Unknown, level 0
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
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = false)

# Run progress: 33.33% complete, ETA 00:14:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.084 ±(99.9%) 1.435 ns/op
# Warmup Iteration   2: 7.031 ±(99.9%) 0.186 ns/op
# Warmup Iteration   3: 7.034 ±(99.9%) 0.315 ns/op
# Warmup Iteration   4: 6.987 ±(99.9%) 0.221 ns/op
# Warmup Iteration   5: 6.969 ±(99.9%) 0.015 ns/op
Iteration   1: 7.060 ±(99.9%) 0.155 ns/op
Iteration   2: 6.965 ±(99.9%) 0.023 ns/op
Iteration   3: 6.963 ±(99.9%) 0.015 ns/op
Iteration   4: 6.963 ±(99.9%) 0.004 ns/op
Iteration   5: 6.968 ±(99.9%) 0.116 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  6.983 ±(99.9%) 0.164 ns/op [Average]
  (min, avg, max) = (6.963, 6.983, 7.060), stdev = 0.043
  CI (99.9%): [6.819, 7.148] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:·asm":
PrintAssembly processed: 194739 total address lines.
Perf output processed (skipped 58.584 seconds):
 Column 1: cycles (150062 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 759 

              0x00007f9b5b0000f5:   mov    0x18(%rsp),%rsi
              0x00007f9b5b0000fa:   nopw   0x0(%rax,%rax,1)
              0x00007f9b5b000100:   cmpb   $0x0,0x94(%rsi)
              0x00007f9b5b000107:   jne    0x00007f9b5b00018e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 188)
              0x00007f9b5b00010d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f9b5b000116:   jmp    0x00007f9b5b00012f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@13 (line 186)
          │   0x00007f9b5b00011b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 188)
   5.45%  │↗  0x00007f9b5b000120:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 188)
          ││  0x00007f9b5b000127:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007f9b5b00012a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@13 (line 186)
          ↘│  0x00007f9b5b00012f:   mov    0x8(%rsp),%r10
   5.58%   │  0x00007f9b5b000134:   mov    %r10,%rsi
           │  0x00007f9b5b000137:   call   0x00007f9b534ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
   9.99%   │  0x00007f9b5b00013c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@20 (line 186)
           │  0x00007f9b5b00013d:   mov    0x20(%rsp),%r10
   4.65%   │  0x00007f9b5b000142:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@26 (line 187)
   5.49%   │  0x00007f9b5b000145:   mov    0x18(%rsp),%rsi
           │  0x00007f9b5b00014a:   cmpb   $0x0,0x94(%rsi)
  18.49%   ╰  0x00007f9b5b000151:   je     0x00007f9b5b000120           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 188)
              0x00007f9b5b000153:   mov    %r10,0x20(%rsp)
              0x00007f9b5b000158:   call   0x00007f9b7145a6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f9b5b00015d:   nop
              0x00007f9b5b00015e:   mov    0x10(%rsp),%rdx
              0x00007f9b5b000163:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@40 (line 189)
              0x00007f9b5b000167:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@46 (line 190)
              0x00007f9b5b00016f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 733 

             #           [sp+0x20]  (sp of caller)
             0x00007f9b5affc580:   mov    0x8(%rsi),%r10d
             0x00007f9b5affc584:   movabs $0x800000000,%r12
             0x00007f9b5affc58e:   add    %r12,%r10
             0x00007f9b5affc591:   xor    %r12,%r12
             0x00007f9b5affc594:   cmp    %r10,%rax
             0x00007f9b5affc597:   jne    0x00007f9b534ff780           ;   {runtime_call ic_miss_stub}
             0x00007f9b5affc59d:   nop
             0x00007f9b5affc59e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.01%     0x00007f9b5affc5a0:   mov    %eax,-0x14000(%rsp)
   6.39%     0x00007f9b5affc5a7:   sub    $0x18,%rsp
   0.01%     0x00007f9b5affc5ab:   mov    %rbp,0x10(%rsp)
   2.46%     0x00007f9b5affc5b0:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@1 (line 109)
   2.13%     0x00007f9b5affc5b3:   nopw   0x0(%rax,%rax,1)
   0.92%     0x00007f9b5affc5bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
   0.01%     0x00007f9b5affc5c0:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f9b5affc606
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.44%  ╭  0x00007f9b5affc5cb:   jne    0x00007f9b5affc5e9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   5.54%  │  0x00007f9b5affc5d1:   mov    $0x1,%eax
          │  0x00007f9b5affc5d6:   mov    0x10(%rsp),%rbp
   0.00%  │  0x00007f9b5affc5db:   add    $0x18,%rsp
          │  0x00007f9b5affc5df:   mov    0x348(%r15),%rcx
   5.55%  │  0x00007f9b5affc5e6:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007f9b5affc5e8:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@7 (line 109)
          ↘  0x00007f9b5affc5e9:   movl   $0xffffffdd,0x370(%r15)
             0x00007f9b5affc5f4:   movq   $0x0,0x378(%r15)             ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
             0x00007f9b5affc5ff:   nop
             0x00007f9b5affc600:   call   0x00007f9b5350527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  49.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 759 
  49.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 733 
   0.31%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.36%  <...other 341 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 759 
  49.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 733 
   0.76%               kernel  [unknown] 
   0.01%         libc-2.31.so  [unknown] 
   0.01%                       <unknown> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%            libjvm.so  HighResTimeSampler::take_sample 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%            libjvm.so  defaultStream::write 
   0.05%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.13%       jvmci, level 4
   0.76%               kernel
   0.05%            libjvm.so
   0.03%         libc-2.31.so
   0.01%   libpthread-2.31.so
   0.01%                     
   0.00%  libjvmcicompiler.so
   0.00%          interpreter
   0.00%       hsdis-amd64.so
   0.00%           ld-2.31.so
   0.00%               [vdso]
   0.00%     Unknown, level 0
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
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = true)

# Run progress: 41.67% complete, ETA 00:13:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 73.815 ±(99.9%) 166.564 ns/op
# Warmup Iteration   2: 84.583 ±(99.9%) 339.577 ns/op
# Warmup Iteration   3: 93.231 ±(99.9%) 398.732 ns/op
# Warmup Iteration   4: 82.340 ±(99.9%) 337.376 ns/op
# Warmup Iteration   5: 83.447 ±(99.9%) 335.981 ns/op
Iteration   1: 93.247 ±(99.9%) 400.221 ns/op
Iteration   2: 83.082 ±(99.9%) 397.460 ns/op
Iteration   3: 84.506 ±(99.9%) 353.111 ns/op
Iteration   4: 73.611 ±(99.9%) 386.857 ns/op
Iteration   5: 84.114 ±(99.9%) 309.936 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  83.712 ±(99.9%) 26.826 ns/op [Average]
  (min, avg, max) = (73.611, 83.712, 93.247), stdev = 6.967
  CI (99.9%): [56.886, 110.538] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:·asm":
PrintAssembly processed: 193006 total address lines.
Perf output processed (skipped 58.658 seconds):
 Column 1: cycles (150262 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 743 

                            #           [sp+0x20]  (sp of caller)
                            0x00007f1c0affb240:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                            0x00007f1c0affb244:   movabs $0x800000000,%r12
                            0x00007f1c0affb24e:   add    %r12,%r10
                            0x00007f1c0affb251:   xor    %r12,%r12
                            0x00007f1c0affb254:   cmp    %r10,%rax
                            0x00007f1c0affb257:   jne    0x00007f1c034ff780           ;   {runtime_call ic_miss_stub}
                            0x00007f1c0affb25d:   nop
                            0x00007f1c0affb25e:   xchg   %ax,%ax
                          [Verified Entry Point]
   0.46%                    0x00007f1c0affb260:   mov    %eax,-0x14000(%rsp)
   0.00%                    0x00007f1c0affb267:   sub    $0x18,%rsp
   0.47%                    0x00007f1c0affb26b:   mov    %rbp,0x10(%rsp)
                            0x00007f1c0affb270:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
                            0x00007f1c0affb273:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f1c0affb423
   0.00%                    0x00007f1c0affb27b:   movabs $0x800000000,%r11
   0.49%                    0x00007f1c0affb285:   lea    (%r11,%r10,1),%r8
   0.00%                    0x00007f1c0affb289:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                            0x00007f1c0affb293:   cmp    0x20(%r8),%r11
          ╭                 0x00007f1c0affb297:   je     0x00007f1c0affb2ad
  11.71%  │                 0x00007f1c0affb29d:   data16 xchg %ax,%ax
   0.15%  │                 0x00007f1c0affb2a0:   cmp    $0xc265e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │╭                0x00007f1c0affb2a7:   jne    0x00007f1c0affb385           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.68%  ↘│             ↗  0x00007f1c0affb2ad:   mov    0x8(,%rax,8),%r10d
   0.01%   │             │  0x00007f1c0affb2b5:   movabs $0x800000000,%r11
           │             │  0x00007f1c0affb2bf:   lea    (%r11,%r10,1),%r8
   0.00%   │             │  0x00007f1c0affb2c3:   movabs $0x800c267e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.46%   │             │  0x00007f1c0affb2cd:   cmp    0x20(%r8),%r11
           │╭            │  0x00007f1c0affb2d1:   je     0x00007f1c0affb2ed
   1.15%   ││            │  0x00007f1c0affb2d7:   nopw   0x0(%rax,%rax,1)
           ││            │  0x00007f1c0affb2e0:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           ││╭           │  0x00007f1c0affb2e7:   jne    0x00007f1c0affb344
   0.58%   │↘│          ↗│  0x00007f1c0affb2ed:   mov    0x8(,%rax,8),%eax
   0.00%   │ │          ││  0x00007f1c0affb2f4:   movabs $0x800000000,%r10
           │ │          ││  0x00007f1c0affb2fe:   lea    (%r10,%rax,1),%rax
   0.00%   │ │          ││  0x00007f1c0affb302:   cmp    -0xe9(%rip),%rax        # 0x00007f1c0affb220
           │ │          ││                                                            ;   {section_word}
   0.47%   │ │╭         ││  0x00007f1c0affb309:   je     0x00007f1c0affb325
           │ ││         ││  0x00007f1c0affb30f:   cmp    -0xee(%rip),%rax        # 0x00007f1c0affb228
           │ ││         ││                                                            ;   {section_word}
           │ ││╭        ││  0x00007f1c0affb316:   je     0x00007f1c0affb33d
           │ │││        ││  0x00007f1c0affb31c:   nopl   0x0(%rax)
           │ │││        ││  0x00007f1c0affb320:   jmp    0x00007f1c0affb414
   0.00%   │ │↘│        ││  0x00007f1c0affb325:   mov    $0x1,%eax
           │ │ │↗       ││  0x00007f1c0affb32a:   mov    0x10(%rsp),%rbp
           │ │ ││       ││  0x00007f1c0affb32f:   add    $0x18,%rsp
   0.45%   │ │ ││       ││  0x00007f1c0affb333:   mov    0x348(%r15),%rcx
   0.00%   │ │ ││       ││  0x00007f1c0affb33a:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%   │ │ ││       ││  0x00007f1c0affb33c:   ret    
           │ │ ↘│       ││  0x00007f1c0affb33d:   mov    $0x0,%eax
           │ │  ╰       ││  0x00007f1c0affb342:   jmp    0x00007f1c0affb32a
   0.00%   │ ↘          ││  0x00007f1c0affb344:   mov    0x28(%r8),%r10
   9.61%   │            ││  0x00007f1c0affb348:   mov    (%r10),%r9d
   0.24%   │            ││  0x00007f1c0affb34b:   mov    $0x0,%ecx
           │     ╭      ││  0x00007f1c0affb350:   jmp    0x00007f1c0affb37a
           │     │      ││  0x00007f1c0affb355:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.96%   │     │ ↗    ││  0x00007f1c0affb360:   mov    %ecx,%ebx
           │     │ │    ││  0x00007f1c0affb362:   shl    $0x3,%ebx
   0.02%   │     │ │    ││  0x00007f1c0affb365:   lea    0x8(%rbx),%ebx
           │     │ │    ││  0x00007f1c0affb368:   movslq %ebx,%rbx
   0.95%   │     │ │    ││  0x00007f1c0affb36b:   mov    (%r10,%rbx,1),%rbx
           │     │ │    ││  0x00007f1c0affb36f:   cmp    %rbx,%r11
           │     │╭│    ││  0x00007f1c0affb372:   je     0x00007f1c0affb3c5
   0.02%   │     │││    ││  0x00007f1c0affb378:   inc    %ecx
   0.00%   │     ↘││    ││  0x00007f1c0affb37a:   cmp    %ecx,%r9d
           │      │╰    ││  0x00007f1c0affb37d:   jg     0x00007f1c0affb360
           │      │     ││  0x00007f1c0affb37f:   nop
           │      │ ╭   ││  0x00007f1c0affb380:   jmp    0x00007f1c0affb3d7           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │      │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │      │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.00%   ↘      │ │   ││  0x00007f1c0affb385:   mov    0x28(%r8),%r10
  65.94%          │ │   ││  0x00007f1c0affb389:   mov    (%r10),%r9d
   1.81%          │ │   ││  0x00007f1c0affb38c:   mov    $0x0,%ecx
   0.13%          │ │╭  ││  0x00007f1c0affb391:   jmp    0x00007f1c0affb3ba
                  │ ││  ││  0x00007f1c0affb396:   data16 nopw 0x0(%rax,%rax,1)
   0.46%          │ ││ ↗││  0x00007f1c0affb3a0:   mov    %ecx,%ebx
                  │ ││ │││  0x00007f1c0affb3a2:   shl    $0x3,%ebx
                  │ ││ │││  0x00007f1c0affb3a5:   lea    0x8(%rbx),%ebx
                  │ ││ │││  0x00007f1c0affb3a8:   movslq %ebx,%rbx
   0.50%          │ ││ │││  0x00007f1c0affb3ab:   mov    (%r10,%rbx,1),%rbx
   0.00%          │ ││ │││  0x00007f1c0affb3af:   cmp    %rbx,%r11
                  │ ││╭│││  0x00007f1c0affb3b2:   je     0x00007f1c0affb3ce
                  │ ││││││  0x00007f1c0affb3b8:   inc    %ecx
                  │ │↘││││  0x00007f1c0affb3ba:   cmp    %ecx,%r9d
                  │ │ │╰││  0x00007f1c0affb3bd:   jg     0x00007f1c0affb3a0
                  │ │ │ ││  0x00007f1c0affb3bf:   nop
                  │ │ │ ││  0x00007f1c0affb3c0:   jmp    0x00007f1c0affb3f8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
                  │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.02%          ↘ │ │ ││  0x00007f1c0affb3c5:   mov    %r11,0x20(%r8)
                    │ │ ╰│  0x00007f1c0affb3c9:   jmp    0x00007f1c0affb2ed           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                    │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
                    │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.00%            │ ↘  │  0x00007f1c0affb3ce:   mov    %r11,0x20(%r8)
                    │    ╰  0x00007f1c0affb3d2:   jmp    0x00007f1c0affb2ad           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
                    ↘       0x00007f1c0affb3d7:   mov    $0x0,%r11
                            0x00007f1c0affb3de:   mov    $0xffffffdd,%r10d
                            0x00007f1c0affb3e4:   mov    %r10d,0x370(%r15)            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
....................................................................................................
  97.75%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 743 
   1.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 5, compile id 759 
   0.23%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.38%  <...other 380 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 743 
   1.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 5, compile id 759 
   0.71%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  [unknown] 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%              [vdso]  __vdso_clock_gettime 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __strncat_ssse3 
   0.00%           libjvm.so  stringStream::write 
   0.00%         interpreter  invokevirtual  182 invokevirtual  
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%      hsdis-amd64.so  fetch_data 
   0.06%  <...other 83 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.17%      jvmci, level 4
   0.71%              kernel
   0.05%           libjvm.so
   0.02%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%                    
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%              [vdso]
   0.00%     perf-115567.map
   0.00%    Unknown, level 0
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
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = false)

# Run progress: 50.00% complete, ETA 00:11:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.054 ±(99.9%) 0.120 ns/op
# Warmup Iteration   2: 6.997 ±(99.9%) 0.263 ns/op
# Warmup Iteration   3: 7.130 ±(99.9%) 0.269 ns/op
# Warmup Iteration   4: 6.965 ±(99.9%) 0.021 ns/op
# Warmup Iteration   5: 6.965 ±(99.9%) 0.023 ns/op
Iteration   1: 6.965 ±(99.9%) 0.028 ns/op
Iteration   2: 6.970 ±(99.9%) 0.054 ns/op
Iteration   3: 6.970 ±(99.9%) 0.045 ns/op
Iteration   4: 6.972 ±(99.9%) 0.046 ns/op
Iteration   5: 6.964 ±(99.9%) 0.013 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  6.968 ±(99.9%) 0.014 ns/op [Average]
  (min, avg, max) = (6.964, 6.968, 6.972), stdev = 0.004
  CI (99.9%): [6.955, 6.982] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:·asm":
PrintAssembly processed: 200386 total address lines.
Perf output processed (skipped 58.804 seconds):
 Column 1: cycles (200891 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 738 

             #           [sp+0x20]  (sp of caller)
             0x00007fa56effc280:   mov    0x8(%rsi),%r10d
             0x00007fa56effc284:   movabs $0x800000000,%r12
             0x00007fa56effc28e:   add    %r12,%r10
             0x00007fa56effc291:   xor    %r12,%r12
             0x00007fa56effc294:   cmp    %r10,%rax
             0x00007fa56effc297:   jne    0x00007fa5674ff780           ;   {runtime_call ic_miss_stub}
             0x00007fa56effc29d:   nop
             0x00007fa56effc29e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.01%     0x00007fa56effc2a0:   mov    %eax,-0x14000(%rsp)
   6.46%     0x00007fa56effc2a7:   sub    $0x18,%rsp
   0.01%     0x00007fa56effc2ab:   mov    %rbp,0x10(%rsp)
   2.51%     0x00007fa56effc2b0:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@1 (line 116)
   2.07%     0x00007fa56effc2b3:   nopw   0x0(%rax,%rax,1)
   0.87%     0x00007fa56effc2bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
   0.02%     0x00007fa56effc2c0:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007fa56effc306
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.59%  ╭  0x00007fa56effc2cb:   jne    0x00007fa56effc2e9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   5.49%  │  0x00007fa56effc2d1:   mov    $0x1,%eax
          │  0x00007fa56effc2d6:   mov    0x10(%rsp),%rbp
          │  0x00007fa56effc2db:   add    $0x18,%rsp
          │  0x00007fa56effc2df:   mov    0x348(%r15),%rcx
   5.38%  │  0x00007fa56effc2e6:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007fa56effc2e8:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@7 (line 116)
          ↘  0x00007fa56effc2e9:   movl   $0xffffffdd,0x370(%r15)
             0x00007fa56effc2f4:   movq   $0x0,0x378(%r15)             ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
             0x00007fa56effc2ff:   nop
             0x00007fa56effc300:   call   0x00007fa56750527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  49.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 764 

              0x00007fa56f0018f5:   mov    0x18(%rsp),%rsi
              0x00007fa56f0018fa:   nopw   0x0(%rax,%rax,1)
              0x00007fa56f001900:   cmpb   $0x0,0x94(%rsi)
              0x00007fa56f001907:   jne    0x00007fa56f00198e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 188)
              0x00007fa56f00190d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fa56f001916:   jmp    0x00007fa56f00192f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@13 (line 186)
          │   0x00007fa56f00191b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 188)
   5.56%  │↗  0x00007fa56f001920:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 188)
          ││  0x00007fa56f001927:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007fa56f00192a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@13 (line 186)
          ↘│  0x00007fa56f00192f:   mov    0x8(%rsp),%r10
   5.57%   │  0x00007fa56f001934:   mov    %r10,%rsi
           │  0x00007fa56f001937:   call   0x00007fa5674ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
   9.67%   │  0x00007fa56f00193c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@20 (line 186)
           │  0x00007fa56f00193d:   mov    0x20(%rsp),%r10
   4.62%   │  0x00007fa56f001942:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@26 (line 187)
   5.51%   │  0x00007fa56f001945:   mov    0x18(%rsp),%rsi
           │  0x00007fa56f00194a:   cmpb   $0x0,0x94(%rsi)
  18.40%   ╰  0x00007fa56f001951:   je     0x00007fa56f001920           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 188)
              0x00007fa56f001953:   mov    %r10,0x20(%rsp)
              0x00007fa56f001958:   call   0x00007fa585b856f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa56f00195d:   nop
              0x00007fa56f00195e:   mov    0x10(%rsp),%rdx
              0x00007fa56f001963:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@40 (line 189)
              0x00007fa56f001967:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@46 (line 190)
              0x00007fa56f00196f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.33%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 738 
  49.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 764 
   0.35%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_AverageTime, version 5, compile id 794 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.66%  <...other 819 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 738 
  49.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 764 
   0.93%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_AverageTime, version 5, compile id 794 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%  libjvmcicompiler.so  ReversePostOrder_assignPredecessorsAndSuccessors_eeb74b35ab6131774a441f615c2a4c605a26e1bb 
   0.00%  libjvmcicompiler.so  PredicatedProxyNodeIterator_forward_0b274971e4c4bca53c7e0b46d8171c6603300b12 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%  libjvmcicompiler.so  NodePredicates$PositiveTypePredicate_apply_95d2d4c64ade37f66ce93b40c9974a07b1eb92dd 
   0.00%  libjvmcicompiler.so  GreyObjectsWalker_walkGreyObjects_eb32754f646620dd6416e9c72990a79fa796f775 
   0.00%  libjvmcicompiler.so  NodeIdAccessor_getNodeId_76c5dfbf7e9691218f87b5c9e29543bf5add505f 
   0.00%  libjvmcicompiler.so  NodeMap_set_26ec449f67a7af63d749029b682187b7985df4aa 
   0.00%  libjvmcicompiler.so  ControlFlowGraph_identifyBlock_dbf7ff5d3e3b0edd455edc3d0019f89e7fb38089 
   0.00%  libjvmcicompiler.so  ArrayList_add_1f41ac6612d40654ece03773af4ead4bc05b3fb8 
   0.00%  libjvmcicompiler.so  ArrayList_grow_10d37c6b46d51b6c5113d67b7886024e29da459b 
   0.21%  <...other 325 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.75%       jvmci, level 4
   0.93%               kernel
   0.18%  libjvmcicompiler.so
   0.06%            libjvm.so
   0.03%                     
   0.02%         libc-2.31.so
   0.01%       hsdis-amd64.so
   0.00%   libpthread-2.31.so
   0.00%           ld-2.31.so
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
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = true)

# Run progress: 58.33% complete, ETA 00:09:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 169.182 ±(99.9%) 763.936 ns/op
# Warmup Iteration   2: 120.520 ±(99.9%) 267.271 ns/op
# Warmup Iteration   3: 110.822 ±(99.9%) 145.269 ns/op
# Warmup Iteration   4: 118.994 ±(99.9%) 260.775 ns/op
# Warmup Iteration   5: 114.758 ±(99.9%) 240.139 ns/op
Iteration   1: 112.123 ±(99.9%) 202.959 ns/op
Iteration   2: 109.064 ±(99.9%) 172.007 ns/op
Iteration   3: 109.636 ±(99.9%) 217.838 ns/op
Iteration   4: 111.293 ±(99.9%) 138.113 ns/op
Iteration   5: 117.394 ±(99.9%) 228.453 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  111.902 ±(99.9%) 12.737 ns/op [Average]
  (min, avg, max) = (109.064, 111.902, 117.394), stdev = 3.308
  CI (99.9%): [99.165, 124.639] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:·asm":
PrintAssembly processed: 199954 total address lines.
Perf output processed (skipped 58.810 seconds):
 Column 1: cycles (200391 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 743 

                            #           [sp+0x20]  (sp of caller)
                            0x00007fc782ffc3c0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                            0x00007fc782ffc3c4:   movabs $0x800000000,%r12
                            0x00007fc782ffc3ce:   add    %r12,%r10
                            0x00007fc782ffc3d1:   xor    %r12,%r12
                            0x00007fc782ffc3d4:   cmp    %r10,%rax
                            0x00007fc782ffc3d7:   jne    0x00007fc77b4ff780           ;   {runtime_call ic_miss_stub}
                            0x00007fc782ffc3dd:   nop
                            0x00007fc782ffc3de:   xchg   %ax,%ax
                          [Verified Entry Point]
   0.36%                    0x00007fc782ffc3e0:   mov    %eax,-0x14000(%rsp)
   0.01%                    0x00007fc782ffc3e7:   sub    $0x18,%rsp
   0.35%                    0x00007fc782ffc3eb:   mov    %rbp,0x10(%rsp)
   0.01%                    0x00007fc782ffc3f0:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
   0.00%                    0x00007fc782ffc3f3:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fc782ffc5a3
   0.06%                    0x00007fc782ffc3fb:   movabs $0x800000000,%r11
   0.33%                    0x00007fc782ffc405:   lea    (%r11,%r10,1),%r8
   0.02%                    0x00007fc782ffc409:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
   0.00%                    0x00007fc782ffc413:   cmp    0x20(%r8),%r11
   0.00%  ╭                 0x00007fc782ffc417:   je     0x00007fc782ffc42d
   9.32%  │                 0x00007fc782ffc41d:   data16 xchg %ax,%ax
   0.19%  │                 0x00007fc782ffc420:   cmp    $0xc265e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │╭                0x00007fc782ffc427:   jne    0x00007fc782ffc505           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   2.73%  ↘│             ↗  0x00007fc782ffc42d:   mov    0x8(,%rax,8),%r10d
   0.07%   │             │  0x00007fc782ffc435:   movabs $0x800000000,%r11
           │             │  0x00007fc782ffc43f:   lea    (%r11,%r10,1),%r8
   0.01%   │             │  0x00007fc782ffc443:   movabs $0x800c267e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.35%   │             │  0x00007fc782ffc44d:   cmp    0x20(%r8),%r11
           │╭            │  0x00007fc782ffc451:   je     0x00007fc782ffc46d
   5.10%   ││            │  0x00007fc782ffc457:   nopw   0x0(%rax,%rax,1)
           ││            │  0x00007fc782ffc460:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           ││╭           │  0x00007fc782ffc467:   jne    0x00007fc782ffc4c4
   3.60%   │↘│          ↗│  0x00007fc782ffc46d:   mov    0x8(,%rax,8),%eax
   0.09%   │ │          ││  0x00007fc782ffc474:   movabs $0x800000000,%r10
           │ │          ││  0x00007fc782ffc47e:   lea    (%r10,%rax,1),%rax
   0.02%   │ │          ││  0x00007fc782ffc482:   cmp    -0xe9(%rip),%rax        # 0x00007fc782ffc3a0
           │ │          ││                                                            ;   {section_word}
   0.39%   │ │╭         ││  0x00007fc782ffc489:   je     0x00007fc782ffc4a5
           │ ││         ││  0x00007fc782ffc48f:   cmp    -0xee(%rip),%rax        # 0x00007fc782ffc3a8
           │ ││         ││                                                            ;   {section_word}
           │ ││╭        ││  0x00007fc782ffc496:   je     0x00007fc782ffc4bd
           │ │││        ││  0x00007fc782ffc49c:   nopl   0x0(%rax)
           │ │││        ││  0x00007fc782ffc4a0:   jmp    0x00007fc782ffc594
   0.02%   │ │↘│        ││  0x00007fc782ffc4a5:   mov    $0x1,%eax
           │ │ │↗       ││  0x00007fc782ffc4aa:   mov    0x10(%rsp),%rbp
   0.00%   │ │ ││       ││  0x00007fc782ffc4af:   add    $0x18,%rsp
   0.37%   │ │ ││       ││  0x00007fc782ffc4b3:   mov    0x348(%r15),%rcx
   0.02%   │ │ ││       ││  0x00007fc782ffc4ba:   test   %eax,(%rcx)                  ;   {poll_return}
   0.07%   │ │ ││       ││  0x00007fc782ffc4bc:   ret    
           │ │ ↘│       ││  0x00007fc782ffc4bd:   mov    $0x0,%eax
           │ │  ╰       ││  0x00007fc782ffc4c2:   jmp    0x00007fc782ffc4aa
           │ ↘          ││  0x00007fc782ffc4c4:   mov    0x28(%r8),%r10
  23.27%   │            ││  0x00007fc782ffc4c8:   mov    (%r10),%r9d
   0.49%   │            ││  0x00007fc782ffc4cb:   mov    $0x0,%ecx
           │     ╭      ││  0x00007fc782ffc4d0:   jmp    0x00007fc782ffc4fa
           │     │      ││  0x00007fc782ffc4d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.62%   │     │ ↗    ││  0x00007fc782ffc4e0:   mov    %ecx,%ebx
           │     │ │    ││  0x00007fc782ffc4e2:   shl    $0x3,%ebx
   0.04%   │     │ │    ││  0x00007fc782ffc4e5:   lea    0x8(%rbx),%ebx
           │     │ │    ││  0x00007fc782ffc4e8:   movslq %ebx,%rbx
   0.71%   │     │ │    ││  0x00007fc782ffc4eb:   mov    (%r10,%rbx,1),%rbx
   0.00%   │     │ │    ││  0x00007fc782ffc4ef:   cmp    %rbx,%r11
           │     │╭│    ││  0x00007fc782ffc4f2:   je     0x00007fc782ffc545
   0.04%   │     │││    ││  0x00007fc782ffc4f8:   inc    %ecx
   0.00%   │     ↘││    ││  0x00007fc782ffc4fa:   cmp    %ecx,%r9d
           │      │╰    ││  0x00007fc782ffc4fd:   jg     0x00007fc782ffc4e0
           │      │     ││  0x00007fc782ffc4ff:   nop
           │      │ ╭   ││  0x00007fc782ffc500:   jmp    0x00007fc782ffc557           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │      │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │      │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.01%   ↘      │ │   ││  0x00007fc782ffc505:   mov    0x28(%r8),%r10
  47.26%          │ │   ││  0x00007fc782ffc509:   mov    (%r10),%r9d
   0.99%          │ │   ││  0x00007fc782ffc50c:   mov    $0x0,%ecx
   0.18%          │ │╭  ││  0x00007fc782ffc511:   jmp    0x00007fc782ffc53a
                  │ ││  ││  0x00007fc782ffc516:   data16 nopw 0x0(%rax,%rax,1)
   0.34%          │ ││ ↗││  0x00007fc782ffc520:   mov    %ecx,%ebx
                  │ ││ │││  0x00007fc782ffc522:   shl    $0x3,%ebx
                  │ ││ │││  0x00007fc782ffc525:   lea    0x8(%rbx),%ebx
                  │ ││ │││  0x00007fc782ffc528:   movslq %ebx,%rbx
   0.36%          │ ││ │││  0x00007fc782ffc52b:   mov    (%r10,%rbx,1),%rbx
                  │ ││ │││  0x00007fc782ffc52f:   cmp    %rbx,%r11
                  │ ││╭│││  0x00007fc782ffc532:   je     0x00007fc782ffc54e
                  │ ││││││  0x00007fc782ffc538:   inc    %ecx
                  │ │↘││││  0x00007fc782ffc53a:   cmp    %ecx,%r9d
                  │ │ │╰││  0x00007fc782ffc53d:   jg     0x00007fc782ffc520
                  │ │ │ ││  0x00007fc782ffc53f:   nop
                  │ │ │ ││  0x00007fc782ffc540:   jmp    0x00007fc782ffc578           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
                  │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.03%          ↘ │ │ ││  0x00007fc782ffc545:   mov    %r11,0x20(%r8)
                    │ │ ╰│  0x00007fc782ffc549:   jmp    0x00007fc782ffc46d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                    │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
                    │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.00%            │ ↘  │  0x00007fc782ffc54e:   mov    %r11,0x20(%r8)
                    │    ╰  0x00007fc782ffc552:   jmp    0x00007fc782ffc42d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
                    ↘       0x00007fc782ffc557:   mov    $0x0,%r11
                            0x00007fc782ffc55e:   mov    $0xffffffdd,%r10d
                            0x00007fc782ffc564:   mov    %r10d,0x370(%r15)            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
....................................................................................................
  97.83%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 743 
   1.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 5, compile id 761 
   0.09%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.60%  <...other 751 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 743 
   1.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 5, compile id 761 
   0.65%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  [unknown] 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%            libjvm.so  MethodMatcher::matches 
   0.00%  libjvmcicompiler.so  NodeIdAccessor_getNodeId_76c5dfbf7e9691218f87b5c9e29543bf5add505f 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%  libjvmcicompiler.so  PredicatedProxyNodeIterator_forward_0b274971e4c4bca53c7e0b46d8171c6603300b12 
   0.00%  libjvmcicompiler.so  ReversePostOrder_compute_6eb03163e139642196b89ec4098c779a6907c6c2 
   0.00%  libjvmcicompiler.so  ArrayList_add_1f41ac6612d40654ece03773af4ead4bc05b3fb8 
   0.00%            libjvm.so  stringStream::write 
   0.00%            libjvm.so  fileStream::write 
   0.00%  libjvmcicompiler.so  ControlFlowGraph_rpoInnerLoopsFirst_d18d07e00a91c2cc6c5e65bd12ba58d572ef7043 
   0.00%   libpthread-2.31.so  __libc_write 
   0.20%  <...other 292 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.07%       jvmci, level 4
   0.65%               kernel
   0.15%  libjvmcicompiler.so
   0.06%            libjvm.so
   0.03%                     
   0.03%         libc-2.31.so
   0.01%   libpthread-2.31.so
   0.00%       hsdis-amd64.so
   0.00%           ld-2.31.so
   0.00%          c1, level 3
   0.00%          c1, level 1
   0.00%          interpreter
   0.00%     Unknown, level 0
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
# Threads: 5 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5
# Parameters: (typePollution = false)

# Run progress: 66.67% complete, ETA 00:07:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.051 ±(99.9%) 0.091 ns/op
# Warmup Iteration   2: 7.058 ±(99.9%) 0.152 ns/op
# Warmup Iteration   3: 7.069 ±(99.9%) 0.021 ns/op
# Warmup Iteration   4: 7.051 ±(99.9%) 0.150 ns/op
# Warmup Iteration   5: 7.048 ±(99.9%) 0.082 ns/op
Iteration   1: 7.056 ±(99.9%) 0.137 ns/op
Iteration   2: 7.054 ±(99.9%) 0.109 ns/op
Iteration   3: 7.090 ±(99.9%) 0.135 ns/op
Iteration   4: 7.071 ±(99.9%) 0.168 ns/op
Iteration   5: 7.100 ±(99.9%) 0.136 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5":
  7.074 ±(99.9%) 0.078 ns/op [Average]
  (min, avg, max) = (7.054, 7.074, 7.100), stdev = 0.020
  CI (99.9%): [6.997, 7.152] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5:·asm":
PrintAssembly processed: 201611 total address lines.
Perf output processed (skipped 58.809 seconds):
 Column 1: cycles (249845 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 6, compile id 772 

              0x00007f750f0014f5:   mov    0x18(%rsp),%rsi
              0x00007f750f0014fa:   nopw   0x0(%rax,%rax,1)
              0x00007f750f001500:   cmpb   $0x0,0x94(%rsi)
              0x00007f750f001507:   jne    0x00007f750f00158e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@33 (line 188)
              0x00007f750f00150d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f750f001516:   jmp    0x00007f750f00152f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@13 (line 186)
          │   0x00007f750f00151b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@33 (line 188)
   5.39%  │↗  0x00007f750f001520:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@33 (line 188)
          ││  0x00007f750f001527:   test   %eax,(%r11)                  ;   {poll}
   0.05%  ││  0x00007f750f00152a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@13 (line 186)
          ↘│  0x00007f750f00152f:   mov    0x8(%rsp),%r10
   5.42%   │  0x00007f750f001534:   mov    %r10,%rsi
           │  0x00007f750f001537:   call   0x00007f75074ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
   9.96%   │  0x00007f750f00153c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@20 (line 186)
   0.00%   │  0x00007f750f00153d:   mov    0x20(%rsp),%r10
   5.55%   │  0x00007f750f001542:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@26 (line 187)
   5.50%   │  0x00007f750f001545:   mov    0x18(%rsp),%rsi
           │  0x00007f750f00154a:   cmpb   $0x0,0x94(%rsi)
  18.33%   ╰  0x00007f750f001551:   je     0x00007f750f001520           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@33 (line 188)
              0x00007f750f001553:   mov    %r10,0x20(%rsp)
              0x00007f750f001558:   call   0x00007f75265906f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f750f00155d:   nop
              0x00007f750f00155e:   mov    0x10(%rsp),%rdx
              0x00007f750f001563:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@40 (line 189)
              0x00007f750f001567:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@46 (line 190)
              0x00007f750f00156f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  50.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 739 

             #           [sp+0x20]  (sp of caller)
             0x00007f750effb480:   mov    0x8(%rsi),%r10d
             0x00007f750effb484:   movabs $0x800000000,%r12
             0x00007f750effb48e:   add    %r12,%r10
             0x00007f750effb491:   xor    %r12,%r12
             0x00007f750effb494:   cmp    %r10,%rax
             0x00007f750effb497:   jne    0x00007f75074ff780           ;   {runtime_call ic_miss_stub}
             0x00007f750effb49d:   nop
             0x00007f750effb49e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.04%     0x00007f750effb4a0:   mov    %eax,-0x14000(%rsp)
   6.33%     0x00007f750effb4a7:   sub    $0x18,%rsp
   0.04%     0x00007f750effb4ab:   mov    %rbp,0x10(%rsp)
   2.39%     0x00007f750effb4b0:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@1 (line 123)
   2.14%     0x00007f750effb4b3:   nopw   0x0(%rax,%rax,1)
   0.91%     0x00007f750effb4bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@0 (line 123)
   0.05%     0x00007f750effb4c0:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f750effb506
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.17%  ╭  0x00007f750effb4cb:   jne    0x00007f750effb4e9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   5.42%  │  0x00007f750effb4d1:   mov    $0x1,%eax
          │  0x00007f750effb4d6:   mov    0x10(%rsp),%rbp
          │  0x00007f750effb4db:   add    $0x18,%rsp
          │  0x00007f750effb4df:   mov    0x348(%r15),%rcx
   5.51%  │  0x00007f750effb4e6:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007f750effb4e8:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@7 (line 123)
          ↘  0x00007f750effb4e9:   movl   $0xffffffdd,0x370(%r15)
             0x00007f750effb4f4:   movq   $0x0,0x378(%r15)             ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
             0x00007f750effb4ff:   nop
             0x00007f750effb500:   call   0x00007f750750527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  49.00%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 6, compile id 772 
  49.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 739 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.55%  <...other 715 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 6, compile id 772 
  49.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 739 
   0.60%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_AverageTime, version 2, compile id 783 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  fileStream::write 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  defaultStream::hold 
   0.00%            libjvm.so  stringStream::write 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.10%  <...other 201 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.20%       jvmci, level 4
   0.60%               kernel
   0.06%            libjvm.so
   0.05%  libjvmcicompiler.so
   0.03%         libc-2.31.so
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%          c1, level 3
   0.01%           ld-2.31.so
   0.00%   libpthread-2.31.so
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
# Threads: 5 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5
# Parameters: (typePollution = true)

# Run progress: 75.00% complete, ETA 00:05:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 189.208 ±(99.9%) 223.714 ns/op
# Warmup Iteration   2: 183.634 ±(99.9%) 211.924 ns/op
# Warmup Iteration   3: 198.058 ±(99.9%) 253.335 ns/op
# Warmup Iteration   4: 196.480 ±(99.9%) 253.850 ns/op
# Warmup Iteration   5: 189.852 ±(99.9%) 231.689 ns/op
Iteration   1: 195.640 ±(99.9%) 251.346 ns/op
Iteration   2: 194.936 ±(99.9%) 250.693 ns/op
Iteration   3: 191.737 ±(99.9%) 326.459 ns/op
Iteration   4: 195.436 ±(99.9%) 364.120 ns/op
Iteration   5: 193.462 ±(99.9%) 342.056 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5":
  194.242 ±(99.9%) 6.311 ns/op [Average]
  (min, avg, max) = (191.737, 194.242, 195.640), stdev = 1.639
  CI (99.9%): [187.931, 200.553] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5:·asm":
PrintAssembly processed: 201699 total address lines.
Perf output processed (skipped 58.687 seconds):
 Column 1: cycles (250389 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 743 

                                                                               ;   {section_word}
   0.24%             0x00007ff372ffce09:   je     0x00007ff372ffce25
                     0x00007ff372ffce0f:   cmp    -0xee(%rip),%rax        # 0x00007ff372ffcd28
                                                                               ;   {section_word}
          ╭          0x00007ff372ffce16:   je     0x00007ff372ffced7
          │          0x00007ff372ffce1c:   nopl   0x0(%rax)
          │╭         0x00007ff372ffce20:   jmp    0x00007ff372ffcee5
          ││         0x00007ff372ffce25:   mov    $0x0,%eax
          ││      ↗  0x00007ff372ffce2a:   mov    0x10(%rsp),%rbp
          ││      │  0x00007ff372ffce2f:   add    $0x18,%rsp
   0.24%  ││      │  0x00007ff372ffce33:   mov    0x348(%r15),%rcx
          ││      │  0x00007ff372ffce3a:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%  ││      │  0x00007ff372ffce3c:   ret    
   0.00%  ││      │  0x00007ff372ffce3d:   mov    0x28(%r8),%r10
  81.05%  ││      │  0x00007ff372ffce41:   mov    (%r10),%r9d
   1.25%  ││      │  0x00007ff372ffce44:   mov    $0x0,%ecx
          ││╭     │  0x00007ff372ffce49:   jmp    0x00007ff372ffce7a
          │││     │  0x00007ff372ffce4e:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││     │  0x00007ff372ffce59:   data16 data16 xchg %ax,%ax
          │││     │  0x00007ff372ffce5d:   data16 xchg %ax,%ax
   0.23%  │││ ↗   │  0x00007ff372ffce60:   mov    %ecx,%ebx
          │││ │   │  0x00007ff372ffce62:   shl    $0x3,%ebx
          │││ │   │  0x00007ff372ffce65:   lea    0x8(%rbx),%ebx
          │││ │   │  0x00007ff372ffce68:   movslq %ebx,%rbx
   0.23%  │││ │   │  0x00007ff372ffce6b:   mov    (%r10,%rbx,1),%rbx
   0.00%  │││ │   │  0x00007ff372ffce6f:   cmp    %rbx,%r11
          │││╭│   │  0x00007ff372ffce72:   je     0x00007ff372ffcec5
          │││││   │  0x00007ff372ffce78:   inc    %ecx
          ││↘││   │  0x00007ff372ffce7a:   cmp    %ecx,%r9d
          ││ │╰   │  0x00007ff372ffce7d:   jg     0x00007ff372ffce60
          ││ │    │  0x00007ff372ffce7f:   nop
          ││ │    │  0x00007ff372ffce80:   jmp    0x00007ff372ffcf06           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
          ││ │    │  0x00007ff372ffce85:   mov    0x28(%r8),%r10
   4.49%  ││ │    │  0x00007ff372ffce89:   mov    (%r10),%r9d
   0.07%  ││ │    │  0x00007ff372ffce8c:   mov    $0x0,%ecx
          ││ │ ╭  │  0x00007ff372ffce91:   jmp    0x00007ff372ffceba
          ││ │ │  │  0x00007ff372ffce96:   data16 nopw 0x0(%rax,%rax,1)
   0.46%  ││ │ │ ↗│  0x00007ff372ffcea0:   mov    %ecx,%ebx
          ││ │ │ ││  0x00007ff372ffcea2:   shl    $0x3,%ebx
   0.00%  ││ │ │ ││  0x00007ff372ffcea5:   lea    0x8(%rbx),%ebx
   0.00%  ││ │ │ ││  0x00007ff372ffcea8:   movslq %ebx,%rbx
   0.49%  ││ │ │ ││  0x00007ff372ffceab:   mov    (%r10,%rbx,1),%rbx
          ││ │ │ ││  0x00007ff372ffceaf:   cmp    %rbx,%r11
          ││ │ │╭││  0x00007ff372ffceb2:   je     0x00007ff372ffcece
   0.00%  ││ │ ││││  0x00007ff372ffceb8:   inc    %ecx
          ││ │ ↘│││  0x00007ff372ffceba:   cmp    %ecx,%r9d
          ││ │  │╰│  0x00007ff372ffcebd:   jg     0x00007ff372ffcea0
          ││ │  │ │  0x00007ff372ffcebf:   nop
          ││ │  │ │  0x00007ff372ffcec0:   jmp    0x00007ff372ffcf26           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
          ││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   0.00%  ││ ↘  │ │  0x00007ff372ffcec5:   mov    %r11,0x20(%r8)
   0.00%  ││    │ │  0x00007ff372ffcec9:   jmp    0x00007ff372ffcdad           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   0.00%  ││    ↘ │  0x00007ff372ffcece:   mov    %r11,0x20(%r8)
   0.00%  ││      │  0x00007ff372ffced2:   jmp    0x00007ff372ffcded           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
          ↘│      │  0x00007ff372ffced7:   mov    $0x1,%eax
   0.24%   │      │  0x00007ff372ffcedc:   nopl   0x0(%rax)
           │      ╰  0x00007ff372ffcee0:   jmp    0x00007ff372ffce2a           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@7 (line 123)
           ↘         0x00007ff372ffcee5:   mov    $0x614,%r11
                     0x00007ff372ffceec:   mov    $0xffffffcd,%r10d
                     0x00007ff372ffcef2:   mov    %r10d,0x370(%r15)            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
                     0x00007ff372ffcef9:   mov    %r11,0x378(%r15)
                     0x00007ff372ffcf00:   call   0x00007ff36b50527a           ; ImmutableOopMap {rsi=Oop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  88.75%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 743 
   9.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 743 
   0.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 6, compile id 776 
   0.05%               kernel  [unknown] 
   0.03%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_AverageTime, version 2, compile id 780 
   0.03%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_AverageTime, version 2, compile id 780 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_AverageTime, version 2, compile id 780 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.58%  <...other 881 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 743 
   0.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 6, compile id 776 
   0.48%               kernel  [unknown] 
   0.08%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_AverageTime, version 2, compile id 780 
   0.04%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%  libjvmcicompiler.so  PredicatedProxyNodeIterator_forward_0b274971e4c4bca53c7e0b46d8171c6603300b12 
   0.01%            libjvm.so  fileStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%  libjvmcicompiler.so  ReversePostOrder_assignPredecessorsAndSuccessors_eeb74b35ab6131774a441f615c2a4c605a26e1bb 
   0.00%            libjvm.so  defaultStream::write 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%  libjvmcicompiler.so  ControlFlowGraph_perBasicBlockFrequencyAction_7dfe7047dcaccf12f0fdfeb817affaf94f914f62 
   0.00%  libjvmcicompiler.so  ReversePostOrder_compute_6eb03163e139642196b89ec4098c779a6907c6c2 
   0.00%            libjvm.so  defaultStream::hold 
   0.19%  <...other 342 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.14%       jvmci, level 4
   0.48%               kernel
   0.15%  libjvmcicompiler.so
   0.08%          c1, level 3
   0.07%            libjvm.so
   0.04%                     
   0.03%         libc-2.31.so
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
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
# Threads: 6 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6
# Parameters: (typePollution = false)

# Run progress: 83.33% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.106 ±(99.9%) 0.118 ns/op
# Warmup Iteration   2: 7.051 ±(99.9%) 0.090 ns/op
# Warmup Iteration   3: 7.216 ±(99.9%) 0.037 ns/op
# Warmup Iteration   4: 7.035 ±(99.9%) 0.115 ns/op
# Warmup Iteration   5: 7.077 ±(99.9%) 0.213 ns/op
Iteration   1: 7.115 ±(99.9%) 0.201 ns/op
Iteration   2: 7.022 ±(99.9%) 0.107 ns/op
Iteration   3: 7.079 ±(99.9%) 0.125 ns/op
Iteration   4: 7.077 ±(99.9%) 0.126 ns/op
Iteration   5: 7.024 ±(99.9%) 0.108 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6":
  7.063 ±(99.9%) 0.155 ns/op [Average]
  (min, avg, max) = (7.022, 7.063, 7.115), stdev = 0.040
  CI (99.9%): [6.909, 7.218] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6:·asm":
PrintAssembly processed: 206832 total address lines.
Perf output processed (skipped 58.784 seconds):
 Column 1: cycles (298182 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 6, compile id 773 

              0x00007fb17f0003f5:   mov    0x18(%rsp),%rsi
              0x00007fb17f0003fa:   nopw   0x0(%rax,%rax,1)
              0x00007fb17f000400:   cmpb   $0x0,0x94(%rsi)
              0x00007fb17f000407:   jne    0x00007fb17f00048e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@33 (line 188)
              0x00007fb17f00040d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fb17f000416:   jmp    0x00007fb17f00042f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@13 (line 186)
          │   0x00007fb17f00041b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@33 (line 188)
   5.41%  │↗  0x00007fb17f000420:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@33 (line 188)
          ││  0x00007fb17f000427:   test   %eax,(%r11)                  ;   {poll}
   0.04%  ││  0x00007fb17f00042a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@13 (line 186)
          ↘│  0x00007fb17f00042f:   mov    0x8(%rsp),%r10
   5.43%   │  0x00007fb17f000434:   mov    %r10,%rsi
           │  0x00007fb17f000437:   call   0x00007fb1774ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
  10.04%   │  0x00007fb17f00043c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@20 (line 186)
   0.00%   │  0x00007fb17f00043d:   mov    0x20(%rsp),%r10
   4.94%   │  0x00007fb17f000442:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@26 (line 187)
   5.49%   │  0x00007fb17f000445:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007fb17f00044a:   cmpb   $0x0,0x94(%rsi)
  18.48%   ╰  0x00007fb17f000451:   je     0x00007fb17f000420           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@33 (line 188)
              0x00007fb17f000453:   mov    %r10,0x20(%rsp)
              0x00007fb17f000458:   call   0x00007fb195b576f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb17f00045d:   nop
              0x00007fb17f00045e:   mov    0x10(%rsp),%rdx
              0x00007fb17f000463:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@40 (line 189)
              0x00007fb17f000467:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@46 (line 190)
              0x00007fb17f00046f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 736 

             #           [sp+0x20]  (sp of caller)
             0x00007fb17effc280:   mov    0x8(%rsi),%r10d
             0x00007fb17effc284:   movabs $0x800000000,%r12
             0x00007fb17effc28e:   add    %r12,%r10
             0x00007fb17effc291:   xor    %r12,%r12
             0x00007fb17effc294:   cmp    %r10,%rax
             0x00007fb17effc297:   jne    0x00007fb1774ff780           ;   {runtime_call ic_miss_stub}
             0x00007fb17effc29d:   nop
             0x00007fb17effc29e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.04%     0x00007fb17effc2a0:   mov    %eax,-0x14000(%rsp)
   6.29%     0x00007fb17effc2a7:   sub    $0x18,%rsp
   0.04%     0x00007fb17effc2ab:   mov    %rbp,0x10(%rsp)
   2.49%     0x00007fb17effc2b0:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@1 (line 130)
   2.07%     0x00007fb17effc2b3:   nopw   0x0(%rax,%rax,1)
   0.89%     0x00007fb17effc2bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@0 (line 130)
   0.05%     0x00007fb17effc2c0:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007fb17effc306
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.72%  ╭  0x00007fb17effc2cb:   jne    0x00007fb17effc2e9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   5.44%  │  0x00007fb17effc2d1:   mov    $0x1,%eax
          │  0x00007fb17effc2d6:   mov    0x10(%rsp),%rbp
          │  0x00007fb17effc2db:   add    $0x18,%rsp
          │  0x00007fb17effc2df:   mov    0x348(%r15),%rcx
   5.43%  │  0x00007fb17effc2e6:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%  │  0x00007fb17effc2e8:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@7 (line 130)
          ↘  0x00007fb17effc2e9:   movl   $0xffffffdd,0x370(%r15)
             0x00007fb17effc2f4:   movq   $0x0,0x378(%r15)             ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
             0x00007fb17effc2ff:   nop
             0x00007fb17effc300:   call   0x00007fb17750527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@0 (line 130)
....................................................................................................
  49.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 6, compile id 773 
  49.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 736 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_AverageTime, version 5, compile id 803 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.45%  <...other 739 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 6, compile id 773 
  49.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 736 
   0.51%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_AverageTime, version 5, compile id 803 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%            libjvm.so  defaultStream::write 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  outputStream::print 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%         libc-2.31.so  __vfwprintf_internal 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  fileStream::write 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.08%  <...other 193 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.32%       jvmci, level 4
   0.51%               kernel
   0.05%            libjvm.so
   0.04%  libjvmcicompiler.so
   0.03%         libc-2.31.so
   0.02%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%           ld-2.31.so
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
# Threads: 6 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6
# Parameters: (typePollution = true)

# Run progress: 91.67% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 252.128 ±(99.9%) 334.495 ns/op
# Warmup Iteration   2: 248.986 ±(99.9%) 330.676 ns/op
# Warmup Iteration   3: 255.333 ±(99.9%) 332.436 ns/op
# Warmup Iteration   4: 246.695 ±(99.9%) 318.767 ns/op
# Warmup Iteration   5: 243.807 ±(99.9%) 311.314 ns/op
Iteration   1: 242.988 ±(99.9%) 306.672 ns/op
Iteration   2: 235.514 ±(99.9%) 285.940 ns/op
Iteration   3: 239.012 ±(99.9%) 289.615 ns/op
Iteration   4: 245.305 ±(99.9%) 316.726 ns/op
Iteration   5: 249.393 ±(99.9%) 328.387 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6":
  242.442 ±(99.9%) 20.787 ns/op [Average]
  (min, avg, max) = (235.514, 242.442, 249.393), stdev = 5.398
  CI (99.9%): [221.655, 263.229] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6:·asm":
PrintAssembly processed: 202617 total address lines.
Perf output processed (skipped 58.768 seconds):
 Column 1: cycles (298072 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 740 

                            #           [sp+0x20]  (sp of caller)
                            0x00007f5ceaffea40:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                            0x00007f5ceaffea44:   movabs $0x800000000,%r12
                            0x00007f5ceaffea4e:   add    %r12,%r10
                            0x00007f5ceaffea51:   xor    %r12,%r12
                            0x00007f5ceaffea54:   cmp    %r10,%rax
                            0x00007f5ceaffea57:   jne    0x00007f5ce34ff780           ;   {runtime_call ic_miss_stub}
                            0x00007f5ceaffea5d:   nop
                            0x00007f5ceaffea5e:   xchg   %ax,%ax
                          [Verified Entry Point]
   0.20%                    0x00007f5ceaffea60:   mov    %eax,-0x14000(%rsp)
   0.01%                    0x00007f5ceaffea67:   sub    $0x18,%rsp
   0.00%                    0x00007f5ceaffea6b:   mov    %rbp,0x10(%rsp)
   0.18%                    0x00007f5ceaffea70:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@0 (line 130)
   0.00%                    0x00007f5ceaffea73:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f5ceaffec23
   0.01%                    0x00007f5ceaffea7b:   movabs $0x800000000,%r11
                            0x00007f5ceaffea85:   lea    (%r11,%r10,1),%r8
   0.20%                    0x00007f5ceaffea89:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
   0.00%                    0x00007f5ceaffea93:   cmp    0x20(%r8),%r11
          ╭                 0x00007f5ceaffea97:   je     0x00007f5ceaffeaad
   8.21%  │                 0x00007f5ceaffea9d:   data16 xchg %ax,%ax
   0.00%  │                 0x00007f5ceaffeaa0:   cmp    $0xc265e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │╭                0x00007f5ceaffeaa7:   jne    0x00007f5ceaffeb85           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   1.14%  ↘│             ↗  0x00007f5ceaffeaad:   mov    0x8(,%rax,8),%r10d
   0.02%   │             │  0x00007f5ceaffeab5:   movabs $0x800000000,%r11
           │             │  0x00007f5ceaffeabf:   lea    (%r11,%r10,1),%r8
   0.00%   │             │  0x00007f5ceaffeac3:   movabs $0x800c267e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.19%   │             │  0x00007f5ceaffeacd:   cmp    0x20(%r8),%r11
           │╭            │  0x00007f5ceaffead1:   je     0x00007f5ceaffeaed
   3.97%   ││            │  0x00007f5ceaffead7:   nopw   0x0(%rax,%rax,1)
   0.00%   ││            │  0x00007f5ceaffeae0:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           ││╭           │  0x00007f5ceaffeae7:   jne    0x00007f5ceaffeb44
   2.11%   │↘│          ↗│  0x00007f5ceaffeaed:   mov    0x8(,%rax,8),%eax
   0.03%   │ │          ││  0x00007f5ceaffeaf4:   movabs $0x800000000,%r10
           │ │          ││  0x00007f5ceaffeafe:   lea    (%r10,%rax,1),%rax
   0.00%   │ │          ││  0x00007f5ceaffeb02:   cmp    -0xe9(%rip),%rax        # 0x00007f5ceaffea20
           │ │          ││                                                            ;   {section_word}
   0.21%   │ │╭         ││  0x00007f5ceaffeb09:   je     0x00007f5ceaffeb25
   0.00%   │ ││         ││  0x00007f5ceaffeb0f:   cmp    -0xee(%rip),%rax        # 0x00007f5ceaffea28
           │ ││         ││                                                            ;   {section_word}
           │ ││╭        ││  0x00007f5ceaffeb16:   je     0x00007f5ceaffeb3d
           │ │││        ││  0x00007f5ceaffeb1c:   nopl   0x0(%rax)
           │ │││        ││  0x00007f5ceaffeb20:   jmp    0x00007f5ceaffec14
           │ │↘│        ││  0x00007f5ceaffeb25:   mov    $0x0,%eax
   0.00%   │ │ │↗       ││  0x00007f5ceaffeb2a:   mov    0x10(%rsp),%rbp
   0.01%   │ │ ││       ││  0x00007f5ceaffeb2f:   add    $0x18,%rsp
           │ │ ││       ││  0x00007f5ceaffeb33:   mov    0x348(%r15),%rcx
   0.19%   │ │ ││       ││  0x00007f5ceaffeb3a:   test   %eax,(%rcx)                  ;   {poll_return}
   0.03%   │ │ ││       ││  0x00007f5ceaffeb3c:   ret    
   0.00%   │ │ ↘│       ││  0x00007f5ceaffeb3d:   mov    $0x1,%eax
   0.19%   │ │  ╰       ││  0x00007f5ceaffeb42:   jmp    0x00007f5ceaffeb2a
   0.00%   │ ↘          ││  0x00007f5ceaffeb44:   mov    0x28(%r8),%r10
  29.82%   │            ││  0x00007f5ceaffeb48:   mov    (%r10),%r9d
   0.39%   │            ││  0x00007f5ceaffeb4b:   mov    $0x0,%ecx
           │     ╭      ││  0x00007f5ceaffeb50:   jmp    0x00007f5ceaffeb7a
           │     │      ││  0x00007f5ceaffeb55:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.38%   │     │ ↗    ││  0x00007f5ceaffeb60:   mov    %ecx,%ebx
           │     │ │    ││  0x00007f5ceaffeb62:   shl    $0x3,%ebx
   0.03%   │     │ │    ││  0x00007f5ceaffeb65:   lea    0x8(%rbx),%ebx
           │     │ │    ││  0x00007f5ceaffeb68:   movslq %ebx,%rbx
   0.35%   │     │ │    ││  0x00007f5ceaffeb6b:   mov    (%r10,%rbx,1),%rbx
   0.00%   │     │ │    ││  0x00007f5ceaffeb6f:   cmp    %rbx,%r11
           │     │╭│    ││  0x00007f5ceaffeb72:   je     0x00007f5ceaffebc5
   0.03%   │     │││    ││  0x00007f5ceaffeb78:   inc    %ecx
   0.00%   │     ↘││    ││  0x00007f5ceaffeb7a:   cmp    %ecx,%r9d
           │      │╰    ││  0x00007f5ceaffeb7d:   jg     0x00007f5ceaffeb60
           │      │     ││  0x00007f5ceaffeb7f:   nop
           │      │ ╭   ││  0x00007f5ceaffeb80:   jmp    0x00007f5ceaffebd7           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │      │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │      │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   0.08%   ↘      │ │   ││  0x00007f5ceaffeb85:   mov    0x28(%r8),%r10
  49.35%          │ │   ││  0x00007f5ceaffeb89:   mov    (%r10),%r9d
   0.69%          │ │   ││  0x00007f5ceaffeb8c:   mov    $0x0,%ecx
                  │ │╭  ││  0x00007f5ceaffeb91:   jmp    0x00007f5ceaffebba
                  │ ││  ││  0x00007f5ceaffeb96:   data16 nopw 0x0(%rax,%rax,1)
   0.21%          │ ││ ↗││  0x00007f5ceaffeba0:   mov    %ecx,%ebx
                  │ ││ │││  0x00007f5ceaffeba2:   shl    $0x3,%ebx
                  │ ││ │││  0x00007f5ceaffeba5:   lea    0x8(%rbx),%ebx
                  │ ││ │││  0x00007f5ceaffeba8:   movslq %ebx,%rbx
   0.20%          │ ││ │││  0x00007f5ceaffebab:   mov    (%r10,%rbx,1),%rbx
   0.00%          │ ││ │││  0x00007f5ceaffebaf:   cmp    %rbx,%r11
                  │ ││╭│││  0x00007f5ceaffebb2:   je     0x00007f5ceaffebce
                  │ ││││││  0x00007f5ceaffebb8:   inc    %ecx
   0.06%          │ │↘││││  0x00007f5ceaffebba:   cmp    %ecx,%r9d
                  │ │ │╰││  0x00007f5ceaffebbd:   jg     0x00007f5ceaffeba0
                  │ │ │ ││  0x00007f5ceaffebbf:   nop
                  │ │ │ ││  0x00007f5ceaffebc0:   jmp    0x00007f5ceaffebf8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
                  │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   0.03%          ↘ │ │ ││  0x00007f5ceaffebc5:   mov    %r11,0x20(%r8)
   0.00%            │ │ ╰│  0x00007f5ceaffebc9:   jmp    0x00007f5ceaffeaed           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                    │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
                    │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   0.00%            │ ↘  │  0x00007f5ceaffebce:   mov    %r11,0x20(%r8)
                    │    ╰  0x00007f5ceaffebd2:   jmp    0x00007f5ceaffeaad           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
                    ↘       0x00007f5ceaffebd7:   mov    $0x0,%r11
                            0x00007f5ceaffebde:   mov    $0xffffffdd,%r10d
                            0x00007f5ceaffebe4:   mov    %r10d,0x370(%r15)            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
....................................................................................................
  98.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 740 
   0.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 6, compile id 770 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%                       <unknown> 
   0.56%  <...other 891 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 740 
   0.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 6, compile id 770 
   0.53%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%  libjvmcicompiler.so  NodeMap_set_26ec449f67a7af63d749029b682187b7985df4aa 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  defaultStream::write 
   0.00%  libjvmcicompiler.so  ReversePostOrder_compute_6eb03163e139642196b89ec4098c779a6907c6c2 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%            libjvm.so  stringStream::write 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.16%  <...other 324 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.21%       jvmci, level 4
   0.53%               kernel
   0.11%  libjvmcicompiler.so
   0.06%            libjvm.so
   0.04%                     
   0.04%         libc-2.31.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%           ld-2.31.so
   0.00%          interpreter
   0.00%          c1, level 3
   0.00%           libjava.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:29

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

Benchmark                                           (typePollution)  Mode  Cnt    Score    Error  Units
TypeCheckScalabilityBenchmark.is_duplicated_1                 false  avgt    5    6.966 ±  0.010  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_1                  true  avgt    5   14.784 ±  0.093  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                 false  avgt    5    6.966 ±  0.008  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                  true  avgt    5   53.134 ± 25.063  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                 false  avgt    5    6.983 ±  0.164  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                  true  avgt    5   83.712 ± 26.826  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                 false  avgt    5    6.968 ±  0.014  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                  true  avgt    5  111.902 ± 12.737  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_5                 false  avgt    5    7.074 ±  0.078  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_5:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_5                  true  avgt    5  194.242 ±  6.311  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_5:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_6                 false  avgt    5    7.063 ±  0.155  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_6:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_6                  true  avgt    5  242.442 ± 20.787  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_6:·asm             true  avgt           NaN             ---
