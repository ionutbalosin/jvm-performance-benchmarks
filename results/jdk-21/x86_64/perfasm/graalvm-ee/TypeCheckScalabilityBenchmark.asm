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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = false)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.821 ns/op
# Warmup Iteration   2: 6.973 ns/op
# Warmup Iteration   3: 6.967 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.976 ns/op
Iteration   1: 6.962 ns/op
Iteration   2: 6.978 ns/op
Iteration   3: 6.993 ns/op
Iteration   4: 6.994 ns/op
Iteration   5: 6.979 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  6.981 ±(99.9%) 0.050 ns/op [Average]
  (min, avg, max) = (6.962, 6.981, 6.994), stdev = 0.013
  CI (99.9%): [6.932, 7.031] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:asm":
PrintAssembly processed: 226746 total address lines.
Perf output processed (skipped 60.685 seconds):
 Column 1: cycles (50751 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 5, compile id 1023 

              0x00007f67a2d82873:   mov    0x10(%rsp),%rdx
              0x00007f67a2d82878:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@10 (line 188)
              0x00007f67a2d8287c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f67a2d82885:   jmp    0x00007f67a2d828af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 190)
          │   0x00007f67a2d8288a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f67a2d82895:   data16 data16 xchg %ax,%ax
          │   0x00007f67a2d82899:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
   5.43%  │↗  0x00007f67a2d828a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
          ││  0x00007f67a2d828a7:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007f67a2d828aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f67a2d828af:   mov    0x8(%rsp),%r10
   5.45%   │  0x00007f67a2d828b4:   mov    %r10,%rsi
           │  0x00007f67a2d828b7:   call   0x00007f67a2764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   9.72%   │  0x00007f67a2d828bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007f67a2d828c4:   mov    0x20(%rsp),%r10
   1.61%   │  0x00007f67a2d828c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@26 (line 191)
   5.58%   │  0x00007f67a2d828cc:   mov    0x18(%rsp),%rsi
           │  0x00007f67a2d828d1:   cmpb   $0x0,0x94(%rsi)
  21.47%   ╰  0x00007f67a2d828d8:   je     0x00007f67a2d828a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
              0x00007f67a2d828da:   mov    %r10,0x20(%rsp)
              0x00007f67a2d828df:   nop
              0x00007f67a2d828e0:   call   0x00007f67bba67df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f67a2d828e5:   nop
              0x00007f67a2d828e6:   mov    0x10(%rsp),%rdx
              0x00007f67a2d828eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@40 (line 193)
              0x00007f67a2d828ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@46 (line 194)
....................................................................................................
  49.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 995 

             # {method} {0x00007f6723485e80} &apos;is_duplicated_1&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f67a2d7ff00:   mov    0x8(%rsi),%r10d
             0x00007f67a2d7ff04:   movabs $0x7f6727000000,%r12
             0x00007f67a2d7ff0e:   add    %r12,%r10
             0x00007f67a2d7ff11:   xor    %r12,%r12
             0x00007f67a2d7ff14:   cmp    %r10,%rax
             0x00007f67a2d7ff17:   jne    0x00007f67a2764080           ;   {runtime_call ic_miss_stub}
             0x00007f67a2d7ff1d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007f67a2d7ff20:   mov    %eax,-0x14000(%rsp)
   5.39%     0x00007f67a2d7ff27:   sub    $0x18,%rsp
   0.01%     0x00007f67a2d7ff2b:   nop
             0x00007f67a2d7ff2c:   cmpl   $0x1,0x20(%r15)
   5.42%     0x00007f67a2d7ff34:   jne    0x00007f67a2d7ff8e
   1.18%     0x00007f67a2d7ff3a:   mov    %rbp,0x10(%rsp)
             0x00007f67a2d7ff3f:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
             0x00007f67a2d7ff42:   cmpl   $0x102bb88,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f67a2d7ffaf
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  25.65%  ╭  0x00007f67a2d7ff4d:   jne    0x00007f67a2d7ff6f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   5.58%  │  0x00007f67a2d7ff53:   mov    $0x1,%eax
          │  0x00007f67a2d7ff58:   mov    0x10(%rsp),%rbp
          │  0x00007f67a2d7ff5d:   add    $0x18,%rsp
          │  0x00007f67a2d7ff61:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f67a2d7ff68:   ja     0x00007f67a2d7ff9b
   5.45%  │  0x00007f67a2d7ff6e:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@7 (line 95)
          ↘  0x00007f67a2d7ff6f:   movl   $0xffffffdd,0x484(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
             0x00007f67a2d7ff7a:   mov    %r12,0x490(%r15)
             0x00007f67a2d7ff81:   call   0x00007f67a276a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  48.69%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 5, compile id 1023 
  48.69%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 995 
   0.52%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.96%  <...other 319 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 5, compile id 1023 
  48.69%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 995 
   1.65%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  xmlStream::write_text 
   0.15%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.95%      jvmci, level 4
   1.65%              kernel
   0.14%           libjvm.so
   0.10%        libc-2.31.so
   0.08%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = true)

# Run progress: 12.50% complete, ETA 00:13:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.304 ns/op
# Warmup Iteration   2: 14.983 ns/op
# Warmup Iteration   3: 15.105 ns/op
# Warmup Iteration   4: 15.084 ns/op
# Warmup Iteration   5: 15.063 ns/op
Iteration   1: 15.060 ns/op
Iteration   2: 15.114 ns/op
Iteration   3: 14.839 ns/op
Iteration   4: 15.107 ns/op
Iteration   5: 15.101 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  15.044 ±(99.9%) 0.449 ns/op [Average]
  (min, avg, max) = (14.839, 15.044, 15.114), stdev = 0.117
  CI (99.9%): [14.595, 15.493] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:asm":
