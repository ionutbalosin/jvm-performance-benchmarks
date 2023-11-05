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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 16)

# Run progress: 0.00% complete, ETA 00:08:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 40.785 ns/op
# Warmup Iteration   2: 40.577 ns/op
# Warmup Iteration   3: 40.311 ns/op
# Warmup Iteration   4: 40.573 ns/op
# Warmup Iteration   5: 40.574 ns/op
Iteration   1: 40.574 ns/op
Iteration   2: 40.573 ns/op
Iteration   3: 40.575 ns/op
Iteration   4: 40.577 ns/op
Iteration   5: 40.576 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  40.575 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (40.573, 40.575, 40.577), stdev = 0.002
  CI (99.9%): [40.569, 40.581] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 117788 total address lines.
Perf output processed (skipped 55.724 seconds):
 Column 1: cycles (50854 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 518 

               0x00007f764cf684d0:   cmp    $0xc269d8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
               0x00007f764cf684d7:   jne    0x00007f764cf685e0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
               0x00007f764cf684dd:   mov    $0x1,%r11d                   ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 341)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
            ↗  0x00007f764cf684e3:   movzbl 0x94(%rdx),%ecx              ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 234)
   3.74%    │  0x00007f764cf684ea:   mov    0x348(%r15),%r8
   0.00%    │  0x00007f764cf684f1:   add    $0x1,%rbp                    ; ImmutableOopMap {r10=Oop r9=Oop rbx=Oop rdx=Oop }
            │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
            │  0x00007f764cf684f5:   test   %eax,(%r8)                   ;   {poll}
   4.61%    │  0x00007f764cf684f8:   test   %ecx,%ecx
            │  0x00007f764cf684fa:   nopw   0x0(%rax,%rax,1)
          ╭ │  0x00007f764cf68500:   jne    0x00007f764cf68547           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          │ │  0x00007f764cf68506:   mov    0x10(%r9),%r11d              ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 103)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.95%  │ │  0x00007f764cf6850a:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f764cf68604
          │ │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   1.80%  │ │  0x00007f764cf6850f:   movabs $0x800000000,%rsi
          │ │  0x00007f764cf68519:   add    %r8,%rsi
   0.85%  │ │  0x00007f764cf6851c:   mov    0x20(%rsi),%rcx
   4.60%  │ │  0x00007f764cf68520:   cmp    %rax,%rcx
          │ │  0x00007f764cf68523:   je     0x00007f764cf684d0
   0.87%  │ │  0x00007f764cf68525:   mov    0x28(%rsi),%rdi
          │ │  0x00007f764cf68529:   mov    (%rdi),%ecx
   2.78%  │ │  0x00007f764cf6852b:   add    $0x8,%rdi
          │ │  0x00007f764cf6852f:   test   %rax,%rax
  35.86%  │ │  0x00007f764cf68532:   repnz scas %es:(%rdi),%rax
  34.37%  │╭│  0x00007f764cf68535:   jne    0x00007f764cf6853f
          │││  0x00007f764cf6853b:   mov    %rax,0x20(%rsi)
   5.55%  │↘│  0x00007f764cf6853f:   nop
   0.00%  │ │  0x00007f764cf68540:   je     0x00007f764cf684d0
   1.83%  │ │  0x00007f764cf68542:   xor    %r11d,%r11d
          │ ╰  0x00007f764cf68545:   jmp    0x00007f764cf684e3           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          ↘    0x00007f764cf68547:   movabs $0x7f7663211d10,%r10
               0x00007f764cf68551:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@37 (line 235)
               0x00007f764cf68554:   mov    %rax,0x30(%rbx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 235)
               0x00007f764cf68558:   mov    %r12,0x20(%rbx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@46 (line 236)
               0x00007f764cf6855c:   vcvtsi2sd %rbp,%xmm0,%xmm0
....................................................................................................
  97.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 518 
   0.68%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.95%  <...other 289 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 518 
   1.77%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%           libjvm.so  fileStream::flush 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  os::elapsed_counter 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%      hsdis-amd64.so  hsdis_read_memory_func 
   0.17%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.82%         c2, level 4
   1.77%              kernel
   0.18%           libjvm.so
   0.10%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.03%                    
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 32)

