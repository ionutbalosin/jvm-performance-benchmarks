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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.172 ns/op
# Warmup Iteration   2: 0.968 ns/op
# Warmup Iteration   3: 1.172 ns/op
# Warmup Iteration   4: 1.170 ns/op
# Warmup Iteration   5: 1.167 ns/op
Iteration   1: 1.168 ns/op
Iteration   2: 1.168 ns/op
Iteration   3: 1.171 ns/op
Iteration   4: 1.166 ns/op
Iteration   5: 1.172 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check":
  1.169 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (1.166, 1.169, 1.172), stdev = 0.002
  CI (99.9%): [1.160, 1.178] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 193393 total address lines.
Perf output processed (skipped 58.802 seconds):
 Column 1: cycles (50543 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 773 

               0x00007fbdfb000f87:   jne    0x00007fbdfb00100e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
               0x00007fbdfb000f8d:   mov    $0x1,%r11
               0x00007fbdfb000f94:   mov    0x10(%rsp),%r10
          ╭    0x00007fbdfb000f99:   jmp    0x00007fbdfb000fba           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │    0x00007fbdfb000f9e:   xchg   %ax,%ax                      ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::closeNotAutoCloseable@1 (line 73)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check@4 (line 67)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
  25.70%  │ ↗  0x00007fbdfb000fa0:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 233)
   0.01%  │ │  0x00007fbdfb000fa3:   cmpb   $0x0,0x94(%rsi)
   0.85%  │╭│  0x00007fbdfb000faa:   jne    0x00007fbdfb000fd3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   6.00%  │││  0x00007fbdfb000fb0:   mov    0x348(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [8]=Oop [24]=Oop }
          │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
  25.93%  │││  0x00007fbdfb000fb7:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
          │││                                                            ;   {poll}
   5.88%  ↘││  0x00007fbdfb000fba:   mov    0xc(%r10),%r8d               ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check@1 (line 67)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.77%   ││  0x00007fbdfb000fbe:   xchg   %ax,%ax                      ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [8]=Oop [24]=Oop }
           ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
           ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
   5.89%   ││  0x00007fbdfb000fc0:   cmpl   $0xc26dc0,0x8(,%r8,8)        ; implicit exception: dispatches to 0x00007fbdfb0010e7
           ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckBenchmark$ManySecondarySuperTypes&apos;)}
  27.37%   │╰  0x00007fbdfb000fcc:   je     0x00007fbdfb000fa0
           │   0x00007fbdfb000fce:   jmp    0x00007fbdfb00103a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
           ↘   0x00007fbdfb000fd3:   mov    %r11,0x20(%rsp)
               0x00007fbdfb000fd8:   call   0x00007fbe121936f0           ;   {runtime_call os::javaTimeNanos()}
               0x00007fbdfb000fdd:   nop
               0x00007fbdfb000fde:   mov    0x18(%rsp),%rdx
               0x00007fbdfb000fe3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 235)
               0x00007fbdfb000fe7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.42%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 773 
   0.27%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
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
   0.78%  <...other 242 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 773 
   1.28%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  VMThread::wait_for_operation 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  fileStream::flush 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%            libjvm.so  SymbolTable::lookup_shared 
   0.00%           ld-2.31.so  __tls_get_addr 
   0.15%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.42%       jvmci, level 4
   1.28%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%       perf-47563.map
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

Benchmark                                      Mode  Cnt  Score   Error  Units
TypeCheckBenchmark.instanceof_type_check       avgt    5  1.169 ± 0.009  ns/op
TypeCheckBenchmark.instanceof_type_check:·asm  avgt         NaN            ---
