# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 7.161 ns/op
# Warmup Iteration   2: 6.982 ns/op
# Warmup Iteration   3: 7.016 ns/op
# Warmup Iteration   4: 6.963 ns/op
# Warmup Iteration   5: 6.963 ns/op
Iteration   1: 6.963 ns/op
Iteration   2: 6.963 ns/op
Iteration   3: 6.962 ns/op
Iteration   4: 6.962 ns/op
Iteration   5: 6.961 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  6.962 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (6.961, 6.962, 6.963), stdev = 0.001
  CI (99.9%): [6.959, 6.966] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 189206 total address lines.
Perf output processed (skipped 58.591 seconds):
 Column 1: cycles (50695 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 721 

             #           [sp+0x20]  (sp of caller)
             0x00007f60c6b1a100:   mov    0x8(%rsi),%r10d
             0x00007f60c6b1a104:   movabs $0x800000000,%r12
             0x00007f60c6b1a10e:   add    %r12,%r10
             0x00007f60c6b1a111:   xor    %r12,%r12
             0x00007f60c6b1a114:   cmp    %r10,%rax
             0x00007f60c6b1a117:   jne    0x00007f60bf01e780           ;   {runtime_call ic_miss_stub}
             0x00007f60c6b1a11d:   nop
             0x00007f60c6b1a11e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.02%     0x00007f60c6b1a120:   mov    %eax,-0x14000(%rsp)
   6.12%     0x00007f60c6b1a127:   sub    $0x18,%rsp
   0.02%     0x00007f60c6b1a12b:   mov    %rbp,0x10(%rsp)
   2.56%     0x00007f60c6b1a130:   mov    0xc(%rsi),%eax               ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 65)
   2.13%     0x00007f60c6b1a133:   nopw   0x0(%rax,%rax,1)
   0.91%     0x00007f60c6b1a13c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@0 (line 65)
   0.02%     0x00007f60c6b1a140:   cmpl   $0xc26dc0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f60c6b1a186
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$ManySecondarySuperTypes&apos;)}
  26.40%  ╭  0x00007f60c6b1a14b:   jne    0x00007f60c6b1a169           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 71)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 65)
   5.37%  │  0x00007f60c6b1a151:   mov    $0x0,%eax
          │  0x00007f60c6b1a156:   mov    0x10(%rsp),%rbp
          │  0x00007f60c6b1a15b:   add    $0x18,%rsp
          │  0x00007f60c6b1a15f:   mov    0x348(%r15),%rcx
   5.62%  │  0x00007f60c6b1a166:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007f60c6b1a168:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@7 (line 65)
          ↘  0x00007f60c6b1a169:   movl   $0xffffffcd,0x370(%r15)
             0x00007f60c6b1a174:   movq   $0x10,0x378(%r15)            ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 71)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 65)
             0x00007f60c6b1a17f:   nop
             0x00007f60c6b1a180:   call   0x00007f60bf02427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@0 (line 65)
....................................................................................................
  49.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 749 

              0x00007f60c6b1cbd8:   call   0x00007f60e0d624f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f60c6b1cbdd:   nop
              0x00007f60c6b1cbde:   mov    0x10(%rsp),%rdx
              0x00007f60c6b1cbe3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@10 (line 230)
              0x00007f60c6b1cbe7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f60c6b1cbf0:   jmp    0x00007f60c6b1cc0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │   0x00007f60c6b1cbf5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   5.46%  │↗  0x00007f60c6b1cc00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          ││  0x00007f60c6b1cc07:   test   %eax,(%r11)                  ;   {poll}
   0.02%  ││  0x00007f60c6b1cc0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f60c6b1cc0f:   mov    0x8(%rsp),%r10
   5.44%   │  0x00007f60c6b1cc14:   mov    %r10,%rsi
           │  0x00007f60c6b1cc17:   call   0x00007f60bf01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   9.87%   │  0x00007f60c6b1cc1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
           │  0x00007f60c6b1cc1d:   mov    0x20(%rsp),%r10
   4.71%   │  0x00007f60c6b1cc22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 233)
   5.37%   │  0x00007f60c6b1cc25:   mov    0x18(%rsp),%rsi
           │  0x00007f60c6b1cc2a:   cmpb   $0x0,0x94(%rsi)
  18.05%   ╰  0x00007f60c6b1cc31:   je     0x00007f60c6b1cc00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
              0x00007f60c6b1cc33:   mov    %r10,0x20(%rsp)
              0x00007f60c6b1cc38:   call   0x00007f60e0d624f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f60c6b1cc3d:   nop
              0x00007f60c6b1cc3e:   mov    0x10(%rsp),%rdx
              0x00007f60c6b1cc43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 235)
              0x00007f60c6b1cc47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@46 (line 236)
              0x00007f60c6b1cc4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  48.91%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 721 
  48.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 749 
   0.73%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.70%  <...other 261 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check, version 2, compile id 721 
  48.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 749 
   1.60%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  fileStream::write 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%            libjvm.so  os::javaTimeNanos 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%          interpreter  ifnull  198 ifnull  
   0.15%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%       jvmci, level 4
   1.60%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%          c1, level 3
   0.00%      perf-118586.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:51

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
TypeCheckSlowPathBenchmark.instanceof_type_check       avgt    5  6.962 ± 0.004  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm  avgt         NaN            ---
