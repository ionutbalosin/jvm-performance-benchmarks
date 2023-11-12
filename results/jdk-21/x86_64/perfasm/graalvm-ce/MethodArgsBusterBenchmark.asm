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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark.method_args_buster

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.719 ns/op
# Warmup Iteration   2: 6.589 ns/op
# Warmup Iteration   3: 6.603 ns/op
# Warmup Iteration   4: 6.574 ns/op
# Warmup Iteration   5: 6.574 ns/op
Iteration   1: 6.574 ns/op
Iteration   2: 6.574 ns/op
Iteration   3: 6.574 ns/op
Iteration   4: 6.574 ns/op
Iteration   5: 6.574 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark.method_args_buster":
  6.574 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.574, 6.574, 6.574), stdev = 0.001
  CI (99.9%): [6.573, 6.575] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark.method_args_buster:asm":
PrintAssembly processed: 218435 total address lines.
Perf output processed (skipped 60.357 seconds):
 Column 1: cycles (50756 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub, version 6, compile id 980 

              0x00007fb653245390:   mov    0x18(%rsp),%rsi
              0x00007fb653245395:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fb6532453a0:   cmpb   $0x0,0x94(%rsi)
              0x00007fb6532453a7:   jne    0x00007fb65324543a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@33 (line 196)
              0x00007fb6532453ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fb6532453b6:   jmp    0x00007fb6532453cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@13 (line 194)
          │   0x00007fb6532453bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@33 (line 196)
   5.82%  │↗  0x00007fb6532453c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@33 (line 196)
          ││  0x00007fb6532453c7:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007fb6532453ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@13 (line 194)
          ↘│  0x00007fb6532453cf:   mov    0x8(%rsp),%r10
   5.93%   │  0x00007fb6532453d4:   mov    %r10,%rsi
           │  0x00007fb6532453d7:   call   0x00007fb652c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual method_args_buster {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  39.78%   │  0x00007fb6532453dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007fb6532453e4:   mov    0x20(%rsp),%r10
   0.63%   │  0x00007fb6532453e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@26 (line 195)
   5.74%   │  0x00007fb6532453ec:   mov    0x18(%rsp),%rsi
           │  0x00007fb6532453f1:   cmpb   $0x0,0x94(%rsi)
  22.96%   ╰  0x00007fb6532453f8:   je     0x00007fb6532453c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@33 (line 196)
              0x00007fb6532453fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@36 (line 197)
              0x00007fb6532453ff:   nop
              0x00007fb653245400:   call   0x00007fb66a4fedf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb653245405:   nop
              0x00007fb653245406:   mov    0x10(%rsp),%rdx
              0x00007fb65324540b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@40 (line 197)
              0x00007fb65324540f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  80.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster, version 2, compile id 945 

                #           [sp+0x20]  (sp of caller)
                0x00007fb65323c280:   mov    0x8(%rsi),%r10d
                0x00007fb65323c284:   movabs $0x7fb5d3000000,%r12
                0x00007fb65323c28e:   add    %r12,%r10
                0x00007fb65323c291:   xor    %r12,%r12
                0x00007fb65323c294:   cmp    %r10,%rax
                0x00007fb65323c297:   jne    0x00007fb652c2f080           ;   {runtime_call ic_miss_stub}
                0x00007fb65323c29d:   data16 xchg %ax,%ax
              [Verified Entry Point]
                0x00007fb65323c2a0:   mov    %eax,-0x14000(%rsp)
   5.58%        0x00007fb65323c2a7:   sub    $0x18,%rsp
   0.00%        0x00007fb65323c2ab:   nop
                0x00007fb65323c2ac:   cmpl   $0x1,0x20(%r15)
   5.84%  ╭     0x00007fb65323c2b4:   jne    0x00007fb65323c2d3
   2.91%  │ ↗   0x00007fb65323c2ba:   mov    $0xcc,%rax                   ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster@192 (line 60)
          │ │   0x00007fb65323c2c1:   add    $0x18,%rsp
          │ │↗  0x00007fb65323c2c5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fb65323c2cc:   ja     0x00007fb65323c2e0
   2.75%  ││││  0x00007fb65323c2d2:   ret    
          ↘│││  0x00007fb65323c2d3:   mov    %rbp,0x10(%rsp)
           │││  0x00007fb65323c2d8:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fb65323c2dd:   jmp    0x00007fb65323c2ba
           │ │  0x00007fb65323c2df:   hlt    
           ↘ ╰  0x00007fb65323c2e0:   lea    -0x22(%rip),%rcx        # 0x00007fb65323c2c5
                0x00007fb65323c2e7:   mov    %rcx,0x468(%r15)
                0x00007fb65323c2ee:   jmp    0x00007fb652c36000           ;   {runtime_call SafepointBlob}
                0x00007fb65323c2f3:   hlt    
              [Exception Handler]
                0x00007fb65323c2f4:   call   0x00007fb652db4780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  17.09%  <total for region 2>

....[Hottest Regions]...............................................................................
  80.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub, version 6, compile id 980 
  17.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster, version 2, compile id 945 
   0.36%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.08%  <...other 353 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub, version 6, compile id 980 
  17.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster, version 2, compile id 945 
   1.62%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.17%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.94%      jvmci, level 4
   1.62%              kernel
   0.16%           libjvm.so
   0.10%                    
   0.09%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:54

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

Benchmark                                         Mode  Cnt  Score   Error  Units
MethodArgsBusterBenchmark.method_args_buster      avgt    5  6.574 ± 0.001  ns/op
MethodArgsBusterBenchmark.method_args_buster:asm  avgt         NaN            ---
