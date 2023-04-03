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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.977 ns/op
# Warmup Iteration   2: 0.971 ns/op
# Warmup Iteration   3: 1.201 ns/op
# Warmup Iteration   4: 1.164 ns/op
# Warmup Iteration   5: 1.162 ns/op
Iteration   1: 1.161 ns/op
Iteration   2: 1.161 ns/op
Iteration   3: 1.161 ns/op
Iteration   4: 1.163 ns/op
Iteration   5: 1.166 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check":
  1.162 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (1.161, 1.162, 1.166), stdev = 0.002
  CI (99.9%): [1.153, 1.171] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 190327 total address lines.
Perf output processed (skipped 58.677 seconds):
 Column 1: cycles (50862 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 766 

                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@10 (line 230)
               0x00007f84bab1d9e7:   mov    $0x0,%r11
               0x00007f84bab1d9ee:   mov    0x10(%rsp),%r10
               0x00007f84bab1d9f3:   mov    (%rsp),%rsi
          ╭    0x00007f84bab1d9f7:   jmp    0x00007f84bab1da1a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │    0x00007f84bab1d9fc:   nopl   0x0(%rax)                    ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::closeNotAutoCloseable@1 (line 73)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check@4 (line 67)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
  25.92%  │ ↗  0x00007f84bab1da00:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 233)
   0.00%  │ │  0x00007f84bab1da03:   cmpb   $0x0,0x94(%rsi)
   0.73%  │╭│  0x00007f84bab1da0a:   jne    0x00007f84bab1da33           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   6.19%  │││  0x00007f84bab1da10:   mov    0x348(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [8]=Oop [24]=Oop }
          │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
  25.87%  │││  0x00007f84bab1da17:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││                                                            ;   {poll}
   6.01%  ↘││  0x00007f84bab1da1a:   mov    0xc(%r10),%r8d               ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check@1 (line 67)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.76%   ││  0x00007f84bab1da1e:   xchg   %ax,%ax                      ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [8]=Oop [24]=Oop }
           ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
   5.97%   ││  0x00007f84bab1da20:   cmpl   $0xc26dc0,0x8(,%r8,8)        ; implicit exception: dispatches to 0x00007f84bab1db06
           ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckBenchmark$ManySecondarySuperTypes&apos;)}
  26.28%   │╰  0x00007f84bab1da2c:   je     0x00007f84bab1da00
           │   0x00007f84bab1da2e:   jmp    0x00007f84bab1da6e           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
           ↘   0x00007f84bab1da33:   mov    %r11,0x20(%rsp)
               0x00007f84bab1da38:   call   0x00007f84d186d4f0           ;   {runtime_call os::javaTimeNanos()}
               0x00007f84bab1da3d:   nop
               0x00007f84bab1da3e:   mov    0x18(%rsp),%rdx
               0x00007f84bab1da43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 235)
               0x00007f84bab1da47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 766 
   0.94%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.85%  <...other 310 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 766 
   1.93%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  os::elapsed_counter 
   0.17%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.72%       jvmci, level 4
   1.93%               kernel
   0.15%            libjvm.so
   0.07%         libc-2.31.so
   0.05%                     
   0.03%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%  libjvmcicompiler.so
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

Benchmark                                      Mode  Cnt  Score   Error  Units
TypeCheckBenchmark.instanceof_type_check       avgt    5  1.162 ± 0.009  ns/op
TypeCheckBenchmark.instanceof_type_check:·asm  avgt         NaN            ---