PrintAssembly processed: 230611 total address lines.
Perf output processed (skipped 60.823 seconds):
 Column 1: cycles (50616 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 985 

                      # {method} {0x00007fde8b485e80} &apos;is_duplicated_1&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
                      #           [sp+0x20]  (sp of caller)
                      0x00007fdf0ad7cb20:   mov    0x8(%rsi),%r10d
                      0x00007fdf0ad7cb24:   movabs $0x7fde8f000000,%r12
                      0x00007fdf0ad7cb2e:   add    %r12,%r10
                      0x00007fdf0ad7cb31:   xor    %r12,%r12
                      0x00007fdf0ad7cb34:   cmp    %r10,%rax
                      0x00007fdf0ad7cb37:   jne    0x00007fdf0a764080           ;   {runtime_call ic_miss_stub}
                      0x00007fdf0ad7cb3d:   data16 xchg %ax,%ax
                    [Verified Entry Point]
   0.25%              0x00007fdf0ad7cb40:   mov    %eax,-0x14000(%rsp)
   3.29%              0x00007fdf0ad7cb47:   sub    $0x18,%rsp
   0.28%              0x00007fdf0ad7cb4b:   nop
                      0x00007fdf0ad7cb4c:   cmpl   $0x1,0x20(%r15)
   1.83%              0x00007fdf0ad7cb54:   jne    0x00007fdf0ad7cced
   1.12%              0x00007fdf0ad7cb5a:   mov    %rbp,0x10(%rsp)
   0.14%              0x00007fdf0ad7cb5f:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
                      0x00007fdf0ad7cb62:   mov    0x8(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007fdf0ad7cd11
   5.61%              0x00007fdf0ad7cb69:   movabs $0x7fde8f000000,%r10         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   0.52%              0x00007fdf0ad7cb73:   lea    (%r10,%rax,1),%r11
   1.56%              0x00007fdf0ad7cb77:   movabs $0x7fde9002b798,%r10         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                      0x00007fdf0ad7cb81:   cmp    0x20(%r11),%r10
          ╭           0x00007fdf0ad7cb85:   je     0x00007fdf0ad7cb97
  14.54%  │           0x00007fdf0ad7cb8b:   cmp    $0x102b798,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │╭          0x00007fdf0ad7cb91:   jne    0x00007fdf0ad7cc45
   2.58%  ↘│          0x00007fdf0ad7cb97:   movabs $0x7fde9002b990,%r10         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           │          0x00007fdf0ad7cba1:   cmp    0x20(%r11),%r10
           │╭         0x00007fdf0ad7cba5:   je     0x00007fdf0ad7cbb7
   2.55%   ││         0x00007fdf0ad7cbab:   cmp    $0x102b990,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           ││╭        0x00007fdf0ad7cbb1:   jne    0x00007fdf0ad7cc02           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   2.54%   │↘│        0x00007fdf0ad7cbb7:   nopw   0x0(%rax,%rax,1)
           │ │        0x00007fdf0ad7cbc0:   cmp    $0x102bb88,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
           │ │╭       0x00007fdf0ad7cbc6:   jne    0x00007fdf0ad7cbee
           │ ││       0x00007fdf0ad7cbcc:   mov    $0x0,%eax
   2.50%   │ ││↗      0x00007fdf0ad7cbd1:   mov    0x10(%rsp),%rbp
   0.00%   │ │││      0x00007fdf0ad7cbd6:   add    $0x18,%rsp
           │ │││      0x00007fdf0ad7cbda:   nopw   0x0(%rax,%rax,1)
           │ │││      0x00007fdf0ad7cbe0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │ │││      0x00007fdf0ad7cbe7:   ja     0x00007fdf0ad7ccfd
   2.47%   │ │││      0x00007fdf0ad7cbed:   ret    
   2.46%   │ │↘│      0x00007fdf0ad7cbee:   cmp    $0x102bda8,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
           │ │ │      0x00007fdf0ad7cbf4:   jne    0x00007fdf0ad7ccde
           │ │ │      0x00007fdf0ad7cbfa:   mov    $0x1,%eax
           │ │ │      0x00007fdf0ad7cbff:   nop
           │ │ ╰      0x00007fdf0ad7cc00:   jmp    0x00007fdf0ad7cbd1           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
           │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
           │ ↘        0x00007fdf0ad7cc02:   mov    0x28(%r11),%r8
           │          0x00007fdf0ad7cc06:   mov    (%r8),%r9d
           │          0x00007fdf0ad7cc09:   mov    $0x0,%ecx
   2.42%   │    ╭     0x00007fdf0ad7cc0e:   jmp    0x00007fdf0ad7cc3a
           │    │     0x00007fdf0ad7cc13:   nopw   0x0(%rax,%rax,1)
           │    │     0x00007fdf0ad7cc1c:   data16 data16 xchg %ax,%ax
   5.10%   │    │↗    0x00007fdf0ad7cc20:   mov    %ecx,%ebx
           │    ││    0x00007fdf0ad7cc22:   shl    $0x3,%ebx
           │    ││    0x00007fdf0ad7cc25:   lea    0x8(%rbx),%ebx
   0.00%   │    ││    0x00007fdf0ad7cc28:   movslq %ebx,%rbx
   5.08%   │    ││    0x00007fdf0ad7cc2b:   mov    (%r8,%rbx,1),%rbx
   0.00%   │    ││    0x00007fdf0ad7cc2f:   cmp    %rbx,%r10
           │    ││    0x00007fdf0ad7cc32:   je     0x00007fdf0ad7cc85
   0.01%   │    ││    0x00007fdf0ad7cc38:   inc    %ecx
   0.00%   │    ↘│    0x00007fdf0ad7cc3a:   cmp    %ecx,%r9d
           │     ╰    0x00007fdf0ad7cc3d:   jg     0x00007fdf0ad7cc20
           │          0x00007fdf0ad7cc3f:   nop
           │          0x00007fdf0ad7cc40:   jmp    0x00007fdf0ad7cc97           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
           ↘          0x00007fdf0ad7cc45:   mov    0x28(%r11),%r8
                      0x00007fdf0ad7cc49:   mov    (%r8),%r9d
   7.72%              0x00007fdf0ad7cc4c:   mov    $0x0,%ecx
                  ╭   0x00007fdf0ad7cc51:   jmp    0x00007fdf0ad7cc7a
                  │   0x00007fdf0ad7cc56:   data16 nopw 0x0(%rax,%rax,1)
   2.58%          │↗  0x00007fdf0ad7cc60:   mov    %ecx,%ebx
                  ││  0x00007fdf0ad7cc62:   shl    $0x3,%ebx
                  ││  0x00007fdf0ad7cc65:   lea    0x8(%rbx),%ebx
                  ││  0x00007fdf0ad7cc68:   movslq %ebx,%rbx
   2.52%          ││  0x00007fdf0ad7cc6b:   mov    (%r8,%rbx,1),%rbx
                  ││  0x00007fdf0ad7cc6f:   cmp    %rbx,%r10
                  ││  0x00007fdf0ad7cc72:   je     0x00007fdf0ad7cc8e
                  ││  0x00007fdf0ad7cc78:   inc    %ecx
                  ↘│  0x00007fdf0ad7cc7a:   cmp    %ecx,%r9d
                   ╰  0x00007fdf0ad7cc7d:   jg     0x00007fdf0ad7cc60
                      0x00007fdf0ad7cc7f:   nop
                      0x00007fdf0ad7cc80:   jmp    0x00007fdf0ad7ccbf           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
                      0x00007fdf0ad7cc85:   mov    %r10,0x20(%r11)
....................................................................................................
  69.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 1022 

              0x00007fdf0ad847f3:   mov    0x10(%rsp),%rdx
              0x00007fdf0ad847f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@10 (line 188)
              0x00007fdf0ad847fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fdf0ad84805:   jmp    0x00007fdf0ad8482f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 190)
          │   0x00007fdf0ad8480a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fdf0ad84815:   data16 data16 xchg %ax,%ax
          │   0x00007fdf0ad84819:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
   2.58%  │↗  0x00007fdf0ad84820:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
          ││  0x00007fdf0ad84827:   test   %eax,(%r11)                  ;   {poll}
   0.37%  ││  0x00007fdf0ad8482a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 190)
          ↘│  0x00007fdf0ad8482f:   mov    0x8(%rsp),%r10
   2.28%   │  0x00007fdf0ad84834:   mov    %r10,%rsi
           │  0x00007fdf0ad84837:   call   0x00007fdf0a764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.05%   │  0x00007fdf0ad8483c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007fdf0ad84844:   mov    0x20(%rsp),%r10
   9.97%   │  0x00007fdf0ad84849:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@26 (line 191)
   2.42%   │  0x00007fdf0ad8484c:   mov    0x18(%rsp),%rsi
           │  0x00007fdf0ad84851:   cmpb   $0x0,0x94(%rsi)
  10.88%   ╰  0x00007fdf0ad84858:   je     0x00007fdf0ad84820           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
              0x00007fdf0ad8485a:   mov    %r10,0x20(%rsp)
              0x00007fdf0ad8485f:   nop
              0x00007fdf0ad84860:   call   0x00007fdf235dbdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fdf0ad84865:   nop
              0x00007fdf0ad84866:   mov    0x10(%rsp),%rdx
              0x00007fdf0ad8486b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@40 (line 193)
              0x00007fdf0ad8486f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@46 (line 194)
