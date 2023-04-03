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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 33.778 ns/op
# Warmup Iteration   2: 33.735 ns/op
# Warmup Iteration   3: 33.662 ns/op
# Warmup Iteration   4: 33.613 ns/op
# Warmup Iteration   5: 33.618 ns/op
Iteration   1: 33.617 ns/op
Iteration   2: 33.611 ns/op
Iteration   3: 33.610 ns/op
Iteration   4: 33.608 ns/op
Iteration   5: 33.610 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check":
  33.611 ±(99.9%) 0.014 ns/op [Average]
  (min, avg, max) = (33.608, 33.611, 33.617), stdev = 0.004
  CI (99.9%): [33.597, 33.625] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 120243 total address lines.
Perf output processed (skipped 55.902 seconds):
 Column 1: cycles (51023 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 530 

               0x00007f5030f69b48:   mov    $0x1,%ebp
               0x00007f5030f69b4d:   test   %r10d,%r10d
          ╭    0x00007f5030f69b50:   jne    0x00007f5030f69bc5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          │    0x00007f5030f69b56:   data16 nopw 0x0(%rax,%rax,1)        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          │ ↗  0x00007f5030f69b60:   mov    0xc(%r8),%r9d                ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check@1 (line 67)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
          │ │  0x00007f5030f69b64:   mov    0x8(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007f5030f69c58
   2.35%  │ │  0x00007f5030f69b69:   movabs $0x800000000,%rsi
   0.00%  │ │  0x00007f5030f69b73:   add    %r10,%rsi
   1.10%  │ │  0x00007f5030f69b76:   mov    0x20(%rsi),%r10
   5.72%  │ │  0x00007f5030f69b7a:   nopw   0x0(%rax,%rax,1)
          │ │  0x00007f5030f69b80:   cmp    %rax,%r10
          │ │  0x00007f5030f69b83:   je     0x00007f5030f69bf7
   1.11%  │ │  0x00007f5030f69b89:   mov    0x28(%rsi),%rdi
          │ │  0x00007f5030f69b8d:   mov    (%rdi),%ecx
   3.44%  │ │  0x00007f5030f69b8f:   add    $0x8,%rdi
          │ │  0x00007f5030f69b93:   test   %rax,%rax
  24.87%  │ │  0x00007f5030f69b96:   repnz scas %es:(%rdi),%rax
  40.77%  │╭│  0x00007f5030f69b99:   jne    0x00007f5030f69ba3
          │││  0x00007f5030f69b9f:   mov    %rax,0x20(%rsi)
   6.87%  │↘│  0x00007f5030f69ba3:   je     0x00007f5030f69bf7           ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 341)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
   1.17%  │ │  0x00007f5030f69ba5:   movzbl 0x94(%rdx),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 234)
   4.50%  │ │  0x00007f5030f69bad:   mov    0x348(%r15),%r9
          │ │  0x00007f5030f69bb4:   add    $0x1,%rbp                    ; ImmutableOopMap {r11=Oop r8=Oop rbx=Oop rdx=Oop }
          │ │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          │ │  0x00007f5030f69bb8:   test   %eax,(%r9)                   ;   {poll}
   5.58%  │ │  0x00007f5030f69bbb:   nopl   0x0(%rax,%rax,1)
          │ │  0x00007f5030f69bc0:   test   %r10d,%r10d
          │ ╰  0x00007f5030f69bc3:   je     0x00007f5030f69b60           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          ↘    0x00007f5030f69bc5:   movabs $0x7f50450c9d10,%r10
               0x00007f5030f69bcf:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@37 (line 235)
               0x00007f5030f69bd2:   mov    %rax,0x30(%rbx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 235)
               0x00007f5030f69bd6:   mov    %r12,0x20(%rbx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@46 (line 236)
....................................................................................................
  97.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 530 
   0.91%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  HighResTimeSampler::take_sample 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%              kernel  [unknown] 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.97%  <...other 304 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 530 
   2.09%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%           libjvm.so  HighResTimeSampler::take_sample 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::flush 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  syscall 
   0.18%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.48%         c2, level 4
   2.09%              kernel
   0.19%           libjvm.so
   0.10%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.04%                    
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%      perf-46790.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:49

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

Benchmark                                      Mode  Cnt   Score   Error  Units
TypeCheckBenchmark.instanceof_type_check       avgt    5  33.611 ± 0.014  ns/op
TypeCheckBenchmark.instanceof_type_check:·asm  avgt          NaN            ---