# Run progress: 20.00% complete, ETA 00:07:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 53.329 ns/op
# Warmup Iteration   2: 52.976 ns/op
# Warmup Iteration   3: 52.713 ns/op
# Warmup Iteration   4: 53.051 ns/op
# Warmup Iteration   5: 52.972 ns/op
Iteration   1: 53.177 ns/op
Iteration   2: 52.960 ns/op
Iteration   3: 52.958 ns/op
Iteration   4: 52.958 ns/op
Iteration   5: 52.958 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  53.002 ±(99.9%) 0.377 ns/op [Average]
  (min, avg, max) = (52.958, 53.002, 53.177), stdev = 0.098
  CI (99.9%): [52.625, 53.379] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 120950 total address lines.
Perf output processed (skipped 55.867 seconds):
 Column 1: cycles (50412 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 530 

               0x00007f103cf68b50:   cmp    $0xc269d8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
               0x00007f103cf68b57:   jne    0x00007f103cf68c60           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
               0x00007f103cf68b5d:   mov    $0x1,%r11d                   ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 341)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
            ↗  0x00007f103cf68b63:   movzbl 0x94(%rdx),%ecx              ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 234)
   2.86%    │  0x00007f103cf68b6a:   mov    0x348(%r15),%r8
            │  0x00007f103cf68b71:   add    $0x1,%rbp                    ; ImmutableOopMap {r10=Oop r9=Oop rbx=Oop rdx=Oop }
            │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
            │  0x00007f103cf68b75:   test   %eax,(%r8)                   ;   {poll}
   3.52%    │  0x00007f103cf68b78:   test   %ecx,%ecx
            │  0x00007f103cf68b7a:   nopw   0x0(%rax,%rax,1)
          ╭ │  0x00007f103cf68b80:   jne    0x00007f103cf68bc7           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          │ │  0x00007f103cf68b86:   mov    0x10(%r9),%r11d              ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 103)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.77%  │ │  0x00007f103cf68b8a:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f103cf68c84
          │ │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   1.40%  │ │  0x00007f103cf68b8f:   movabs $0x800000000,%rsi
          │ │  0x00007f103cf68b99:   add    %r8,%rsi
   0.68%  │ │  0x00007f103cf68b9c:   mov    0x20(%rsi),%rcx
   3.61%  │ │  0x00007f103cf68ba0:   cmp    %rax,%rcx
          │ │  0x00007f103cf68ba3:   je     0x00007f103cf68b50
   0.67%  │ │  0x00007f103cf68ba5:   mov    0x28(%rsi),%rdi
          │ │  0x00007f103cf68ba9:   mov    (%rdi),%ecx
   2.21%  │ │  0x00007f103cf68bab:   add    $0x8,%rdi
          │ │  0x00007f103cf68baf:   test   %rax,%rax
  50.26%  │ │  0x00007f103cf68bb2:   repnz scas %es:(%rdi),%rax
  26.78%  │╭│  0x00007f103cf68bb5:   jne    0x00007f103cf68bbf
          │││  0x00007f103cf68bbb:   mov    %rax,0x20(%rsi)
   4.40%  │↘│  0x00007f103cf68bbf:   nop
          │ │  0x00007f103cf68bc0:   je     0x00007f103cf68b50
   1.43%  │ │  0x00007f103cf68bc2:   xor    %r11d,%r11d
          │ ╰  0x00007f103cf68bc5:   jmp    0x00007f103cf68b63           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          ↘    0x00007f103cf68bc7:   movabs $0x7f1053163d10,%r10
               0x00007f103cf68bd1:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@37 (line 235)
               0x00007f103cf68bd4:   mov    %rax,0x30(%rbx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 235)
               0x00007f103cf68bd8:   mov    %r12,0x20(%rbx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@46 (line 236)
               0x00007f103cf68bdc:   vcvtsi2sd %rbp,%xmm0,%xmm0
....................................................................................................
  98.58%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 530 
   0.31%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.60%  <...other 202 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 530 
   1.12%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  outputStream::update_position 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  strchr@plt 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.09%  <...other 45 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.58%         c2, level 4
   1.12%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.05%                    
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         interpreter
   0.00%      perf-47058.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 64)

