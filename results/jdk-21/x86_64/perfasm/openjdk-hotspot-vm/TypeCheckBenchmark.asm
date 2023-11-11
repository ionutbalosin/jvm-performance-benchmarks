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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark.instanceof_type_check

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.706 ns/op
# Warmup Iteration   2: 41.811 ns/op
# Warmup Iteration   3: 42.543 ns/op
# Warmup Iteration   4: 41.797 ns/op
# Warmup Iteration   5: 41.806 ns/op
Iteration   1: 41.799 ns/op
Iteration   2: 41.790 ns/op
Iteration   3: 41.823 ns/op
Iteration   4: 41.834 ns/op
Iteration   5: 41.826 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark.instanceof_type_check":
  41.814 ±(99.9%) 0.073 ns/op [Average]
  (min, avg, max) = (41.790, 41.814, 41.834), stdev = 0.019
  CI (99.9%): [41.742, 41.887] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 124854 total address lines.
Perf output processed (skipped 56.301 seconds):
 Column 1: cycles (50316 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 561 

               # {method} {0x00007f2898479800} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f291c638120:   mov    0x8(%rsi),%r10d
               0x00007f291c638124:   movabs $0x7f28a3000000,%r11
               0x00007f291c63812e:   add    %r11,%r10
               0x00007f291c638131:   cmp    %r10,%rax
               0x00007f291c638134:   jne    0x00007f291c0c4080           ;   {runtime_call ic_miss_stub}
               0x00007f291c63813a:   xchg   %ax,%ax
               0x00007f291c63813c:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.96%       0x00007f291c638140:   mov    %eax,-0x14000(%rsp)
   4.16%       0x00007f291c638147:   push   %rbp
   0.13%       0x00007f291c638148:   sub    $0x10,%rsp
               0x00007f291c63814c:   cmpl   $0x1,0x20(%r15)
   0.77%       0x00007f291c638154:   jne    0x00007f291c6381f6           ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@-1 (line 69)
   0.13%       0x00007f291c63815a:   mov    0xc(%rsi),%r10d              ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@1 (line 69)
               0x00007f291c63815e:   xchg   %ax,%ax
               0x00007f291c638160:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f291c6381cc
   1.28%       0x00007f291c638165:   movabs $0x7f28a300bab8,%rax         ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
               0x00007f291c63816f:   movabs $0x7f28a3000000,%rsi
               0x00007f291c638179:   add    %r8,%rsi
   0.99%       0x00007f291c63817c:   mov    0x20(%rsi),%r11
   4.54%       0x00007f291c638180:   cmp    %rax,%r11
          ╭    0x00007f291c638183:   je     0x00007f291c6381b7
   0.95%  │    0x00007f291c638185:   mov    0x28(%rsi),%rdi
          │    0x00007f291c638189:   mov    (%rdi),%ecx
   2.69%  │    0x00007f291c63818b:   add    $0x8,%rdi
          │    0x00007f291c63818f:   test   %rax,%rax
  19.13%  │    0x00007f291c638192:   repnz scas %es:(%rdi),%rax
  32.12%  │╭   0x00007f291c638195:   jne    0x00007f291c63819f
          ││   0x00007f291c63819b:   mov    %rax,0x20(%rsi)
   5.77%  │↘   0x00007f291c63819f:   nop
          │ ╭  0x00007f291c6381a0:   je     0x00007f291c6381b7
   2.89%  │ │  0x00007f291c6381a2:   xor    %eax,%eax
          │ │  0x00007f291c6381a4:   add    $0x10,%rsp
   1.85%  │ │  0x00007f291c6381a8:   pop    %rbp
   5.70%  │ │  0x00007f291c6381a9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │  0x00007f291c6381b0:   ja     0x00007f291c6381e0
   0.98%  │ │  0x00007f291c6381b6:   ret                                 ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::closeNotAutoCloseable@1 (line 75)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@4 (line 69)
          ↘ ↘  0x00007f291c6381b7:   mov    $0xffffff45,%esi
               0x00007f291c6381bc:   mov    %r10d,%ebp
               0x00007f291c6381bf:   call   0x00007f291c0c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::closeNotAutoCloseable@4 (line 75)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@4 (line 69)
                                                                         ;   {runtime_call UncommonTrapBlob}
               0x00007f291c6381c4:   nopl   0x234(%rax,%rax,1)           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  85.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 603 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 238)
              0x00007f291c63b748:   mov    $0x1,%ebp
              0x00007f291c63b74d:   test   %r11d,%r11d
          ╭   0x00007f291c63b750:   jne    0x00007f291c63b785           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 239)
          │↗  0x00007f291c63b752:   mov    0x40(%rsp),%rsi
          ││  0x00007f291c63b757:   call   0x00007f291c0c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {optimized virtual_call}
   0.97%  ││  0x00007f291c63b75c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {other}
          ││  0x00007f291c63b764:   mov    0x38(%rsp),%r10
   8.05%  ││  0x00007f291c63b769:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 238)
   3.85%  ││  0x00007f291c63b771:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
          ││  0x00007f291c63b775:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
          ││  0x00007f291c63b77c:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f291c63b77f:   nop
   0.89%  ││  0x00007f291c63b780:   test   %r10d,%r10d
          │╰  0x00007f291c63b783:   je     0x00007f291c63b752           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 239)
          ↘   0x00007f291c63b785:   movabs $0x7f293357eb90,%r10
              0x00007f291c63b78f:   call   *%r10
              0x00007f291c63b792:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007f291c63b79a:   mov    0x30(%rsp),%r10
              0x00007f291c63b79f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 239)
....................................................................................................
  13.76%  <total for region 2>

....[Hottest Regions]...............................................................................
  85.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 561 
  13.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 603 
   0.27%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.51%  <...other 174 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 561 
  13.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 603 
   1.05%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  Assembler::locate_operand 
   0.00%           libjvm.so  xmlStream::write 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  syscall 
   0.05%  <...other 25 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.81%         c2, level 4
   1.05%              kernel
   0.06%           libjvm.so
   0.03%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         interpreter
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

Benchmark                                     Mode  Cnt   Score   Error  Units
TypeCheckBenchmark.instanceof_type_check      avgt    5  41.814 ± 0.073  ns/op
TypeCheckBenchmark.instanceof_type_check:asm  avgt          NaN            ---
