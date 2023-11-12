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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark.instanceof_type_check

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.026 ns/op
# Warmup Iteration   2: 6.962 ns/op
# Warmup Iteration   3: 6.993 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.961 ns/op
Iteration   1: 6.961 ns/op
Iteration   2: 6.961 ns/op
Iteration   3: 6.961 ns/op
Iteration   4: 6.961 ns/op
Iteration   5: 6.961 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark.instanceof_type_check":
  6.961 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.961, 6.961, 6.961), stdev = 0.001
  CI (99.9%): [6.961, 6.962] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 218689 total address lines.
Perf output processed (skipped 60.407 seconds):
 Column 1: cycles (50678 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 978 

              0x00007f98df243010:   mov    0x18(%rsp),%rsi
              0x00007f98df243015:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f98df243020:   cmpb   $0x0,0x94(%rsi)
              0x00007f98df243027:   jne    0x00007f98df2430ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
              0x00007f98df24302d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f98df243036:   jmp    0x00007f98df24304f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 236)
          │   0x00007f98df24303b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
   5.48%  │↗  0x00007f98df243040:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
   0.00%  ││  0x00007f98df243047:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007f98df24304a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f98df24304f:   mov    0x8(%rsp),%r10
   5.46%   │  0x00007f98df243054:   mov    %r10,%rsi
           │  0x00007f98df243057:   call   0x00007f98dec2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   9.81%   │  0x00007f98df24305c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007f98df243064:   mov    0x20(%rsp),%r10
   1.21%   │  0x00007f98df243069:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 237)
   5.62%   │  0x00007f98df24306c:   mov    0x18(%rsp),%rsi
           │  0x00007f98df243071:   cmpb   $0x0,0x94(%rsi)
  21.88%   ╰  0x00007f98df243078:   je     0x00007f98df243040           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
              0x00007f98df24307a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 239)
              0x00007f98df24307f:   nop
              0x00007f98df243080:   call   0x00007f98f5bcfdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f98df243085:   nop
              0x00007f98df243086:   mov    0x10(%rsp),%rdx
              0x00007f98df24308b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 239)
              0x00007f98df24308f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 944 

             # {method} {0x00007f985847c060} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f98df23c200:   mov    0x8(%rsi),%r10d
             0x00007f98df23c204:   movabs $0x7f9863000000,%r12
             0x00007f98df23c20e:   add    %r12,%r10
             0x00007f98df23c211:   xor    %r12,%r12
             0x00007f98df23c214:   cmp    %r10,%rax
             0x00007f98df23c217:   jne    0x00007f98dec2f080           ;   {runtime_call ic_miss_stub}
             0x00007f98df23c21d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007f98df23c220:   mov    %eax,-0x14000(%rsp)
   5.59%     0x00007f98df23c227:   sub    $0x18,%rsp
   0.00%     0x00007f98df23c22b:   nop
             0x00007f98df23c22c:   cmpl   $0x0,0x20(%r15)
   5.31%     0x00007f98df23c234:   jne    0x00007f98df23c292
   1.21%     0x00007f98df23c23a:   mov    %rbp,0x10(%rsp)
   0.00%     0x00007f98df23c23f:   mov    0xc(%rsi),%eax               ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@0 (line 69)
             0x00007f98df23c242:   cmpl   $0x102bd38,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f98df23c2b3
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckBenchmark$ManySecondarySuperTypes&apos;)}
  25.92%  ╭  0x00007f98df23c24d:   jne    0x00007f98df23c26f           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::closeNotAutoCloseable@1 (line 75)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@4 (line 69)
   5.23%  │  0x00007f98df23c253:   mov    $0x0,%eax
          │  0x00007f98df23c258:   mov    0x10(%rsp),%rbp
          │  0x00007f98df23c25d:   add    $0x18,%rsp
          │  0x00007f98df23c261:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f98df23c268:   ja     0x00007f98df23c29f
   5.35%  │  0x00007f98df23c26e:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@7 (line 69)
          ↘  0x00007f98df23c26f:   movl   $0xffffffcd,0x484(%r15)      ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::closeNotAutoCloseable@1 (line 75)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@4 (line 69)
             0x00007f98df23c27a:   movq   $0x14,0x490(%r15)
             0x00007f98df23c285:   call   0x00007f98dec3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@0 (line 69)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f98df23c28a:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  48.62%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.47%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 978 
  48.62%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 944 
   0.23%              kernel  [unknown] 
   0.23%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.82%  <...other 290 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.47%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 978 
  48.62%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 944 
   1.57%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%           libjvm.so  stringStream::write 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  _itoa_word 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%         interpreter  return entry points  
   0.13%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.09%      jvmci, level 4
   1.57%              kernel
   0.12%           libjvm.so
   0.08%                    
   0.07%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:53

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

Benchmark                                     Mode  Cnt  Score    Error  Units
TypeCheckBenchmark.instanceof_type_check      avgt    5  6.961 ±  0.001  ns/op
TypeCheckBenchmark.instanceof_type_check:asm  avgt         NaN             ---