# Run progress: 40.00% complete, ETA 00:05:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 78.405 ns/op
# Warmup Iteration   2: 77.727 ns/op
# Warmup Iteration   3: 77.527 ns/op
# Warmup Iteration   4: 77.724 ns/op
# Warmup Iteration   5: 77.723 ns/op
Iteration   1: 77.720 ns/op
Iteration   2: 77.694 ns/op
Iteration   3: 77.717 ns/op
Iteration   4: 77.720 ns/op
Iteration   5: 77.718 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  77.714 ±(99.9%) 0.043 ns/op [Average]
  (min, avg, max) = (77.694, 77.714, 77.720), stdev = 0.011
  CI (99.9%): [77.671, 77.757] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 123735 total address lines.
Perf output processed (skipped 55.918 seconds):
 Column 1: cycles (51042 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 536 

               0x00007fd34cf683d0:   cmp    $0xc269d8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
               0x00007fd34cf683d7:   jne    0x00007fd34cf684e0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
               0x00007fd34cf683dd:   mov    $0x1,%r11d                   ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 341)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
            ↗  0x00007fd34cf683e3:   movzbl 0x94(%rdx),%ecx              ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 234)
   2.03%    │  0x00007fd34cf683ea:   mov    0x348(%r15),%r8
   0.00%    │  0x00007fd34cf683f1:   add    $0x1,%rbp                    ; ImmutableOopMap {r10=Oop r9=Oop rbx=Oop rdx=Oop }
            │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
            │  0x00007fd34cf683f5:   test   %eax,(%r8)                   ;   {poll}
   2.37%    │  0x00007fd34cf683f8:   test   %ecx,%ecx
            │  0x00007fd34cf683fa:   nopw   0x0(%rax,%rax,1)
          ╭ │  0x00007fd34cf68400:   jne    0x00007fd34cf68447           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          │ │  0x00007fd34cf68406:   mov    0x10(%r9),%r11d              ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 103)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.46%  │ │  0x00007fd34cf6840a:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007fd34cf68504
          │ │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.99%  │ │  0x00007fd34cf6840f:   movabs $0x800000000,%rsi
          │ │  0x00007fd34cf68419:   add    %r8,%rsi
   0.43%  │ │  0x00007fd34cf6841c:   mov    0x20(%rsi),%rcx
   2.40%  │ │  0x00007fd34cf68420:   cmp    %rax,%rcx
          │ │  0x00007fd34cf68423:   je     0x00007fd34cf683d0
   0.48%  │ │  0x00007fd34cf68425:   mov    0x28(%rsi),%rdi
          │ │  0x00007fd34cf68429:   mov    (%rdi),%ecx
   1.36%  │ │  0x00007fd34cf6842b:   add    $0x8,%rdi
          │ │  0x00007fd34cf6842f:   test   %rax,%rax
  65.11%  │ │  0x00007fd34cf68432:   repnz scas %es:(%rdi),%rax
  17.26%  │╭│  0x00007fd34cf68435:   jne    0x00007fd34cf6843f
          │││  0x00007fd34cf6843b:   mov    %rax,0x20(%rsi)
   3.02%  │↘│  0x00007fd34cf6843f:   nop
          │ │  0x00007fd34cf68440:   je     0x00007fd34cf683d0
   0.97%  │ │  0x00007fd34cf68442:   xor    %r11d,%r11d
          │ ╰  0x00007fd34cf68445:   jmp    0x00007fd34cf683e3           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          ↘    0x00007fd34cf68447:   movabs $0x7fd364bf4d10,%r10
               0x00007fd34cf68451:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@37 (line 235)
               0x00007fd34cf68454:   mov    %rax,0x30(%rbx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 235)
               0x00007fd34cf68458:   mov    %r12,0x20(%rbx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@46 (line 236)
               0x00007fd34cf6845c:   vcvtsi2sd %rbp,%xmm0,%xmm0
....................................................................................................
  96.88%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 536 
   1.24%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.15%  <...other 377 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 536 
   2.76%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.00%        libc-2.31.so  __libc_enable_asynccancel 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.15%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.88%         c2, level 4
   2.76%              kernel
   0.18%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 128)

# Run progress: 60.00% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 127.889 ns/op
# Warmup Iteration   2: 127.271 ns/op
# Warmup Iteration   3: 127.135 ns/op
# Warmup Iteration   4: 127.246 ns/op
# Warmup Iteration   5: 127.249 ns/op
Iteration   1: 127.253 ns/op
Iteration   2: 127.252 ns/op
Iteration   3: 127.248 ns/op
Iteration   4: 127.253 ns/op
Iteration   5: 127.250 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  127.251 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (127.248, 127.251, 127.253), stdev = 0.002
  CI (99.9%): [127.242, 127.261] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 121535 total address lines.