....................................................................................................
  28.54%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 985 
  28.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 1022 
   0.28%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.91%  <...other 317 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 985 
  28.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 1022 
   1.39%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%         libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.18%  <...other 81 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.21%       jvmci, level 4
   1.39%               kernel
   0.16%            libjvm.so
   0.10%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%     perf-2153278.map
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = false)

# Run progress: 25.00% complete, ETA 00:11:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.812 ns/op
# Warmup Iteration   2: 6.970 ns/op
# Warmup Iteration   3: 6.997 ns/op
# Warmup Iteration   4: 6.965 ns/op
# Warmup Iteration   5: 6.966 ns/op
Iteration   1: 6.964 ns/op
Iteration   2: 6.967 ns/op
Iteration   3: 6.981 ns/op
Iteration   4: 6.972 ns/op
Iteration   5: 6.966 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  6.970 ±(99.9%) 0.026 ns/op [Average]
  (min, avg, max) = (6.964, 6.970, 6.981), stdev = 0.007
  CI (99.9%): [6.944, 6.996] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:asm":
PrintAssembly processed: 224491 total address lines.
Perf output processed (skipped 60.712 seconds):
 Column 1: cycles (100255 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 1021 

              0x00007f89eed83cf3:   mov    0x10(%rsp),%rdx
              0x00007f89eed83cf8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@10 (line 188)
              0x00007f89eed83cfc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f89eed83d05:   jmp    0x00007f89eed83d2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@13 (line 190)
          │   0x00007f89eed83d0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f89eed83d15:   data16 data16 xchg %ax,%ax
          │   0x00007f89eed83d19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 192)
   5.45%  │↗  0x00007f89eed83d20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 192)
   0.00%  ││  0x00007f89eed83d27:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007f89eed83d2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f89eed83d2f:   mov    0x8(%rsp),%r10
   5.54%   │  0x00007f89eed83d34:   mov    %r10,%rsi
           │  0x00007f89eed83d37:   call   0x00007f89ee764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   9.89%   │  0x00007f89eed83d3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007f89eed83d44:   mov    0x20(%rsp),%r10
   1.28%   │  0x00007f89eed83d49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@26 (line 191)
   5.57%   │  0x00007f89eed83d4c:   mov    0x18(%rsp),%rsi
           │  0x00007f89eed83d51:   cmpb   $0x0,0x94(%rsi)
  21.83%   ╰  0x00007f89eed83d58:   je     0x00007f89eed83d20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 192)
              0x00007f89eed83d5a:   mov    %r10,0x20(%rsp)
              0x00007f89eed83d5f:   nop
              0x00007f89eed83d60:   call   0x00007f8a08783df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f89eed83d65:   nop
              0x00007f89eed83d66:   mov    0x10(%rsp),%rdx
              0x00007f89eed83d6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@40 (line 193)
              0x00007f89eed83d6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@46 (line 194)
....................................................................................................
  49.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 989 

             # {method} {0x00007f896f47d188} &apos;is_duplicated_2&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f89eed7e780:   mov    0x8(%rsi),%r10d
             0x00007f89eed7e784:   movabs $0x7f8973000000,%r12
             0x00007f89eed7e78e:   add    %r12,%r10
             0x00007f89eed7e791:   xor    %r12,%r12
             0x00007f89eed7e794:   cmp    %r10,%rax
             0x00007f89eed7e797:   jne    0x00007f89ee764080           ;   {runtime_call ic_miss_stub}
             0x00007f89eed7e79d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007f89eed7e7a0:   mov    %eax,-0x14000(%rsp)
   5.54%     0x00007f89eed7e7a7:   sub    $0x18,%rsp
   0.00%     0x00007f89eed7e7ab:   nop
             0x00007f89eed7e7ac:   cmpl   $0x0,0x20(%r15)
   5.60%     0x00007f89eed7e7b4:   jne    0x00007f89eed7e80e
   1.11%     0x00007f89eed7e7ba:   mov    %rbp,0x10(%rsp)
   0.00%     0x00007f89eed7e7bf:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
             0x00007f89eed7e7c2:   cmpl   $0x102b718,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f89eed7e82f
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.19%  ╭  0x00007f89eed7e7cd:   jne    0x00007f89eed7e7ef           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   5.51%  │  0x00007f89eed7e7d3:   mov    $0x1,%eax
   0.00%  │  0x00007f89eed7e7d8:   mov    0x10(%rsp),%rbp
          │  0x00007f89eed7e7dd:   add    $0x18,%rsp
          │  0x00007f89eed7e7e1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f89eed7e7e8:   ja     0x00007f89eed7e81b
   5.45%  │  0x00007f89eed7e7ee:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@7 (line 102)
          ↘  0x00007f89eed7e7ef:   movl   $0xffffffdd,0x484(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
             0x00007f89eed7e7fa:   mov    %r12,0x490(%r15)
             0x00007f89eed7e801:   call   0x00007f89ee76a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  49.41%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.57%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 1021 
  49.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 989 
   0.13%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.57%  <...other 349 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.57%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 1021 
  49.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 989 
   0.86%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  syscall 
   0.00%    perf-2153347.map  [unknown] 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  clock_gettime@plt 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.07%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.98%      jvmci, level 4
   0.86%              kernel
   0.06%           libjvm.so
   0.04%        libc-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%                    
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%    perf-2153347.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = true)

# Run progress: 37.50% complete, ETA 00:09:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.842 ns/op
# Warmup Iteration   2: 43.455 ns/op
# Warmup Iteration   3: 46.359 ns/op
# Warmup Iteration   4: 47.089 ns/op
# Warmup Iteration   5: 52.960 ns/op
Iteration   1: 53.028 ns/op
Iteration   2: 52.641 ns/op
Iteration   3: 54.246 ns/op
Iteration   4: 54.279 ns/op
Iteration   5: 39.218 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  50.683 ±(99.9%) 24.837 ns/op [Average]
  (min, avg, max) = (39.218, 50.683, 54.279), stdev = 6.450
  CI (99.9%): [25.846, 75.519] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:asm":
