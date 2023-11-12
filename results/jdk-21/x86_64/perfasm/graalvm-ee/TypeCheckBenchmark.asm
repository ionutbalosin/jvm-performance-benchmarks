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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark.instanceof_type_check

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.826 ns/op
# Warmup Iteration   2: 6.981 ns/op
# Warmup Iteration   3: 7.050 ns/op
# Warmup Iteration   4: 6.966 ns/op
# Warmup Iteration   5: 6.980 ns/op
Iteration   1: 7.014 ns/op
Iteration   2: 6.976 ns/op
Iteration   3: 6.987 ns/op
Iteration   4: 6.978 ns/op
Iteration   5: 6.966 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark.instanceof_type_check":
  6.984 ±(99.9%) 0.070 ns/op [Average]
  (min, avg, max) = (6.966, 6.984, 7.014), stdev = 0.018
  CI (99.9%): [6.914, 7.054] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark.instanceof_type_check:asm":
PrintAssembly processed: 226224 total address lines.
Perf output processed (skipped 60.618 seconds):
 Column 1: cycles (50531 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 989 

              0x00007ff7d6d81bf3:   mov    0x10(%rsp),%rdx
              0x00007ff7d6d81bf8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@10 (line 234)
              0x00007ff7d6d81bfc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007ff7d6d81c05:   jmp    0x00007ff7d6d81c2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 236)
          │   0x00007ff7d6d81c0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007ff7d6d81c15:   data16 data16 xchg %ax,%ax
          │   0x00007ff7d6d81c19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
   5.31%  │↗  0x00007ff7d6d81c20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
          ││  0x00007ff7d6d81c27:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007ff7d6d81c2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 236)
          ↘│  0x00007ff7d6d81c2f:   mov    0x8(%rsp),%r10
   5.63%   │  0x00007ff7d6d81c34:   mov    %r10,%rsi
           │  0x00007ff7d6d81c37:   call   0x00007ff7d6764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   8.72%   │  0x00007ff7d6d81c3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   0.25%   │  0x00007ff7d6d81c44:   mov    0x20(%rsp),%r10
   1.29%   │  0x00007ff7d6d81c49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@26 (line 237)
   5.43%   │  0x00007ff7d6d81c4c:   mov    0x18(%rsp),%rsi
           │  0x00007ff7d6d81c51:   cmpb   $0x0,0x94(%rsi)
  28.22%   ╰  0x00007ff7d6d81c58:   je     0x00007ff7d6d81c20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 238)
              0x00007ff7d6d81c5a:   mov    %r10,0x20(%rsp)
              0x00007ff7d6d81c5f:   nop
              0x00007ff7d6d81c60:   call   0x00007ff7edd84df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007ff7d6d81c65:   nop
              0x00007ff7d6d81c66:   mov    0x10(%rsp),%rdx
              0x00007ff7d6d81c6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@40 (line 239)
              0x00007ff7d6d81c6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@46 (line 240)
....................................................................................................
  54.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 962 

             # {method} {0x00007ff75047c040} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007ff7d6d7ec80:   mov    0x8(%rsi),%r10d
             0x00007ff7d6d7ec84:   movabs $0x7ff75b000000,%r12
             0x00007ff7d6d7ec8e:   add    %r12,%r10
             0x00007ff7d6d7ec91:   xor    %r12,%r12
             0x00007ff7d6d7ec94:   cmp    %r10,%rax
             0x00007ff7d6d7ec97:   jne    0x00007ff7d6764080           ;   {runtime_call ic_miss_stub}
             0x00007ff7d6d7ec9d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007ff7d6d7eca0:   mov    %eax,-0x14000(%rsp)
   5.43%     0x00007ff7d6d7eca7:   sub    $0x18,%rsp
             0x00007ff7d6d7ecab:   nop
             0x00007ff7d6d7ecac:   cmpl   $0x1,0x20(%r15)
   5.49%     0x00007ff7d6d7ecb4:   jne    0x00007ff7d6d7ed12
   0.98%     0x00007ff7d6d7ecba:   mov    %rbp,0x10(%rsp)
             0x00007ff7d6d7ecbf:   mov    0xc(%rsi),%eax               ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@0 (line 69)
             0x00007ff7d6d7ecc2:   cmpl   $0x102bd38,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007ff7d6d7ed33
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckBenchmark$ManySecondarySuperTypes&apos;)}
  22.04%  ╭  0x00007ff7d6d7eccd:   jne    0x00007ff7d6d7ecef           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::closeNotAutoCloseable@1 (line 75)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@4 (line 69)
   4.17%  │  0x00007ff7d6d7ecd3:   mov    $0x0,%eax
          │  0x00007ff7d6d7ecd8:   mov    0x10(%rsp),%rbp
   1.09%  │  0x00007ff7d6d7ecdd:   add    $0x18,%rsp
   0.00%  │  0x00007ff7d6d7ece1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007ff7d6d7ece8:   ja     0x00007ff7d6d7ed1f
   4.33%  │  0x00007ff7d6d7ecee:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@7 (line 69)
          ↘  0x00007ff7d6d7ecef:   movl   $0xffffffcd,0x484(%r15)      ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::closeNotAutoCloseable@1 (line 75)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@4 (line 69)
             0x00007ff7d6d7ecfa:   movq   $0x14,0x490(%r15)
             0x00007ff7d6d7ed05:   call   0x00007ff7d676a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check@0 (line 69)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007ff7d6d7ed0a:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  43.53%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 989 
  43.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 962 
   0.16%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.78%  <...other 275 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 989 
  43.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 962 
   1.32%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  _IO_fflush 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.11%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.37%      jvmci, level 4
   1.32%              kernel
   0.09%           libjvm.so
   0.09%        libc-2.31.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
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

Benchmark                                     Mode  Cnt  Score   Error  Units
TypeCheckBenchmark.instanceof_type_check      avgt    5  6.984 ± 0.070  ns/op
TypeCheckBenchmark.instanceof_type_check:asm  avgt         NaN            ---