Perf output processed (skipped 55.854 seconds):
 Column 1: cycles (50922 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 549 

               0x00007f2ba4f6bad0:   cmp    $0xc269d8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
               0x00007f2ba4f6bad7:   jne    0x00007f2ba4f6bbe0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
               0x00007f2ba4f6badd:   mov    $0x1,%r11d                   ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 341)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
            ↗  0x00007f2ba4f6bae3:   movzbl 0x94(%rdx),%ecx              ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 234)
   1.29%    │  0x00007f2ba4f6baea:   mov    0x348(%r15),%r8
            │  0x00007f2ba4f6baf1:   add    $0x1,%rbp                    ; ImmutableOopMap {r10=Oop r9=Oop rbx=Oop rdx=Oop }
            │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
            │  0x00007f2ba4f6baf5:   test   %eax,(%r8)                   ;   {poll}
   1.40%    │  0x00007f2ba4f6baf8:   test   %ecx,%ecx
            │  0x00007f2ba4f6bafa:   nopw   0x0(%rax,%rax,1)
          ╭ │  0x00007f2ba4f6bb00:   jne    0x00007f2ba4f6bb47           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          │ │  0x00007f2ba4f6bb06:   mov    0x10(%r9),%r11d              ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 103)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.28%  │ │  0x00007f2ba4f6bb0a:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f2ba4f6bc04
          │ │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.59%  │ │  0x00007f2ba4f6bb0f:   movabs $0x800000000,%rsi
          │ │  0x00007f2ba4f6bb19:   add    %r8,%rsi
   0.28%  │ │  0x00007f2ba4f6bb1c:   mov    0x20(%rsi),%rcx
   1.44%  │ │  0x00007f2ba4f6bb20:   cmp    %rax,%rcx
          │ │  0x00007f2ba4f6bb23:   je     0x00007f2ba4f6bad0
   0.28%  │ │  0x00007f2ba4f6bb25:   mov    0x28(%rsi),%rdi
          │ │  0x00007f2ba4f6bb29:   mov    (%rdi),%ecx
   0.88%  │ │  0x00007f2ba4f6bb2b:   add    $0x8,%rdi
          │ │  0x00007f2ba4f6bb2f:   test   %rax,%rax
  78.10%  │ │  0x00007f2ba4f6bb32:   repnz scas %es:(%rdi),%rax
  10.85%  │╭│  0x00007f2ba4f6bb35:   jne    0x00007f2ba4f6bb3f
          │││  0x00007f2ba4f6bb3b:   mov    %rax,0x20(%rsi)
   1.68%  │↘│  0x00007f2ba4f6bb3f:   nop
          │ │  0x00007f2ba4f6bb40:   je     0x00007f2ba4f6bad0
   0.60%  │ │  0x00007f2ba4f6bb42:   xor    %r11d,%r11d
   0.00%  │ ╰  0x00007f2ba4f6bb45:   jmp    0x00007f2ba4f6bae3           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          ↘    0x00007f2ba4f6bb47:   movabs $0x7f2bb9e97d10,%r10
               0x00007f2ba4f6bb51:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@37 (line 235)
               0x00007f2ba4f6bb54:   mov    %rax,0x30(%rbx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 235)
               0x00007f2ba4f6bb58:   mov    %r12,0x20(%rbx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@46 (line 236)
               0x00007f2ba4f6bb5c:   vcvtsi2sd %rbp,%xmm0,%xmm0
               0x00007f2ba4f6bb61:   vmovsd %xmm0,0x18(%rbx)             ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.68%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 549 
   0.69%              kernel  [unknown] 
   0.38%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.76%  <...other 275 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 549 
   1.99%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  os::elapsed_counter 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%           libjvm.so  ImplicitExceptionTable::continuation_offset 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  fileStream::write 
   0.15%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.68%         c2, level 4
   1.99%              kernel
   0.13%           libjvm.so
   0.10%        libc-2.31.so
   0.05%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%      perf-47208.map
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 256)

# Run progress: 80.00% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 228.431 ns/op
# Warmup Iteration   2: 226.320 ns/op
# Warmup Iteration   3: 226.596 ns/op
# Warmup Iteration   4: 226.351 ns/op
# Warmup Iteration   5: 226.321 ns/op
Iteration   1: 226.316 ns/op
Iteration   2: 226.321 ns/op
Iteration   3: 226.323 ns/op
Iteration   4: 226.324 ns/op
Iteration   5: 226.315 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  226.320 ±(99.9%) 0.016 ns/op [Average]
  (min, avg, max) = (226.315, 226.320, 226.324), stdev = 0.004
  CI (99.9%): [226.304, 226.335] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 125457 total address lines.