PrintAssembly processed: 222610 total address lines.
Perf output processed (skipped 60.818 seconds):
 Column 1: cycles (100519 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 1000 

                         #           [sp+0x20]  (sp of caller)
                         0x00007fcda2d7e5a0:   mov    0x8(%rsi),%r10d
                         0x00007fcda2d7e5a4:   movabs $0x7fcd27000000,%r12
                         0x00007fcda2d7e5ae:   add    %r12,%r10
                         0x00007fcda2d7e5b1:   xor    %r12,%r12
                         0x00007fcda2d7e5b4:   cmp    %r10,%rax
                         0x00007fcda2d7e5b7:   jne    0x00007fcda2764080           ;   {runtime_call ic_miss_stub}
                         0x00007fcda2d7e5bd:   data16 xchg %ax,%ax
                       [Verified Entry Point]
                         0x00007fcda2d7e5c0:   mov    %eax,-0x14000(%rsp)
   0.87%                 0x00007fcda2d7e5c7:   sub    $0x18,%rsp
   0.00%                 0x00007fcda2d7e5cb:   nop
                         0x00007fcda2d7e5cc:   cmpl   $0x1,0x20(%r15)
                         0x00007fcda2d7e5d4:   jne    0x00007fcda2d7e784
   0.83%                 0x00007fcda2d7e5da:   mov    %rbp,0x10(%rsp)
                         0x00007fcda2d7e5df:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                                   ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
                         0x00007fcda2d7e5e2:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fcda2d7e7bc
   0.00%                 0x00007fcda2d7e5ea:   movabs $0x7fcd27000000,%rax         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.84%                 0x00007fcda2d7e5f4:   lea    (%rax,%r10,1),%r11
                         0x00007fcda2d7e5f8:   movabs $0x7fcd2802b328,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                         0x00007fcda2d7e602:   cmp    0x20(%r11),%rax
          ╭              0x00007fcda2d7e606:   je     0x00007fcda2d7e619
  16.54%  │              0x00007fcda2d7e60c:   cmp    $0x102b328,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │╭             0x00007fcda2d7e613:   jne    0x00007fcda2d7e66e
   2.28%  ↘│         ↗   0x00007fcda2d7e619:   movabs $0x7fcd2802b520,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.05%   │         │   0x00007fcda2d7e623:   cmp    0x20(%r11),%rax
           │╭        │   0x00007fcda2d7e627:   je     0x00007fcda2d7e63a
   1.11%   ││        │   0x00007fcda2d7e62d:   cmp    $0x102b520,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           ││╭       │   0x00007fcda2d7e634:   jne    0x00007fcda2d7e6a5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   1.88%   │↘│       │↗  0x00007fcda2d7e63a:   nopw   0x0(%rax,%rax,1)
           │ │       ││  0x00007fcda2d7e640:   cmp    $0x102b938,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
           │ │╭      ││  0x00007fcda2d7e647:   jne    0x00007fcda2d7e6f7           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
           │ ││      ││  0x00007fcda2d7e64d:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@7 (line 102)
           │ ││      ││  0x00007fcda2d7e652:   mov    0x10(%rsp),%rbp
   0.82%   │ ││      ││  0x00007fcda2d7e657:   add    $0x18,%rsp
           │ ││      ││  0x00007fcda2d7e65b:   nopl   0x0(%rax,%rax,1)
           │ ││      ││  0x00007fcda2d7e660:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │ ││      ││  0x00007fcda2d7e667:   ja     0x00007fcda2d7e794
           │ ││      ││  0x00007fcda2d7e66d:   ret    
   0.37%   ↘ ││      ││  0x00007fcda2d7e66e:   mov    0x28(%r11),%r8
  54.01%     ││      ││  0x00007fcda2d7e672:   mov    (%r8),%r9d
   2.39%     ││      ││  0x00007fcda2d7e675:   mov    $0x0,%ecx
             ││╭     ││  0x00007fcda2d7e67a:   jmp    0x00007fcda2d7e69a
             │││     ││  0x00007fcda2d7e67f:   nop
   0.77%     │││ ↗   ││  0x00007fcda2d7e680:   mov    %ecx,%ebx
             │││ │   ││  0x00007fcda2d7e682:   shl    $0x3,%ebx
             │││ │   ││  0x00007fcda2d7e685:   lea    0x8(%rbx),%ebx
             │││ │   ││  0x00007fcda2d7e688:   movslq %ebx,%rbx
   0.80%     │││ │   ││  0x00007fcda2d7e68b:   mov    (%r8,%rbx,1),%rbx
   0.02%     │││ │   ││  0x00007fcda2d7e68f:   cmp    %rbx,%rax
             │││╭│   ││  0x00007fcda2d7e692:   je     0x00007fcda2d7e6e5
             │││││   ││  0x00007fcda2d7e698:   inc    %ecx
   0.32%     ││↘││   ││  0x00007fcda2d7e69a:   cmp    %ecx,%r9d
             ││ │╰   ││  0x00007fcda2d7e69d:   jg     0x00007fcda2d7e680
             ││ │    ││  0x00007fcda2d7e69f:   nop
             ││ │    ││  0x00007fcda2d7e6a0:   jmp    0x00007fcda2d7e756           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             ││ │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
             ││ │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.78%     ↘│ │    ││  0x00007fcda2d7e6a5:   mov    0x28(%r11),%r8
   6.58%      │ │    ││  0x00007fcda2d7e6a9:   mov    (%r8),%r9d
   0.24%      │ │    ││  0x00007fcda2d7e6ac:   mov    $0x0,%ecx
              │ │ ╭  ││  0x00007fcda2d7e6b1:   jmp    0x00007fcda2d7e6da
              │ │ │  ││  0x00007fcda2d7e6b6:   data16 nopw 0x0(%rax,%rax,1)
   1.63%      │ │ │ ↗││  0x00007fcda2d7e6c0:   mov    %ecx,%ebx
              │ │ │ │││  0x00007fcda2d7e6c2:   shl    $0x3,%ebx
   0.02%      │ │ │ │││  0x00007fcda2d7e6c5:   lea    0x8(%rbx),%ebx
              │ │ │ │││  0x00007fcda2d7e6c8:   movslq %ebx,%rbx
   1.59%      │ │ │ │││  0x00007fcda2d7e6cb:   mov    (%r8,%rbx,1),%rbx
              │ │ │ │││  0x00007fcda2d7e6cf:   cmp    %rbx,%rax
              │ │ │╭│││  0x00007fcda2d7e6d2:   je     0x00007fcda2d7e6ee
   0.03%      │ │ │││││  0x00007fcda2d7e6d8:   inc    %ecx
   0.80%      │ │ ↘││││  0x00007fcda2d7e6da:   cmp    %ecx,%r9d
              │ │  │╰││  0x00007fcda2d7e6dd:   jg     0x00007fcda2d7e6c0
              │ │  │ ││  0x00007fcda2d7e6df:   nop
              │ │  │ ││  0x00007fcda2d7e6e0:   jmp    0x00007fcda2d7e72e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │ │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
              │ │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.01%      │ ↘  │ ││  0x00007fcda2d7e6e5:   mov    %rax,0x20(%r11)
              │    │ ╰│  0x00007fcda2d7e6e9:   jmp    0x00007fcda2d7e619           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
              │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.02%      │    ↘  │  0x00007fcda2d7e6ee:   mov    %rax,0x20(%r11)
              │       ╰  0x00007fcda2d7e6f2:   jmp    0x00007fcda2d7e63a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
              │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
              ↘          0x00007fcda2d7e6f7:   nopw   0x0(%rax,%rax,1)
                         0x00007fcda2d7e700:   cmp    $0x102b718,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
                         0x00007fcda2d7e707:   jne    0x00007fcda2d7e775           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
....................................................................................................
  95.60%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 1000 
   3.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 1033 
   0.39%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.43%  <...other 291 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 1000 
   3.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 1033 
   0.92%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%        libc-2.31.so  syscall 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%              [vdso]  __vdso_clock_gettime 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.06%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.90%      jvmci, level 4
   0.92%              kernel
   0.07%           libjvm.so
   0.05%                    
   0.03%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%              [vdso]
   0.00%         interpreter
   0.00%          libjava.so
   0.00%    perf-2153414.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = false)

# Run progress: 50.00% complete, ETA 00:07:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.768 ±(99.9%) 0.239 ns/op
# Warmup Iteration   2: 6.967 ±(99.9%) 0.083 ns/op
# Warmup Iteration   3: 7.001 ±(99.9%) 0.003 ns/op
# Warmup Iteration   4: 7.006 ±(99.9%) 0.058 ns/op
# Warmup Iteration   5: 6.982 ±(99.9%) 0.334 ns/op
Iteration   1: 6.992 ±(99.9%) 0.433 ns/op
Iteration   2: 6.984 ±(99.9%) 0.284 ns/op
Iteration   3: 6.968 ±(99.9%) 0.146 ns/op
Iteration   4: 6.971 ±(99.9%) 0.151 ns/op
Iteration   5: 7.011 ±(99.9%) 0.535 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  6.985 ±(99.9%) 0.067 ns/op [Average]
  (min, avg, max) = (6.968, 6.985, 7.011), stdev = 0.017
  CI (99.9%): [6.919, 7.052] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:asm":
