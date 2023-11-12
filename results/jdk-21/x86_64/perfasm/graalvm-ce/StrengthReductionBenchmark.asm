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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark.add
# Parameters: (isHeavy = true, value = 179426549)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.364 ns/op
# Warmup Iteration   2: 12.120 ns/op
# Warmup Iteration   3: 12.135 ns/op
# Warmup Iteration   4: 12.051 ns/op
# Warmup Iteration   5: 12.118 ns/op
Iteration   1: 12.046 ns/op
Iteration   2: 12.221 ns/op
Iteration   3: 12.121 ns/op
Iteration   4: 12.053 ns/op
Iteration   5: 12.147 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark.add":
  12.118 ±(99.9%) 0.278 ns/op [Average]
  (min, avg, max) = (12.046, 12.118, 12.221), stdev = 0.072
  CI (99.9%): [11.839, 12.396] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark.add:asm":
PrintAssembly processed: 217019 total address lines.
Perf output processed (skipped 60.336 seconds):
 Column 1: cycles (50713 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub, version 6, compile id 990 

              0x00007fc4c7244c10:   mov    0x18(%rsp),%rsi
              0x00007fc4c7244c15:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fc4c7244c20:   cmpb   $0x0,0x94(%rsi)
              0x00007fc4c7244c27:   jne    0x00007fc4c7244cba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@33 (line 196)
              0x00007fc4c7244c2d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fc4c7244c36:   jmp    0x00007fc4c7244c4f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@13 (line 194)
          │   0x00007fc4c7244c3b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@33 (line 196)
   3.16%  │↗  0x00007fc4c7244c40:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@33 (line 196)
          ││  0x00007fc4c7244c47:   test   %eax,(%r11)                  ;   {poll}
   1.88%  ││  0x00007fc4c7244c4a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@13 (line 194)
          ↘│  0x00007fc4c7244c4f:   mov    0x8(%rsp),%r10
   1.94%   │  0x00007fc4c7244c54:   mov    %r10,%rsi
           │  0x00007fc4c7244c57:   call   0x00007fc4c6c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   8.06%   │  0x00007fc4c7244c5c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.56%   │  0x00007fc4c7244c64:   mov    0x20(%rsp),%r10
  19.64%   │  0x00007fc4c7244c69:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@26 (line 195)
   3.11%   │  0x00007fc4c7244c6c:   mov    0x18(%rsp),%rsi
           │  0x00007fc4c7244c71:   cmpb   $0x0,0x94(%rsi)
  13.58%   ╰  0x00007fc4c7244c78:   je     0x00007fc4c7244c40           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@33 (line 196)
              0x00007fc4c7244c7a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@36 (line 197)
              0x00007fc4c7244c7f:   nop
              0x00007fc4c7244c80:   call   0x00007fc4df566df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fc4c7244c85:   nop
              0x00007fc4c7244c86:   mov    0x10(%rsp),%rdx
              0x00007fc4c7244c8b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub@40 (line 197)
              0x00007fc4c7244c8f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  52.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::add, version 2, compile id 954 

                # {method} {0x00007fc44747d140} &apos;add&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StrengthReductionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fc4c723f520:   mov    0x8(%rsi),%r10d
                0x00007fc4c723f524:   movabs $0x7fc44b000000,%r12
                0x00007fc4c723f52e:   add    %r12,%r10
                0x00007fc4c723f531:   xor    %r12,%r12
                0x00007fc4c723f534:   cmp    %r10,%rax
                0x00007fc4c723f537:   jne    0x00007fc4c6c2f080           ;   {runtime_call ic_miss_stub}
                0x00007fc4c723f53d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.18%        0x00007fc4c723f540:   mov    %eax,-0x14000(%rsp)
   4.26%        0x00007fc4c723f547:   sub    $0x18,%rsp
   1.29%        0x00007fc4c723f54b:   nop
                0x00007fc4c723f54c:   cmpl   $0x1,0x20(%r15)
   1.10%  ╭     0x00007fc4c723f554:   jne    0x00007fc4c723f58e
   1.50%  │ ↗   0x00007fc4c723f55a:   mov    %rbp,0x10(%rsp)
   0.49%  │ │   0x00007fc4c723f55f:   nop
          │ │   0x00007fc4c723f560:   data16 xchg %ax,%ax
   1.05%  │ │   0x00007fc4c723f563:   call   0x00007fc4bf8772c0           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual doAdd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::add@1 (line 71)
          │ │                                                             ;   {optimized virtual_call}
  14.66%  │ │   0x00007fc4c723f568:   nopl   0x1d8(%rax,%rax,1)           ;   {other}
          │ │   0x00007fc4c723f570:   mov    0x10(%rsp),%rbp
   0.00%  │ │   0x00007fc4c723f575:   add    $0x18,%rsp
   3.07%  │ │   0x00007fc4c723f579:   nopl   0x0(%rax)
          │ │↗  0x00007fc4c723f580:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fc4c723f587:   ja     0x00007fc4c723f59b
          ││││  0x00007fc4c723f58d:   ret    
          ↘│││  0x00007fc4c723f58e:   mov    %rbp,0x10(%rsp)
           │││  0x00007fc4c723f593:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fc4c723f598:   jmp    0x00007fc4c723f55a
           │ │  0x00007fc4c723f59a:   hlt    
           ↘ ╰  0x00007fc4c723f59b:   lea    -0x22(%rip),%rcx        # 0x00007fc4c723f580
                0x00007fc4c723f5a2:   mov    %rcx,0x468(%r15)
                0x00007fc4c723f5a9:   jmp    0x00007fc4c6c36000           ;   {runtime_call SafepointBlob}
....................................................................................................
  28.60%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doAdd, version 2, compile id 956 

             # {method} {0x00007fc44747d468} &apos;doAdd&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StrengthReductionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fc4c723f800:   mov    0x8(%rsi),%r10d
             0x00007fc4c723f804:   movabs $0x7fc44b000000,%r12
             0x00007fc4c723f80e:   add    %r12,%r10
             0x00007fc4c723f811:   xor    %r12,%r12
             0x00007fc4c723f814:   cmp    %r10,%rax
             0x00007fc4c723f817:   jne    0x00007fc4c6c2f080           ;   {runtime_call ic_miss_stub}
             0x00007fc4c723f81d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   2.25%     0x00007fc4c723f820:   mov    %eax,-0x14000(%rsp)
   1.24%     0x00007fc4c723f827:   sub    $0x18,%rsp
   1.63%     0x00007fc4c723f82b:   nop
   0.54%     0x00007fc4c723f82c:   cmpl   $0x1,0x20(%r15)
             0x00007fc4c723f834:   jne    0x00007fc4c723f891
   0.98%     0x00007fc4c723f83a:   mov    %rbp,0x10(%rsp)
   1.71%     0x00007fc4c723f83f:   nop
   0.55%     0x00007fc4c723f840:   cmpb   $0x0,0xc(%rsi)
          ╭  0x00007fc4c723f844:   je     0x00007fc4c723f86e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doAdd@9 (line 89)
   1.75%  │  0x00007fc4c723f84a:   mov    0x10(%rsi),%rax              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doAdd@1 (line 88)
   0.79%  │  0x00007fc4c723f84e:   shl    $0x6,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doAdd@138 (line 94)
   0.63%  │  0x00007fc4c723f852:   mov    0x10(%rsp),%rbp
   2.97%  │  0x00007fc4c723f857:   add    $0x18,%rsp
   0.33%  │  0x00007fc4c723f85b:   nopl   0x0(%rax,%rax,1)
   0.83%  │  0x00007fc4c723f860:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fc4c723f867:   ja     0x00007fc4c723f89e
          │  0x00007fc4c723f86d:   ret    
          ↘  0x00007fc4c723f86e:   movl   $0xffffffed,0x484(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doAdd@9 (line 89)
             0x00007fc4c723f879:   movq   $0x14,0x490(%r15)
             0x00007fc4c723f884:   call   0x00007fc4c6c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doAdd@0 (line 88)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fc4c723f889:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  16.20%  <total for region 3>

....[Hottest Regions]...............................................................................
  52.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub, version 6, compile id 990 
  28.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::add, version 2, compile id 954 
  16.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doAdd, version 2, compile id 956 
   0.59%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.03%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub, version 6, compile id 990 
  28.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::add, version 2, compile id 954 
  16.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doAdd, version 2, compile id 956 
   1.93%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.14%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.73%      jvmci, level 4
   1.93%              kernel
   0.14%           libjvm.so
   0.09%        libc-2.31.so
   0.05%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%         c1, level 1
   0.00%    perf-2130389.map
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark.multiply
# Parameters: (isHeavy = true, value = 179426549)

# Run progress: 33.33% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.275 ns/op
# Warmup Iteration   2: 12.347 ns/op
# Warmup Iteration   3: 12.352 ns/op
# Warmup Iteration   4: 12.348 ns/op
# Warmup Iteration   5: 12.115 ns/op
Iteration   1: 12.120 ns/op
Iteration   2: 12.298 ns/op
Iteration   3: 12.182 ns/op
Iteration   4: 12.078 ns/op
Iteration   5: 12.221 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark.multiply":
  12.180 ±(99.9%) 0.331 ns/op [Average]
  (min, avg, max) = (12.078, 12.180, 12.298), stdev = 0.086
  CI (99.9%): [11.848, 12.511] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark.multiply:asm":
PrintAssembly processed: 216703 total address lines.
Perf output processed (skipped 60.320 seconds):
 Column 1: cycles (51008 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub, version 6, compile id 986 

              0x00007f474b243010:   mov    0x18(%rsp),%rsi
              0x00007f474b243015:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f474b243020:   cmpb   $0x0,0x94(%rsi)
              0x00007f474b243027:   jne    0x00007f474b2430ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@33 (line 196)
              0x00007f474b24302d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f474b243036:   jmp    0x00007f474b24304f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@13 (line 194)
          │   0x00007f474b24303b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@33 (line 196)
   3.12%  │↗  0x00007f474b243040:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@33 (line 196)
          ││  0x00007f474b243047:   test   %eax,(%r11)                  ;   {poll}
   1.84%  ││  0x00007f474b24304a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f474b24304f:   mov    0x8(%rsp),%r10
   1.55%   │  0x00007f474b243054:   mov    %r10,%rsi
           │  0x00007f474b243057:   call   0x00007f474ac2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual multiply {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   4.89%   │  0x00007f474b24305c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.32%   │  0x00007f474b243064:   mov    0x20(%rsp),%r10
  22.85%   │  0x00007f474b243069:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@26 (line 195)
   3.17%   │  0x00007f474b24306c:   mov    0x18(%rsp),%rsi
           │  0x00007f474b243071:   cmpb   $0x0,0x94(%rsi)
  12.50%   ╰  0x00007f474b243078:   je     0x00007f474b243040           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@33 (line 196)
              0x00007f474b24307a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@36 (line 197)
              0x00007f474b24307f:   nop
              0x00007f474b243080:   call   0x00007f47643ffdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f474b243085:   nop
              0x00007f474b243086:   mov    0x10(%rsp),%rdx
              0x00007f474b24308b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@40 (line 197)
              0x00007f474b24308f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  51.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::multiply, version 2, compile id 947 

                # {method} {0x00007f46cb47d228} &apos;multiply&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StrengthReductionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f474b23d8a0:   mov    0x8(%rsi),%r10d
                0x00007f474b23d8a4:   movabs $0x7f46cf000000,%r12
                0x00007f474b23d8ae:   add    %r12,%r10
                0x00007f474b23d8b1:   xor    %r12,%r12
                0x00007f474b23d8b4:   cmp    %r10,%rax
                0x00007f474b23d8b7:   jne    0x00007f474ac2f080           ;   {runtime_call ic_miss_stub}
                0x00007f474b23d8bd:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.58%        0x00007f474b23d8c0:   mov    %eax,-0x14000(%rsp)
   3.34%        0x00007f474b23d8c7:   sub    $0x18,%rsp
   1.56%        0x00007f474b23d8cb:   nop
                0x00007f474b23d8cc:   cmpl   $0x0,0x20(%r15)
   1.16%  ╭     0x00007f474b23d8d4:   jne    0x00007f474b23d90e
   1.83%  │ ↗   0x00007f474b23d8da:   mov    %rbp,0x10(%rsp)
   0.41%  │ │   0x00007f474b23d8df:   nop
          │ │   0x00007f474b23d8e0:   data16 xchg %ax,%ax
   0.91%  │ │   0x00007f474b23d8e3:   call   0x00007f474ac2f380           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual doMultiply {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::multiply@1 (line 77)
          │ │                                                             ;   {optimized virtual_call}
  14.83%  │ │   0x00007f474b23d8e8:   nopl   0x1d8(%rax,%rax,1)           ;   {other}
          │ │   0x00007f474b23d8f0:   mov    0x10(%rsp),%rbp
          │ │   0x00007f474b23d8f5:   add    $0x18,%rsp
   3.20%  │ │   0x00007f474b23d8f9:   nopl   0x0(%rax)
          │ │↗  0x00007f474b23d900:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f474b23d907:   ja     0x00007f474b23d91b
          ││││  0x00007f474b23d90d:   ret    
          ↘│││  0x00007f474b23d90e:   mov    %rbp,0x10(%rsp)
           │││  0x00007f474b23d913:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f474b23d918:   jmp    0x00007f474b23d8da
           │ │  0x00007f474b23d91a:   hlt    
           ↘ ╰  0x00007f474b23d91b:   lea    -0x22(%rip),%rcx        # 0x00007f474b23d900
                0x00007f474b23d922:   mov    %rcx,0x468(%r15)
                0x00007f474b23d929:   jmp    0x00007f474ac36000           ;   {runtime_call SafepointBlob}
....................................................................................................
  28.82%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doMultiply, version 2, compile id 949 

             # {method} {0x00007f46cb47d310} &apos;doMultiply&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StrengthReductionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f474b23de80:   mov    0x8(%rsi),%r10d
             0x00007f474b23de84:   movabs $0x7f46cf000000,%r12
             0x00007f474b23de8e:   add    %r12,%r10
             0x00007f474b23de91:   xor    %r12,%r12
             0x00007f474b23de94:   cmp    %r10,%rax
             0x00007f474b23de97:   jne    0x00007f474ac2f080           ;   {runtime_call ic_miss_stub}
             0x00007f474b23de9d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   2.37%     0x00007f474b23dea0:   mov    %eax,-0x14000(%rsp)
   0.96%     0x00007f474b23dea7:   sub    $0x18,%rsp
   1.80%     0x00007f474b23deab:   nop
   0.39%     0x00007f474b23deac:   cmpl   $0x1,0x20(%r15)
             0x00007f474b23deb4:   jne    0x00007f474b23df11
   0.78%     0x00007f474b23deba:   mov    %rbp,0x10(%rsp)
   2.77%     0x00007f474b23debf:   nop
   0.38%     0x00007f474b23dec0:   cmpb   $0x0,0xc(%rsi)
          ╭  0x00007f474b23dec4:   je     0x00007f474b23deee           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doMultiply@9 (line 83)
   2.01%  │  0x00007f474b23deca:   mov    0x10(%rsi),%rax              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doMultiply@1 (line 82)
   0.79%  │  0x00007f474b23dece:   shl    $0x6,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doMultiply@16 (line 83)
   0.34%  │  0x00007f474b23ded2:   mov    0x10(%rsp),%rbp
   4.31%  │  0x00007f474b23ded7:   add    $0x18,%rsp
   0.02%  │  0x00007f474b23dedb:   nopl   0x0(%rax,%rax,1)
   0.48%  │  0x00007f474b23dee0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f474b23dee7:   ja     0x00007f474b23df1e
          │  0x00007f474b23deed:   ret    
          ↘  0x00007f474b23deee:   movl   $0xffffffed,0x484(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doMultiply@9 (line 83)
             0x00007f474b23def9:   movq   $0x14,0x490(%r15)
             0x00007f474b23df04:   call   0x00007f474ac3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doMultiply@0 (line 82)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f474b23df09:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  17.40%  <total for region 3>

....[Hottest Regions]...............................................................................
  51.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub, version 6, compile id 986 
  28.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::multiply, version 2, compile id 947 
  17.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doMultiply, version 2, compile id 949 
   1.21%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.74%  <...other 255 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub, version 6, compile id 986 
  28.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::multiply, version 2, compile id 947 
  17.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doMultiply, version 2, compile id 949 
   2.23%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  outputStream::print 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.46%      jvmci, level 4
   2.23%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.05%                    
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark.shift
# Parameters: (isHeavy = true, value = 179426549)

# Run progress: 66.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.558 ns/op
# Warmup Iteration   2: 12.257 ns/op
# Warmup Iteration   3: 12.294 ns/op
# Warmup Iteration   4: 12.215 ns/op
# Warmup Iteration   5: 12.115 ns/op
Iteration   1: 12.055 ns/op
Iteration   2: 12.285 ns/op
Iteration   3: 12.040 ns/op
Iteration   4: 12.009 ns/op
Iteration   5: 12.091 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark.shift":
  12.096 ±(99.9%) 0.423 ns/op [Average]
  (min, avg, max) = (12.009, 12.096, 12.285), stdev = 0.110
  CI (99.9%): [11.673, 12.519] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark.shift:asm":
PrintAssembly processed: 219852 total address lines.
Perf output processed (skipped 60.309 seconds):
 Column 1: cycles (50609 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub, version 6, compile id 993 

              0x00007f52a3244190:   mov    0x18(%rsp),%rsi
              0x00007f52a3244195:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f52a32441a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f52a32441a7:   jne    0x00007f52a324423a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@33 (line 196)
              0x00007f52a32441ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f52a32441b6:   jmp    0x00007f52a32441cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@13 (line 194)
          │   0x00007f52a32441bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@33 (line 196)
   3.16%  │↗  0x00007f52a32441c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@33 (line 196)
          ││  0x00007f52a32441c7:   test   %eax,(%r11)                  ;   {poll}
   2.04%  ││  0x00007f52a32441ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f52a32441cf:   mov    0x8(%rsp),%r10
   1.64%   │  0x00007f52a32441d4:   mov    %r10,%rsi
           │  0x00007f52a32441d7:   call   0x00007f52a2c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual shift {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   7.31%   │  0x00007f52a32441dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   1.60%   │  0x00007f52a32441e4:   mov    0x20(%rsp),%r10
  19.76%   │  0x00007f52a32441e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@26 (line 195)
   3.19%   │  0x00007f52a32441ec:   mov    0x18(%rsp),%rsi
           │  0x00007f52a32441f1:   cmpb   $0x0,0x94(%rsi)
  13.21%   ╰  0x00007f52a32441f8:   je     0x00007f52a32441c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@33 (line 196)
              0x00007f52a32441fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@36 (line 197)
              0x00007f52a32441ff:   nop
              0x00007f52a3244200:   call   0x00007f52bc479df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f52a3244205:   nop
              0x00007f52a3244206:   mov    0x10(%rsp),%rdx
              0x00007f52a324420b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@40 (line 197)
              0x00007f52a324420f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  51.91%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::shift, version 2, compile id 959 

                # {method} {0x00007f522347d078} &apos;shift&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StrengthReductionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f52a323d5a0:   mov    0x8(%rsi),%r10d
                0x00007f52a323d5a4:   movabs $0x7f5227000000,%r12
                0x00007f52a323d5ae:   add    %r12,%r10
                0x00007f52a323d5b1:   xor    %r12,%r12
                0x00007f52a323d5b4:   cmp    %r10,%rax
                0x00007f52a323d5b7:   jne    0x00007f52a2c2f080           ;   {runtime_call ic_miss_stub}
                0x00007f52a323d5bd:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.60%        0x00007f52a323d5c0:   mov    %eax,-0x14000(%rsp)
   4.28%        0x00007f52a323d5c7:   sub    $0x18,%rsp
   1.57%        0x00007f52a323d5cb:   nop
                0x00007f52a323d5cc:   cmpl   $0x0,0x20(%r15)
   0.74%  ╭     0x00007f52a323d5d4:   jne    0x00007f52a323d60e
   1.95%  │ ↗   0x00007f52a323d5da:   mov    %rbp,0x10(%rsp)
   0.52%  │ │   0x00007f52a323d5df:   nop
          │ │   0x00007f52a323d5e0:   data16 xchg %ax,%ax
   0.74%  │ │   0x00007f52a323d5e3:   call   0x00007f52a2c2f380           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual doShift {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::shift@1 (line 65)
          │ │                                                             ;   {optimized virtual_call}
  15.04%  │ │   0x00007f52a323d5e8:   nopl   0x1d8(%rax,%rax,1)           ;   {other}
          │ │   0x00007f52a323d5f0:   mov    0x10(%rsp),%rbp
          │ │   0x00007f52a323d5f5:   add    $0x18,%rsp
   3.14%  │ │   0x00007f52a323d5f9:   nopl   0x0(%rax)
          │ │↗  0x00007f52a323d600:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f52a323d607:   ja     0x00007f52a323d61b
          ││││  0x00007f52a323d60d:   ret    
          ↘│││  0x00007f52a323d60e:   mov    %rbp,0x10(%rsp)
           │││  0x00007f52a323d613:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f52a323d618:   jmp    0x00007f52a323d5da
           │ │  0x00007f52a323d61a:   hlt    
           ↘ ╰  0x00007f52a323d61b:   lea    -0x22(%rip),%rcx        # 0x00007f52a323d600
                0x00007f52a323d622:   mov    %rcx,0x468(%r15)
                0x00007f52a323d629:   jmp    0x00007f52a2c36000           ;   {runtime_call SafepointBlob}
....................................................................................................
  29.59%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doShift, version 2, compile id 960 

             # {method} {0x00007f522347d560} &apos;doShift&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StrengthReductionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f52a323d880:   mov    0x8(%rsi),%r10d
             0x00007f52a323d884:   movabs $0x7f5227000000,%r12
             0x00007f52a323d88e:   add    %r12,%r10
             0x00007f52a323d891:   xor    %r12,%r12
             0x00007f52a323d894:   cmp    %r10,%rax
             0x00007f52a323d897:   jne    0x00007f52a2c2f080           ;   {runtime_call ic_miss_stub}
             0x00007f52a323d89d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   2.41%     0x00007f52a323d8a0:   mov    %eax,-0x14000(%rsp)
   0.85%     0x00007f52a323d8a7:   sub    $0x18,%rsp
   1.83%     0x00007f52a323d8ab:   nop
   0.46%     0x00007f52a323d8ac:   cmpl   $0x1,0x20(%r15)
             0x00007f52a323d8b4:   jne    0x00007f52a323d911
   0.83%     0x00007f52a323d8ba:   mov    %rbp,0x10(%rsp)
   2.14%     0x00007f52a323d8bf:   nop
   0.47%     0x00007f52a323d8c0:   cmpb   $0x0,0xc(%rsi)
          ╭  0x00007f52a323d8c4:   je     0x00007f52a323d8ee           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doShift@9 (line 101)
   1.88%  │  0x00007f52a323d8ca:   mov    0x10(%rsi),%rax              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doShift@1 (line 100)
   0.74%  │  0x00007f52a323d8ce:   shl    $0x6,%rax                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doShift@15 (line 101)
   0.57%  │  0x00007f52a323d8d2:   mov    0x10(%rsp),%rbp
   3.56%  │  0x00007f52a323d8d7:   add    $0x18,%rsp
   0.16%  │  0x00007f52a323d8db:   nopl   0x0(%rax,%rax,1)
   0.82%  │  0x00007f52a323d8e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f52a323d8e7:   ja     0x00007f52a323d91e
          │  0x00007f52a323d8ed:   ret    
          ↘  0x00007f52a323d8ee:   movl   $0xffffffed,0x484(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doShift@9 (line 101)
             0x00007f52a323d8f9:   movq   $0x14,0x490(%r15)
             0x00007f52a323d904:   call   0x00007f52a2c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doShift@0 (line 100)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f52a323d909:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  16.72%  <total for region 3>

....[Hottest Regions]...............................................................................
  51.91%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub, version 6, compile id 993 
  29.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::shift, version 2, compile id 959 
  16.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doShift, version 2, compile id 960 
   0.47%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.77%  <...other 278 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.91%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub, version 6, compile id 993 
  29.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::shift, version 2, compile id 959 
  16.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StrengthReductionBenchmark::doShift, version 2, compile id 960 
   1.43%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.15%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.22%      jvmci, level 4
   1.43%              kernel
   0.18%           libjvm.so
   0.07%        libc-2.31.so
   0.05%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%         c1, level 2
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:40

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

Benchmark                                (isHeavy)    (value)  Mode  Cnt   Score   Error  Units
StrengthReductionBenchmark.add                true  179426549  avgt    5  12.118 ± 0.278  ns/op
StrengthReductionBenchmark.add:asm            true  179426549  avgt          NaN            ---
StrengthReductionBenchmark.multiply           true  179426549  avgt    5  12.180 ± 0.331  ns/op
StrengthReductionBenchmark.multiply:asm       true  179426549  avgt          NaN            ---
StrengthReductionBenchmark.shift              true  179426549  avgt    5  12.096 ± 0.423  ns/op
StrengthReductionBenchmark.shift:asm          true  179426549  avgt          NaN            ---