Perf output processed (skipped 56.056 seconds):
 Column 1: cycles (51375 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 567 

               0x00007f4988f6ccd0:   cmp    $0xc269d8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
               0x00007f4988f6ccd7:   jne    0x00007f4988f6cde0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
               0x00007f4988f6ccdd:   mov    $0x1,%r11d                   ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 341)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 232)
            ↗  0x00007f4988f6cce3:   movzbl 0x94(%rdx),%ecx              ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 234)
   0.68%    │  0x00007f4988f6ccea:   mov    0x348(%r15),%r8
            │  0x00007f4988f6ccf1:   add    $0x1,%rbp                    ; ImmutableOopMap {r10=Oop r9=Oop rbx=Oop rdx=Oop }
            │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
            │  0x00007f4988f6ccf5:   test   %eax,(%r8)                   ;   {poll}
   0.85%    │  0x00007f4988f6ccf8:   test   %ecx,%ecx
            │  0x00007f4988f6ccfa:   nopw   0x0(%rax,%rax,1)
          ╭ │  0x00007f4988f6cd00:   jne    0x00007f4988f6cd47           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          │ │  0x00007f4988f6cd06:   mov    0x10(%r9),%r11d              ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@1 (line 103)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.15%  │ │  0x00007f4988f6cd0a:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f4988f6ce04
          │ │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.37%  │ │  0x00007f4988f6cd0f:   movabs $0x800000000,%rsi
          │ │  0x00007f4988f6cd19:   add    %r8,%rsi
   0.17%  │ │  0x00007f4988f6cd1c:   mov    0x20(%rsi),%rcx
   0.80%  │ │  0x00007f4988f6cd20:   cmp    %rax,%rcx
          │ │  0x00007f4988f6cd23:   je     0x00007f4988f6ccd0
   0.17%  │ │  0x00007f4988f6cd25:   mov    0x28(%rsi),%rdi
          │ │  0x00007f4988f6cd29:   mov    (%rdi),%ecx
   0.46%  │ │  0x00007f4988f6cd2b:   add    $0x8,%rdi
          │ │  0x00007f4988f6cd2f:   test   %rax,%rax
  85.63%  │ │  0x00007f4988f6cd32:   repnz scas %es:(%rdi),%rax
   6.15%  │╭│  0x00007f4988f6cd35:   jne    0x00007f4988f6cd3f
          │││  0x00007f4988f6cd3b:   mov    %rax,0x20(%rsi)
   1.05%  │↘│  0x00007f4988f6cd3f:   nop
          │ │  0x00007f4988f6cd40:   je     0x00007f4988f6ccd0
   0.34%  │ │  0x00007f4988f6cd42:   xor    %r11d,%r11d
          │ ╰  0x00007f4988f6cd45:   jmp    0x00007f4988f6cce3           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          ↘    0x00007f4988f6cd47:   movabs $0x7f49a0acad10,%r10
               0x00007f4988f6cd51:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@37 (line 235)
               0x00007f4988f6cd54:   mov    %rax,0x30(%rbx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 235)
               0x00007f4988f6cd58:   mov    %r12,0x20(%rbx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@46 (line 236)
               0x00007f4988f6cd5c:   vcvtsi2sd %rbp,%xmm0,%xmm0
....................................................................................................
  96.83%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 567 
   1.97%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.73%  <...other 266 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 567 
   2.84%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  Rdtsc::elapsed_counter 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  G1CollectionSet::update_young_region_prediction 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.16%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.83%         c2, level 4
   2.84%              kernel
   0.17%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:09:02

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

Benchmark                                              (supertypes)  Mode  Cnt    Score   Error  Units
TypeCheckSlowPathBenchmark.instanceof_type_check                 16  avgt    5   40.575 ± 0.006  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            16  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                 32  avgt    5   53.002 ± 0.377  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            32  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                 64  avgt    5   77.714 ± 0.043  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            64  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                128  avgt    5  127.251 ± 0.009  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm           128  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                256  avgt    5  226.320 ± 0.016  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm           256  avgt           NaN            ---