PrintAssembly processed: 224901 total address lines.
Perf output processed (skipped 60.753 seconds):
 Column 1: cycles (149929 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 1024 

              0x00007f110ad81773:   mov    0x10(%rsp),%rdx
              0x00007f110ad81778:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@10 (line 188)
              0x00007f110ad8177c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f110ad81785:   jmp    0x00007f110ad817af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@13 (line 190)
          │   0x00007f110ad8178a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f110ad81795:   data16 data16 xchg %ax,%ax
          │   0x00007f110ad81799:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 192)
   5.42%  │↗  0x00007f110ad817a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 192)
          ││  0x00007f110ad817a7:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007f110ad817aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@13 (line 190)
   0.00%  ↘│  0x00007f110ad817af:   mov    0x8(%rsp),%r10
   5.61%   │  0x00007f110ad817b4:   mov    %r10,%rsi
           │  0x00007f110ad817b7:   call   0x00007f110a764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   9.87%   │  0x00007f110ad817bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007f110ad817c4:   mov    0x20(%rsp),%r10
   1.55%   │  0x00007f110ad817c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@26 (line 191)
   5.54%   │  0x00007f110ad817cc:   mov    0x18(%rsp),%rsi
           │  0x00007f110ad817d1:   cmpb   $0x0,0x94(%rsi)
  21.96%   ╰  0x00007f110ad817d8:   je     0x00007f110ad817a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 192)
              0x00007f110ad817da:   mov    %r10,0x20(%rsp)
              0x00007f110ad817df:   nop
              0x00007f110ad817e0:   call   0x00007f112458cdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f110ad817e5:   nop
              0x00007f110ad817e6:   mov    0x10(%rsp),%rdx
              0x00007f110ad817eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@40 (line 193)
              0x00007f110ad817ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@46 (line 194)
....................................................................................................
  49.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 991 

             # {method} {0x00007f108b47d240} &apos;is_duplicated_3&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f110ad7c580:   mov    0x8(%rsi),%r10d
             0x00007f110ad7c584:   movabs $0x7f108f000000,%r12
             0x00007f110ad7c58e:   add    %r12,%r10
             0x00007f110ad7c591:   xor    %r12,%r12
             0x00007f110ad7c594:   cmp    %r10,%rax
             0x00007f110ad7c597:   jne    0x00007f110a764080           ;   {runtime_call ic_miss_stub}
             0x00007f110ad7c59d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007f110ad7c5a0:   mov    %eax,-0x14000(%rsp)
   5.38%     0x00007f110ad7c5a7:   sub    $0x18,%rsp
   0.00%     0x00007f110ad7c5ab:   nop
             0x00007f110ad7c5ac:   cmpl   $0x1,0x20(%r15)
   5.41%     0x00007f110ad7c5b4:   jne    0x00007f110ad7c60e
   1.15%     0x00007f110ad7c5ba:   mov    %rbp,0x10(%rsp)
             0x00007f110ad7c5bf:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
             0x00007f110ad7c5c2:   cmpl   $0x102b718,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f110ad7c62f
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.39%  ╭  0x00007f110ad7c5cd:   jne    0x00007f110ad7c5ef           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   5.57%  │  0x00007f110ad7c5d3:   mov    $0x1,%eax
          │  0x00007f110ad7c5d8:   mov    0x10(%rsp),%rbp
          │  0x00007f110ad7c5dd:   add    $0x18,%rsp
   0.00%  │  0x00007f110ad7c5e1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f110ad7c5e8:   ja     0x00007f110ad7c61b
   5.51%  │  0x00007f110ad7c5ee:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@7 (line 109)
          ↘  0x00007f110ad7c5ef:   movl   $0xffffffdd,0x484(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
             0x00007f110ad7c5fa:   mov    %r12,0x490(%r15)
             0x00007f110ad7c601:   call   0x00007f110a76a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  49.41%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 1024 
  49.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 991 
   0.14%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.32%  <...other 323 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 1024 
  49.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 991 
   0.53%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         interpreter  return entry points  
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.05%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.36%      jvmci, level 4
   0.53%              kernel
   0.04%           libjvm.so
   0.02%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%         interpreter
   0.00%          ld-2.31.so
   0.00%              [vdso]
   0.00%    perf-2153480.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = true)

# Run progress: 62.50% complete, ETA 00:05:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 99.844 ±(99.9%) 556.031 ns/op
# Warmup Iteration   2: 113.515 ±(99.9%) 174.891 ns/op
# Warmup Iteration   3: 92.691 ±(99.9%) 39.877 ns/op
# Warmup Iteration   4: 90.434 ±(99.9%) 82.020 ns/op
# Warmup Iteration   5: 90.124 ±(99.9%) 94.267 ns/op
Iteration   1: 95.453 ±(99.9%) 84.744 ns/op
Iteration   2: 90.082 ±(99.9%) 93.078 ns/op
Iteration   3: 91.390 ±(99.9%) 42.815 ns/op
Iteration   4: 91.776 ±(99.9%) 54.931 ns/op
Iteration   5: 92.871 ±(99.9%) 31.060 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  92.314 ±(99.9%) 7.771 ns/op [Average]
  (min, avg, max) = (90.082, 92.314, 95.453), stdev = 2.018
  CI (99.9%): [84.543, 100.086] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:asm":
