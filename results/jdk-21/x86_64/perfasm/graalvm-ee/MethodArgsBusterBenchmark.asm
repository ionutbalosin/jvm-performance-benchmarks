# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
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
# Warmup Iteration   1: 7.335 ns/op
# Warmup Iteration   2: 6.572 ns/op
# Warmup Iteration   3: 6.601 ns/op
# Warmup Iteration   4: 6.574 ns/op
# Warmup Iteration   5: 6.576 ns/op
Iteration   1: 6.576 ns/op
Iteration   2: 6.578 ns/op
Iteration   3: 6.575 ns/op
Iteration   4: 6.575 ns/op
Iteration   5: 6.580 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark.method_args_buster":
  6.577 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (6.575, 6.577, 6.580), stdev = 0.002
  CI (99.9%): [6.568, 6.586] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark.method_args_buster:asm":
PrintAssembly processed: 227567 total address lines.
Perf output processed (skipped 60.731 seconds):
 Column 1: cycles (50744 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub, version 6, compile id 989 

              0x00007fe26ed86ef3:   mov    0x10(%rsp),%rdx
              0x00007fe26ed86ef8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@10 (line 192)
              0x00007fe26ed86efc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fe26ed86f05:   jmp    0x00007fe26ed86f2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@13 (line 194)
          │   0x00007fe26ed86f0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fe26ed86f15:   data16 data16 xchg %ax,%ax
          │   0x00007fe26ed86f19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@33 (line 196)
   5.64%  │↗  0x00007fe26ed86f20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@33 (line 196)
          ││  0x00007fe26ed86f27:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007fe26ed86f2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@13 (line 194)
          ↘│  0x00007fe26ed86f2f:   mov    0x8(%rsp),%r10
   5.77%   │  0x00007fe26ed86f34:   mov    %r10,%rsi
           │  0x00007fe26ed86f37:   call   0x00007fe26e764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual method_args_buster {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  39.58%   │  0x00007fe26ed86f3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   0.00%   │  0x00007fe26ed86f44:   mov    0x20(%rsp),%r10
   0.60%   │  0x00007fe26ed86f49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@26 (line 195)
   5.78%   │  0x00007fe26ed86f4c:   mov    0x18(%rsp),%rsi
           │  0x00007fe26ed86f51:   cmpb   $0x0,0x94(%rsi)
  23.37%   ╰  0x00007fe26ed86f58:   je     0x00007fe26ed86f20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@33 (line 196)
              0x00007fe26ed86f5a:   mov    %r10,0x20(%rsp)
              0x00007fe26ed86f5f:   nop
              0x00007fe26ed86f60:   call   0x00007fe285f45df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe26ed86f65:   nop
              0x00007fe26ed86f66:   mov    0x10(%rsp),%rdx
              0x00007fe26ed86f6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@40 (line 197)
              0x00007fe26ed86f6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub@46 (line 198)
....................................................................................................
  80.76%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster, version 2, compile id 961 

                # {method} {0x00007fe1e8484cc0} &apos;method_args_buster&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MethodArgsBusterBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fe26ed7f480:   mov    0x8(%rsi),%r10d
                0x00007fe26ed7f484:   movabs $0x7fe1f3000000,%r12
                0x00007fe26ed7f48e:   add    %r12,%r10
                0x00007fe26ed7f491:   xor    %r12,%r12
                0x00007fe26ed7f494:   cmp    %r10,%rax
                0x00007fe26ed7f497:   jne    0x00007fe26e764080           ;   {runtime_call ic_miss_stub}
                0x00007fe26ed7f49d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.01%        0x00007fe26ed7f4a0:   mov    %eax,-0x14000(%rsp)
   5.67%        0x00007fe26ed7f4a7:   sub    $0x18,%rsp
   0.00%        0x00007fe26ed7f4ab:   nop
                0x00007fe26ed7f4ac:   cmpl   $0x1,0x20(%r15)
   5.83%  ╭     0x00007fe26ed7f4b4:   jne    0x00007fe26ed7f4d3
   2.87%  │ ↗   0x00007fe26ed7f4ba:   mov    $0xcc,%rax                   ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster@192 (line 60)
   0.00%  │ │   0x00007fe26ed7f4c1:   add    $0x18,%rsp
          │ │↗  0x00007fe26ed7f4c5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fe26ed7f4cc:   ja     0x00007fe26ed7f4e0
   2.81%  ││││  0x00007fe26ed7f4d2:   ret    
          ↘│││  0x00007fe26ed7f4d3:   mov    %rbp,0x10(%rsp)
           │││  0x00007fe26ed7f4d8:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fe26ed7f4dd:   jmp    0x00007fe26ed7f4ba
           │ │  0x00007fe26ed7f4df:   hlt    
           ↘ ╰  0x00007fe26ed7f4e0:   lea    -0x22(%rip),%rcx        # 0x00007fe26ed7f4c5
                0x00007fe26ed7f4e7:   mov    %rcx,0x468(%r15)
                0x00007fe26ed7f4ee:   jmp    0x00007fe26e76b000           ;   {runtime_call SafepointBlob}
                0x00007fe26ed7f4f3:   hlt    
              [Exception Handler]
                0x00007fe26ed7f4f4:   call   0x00007fe26e8e9780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  17.19%  <total for region 2>

....[Hottest Regions]...............................................................................
  80.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub, version 6, compile id 989 
  17.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster, version 2, compile id 961 
   0.36%               kernel  [unknown] 
   0.19%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.94%  <...other 314 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub, version 6, compile id 989 
  17.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster, version 2, compile id 961 
   1.68%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  fileStream::write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%         libc-2.31.so  __stpcpy_avx2 
   0.01%         libc-2.31.so  _IO_old_init 
   0.20%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.95%       jvmci, level 4
   1.68%               kernel
   0.13%            libjvm.so
   0.10%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%               [vdso]
   0.00%           ld-2.31.so
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:55

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
MethodArgsBusterBenchmark.method_args_buster      avgt    5  6.577 ± 0.009  ns/op
MethodArgsBusterBenchmark.method_args_buster:asm  avgt         NaN            ---
