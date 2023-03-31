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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.011 ns/op
# Warmup Iteration   2: 6.965 ns/op
# Warmup Iteration   3: 7.007 ns/op
# Warmup Iteration   4: 6.966 ns/op
# Warmup Iteration   5: 6.964 ns/op
Iteration   1: 6.965 ns/op
Iteration   2: 6.982 ns/op
Iteration   3: 6.969 ns/op
Iteration   4: 6.967 ns/op
Iteration   5: 6.972 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  6.971 ±(99.9%) 0.025 ns/op [Average]
  (min, avg, max) = (6.965, 6.971, 6.982), stdev = 0.006
  CI (99.9%): [6.946, 6.996] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 197359 total address lines.
Perf output processed (skipped 58.789 seconds):
 Column 1: cycles (50697 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 772 

              0x00007f2daafff7f5:   mov    0x18(%rsp),%rsi
              0x00007f2daafff7fa:   nopw   0x0(%rax,%rax,1)
              0x00007f2daafff800:   cmpb   $0x0,0x94(%rsi)
              0x00007f2daafff807:   jne    0x00007f2daafff88e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
              0x00007f2daafff80d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f2daafff816:   jmp    0x00007f2daafff82f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │   0x00007f2daafff81b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   5.62%  │↗  0x00007f2daafff820:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          ││  0x00007f2daafff827:   test   %eax,(%r11)                  ;   {poll}
   0.02%  ││  0x00007f2daafff82a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f2daafff82f:   mov    0x8(%rsp),%r10
   5.54%   │  0x00007f2daafff834:   mov    %r10,%rsi
           │  0x00007f2daafff837:   call   0x00007f2da34ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
  10.22%   │  0x00007f2daafff83c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
           │  0x00007f2daafff83d:   mov    0x20(%rsp),%r10
   4.57%   │  0x00007f2daafff842:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 233)
   5.56%   │  0x00007f2daafff845:   mov    0x18(%rsp),%rsi
           │  0x00007f2daafff84a:   cmpb   $0x0,0x94(%rsi)
  17.60%   ╰  0x00007f2daafff851:   je     0x00007f2daafff820           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
              0x00007f2daafff853:   mov    %r10,0x20(%rsp)
              0x00007f2daafff858:   call   0x00007f2dc262b6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f2daafff85d:   nop
              0x00007f2daafff85e:   mov    0x10(%rsp),%rdx
              0x00007f2daafff863:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 235)
              0x00007f2daafff867:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@46 (line 236)
              0x00007f2daafff86f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.12%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 744 

             #           [sp+0x20]  (sp of caller)
             0x00007f2daaff8880:   mov    0x8(%rsi),%r10d
             0x00007f2daaff8884:   movabs $0x800000000,%r12
             0x00007f2daaff888e:   add    %r12,%r10
             0x00007f2daaff8891:   xor    %r12,%r12
             0x00007f2daaff8894:   cmp    %r10,%rax
             0x00007f2daaff8897:   jne    0x00007f2da34ff780           ;   {runtime_call ic_miss_stub}
             0x00007f2daaff889d:   nop
             0x00007f2daaff889e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.01%     0x00007f2daaff88a0:   mov    %eax,-0x14000(%rsp)
   6.46%     0x00007f2daaff88a7:   sub    $0x18,%rsp
   0.01%     0x00007f2daaff88ab:   mov    %rbp,0x10(%rsp)
   2.27%     0x00007f2daaff88b0:   mov    0xc(%rsi),%eax               ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 65)
   2.04%     0x00007f2daaff88b3:   nopw   0x0(%rax,%rax,1)
   0.99%     0x00007f2daaff88bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@0 (line 65)
   0.02%     0x00007f2daaff88c0:   cmpl   $0xc26dc0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f2daaff8906
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$ManySecondarySuperTypes&apos;)}
  26.34%  ╭  0x00007f2daaff88cb:   jne    0x00007f2daaff88e9           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 71)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 65)
   5.21%  │  0x00007f2daaff88d1:   mov    $0x0,%eax
          │  0x00007f2daaff88d6:   mov    0x10(%rsp),%rbp
          │  0x00007f2daaff88db:   add    $0x18,%rsp
          │  0x00007f2daaff88df:   mov    0x348(%r15),%rcx
   5.37%  │  0x00007f2daaff88e6:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007f2daaff88e8:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 65)
          ↘  0x00007f2daaff88e9:   movl   $0xffffffcd,0x370(%r15)
             0x00007f2daaff88f4:   movq   $0x10,0x378(%r15)            ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 71)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 65)
             0x00007f2daaff88ff:   nop
             0x00007f2daaff8900:   call   0x00007f2da350527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@0 (line 65)
....................................................................................................
  48.71%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 772 
  48.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 744 
   0.64%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.98%  <...other 332 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 772 
  48.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 744 
   1.83%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.15%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%       jvmci, level 4
   1.83%               kernel
   0.13%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%      perf-116120.map
   0.00%          c1, level 3
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:52

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

Benchmark                                              Mode  Cnt  Score   Error  Units
TypeCheckSlowPathBenchmark.instanceof_type_check       avgt    5  6.971 ± 0.025  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm  avgt         NaN            ---