PrintAssembly processed: 222890 total address lines.
Perf output processed (skipped 60.664 seconds):
 Column 1: cycles (149794 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 971 

                         #           [sp+0x20]  (sp of caller)
                         0x00007f50ead7fb20:   mov    0x8(%rsi),%r10d
                         0x00007f50ead7fb24:   movabs $0x7f506f000000,%r12
                         0x00007f50ead7fb2e:   add    %r12,%r10
                         0x00007f50ead7fb31:   xor    %r12,%r12
                         0x00007f50ead7fb34:   cmp    %r10,%rax
                         0x00007f50ead7fb37:   jne    0x00007f50ea764080           ;   {runtime_call ic_miss_stub}
                         0x00007f50ead7fb3d:   data16 xchg %ax,%ax
                       [Verified Entry Point]
                         0x00007f50ead7fb40:   mov    %eax,-0x14000(%rsp)
   0.39%                 0x00007f50ead7fb47:   sub    $0x18,%rsp
                         0x00007f50ead7fb4b:   nop
                         0x00007f50ead7fb4c:   cmpl   $0x1,0x20(%r15)
                         0x00007f50ead7fb54:   jne    0x00007f50ead7fd04
   0.40%                 0x00007f50ead7fb5a:   mov    %rbp,0x10(%rsp)
                         0x00007f50ead7fb5f:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                                   ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
                         0x00007f50ead7fb62:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f50ead7fd3c
                         0x00007f50ead7fb6a:   movabs $0x7f506f000000,%rax         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.42%                 0x00007f50ead7fb74:   lea    (%rax,%r10,1),%r11
                         0x00007f50ead7fb78:   movabs $0x7f507002b328,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                         0x00007f50ead7fb82:   cmp    0x20(%r11),%rax
          ╭              0x00007f50ead7fb86:   je     0x00007f50ead7fb99
  13.08%  │              0x00007f50ead7fb8c:   cmp    $0x102b328,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │╭             0x00007f50ead7fb93:   jne    0x00007f50ead7fbee
   0.41%  ↘│         ↗   0x00007f50ead7fb99:   movabs $0x7f507002b520,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.00%   │         │   0x00007f50ead7fba3:   cmp    0x20(%r11),%rax
           │╭        │   0x00007f50ead7fba7:   je     0x00007f50ead7fbba
   1.20%   ││        │   0x00007f50ead7fbad:   cmp    $0x102b520,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           ││╭       │   0x00007f50ead7fbb4:   jne    0x00007f50ead7fc25           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.42%   │↘│       │↗  0x00007f50ead7fbba:   nopw   0x0(%rax,%rax,1)
           │ │       ││  0x00007f50ead7fbc0:   cmp    $0x102b938,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
           │ │╭      ││  0x00007f50ead7fbc7:   jne    0x00007f50ead7fc77           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
           │ ││      ││  0x00007f50ead7fbcd:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@7 (line 109)
           │ ││      ││  0x00007f50ead7fbd2:   mov    0x10(%rsp),%rbp
   0.44%   │ ││      ││  0x00007f50ead7fbd7:   add    $0x18,%rsp
           │ ││      ││  0x00007f50ead7fbdb:   nopl   0x0(%rax,%rax,1)
           │ ││      ││  0x00007f50ead7fbe0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │ ││      ││  0x00007f50ead7fbe7:   ja     0x00007f50ead7fd14
   0.00%   │ ││      ││  0x00007f50ead7fbed:   ret    
   0.06%   ↘ ││      ││  0x00007f50ead7fbee:   mov    0x28(%r11),%r8
  65.05%     ││      ││  0x00007f50ead7fbf2:   mov    (%r8),%r9d
   1.74%     ││      ││  0x00007f50ead7fbf5:   mov    $0x0,%ecx
             ││╭     ││  0x00007f50ead7fbfa:   jmp    0x00007f50ead7fc1a
             │││     ││  0x00007f50ead7fbff:   nop
   0.43%     │││ ↗   ││  0x00007f50ead7fc00:   mov    %ecx,%ebx
             │││ │   ││  0x00007f50ead7fc02:   shl    $0x3,%ebx
             │││ │   ││  0x00007f50ead7fc05:   lea    0x8(%rbx),%ebx
             │││ │   ││  0x00007f50ead7fc08:   movslq %ebx,%rbx
   0.40%     │││ │   ││  0x00007f50ead7fc0b:   mov    (%r8,%rbx,1),%rbx
   0.02%     │││ │   ││  0x00007f50ead7fc0f:   cmp    %rbx,%rax
             │││╭│   ││  0x00007f50ead7fc12:   je     0x00007f50ead7fc65
             │││││   ││  0x00007f50ead7fc18:   inc    %ecx
   0.07%     ││↘││   ││  0x00007f50ead7fc1a:   cmp    %ecx,%r9d
             ││ │╰   ││  0x00007f50ead7fc1d:   jg     0x00007f50ead7fc00
             ││ │    ││  0x00007f50ead7fc1f:   nop
             ││ │    ││  0x00007f50ead7fc20:   jmp    0x00007f50ead7fcd6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             ││ │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
             ││ │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.38%     ↘│ │    ││  0x00007f50ead7fc25:   mov    0x28(%r11),%r8
  10.41%      │ │    ││  0x00007f50ead7fc29:   mov    (%r8),%r9d
   0.27%      │ │    ││  0x00007f50ead7fc2c:   mov    $0x0,%ecx
              │ │ ╭  ││  0x00007f50ead7fc31:   jmp    0x00007f50ead7fc5a
              │ │ │  ││  0x00007f50ead7fc36:   data16 nopw 0x0(%rax,%rax,1)
   0.81%      │ │ │ ↗││  0x00007f50ead7fc40:   mov    %ecx,%ebx
              │ │ │ │││  0x00007f50ead7fc42:   shl    $0x3,%ebx
   0.01%      │ │ │ │││  0x00007f50ead7fc45:   lea    0x8(%rbx),%ebx
              │ │ │ │││  0x00007f50ead7fc48:   movslq %ebx,%rbx
   0.83%      │ │ │ │││  0x00007f50ead7fc4b:   mov    (%r8,%rbx,1),%rbx
              │ │ │ │││  0x00007f50ead7fc4f:   cmp    %rbx,%rax
              │ │ │╭│││  0x00007f50ead7fc52:   je     0x00007f50ead7fc6e
   0.01%      │ │ │││││  0x00007f50ead7fc58:   inc    %ecx
   0.39%      │ │ ↘││││  0x00007f50ead7fc5a:   cmp    %ecx,%r9d
              │ │  │╰││  0x00007f50ead7fc5d:   jg     0x00007f50ead7fc40
              │ │  │ ││  0x00007f50ead7fc5f:   nop
              │ │  │ ││  0x00007f50ead7fc60:   jmp    0x00007f50ead7fcae           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │ │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
              │ │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.01%      │ ↘  │ ││  0x00007f50ead7fc65:   mov    %rax,0x20(%r11)
              │    │ ╰│  0x00007f50ead7fc69:   jmp    0x00007f50ead7fb99           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
              │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.01%      │    ↘  │  0x00007f50ead7fc6e:   mov    %rax,0x20(%r11)
              │       ╰  0x00007f50ead7fc72:   jmp    0x00007f50ead7fbba           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
              │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
              ↘          0x00007f50ead7fc77:   nopw   0x0(%rax,%rax,1)
                         0x00007f50ead7fc80:   cmp    $0x102b718,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
                         0x00007f50ead7fc87:   jne    0x00007f50ead7fcf5           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
....................................................................................................
  97.66%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 971 
   1.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 1000 
   0.08%               kernel  [unknown] 
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
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.34%  <...other 322 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 971 
   1.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 1000 
   0.53%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%            libjvm.so  defaultStream::write 
   0.00%         libc-2.31.so  __vfprintf_internal 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  __strchrnul_avx2 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.00%            libjvm.so  fileStream::write 
   0.00%         libc-2.31.so  syscall 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  stringStream::write 
   0.00%  libjvmcicompiler.so  com.oracle.svm.core.jni.functions.JNIFunctions::NewStringUTF 
   0.04%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.39%       jvmci, level 4
   0.53%               kernel
   0.03%            libjvm.so
   0.02%         libc-2.31.so
   0.01%                     
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%   libpthread-2.31.so
   0.00%       hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = false)

# Run progress: 75.00% complete, ETA 00:03:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.768 ±(99.9%) 0.269 ns/op
# Warmup Iteration   2: 6.969 ±(99.9%) 0.040 ns/op
# Warmup Iteration   3: 7.059 ±(99.9%) 0.272 ns/op
# Warmup Iteration   4: 7.032 ±(99.9%) 0.112 ns/op
# Warmup Iteration   5: 6.969 ±(99.9%) 0.037 ns/op
Iteration   1: 6.972 ±(99.9%) 0.049 ns/op
Iteration   2: 6.970 ±(99.9%) 0.022 ns/op
Iteration   3: 6.971 ±(99.9%) 0.031 ns/op
Iteration   4: 6.972 ±(99.9%) 0.035 ns/op
Iteration   5: 6.977 ±(99.9%) 0.110 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  6.973 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (6.970, 6.973, 6.977), stdev = 0.002
  CI (99.9%): [6.963, 6.982] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:asm":
PrintAssembly processed: 233921 total address lines.
Perf output processed (skipped 60.701 seconds):
 Column 1: cycles (199933 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 1011 

              0x00007ffa6ad85bf3:   mov    0x10(%rsp),%rdx
              0x00007ffa6ad85bf8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@10 (line 188)
              0x00007ffa6ad85bfc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007ffa6ad85c05:   jmp    0x00007ffa6ad85c2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@13 (line 190)
          │   0x00007ffa6ad85c0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007ffa6ad85c15:   data16 data16 xchg %ax,%ax
          │   0x00007ffa6ad85c19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 192)
   5.50%  │↗  0x00007ffa6ad85c20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 192)
          ││  0x00007ffa6ad85c27:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007ffa6ad85c2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@13 (line 190)
          ↘│  0x00007ffa6ad85c2f:   mov    0x8(%rsp),%r10
   5.50%   │  0x00007ffa6ad85c34:   mov    %r10,%rsi
           │  0x00007ffa6ad85c37:   call   0x00007ffa6a764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   9.74%   │  0x00007ffa6ad85c3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007ffa6ad85c44:   mov    0x20(%rsp),%r10
   1.33%   │  0x00007ffa6ad85c49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@26 (line 191)
   5.53%   │  0x00007ffa6ad85c4c:   mov    0x18(%rsp),%rsi
           │  0x00007ffa6ad85c51:   cmpb   $0x0,0x94(%rsi)
  22.18%   ╰  0x00007ffa6ad85c58:   je     0x00007ffa6ad85c20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 192)
              0x00007ffa6ad85c5a:   mov    %r10,0x20(%rsp)
              0x00007ffa6ad85c5f:   nop
              0x00007ffa6ad85c60:   call   0x00007ffa83340df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007ffa6ad85c65:   nop
              0x00007ffa6ad85c66:   mov    0x10(%rsp),%rdx
              0x00007ffa6ad85c6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@40 (line 193)
              0x00007ffa6ad85c6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@46 (line 194)
....................................................................................................
  49.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 970 

             # {method} {0x00007ff9eb47d320} &apos;is_duplicated_4&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007ffa6ad81380:   mov    0x8(%rsi),%r10d
             0x00007ffa6ad81384:   movabs $0x7ff9ef000000,%r12
             0x00007ffa6ad8138e:   add    %r12,%r10
             0x00007ffa6ad81391:   xor    %r12,%r12
             0x00007ffa6ad81394:   cmp    %r10,%rax
             0x00007ffa6ad81397:   jne    0x00007ffa6a764080           ;   {runtime_call ic_miss_stub}
             0x00007ffa6ad8139d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007ffa6ad813a0:   mov    %eax,-0x14000(%rsp)
   5.46%     0x00007ffa6ad813a7:   sub    $0x18,%rsp
             0x00007ffa6ad813ab:   nop
             0x00007ffa6ad813ac:   cmpl   $0x1,0x20(%r15)
   5.52%     0x00007ffa6ad813b4:   jne    0x00007ffa6ad8140e
   1.15%     0x00007ffa6ad813ba:   mov    %rbp,0x10(%rsp)
   0.00%     0x00007ffa6ad813bf:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
             0x00007ffa6ad813c2:   cmpl   $0x102b718,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007ffa6ad8142f
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.26%  ╭  0x00007ffa6ad813cd:   jne    0x00007ffa6ad813ef           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   5.57%  │  0x00007ffa6ad813d3:   mov    $0x1,%eax
          │  0x00007ffa6ad813d8:   mov    0x10(%rsp),%rbp
          │  0x00007ffa6ad813dd:   add    $0x18,%rsp
          │  0x00007ffa6ad813e1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007ffa6ad813e8:   ja     0x00007ffa6ad8141b
   5.54%  │  0x00007ffa6ad813ee:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@7 (line 116)
          ↘  0x00007ffa6ad813ef:   movl   $0xffffffdd,0x484(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
             0x00007ffa6ad813fa:   mov    %r12,0x490(%r15)
             0x00007ffa6ad81401:   call   0x00007ffa6a76a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  49.52%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 1011 
  49.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 970 
   0.06%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
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
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.40%  <...other 478 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 1011 
  49.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 970 
   0.56%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_AverageTime, version 3, compile id 1041 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.05%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.31%      jvmci, level 4
   0.56%              kernel
   0.05%           libjvm.so
   0.04%        libc-2.31.so
   0.01%                    
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.00%         interpreter
   0.00%          ld-2.31.so
   0.00%  libpthread-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = true)

# Run progress: 87.50% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 111.214 ±(99.9%) 114.555 ns/op
# Warmup Iteration   2: 112.679 ±(99.9%) 176.331 ns/op
# Warmup Iteration   3: 117.465 ±(99.9%) 178.284 ns/op
# Warmup Iteration   4: 115.278 ±(99.9%) 200.792 ns/op
# Warmup Iteration   5: 104.988 ±(99.9%) 97.871 ns/op
Iteration   1: 100.731 ±(99.9%) 117.751 ns/op
Iteration   2: 114.058 ±(99.9%) 192.702 ns/op
Iteration   3: 109.112 ±(99.9%) 165.804 ns/op
Iteration   4: 116.876 ±(99.9%) 201.150 ns/op
Iteration   5: 110.479 ±(99.9%) 173.985 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  110.251 ±(99.9%) 23.609 ns/op [Average]
  (min, avg, max) = (100.731, 110.251, 116.876), stdev = 6.131
  CI (99.9%): [86.642, 133.860] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:asm":
PrintAssembly processed: 233108 total address lines.
Perf output processed (skipped 60.745 seconds):
 Column 1: cycles (199968 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 977 

                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
                   0x00007f67e6d7ffcd:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@7 (line 116)
                   0x00007f67e6d7ffd2:   mov    0x10(%rsp),%rbp
                   0x00007f67e6d7ffd7:   add    $0x18,%rsp
                   0x00007f67e6d7ffdb:   nopl   0x0(%rax,%rax,1)
                   0x00007f67e6d7ffe0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                   0x00007f67e6d7ffe7:   ja     0x00007f67e6d80114
                   0x00007f67e6d7ffed:   ret    
   0.21%           0x00007f67e6d7ffee:   mov    0x28(%r11),%r8
  40.46%           0x00007f67e6d7fff2:   mov    (%r8),%r9d
   0.91%           0x00007f67e6d7fff5:   mov    $0x0,%ecx
          ╭        0x00007f67e6d7fffa:   jmp    0x00007f67e6d8001a
          │        0x00007f67e6d7ffff:   nop
   0.36%  │ ↗      0x00007f67e6d80000:   mov    %ecx,%ebx
          │ │      0x00007f67e6d80002:   shl    $0x3,%ebx
          │ │      0x00007f67e6d80005:   lea    0x8(%rbx),%ebx
          │ │      0x00007f67e6d80008:   movslq %ebx,%rbx
   0.37%  │ │      0x00007f67e6d8000b:   mov    (%r8,%rbx,1),%rbx
   0.01%  │ │      0x00007f67e6d8000f:   cmp    %rbx,%rax
          │╭│      0x00007f67e6d80012:   je     0x00007f67e6d80065
          │││      0x00007f67e6d80018:   inc    %ecx
   0.16%  ↘││      0x00007f67e6d8001a:   cmp    %ecx,%r9d
           │╰      0x00007f67e6d8001d:   jg     0x00007f67e6d80000
           │       0x00007f67e6d8001f:   nop
           │       0x00007f67e6d80020:   jmp    0x00007f67e6d800d6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.26%   │       0x00007f67e6d80025:   mov    0x28(%r11),%r8
  23.85%   │       0x00007f67e6d80029:   mov    (%r8),%r9d
   0.55%   │       0x00007f67e6d8002c:   mov    $0x0,%ecx
           │ ╭     0x00007f67e6d80031:   jmp    0x00007f67e6d8005a
           │ │     0x00007f67e6d80036:   data16 nopw 0x0(%rax,%rax,1)
   0.71%   │ │ ↗   0x00007f67e6d80040:   mov    %ecx,%ebx
           │ │ │   0x00007f67e6d80042:   shl    $0x3,%ebx
   0.03%   │ │ │   0x00007f67e6d80045:   lea    0x8(%rbx),%ebx
           │ │ │   0x00007f67e6d80048:   movslq %ebx,%rbx
   0.69%   │ │ │   0x00007f67e6d8004b:   mov    (%r8,%rbx,1),%rbx
   0.01%   │ │ │   0x00007f67e6d8004f:   cmp    %rbx,%rax
           │ │╭│   0x00007f67e6d80052:   je     0x00007f67e6d8006e
   0.02%   │ │││   0x00007f67e6d80058:   inc    %ecx
   0.23%   │ ↘││   0x00007f67e6d8005a:   cmp    %ecx,%r9d
           │  │╰   0x00007f67e6d8005d:   jg     0x00007f67e6d80040
           │  │    0x00007f67e6d8005f:   nop
           │  │ ╭  0x00007f67e6d80060:   jmp    0x00007f67e6d800ae           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.01%   ↘  │ │  0x00007f67e6d80065:   mov    %rax,0x20(%r11)
              │ │  0x00007f67e6d80069:   jmp    0x00007f67e6d7ff99           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
              │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.02%      ↘ │  0x00007f67e6d8006e:   mov    %rax,0x20(%r11)
                │  0x00007f67e6d80072:   jmp    0x00007f67e6d7ffba           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.43%        │  0x00007f67e6d80077:   nopw   0x0(%rax,%rax,1)
                │  0x00007f67e6d80080:   cmp    $0x102b938,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
                │  0x00007f67e6d80087:   jne    0x00007f67e6d800f5           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.05%        │  0x00007f67e6d8008d:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@7 (line 116)
   0.03%        │  0x00007f67e6d80092:   mov    0x10(%rsp),%rbp
   0.40%        │  0x00007f67e6d80097:   add    $0x18,%rsp
                │  0x00007f67e6d8009b:   nopl   0x0(%rax,%rax,1)
                │  0x00007f67e6d800a0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │  0x00007f67e6d800a7:   ja     0x00007f67e6d80128
   0.04%        │  0x00007f67e6d800ad:   ret    
                ↘  0x00007f67e6d800ae:   mov    $0x0,%r11
                   0x00007f67e6d800b5:   mov    $0xffffffdd,%r10d
                   0x00007f67e6d800bb:   mov    %r10d,0x484(%r15)            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
                   0x00007f67e6d800c2:   mov    %r11,0x490(%r15)
                   0x00007f67e6d800c9:   call   0x00007f67e676a17a           ; ImmutableOopMap {rsi=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
                                                                             ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  69.80%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 977 

              # {method} {0x00007f676747d320} &apos;is_duplicated_4&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f67e6d7ff20:   mov    0x8(%rsi),%r10d
              0x00007f67e6d7ff24:   movabs $0x7f676b000000,%r12
              0x00007f67e6d7ff2e:   add    %r12,%r10
              0x00007f67e6d7ff31:   xor    %r12,%r12
              0x00007f67e6d7ff34:   cmp    %r10,%rax
              0x00007f67e6d7ff37:   jne    0x00007f67e6764080           ;   {runtime_call ic_miss_stub}
              0x00007f67e6d7ff3d:   data16 xchg %ax,%ax
            [Verified Entry Point]
   0.02%      0x00007f67e6d7ff40:   mov    %eax,-0x14000(%rsp)
   0.36%      0x00007f67e6d7ff47:   sub    $0x18,%rsp
   0.02%      0x00007f67e6d7ff4b:   nop
              0x00007f67e6d7ff4c:   cmpl   $0x1,0x20(%r15)
   0.00%      0x00007f67e6d7ff54:   jne    0x00007f67e6d80104
   0.37%      0x00007f67e6d7ff5a:   mov    %rbp,0x10(%rsp)
   0.02%      0x00007f67e6d7ff5f:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
              0x00007f67e6d7ff62:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f67e6d8013c
   0.07%      0x00007f67e6d7ff6a:   movabs $0x7f676b000000,%rax         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.36%      0x00007f67e6d7ff74:   lea    (%rax,%r10,1),%r11
   0.02%      0x00007f67e6d7ff78:   movabs $0x7f676c02b328,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
              0x00007f67e6d7ff82:   cmp    0x20(%r11),%rax
          ╭   0x00007f67e6d7ff86:   je     0x00007f67e6d7ff99
  14.28%  │   0x00007f67e6d7ff8c:   cmp    $0x102b328,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │   0x00007f67e6d7ff93:   jne    0x00007f67e6d7ffee
   2.96%  ↘   0x00007f67e6d7ff99:   movabs $0x7f676c02b520,%rax         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.05%      0x00007f67e6d7ffa3:   cmp    0x20(%r11),%rax
           ╭  0x00007f67e6d7ffa7:   je     0x00007f67e6d7ffba
   5.73%   │  0x00007f67e6d7ffad:   cmp    $0x102b520,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           │  0x00007f67e6d7ffb4:   jne    0x00007f67e6d80025           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   3.65%   ↘  0x00007f67e6d7ffba:   nopw   0x0(%rax,%rax,1)
   0.01%      0x00007f67e6d7ffc0:   cmp    $0x102b718,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
              0x00007f67e6d7ffc7:   jne    0x00007f67e6d80077           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 123)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
              0x00007f67e6d7ffcd:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@7 (line 116)
              0x00007f67e6d7ffd2:   mov    0x10(%rsp),%rbp
              0x00007f67e6d7ffd7:   add    $0x18,%rsp
              0x00007f67e6d7ffdb:   nopl   0x0(%rax,%rax,1)
              0x00007f67e6d7ffe0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f67e6d7ffe7:   ja     0x00007f67e6d80114
....................................................................................................
  27.91%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 977 
  27.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 977 
   1.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 5, compile id 1004 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.31%  <...other 381 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 977 
   1.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 5, compile id 1004 
   0.44%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%                       <unknown> 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  defaultStream::write 
   0.00%         libc-2.31.so  __strchr_avx2 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%         libc-2.31.so  _IO_file_sync@@GLIBC_2.2.5 
   0.00%         libc-2.31.so  syscall 
   0.00%            libjvm.so  xmlTextStream::flush 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.06%  <...other 96 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.43%       jvmci, level 4
   0.44%               kernel
   0.06%            libjvm.so
   0.04%         libc-2.31.so
   0.01%                     
   0.01%  libjvmcicompiler.so
   0.00%       hsdis-amd64.so
   0.00%          interpreter
   0.00%   libpthread-2.31.so
   0.00%          c1, level 3
   0.00%           ld-2.31.so
   0.00%     perf-2153681.map
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:18

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

Benchmark                                          (typePollution)  Mode  Cnt    Score    Error  Units
TypeCheckScalabilityBenchmark.is_duplicated_1                false  avgt    5    6.981 ±  0.050  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_1                 true  avgt    5   15.044 ±  0.449  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                false  avgt    5    6.970 ±  0.026  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                 true  avgt    5   50.683 ± 24.837  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                false  avgt    5    6.985 ±  0.067  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                 true  avgt    5   92.314 ±  7.771  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                false  avgt    5    6.973 ±  0.009  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                 true  avgt    5  110.251 ± 23.609  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:asm             true  avgt           NaN             ---
