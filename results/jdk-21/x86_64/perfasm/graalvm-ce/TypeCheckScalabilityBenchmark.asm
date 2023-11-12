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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = false)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.047 ns/op
# Warmup Iteration   2: 6.961 ns/op
# Warmup Iteration   3: 6.988 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.961 ns/op
Iteration   1: 6.961 ns/op
Iteration   2: 6.962 ns/op
Iteration   3: 6.965 ns/op
Iteration   4: 6.947 ns/op
Iteration   5: 6.960 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  6.959 ±(99.9%) 0.028 ns/op [Average]
  (min, avg, max) = (6.947, 6.959, 6.965), stdev = 0.007
  CI (99.9%): [6.931, 6.987] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:asm":
PrintAssembly processed: 219199 total address lines.
Perf output processed (skipped 60.401 seconds):
 Column 1: cycles (50589 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 991 

              0x00007f222b241690:   mov    0x18(%rsp),%rsi
              0x00007f222b241695:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f222b2416a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f222b2416a7:   jne    0x00007f222b24173a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
              0x00007f222b2416ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f222b2416b6:   jmp    0x00007f222b2416cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 190)
          │   0x00007f222b2416bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
   5.48%  │↗  0x00007f222b2416c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
          ││  0x00007f222b2416c7:   test   %eax,(%r11)                  ;   {poll}
   0.07%  ││  0x00007f222b2416ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f222b2416cf:   mov    0x8(%rsp),%r10
   5.30%   │  0x00007f222b2416d4:   mov    %r10,%rsi
           │  0x00007f222b2416d7:   call   0x00007f222ac2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   9.70%   │  0x00007f222b2416dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007f222b2416e4:   mov    0x20(%rsp),%r10
   1.12%   │  0x00007f222b2416e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@26 (line 191)
   5.46%   │  0x00007f222b2416ec:   mov    0x18(%rsp),%rsi
           │  0x00007f222b2416f1:   cmpb   $0x0,0x94(%rsi)
  22.12%   ╰  0x00007f222b2416f8:   je     0x00007f222b2416c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
              0x00007f222b2416fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@36 (line 193)
              0x00007f222b2416ff:   nop
              0x00007f222b241700:   call   0x00007f2241779df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f222b241705:   nop
              0x00007f222b241706:   mov    0x10(%rsp),%rdx
              0x00007f222b24170b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@40 (line 193)
              0x00007f222b24170f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 958 

             # {method} {0x00007f21a447d080} &apos;is_duplicated_1&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f222b23d680:   mov    0x8(%rsi),%r10d
             0x00007f222b23d684:   movabs $0x7f21af000000,%r12
             0x00007f222b23d68e:   add    %r12,%r10
             0x00007f222b23d691:   xor    %r12,%r12
             0x00007f222b23d694:   cmp    %r10,%rax
             0x00007f222b23d697:   jne    0x00007f222ac2f080           ;   {runtime_call ic_miss_stub}
             0x00007f222b23d69d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.06%     0x00007f222b23d6a0:   mov    %eax,-0x14000(%rsp)
   5.41%     0x00007f222b23d6a7:   sub    $0x18,%rsp
   0.07%     0x00007f222b23d6ab:   nop
             0x00007f222b23d6ac:   cmpl   $0x1,0x20(%r15)
   5.59%     0x00007f222b23d6b4:   jne    0x00007f222b23d712
   1.23%     0x00007f222b23d6ba:   mov    %rbp,0x10(%rsp)
   0.00%     0x00007f222b23d6bf:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
             0x00007f222b23d6c2:   cmpl   $0x102b718,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f222b23d733
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  25.96%  ╭  0x00007f222b23d6cd:   jne    0x00007f222b23d6ef           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   5.20%  │  0x00007f222b23d6d3:   mov    $0x1,%eax
          │  0x00007f222b23d6d8:   mov    0x10(%rsp),%rbp
          │  0x00007f222b23d6dd:   add    $0x18,%rsp
          │  0x00007f222b23d6e1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f222b23d6e8:   ja     0x00007f222b23d71f
   5.49%  │  0x00007f222b23d6ee:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@7 (line 95)
          ↘  0x00007f222b23d6ef:   movl   $0xffffffdd,0x484(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
             0x00007f222b23d6fa:   movq   $0x0,0x490(%r15)
             0x00007f222b23d705:   call   0x00007f222ac3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  49.02%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 991 
  49.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 958 
   0.25%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.89%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 991 
  49.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 958 
   1.36%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.03%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%    perf-2132385.map  [unknown] 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.00%      hsdis-amd64.so  putop 
   0.13%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.26%      jvmci, level 4
   1.36%              kernel
   0.14%           libjvm.so
   0.10%        libc-2.31.so
   0.09%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%    perf-2132385.map
   0.00%          ld-2.31.so
   0.00%              [vdso]
   0.00%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = true)

# Run progress: 12.50% complete, ETA 00:13:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.176 ns/op
# Warmup Iteration   2: 15.445 ns/op
# Warmup Iteration   3: 15.480 ns/op
# Warmup Iteration   4: 15.315 ns/op
# Warmup Iteration   5: 15.282 ns/op
Iteration   1: 15.275 ns/op
Iteration   2: 15.222 ns/op
Iteration   3: 15.252 ns/op
Iteration   4: 15.242 ns/op
Iteration   5: 15.263 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  15.251 ±(99.9%) 0.078 ns/op [Average]
  (min, avg, max) = (15.222, 15.251, 15.275), stdev = 0.020
  CI (99.9%): [15.173, 15.329] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:asm":
PrintAssembly processed: 219511 total address lines.
Perf output processed (skipped 60.360 seconds):
 Column 1: cycles (51521 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 966 

                  # {method} {0x00007f283b47d048} &apos;is_duplicated_1&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
                  #           [sp+0x20]  (sp of caller)
                  0x00007f28bb23d0c0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                  0x00007f28bb23d0c4:   movabs $0x7f283f000000,%r12
                  0x00007f28bb23d0ce:   add    %r12,%r10
                  0x00007f28bb23d0d1:   xor    %r12,%r12
                  0x00007f28bb23d0d4:   cmp    %r10,%rax
                  0x00007f28bb23d0d7:   jne    0x00007f28bac2f080           ;   {runtime_call ic_miss_stub}
                  0x00007f28bb23d0dd:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.07%          0x00007f28bb23d0e0:   mov    %eax,-0x14000(%rsp)
   3.00%          0x00007f28bb23d0e7:   sub    $0x18,%rsp
   0.07%          0x00007f28bb23d0eb:   nop
                  0x00007f28bb23d0ec:   cmpl   $0x1,0x20(%r15)
  17.04%          0x00007f28bb23d0f4:   jne    0x00007f28bb23d2d1
   2.50%          0x00007f28bb23d0fa:   mov    %rbp,0x10(%rsp)
                  0x00007f28bb23d0ff:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
                  0x00007f28bb23d102:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f28bb23d2f5
                  0x00007f28bb23d10a:   movabs $0x7f283f000000,%r11
   2.31%          0x00007f28bb23d114:   lea    (%r11,%r10,1),%r8
                  0x00007f28bb23d118:   movabs $0x7f284002b328,%r11         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                  0x00007f28bb23d122:   cmp    0x20(%r8),%r11
          ╭       0x00007f28bb23d126:   je     0x00007f28bb23d139
   5.78%  │       0x00007f28bb23d12c:   cmp    $0x102b328,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │       0x00007f28bb23d133:   jne    0x00007f28bb23d225           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   2.45%  ↘       0x00007f28bb23d139:   mov    0x8(,%rax,8),%r10d
                  0x00007f28bb23d141:   movabs $0x7f283f000000,%r11
                  0x00007f28bb23d14b:   lea    (%r11,%r10,1),%r8
                  0x00007f28bb23d14f:   movabs $0x7f284002b520,%r11         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   2.35%          0x00007f28bb23d159:   nopl   0x0(%rax)
                  0x00007f28bb23d160:   cmp    0x20(%r8),%r11
           ╭      0x00007f28bb23d164:   je     0x00007f28bb23d177
           │      0x00007f28bb23d16a:   cmp    $0x102b520,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           │╭     0x00007f28bb23d171:   jne    0x00007f28bb23d1d5
   2.38%   ↘│     0x00007f28bb23d177:   mov    0x8(,%rax,8),%eax
            │     0x00007f28bb23d17e:   movabs $0x7f283f000000,%r10
            │     0x00007f28bb23d188:   lea    (%r10,%rax,1),%rax
            │     0x00007f28bb23d18c:   cmp    -0xf3(%rip),%rax        # 0x00007f28bb23d0a0
            │                                                               ;   {section_word}
   2.53%    │╭    0x00007f28bb23d193:   je     0x00007f28bb23d1ab
            ││    0x00007f28bb23d199:   cmp    -0xf8(%rip),%rax        # 0x00007f28bb23d0a8
            ││                                                              ;   {section_word}
            ││╭   0x00007f28bb23d1a0:   je     0x00007f28bb23d1ce
            │││   0x00007f28bb23d1a6:   jmp    0x00007f28bb23d2c2
            │↘│   0x00007f28bb23d1ab:   mov    $0x0,%eax
   0.00%    │ │↗  0x00007f28bb23d1b0:   mov    0x10(%rsp),%rbp
            │ ││  0x00007f28bb23d1b5:   add    $0x18,%rsp
            │ ││  0x00007f28bb23d1b9:   nopl   0x0(%rax)
   2.47%    │ ││  0x00007f28bb23d1c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │ ││  0x00007f28bb23d1c7:   ja     0x00007f28bb23d2e1
   0.00%    │ ││  0x00007f28bb23d1cd:   ret    
   0.00%    │ ↘│  0x00007f28bb23d1ce:   mov    $0x1,%eax
   2.50%    │  ╰  0x00007f28bb23d1d3:   jmp    0x00007f28bb23d1b0
            ↘     0x00007f28bb23d1d5:   mov    0x28(%r8),%r10
   2.45%          0x00007f28bb23d1d9:   mov    (%r10),%r9d
   0.08%          0x00007f28bb23d1dc:   mov    $0x0,%ecx
                  0x00007f28bb23d1e1:   jmp    0x00007f28bb23d21a
                  0x00007f28bb23d1e6:   data16 data16 nopw 0x0(%rax,%rax,1)
                  0x00007f28bb23d1f1:   data16 data16 xchg %ax,%ax
                  0x00007f28bb23d1f5:   data16 data16 nopw 0x0(%rax,%rax,1)
   4.97%          0x00007f28bb23d200:   mov    %ecx,%ebx
                  0x00007f28bb23d202:   shl    $0x3,%ebx
   0.02%          0x00007f28bb23d205:   lea    0x8(%rbx),%ebx
   0.00%          0x00007f28bb23d208:   movslq %ebx,%rbx
   4.95%          0x00007f28bb23d20b:   mov    (%r10,%rbx,1),%rbx
   0.00%          0x00007f28bb23d20f:   cmp    %rbx,%r11
....................................................................................................
  47.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 994 

              0x00007f28bb240d90:   mov    0x18(%rsp),%rsi
              0x00007f28bb240d95:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f28bb240da0:   cmpb   $0x0,0x94(%rsi)
              0x00007f28bb240da7:   jne    0x00007f28bb240e3a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
              0x00007f28bb240dad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f28bb240db6:   jmp    0x00007f28bb240dcf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 190)
          │   0x00007f28bb240dbb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
   2.42%  │↗  0x00007f28bb240dc0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
          ││  0x00007f28bb240dc7:   test   %eax,(%r11)                  ;   {poll}
   0.15%  ││  0x00007f28bb240dca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f28bb240dcf:   mov    0x8(%rsp),%r10
   2.33%   │  0x00007f28bb240dd4:   mov    %r10,%rsi
           │  0x00007f28bb240dd7:   call   0x00007f28bac2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.02%   │  0x00007f28bb240ddc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007f28bb240de4:   mov    0x20(%rsp),%r10
   8.29%   │  0x00007f28bb240de9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@26 (line 191)
   2.47%   │  0x00007f28bb240dec:   mov    0x18(%rsp),%rsi
           │  0x00007f28bb240df1:   cmpb   $0x0,0x94(%rsi)
   9.87%   ╰  0x00007f28bb240df8:   je     0x00007f28bb240dc0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 192)
              0x00007f28bb240dfa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@36 (line 193)
              0x00007f28bb240dff:   nop
              0x00007f28bb240e00:   call   0x00007f28d3ad1df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f28bb240e05:   nop
              0x00007f28bb240e06:   mov    0x10(%rsp),%rdx
              0x00007f28bb240e0b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@40 (line 193)
              0x00007f28bb240e0f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  25.54%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 966 

   0.00%           0x00007f28bb23d1cd:   ret    
   0.00%           0x00007f28bb23d1ce:   mov    $0x1,%eax
   2.50%           0x00007f28bb23d1d3:   jmp    0x00007f28bb23d1b0
                   0x00007f28bb23d1d5:   mov    0x28(%r8),%r10
   2.45%           0x00007f28bb23d1d9:   mov    (%r10),%r9d
   0.08%           0x00007f28bb23d1dc:   mov    $0x0,%ecx
          ╭        0x00007f28bb23d1e1:   jmp    0x00007f28bb23d21a
          │        0x00007f28bb23d1e6:   data16 data16 nopw 0x0(%rax,%rax,1)
          │        0x00007f28bb23d1f1:   data16 data16 xchg %ax,%ax
          │        0x00007f28bb23d1f5:   data16 data16 nopw 0x0(%rax,%rax,1)
   4.97%  │ ↗      0x00007f28bb23d200:   mov    %ecx,%ebx
          │ │      0x00007f28bb23d202:   shl    $0x3,%ebx
   0.02%  │ │      0x00007f28bb23d205:   lea    0x8(%rbx),%ebx
   0.00%  │ │      0x00007f28bb23d208:   movslq %ebx,%rbx
   4.95%  │ │      0x00007f28bb23d20b:   mov    (%r10,%rbx,1),%rbx
   0.00%  │ │      0x00007f28bb23d20f:   cmp    %rbx,%r11
          │╭│      0x00007f28bb23d212:   je     0x00007f28bb23d265
   0.02%  │││      0x00007f28bb23d218:   inc    %ecx
   0.02%  ↘││      0x00007f28bb23d21a:   cmp    %ecx,%r9d
           │╰      0x00007f28bb23d21d:   jg     0x00007f28bb23d200
           │       0x00007f28bb23d21f:   nop
           │ ╭     0x00007f28bb23d220:   jmp    0x00007f28bb23d277           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   0.14%   │ │     0x00007f28bb23d225:   mov    0x28(%r8),%r10
           │ │     0x00007f28bb23d229:   mov    (%r10),%r9d
   7.92%   │ │     0x00007f28bb23d22c:   mov    $0x0,%ecx
           │ │╭    0x00007f28bb23d231:   jmp    0x00007f28bb23d25a
           │ ││    0x00007f28bb23d236:   data16 nopw 0x0(%rax,%rax,1)
   2.46%   │ ││ ↗  0x00007f28bb23d240:   mov    %ecx,%ebx
           │ ││ │  0x00007f28bb23d242:   shl    $0x3,%ebx
           │ ││ │  0x00007f28bb23d245:   lea    0x8(%rbx),%ebx
           │ ││ │  0x00007f28bb23d248:   movslq %ebx,%rbx
   2.33%   │ ││ │  0x00007f28bb23d24b:   mov    (%r10,%rbx,1),%rbx
           │ ││ │  0x00007f28bb23d24f:   cmp    %rbx,%r11
           │ ││╭│  0x00007f28bb23d252:   je     0x00007f28bb23d26e
           │ ││││  0x00007f28bb23d258:   inc    %ecx
           │ │↘││  0x00007f28bb23d25a:   cmp    %ecx,%r9d
           │ │ │╰  0x00007f28bb23d25d:   jg     0x00007f28bb23d240
           │ │ │   0x00007f28bb23d25f:   nop
           │ │ │   0x00007f28bb23d260:   jmp    0x00007f28bb23d29f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   0.02%   ↘ │ │   0x00007f28bb23d265:   mov    %r11,0x20(%r8)
   0.00%     │ │   0x00007f28bb23d269:   jmp    0x00007f28bb23d177           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
             │ ↘   0x00007f28bb23d26e:   mov    %r11,0x20(%r8)
             │     0x00007f28bb23d272:   jmp    0x00007f28bb23d139           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
             ↘     0x00007f28bb23d277:   mov    $0x0,%r11
                   0x00007f28bb23d27e:   mov    $0xffffffdd,%r10d
                   0x00007f28bb23d284:   mov    %r10d,0x484(%r15)            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
....................................................................................................
  22.86%  <total for region 3>

....[Hottest Regions]...............................................................................
  47.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 966 
  25.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 994 
  22.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 966 
   1.74%              kernel  [unknown] 
   0.27%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.97%  <...other 318 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 966 
  25.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 994 
   3.21%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%           libjvm.so  defaultStream::write 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  os::current_thread_id 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.13%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.38%      jvmci, level 4
   3.21%              kernel
   0.13%           libjvm.so
   0.11%                    
   0.10%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
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
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = false)

# Run progress: 25.00% complete, ETA 00:11:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.170 ns/op
# Warmup Iteration   2: 6.968 ns/op
# Warmup Iteration   3: 7.025 ns/op
# Warmup Iteration   4: 6.966 ns/op
# Warmup Iteration   5: 6.965 ns/op
Iteration   1: 6.974 ns/op
Iteration   2: 6.974 ns/op
Iteration   3: 6.970 ns/op
Iteration   4: 6.977 ns/op
Iteration   5: 6.964 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  6.972 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (6.964, 6.972, 6.977), stdev = 0.005
  CI (99.9%): [6.953, 6.991] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:asm":
PrintAssembly processed: 216413 total address lines.
Perf output processed (skipped 60.382 seconds):
 Column 1: cycles (100746 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 965 

             # {method} {0x00007f7e0447d160} &apos;is_duplicated_2&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f7e8b241980:   mov    0x8(%rsi),%r10d
             0x00007f7e8b241984:   movabs $0x7f7e0f000000,%r12
             0x00007f7e8b24198e:   add    %r12,%r10
             0x00007f7e8b241991:   xor    %r12,%r12
             0x00007f7e8b241994:   cmp    %r10,%rax
             0x00007f7e8b241997:   jne    0x00007f7e8ac2f080           ;   {runtime_call ic_miss_stub}
             0x00007f7e8b24199d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.03%     0x00007f7e8b2419a0:   mov    %eax,-0x14000(%rsp)
   5.45%     0x00007f7e8b2419a7:   sub    $0x18,%rsp
   0.03%     0x00007f7e8b2419ab:   nop
             0x00007f7e8b2419ac:   cmpl   $0x1,0x20(%r15)
   5.36%     0x00007f7e8b2419b4:   jne    0x00007f7e8b241a12
   0.57%     0x00007f7e8b2419ba:   mov    %rbp,0x10(%rsp)
   0.03%     0x00007f7e8b2419bf:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
  13.48%     0x00007f7e8b2419c2:   cmpl   $0x102b718,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f7e8b241a33
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  29.53%  ╭  0x00007f7e8b2419cd:   jne    0x00007f7e8b2419ef           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   5.63%  │  0x00007f7e8b2419d3:   mov    $0x1,%eax
          │  0x00007f7e8b2419d8:   mov    0x10(%rsp),%rbp
          │  0x00007f7e8b2419dd:   add    $0x18,%rsp
          │  0x00007f7e8b2419e1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f7e8b2419e8:   ja     0x00007f7e8b241a1f
   5.46%  │  0x00007f7e8b2419ee:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@7 (line 102)
          ↘  0x00007f7e8b2419ef:   movl   $0xffffffdd,0x484(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
             0x00007f7e8b2419fa:   movq   $0x0,0x490(%r15)
             0x00007f7e8b241a05:   call   0x00007f7e8ac3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  65.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 995 

              0x00007f7e8b245a90:   mov    0x18(%rsp),%rsi
              0x00007f7e8b245a95:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f7e8b245aa0:   cmpb   $0x0,0x94(%rsi)
              0x00007f7e8b245aa7:   jne    0x00007f7e8b245b3a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 192)
              0x00007f7e8b245aad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f7e8b245ab6:   jmp    0x00007f7e8b245acf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@13 (line 190)
          │   0x00007f7e8b245abb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 192)
   5.53%  │↗  0x00007f7e8b245ac0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 192)
          ││  0x00007f7e8b245ac7:   test   %eax,(%r11)                  ;   {poll}
   0.06%  ││  0x00007f7e8b245aca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f7e8b245acf:   mov    0x8(%rsp),%r10
   5.51%   │  0x00007f7e8b245ad4:   mov    %r10,%rsi
           │  0x00007f7e8b245ad7:   call   0x00007f7e8ac2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   4.84%   │  0x00007f7e8b245adc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007f7e8b245ae4:   mov    0x20(%rsp),%r10
   3.50%   │  0x00007f7e8b245ae9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@26 (line 191)
   2.74%   │  0x00007f7e8b245aec:   mov    0x18(%rsp),%rsi
           │  0x00007f7e8b245af1:   cmpb   $0x0,0x94(%rsi)
  10.89%   ╰  0x00007f7e8b245af8:   je     0x00007f7e8b245ac0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 192)
              0x00007f7e8b245afa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@36 (line 193)
              0x00007f7e8b245aff:   nop
              0x00007f7e8b245b00:   call   0x00007f7ea15f0df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f7e8b245b05:   nop
              0x00007f7e8b245b06:   mov    0x10(%rsp),%rdx
              0x00007f7e8b245b0b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@40 (line 193)
              0x00007f7e8b245b0f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  33.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 965 
  33.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 995 
   0.62%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.42%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 965 
  33.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 995 
   1.15%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  os::current_thread_id 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __strncmp_avx2 
   0.05%  <...other 50 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.66%      jvmci, level 4
   1.15%              kernel
   0.06%                    
   0.05%           libjvm.so
   0.03%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%    perf-2132523.map
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
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = true)

# Run progress: 37.50% complete, ETA 00:09:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 51.828 ns/op
# Warmup Iteration   2: 64.353 ns/op
# Warmup Iteration   3: 49.923 ns/op
# Warmup Iteration   4: 64.100 ns/op
# Warmup Iteration   5: 53.024 ns/op
Iteration   1: 48.403 ns/op
Iteration   2: 42.450 ns/op
Iteration   3: 64.082 ns/op
Iteration   4: 64.092 ns/op
Iteration   5: 64.108 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  56.627 ±(99.9%) 40.197 ns/op [Average]
  (min, avg, max) = (42.450, 56.627, 64.108), stdev = 10.439
  CI (99.9%): [16.430, 96.824] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:asm":
PrintAssembly processed: 209718 total address lines.
Perf output processed (skipped 60.298 seconds):
 Column 1: cycles (100112 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 966 

                     0x00007f82a323d70c:   cmp    -0xf3(%rip),%rax        # 0x00007f82a323d620
                                                                               ;   {section_word}
   0.71%  ╭          0x00007f82a323d713:   je     0x00007f82a323d72b
          │          0x00007f82a323d719:   cmp    -0xf8(%rip),%rax        # 0x00007f82a323d628
          │                                                                    ;   {section_word}
          │╭         0x00007f82a323d720:   je     0x00007f82a323d7d7
          ││         0x00007f82a323d726:   jmp    0x00007f82a323d7e5
          ↘│         0x00007f82a323d72b:   mov    $0x1,%eax
           │      ↗  0x00007f82a323d730:   mov    0x10(%rsp),%rbp
           │      │  0x00007f82a323d735:   add    $0x18,%rsp
   0.74%   │      │  0x00007f82a323d739:   nopl   0x0(%rax)
           │      │  0x00007f82a323d740:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │      │  0x00007f82a323d747:   ja     0x00007f82a323d84f
   0.00%   │      │  0x00007f82a323d74d:   ret    
           │      │  0x00007f82a323d74e:   mov    0x28(%r8),%r10
  59.89%   │      │  0x00007f82a323d752:   mov    (%r10),%r9d
   2.95%   │      │  0x00007f82a323d755:   mov    $0x0,%ecx
           │╭     │  0x00007f82a323d75a:   jmp    0x00007f82a323d77a
           ││     │  0x00007f82a323d75f:   nop
   0.68%   ││ ↗   │  0x00007f82a323d760:   mov    %ecx,%ebx
           ││ │   │  0x00007f82a323d762:   shl    $0x3,%ebx
           ││ │   │  0x00007f82a323d765:   lea    0x8(%rbx),%ebx
           ││ │   │  0x00007f82a323d768:   movslq %ebx,%rbx
   0.65%   ││ │   │  0x00007f82a323d76b:   mov    (%r10,%rbx,1),%rbx
           ││ │   │  0x00007f82a323d76f:   cmp    %rbx,%r11
           ││╭│   │  0x00007f82a323d772:   je     0x00007f82a323d7c5
           ││││   │  0x00007f82a323d778:   inc    %ecx
           │↘││   │  0x00007f82a323d77a:   cmp    %ecx,%r9d
           │ │╰   │  0x00007f82a323d77d:   jg     0x00007f82a323d760
           │ │    │  0x00007f82a323d77f:   nop
           │ │    │  0x00007f82a323d780:   jmp    0x00007f82a323d80d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.00%   │ │    │  0x00007f82a323d785:   mov    0x28(%r8),%r10
   2.10%   │ │    │  0x00007f82a323d789:   mov    (%r10),%r9d
   0.08%   │ │    │  0x00007f82a323d78c:   mov    $0x0,%ecx
           │ │ ╭  │  0x00007f82a323d791:   jmp    0x00007f82a323d7ba
           │ │ │  │  0x00007f82a323d796:   data16 nopw 0x0(%rax,%rax,1)
   1.45%   │ │ │ ↗│  0x00007f82a323d7a0:   mov    %ecx,%ebx
           │ │ │ ││  0x00007f82a323d7a2:   shl    $0x3,%ebx
   0.00%   │ │ │ ││  0x00007f82a323d7a5:   lea    0x8(%rbx),%ebx
           │ │ │ ││  0x00007f82a323d7a8:   movslq %ebx,%rbx
   1.44%   │ │ │ ││  0x00007f82a323d7ab:   mov    (%r10,%rbx,1),%rbx
           │ │ │ ││  0x00007f82a323d7af:   cmp    %rbx,%r11
           │ │ │╭││  0x00007f82a323d7b2:   je     0x00007f82a323d7ce
   0.00%   │ │ ││││  0x00007f82a323d7b8:   inc    %ecx
           │ │ ↘│││  0x00007f82a323d7ba:   cmp    %ecx,%r9d
           │ │  │╰│  0x00007f82a323d7bd:   jg     0x00007f82a323d7a0
           │ │  │ │  0x00007f82a323d7bf:   nop
           │ │  │ │  0x00007f82a323d7c0:   jmp    0x00007f82a323d830           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.00%   │ ↘  │ │  0x00007f82a323d7c5:   mov    %r11,0x20(%r8)
           │    │ │  0x00007f82a323d7c9:   jmp    0x00007f82a323d6b9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.00%   │    ↘ │  0x00007f82a323d7ce:   mov    %r11,0x20(%r8)
           │      │  0x00007f82a323d7d2:   jmp    0x00007f82a323d6f7           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
           ↘      │  0x00007f82a323d7d7:   mov    $0x0,%eax
                  │  0x00007f82a323d7dc:   nopl   0x0(%rax)
                  ╰  0x00007f82a323d7e0:   jmp    0x00007f82a323d730           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@7 (line 102)
                     0x00007f82a323d7e5:   mov    $0x794,%r11
....................................................................................................
  69.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 966 

               # {method} {0x00007f8223485f98} &apos;is_duplicated_2&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f82a323d640:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
               0x00007f82a323d644:   movabs $0x7f8227000000,%r12
               0x00007f82a323d64e:   add    %r12,%r10
               0x00007f82a323d651:   xor    %r12,%r12
               0x00007f82a323d654:   cmp    %r10,%rax
               0x00007f82a323d657:   jne    0x00007f82a2c2f080           ;   {runtime_call ic_miss_stub}
               0x00007f82a323d65d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.68%       0x00007f82a323d660:   mov    %eax,-0x14000(%rsp)
               0x00007f82a323d667:   sub    $0x18,%rsp
   0.74%       0x00007f82a323d66b:   nop
               0x00007f82a323d66c:   cmpl   $0x1,0x20(%r15)
               0x00007f82a323d674:   jne    0x00007f82a323d83f
               0x00007f82a323d67a:   mov    %rbp,0x10(%rsp)
   0.73%       0x00007f82a323d67f:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
               0x00007f82a323d682:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f82a323d866
   0.01%       0x00007f82a323d68a:   movabs $0x7f8227000000,%r11
               0x00007f82a323d694:   lea    (%r11,%r10,1),%r8
   0.69%       0x00007f82a323d698:   movabs $0x7f822802b798,%r11         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
               0x00007f82a323d6a2:   cmp    0x20(%r8),%r11
          ╭    0x00007f82a323d6a6:   je     0x00007f82a323d6b9
  17.41%  │    0x00007f82a323d6ac:   cmp    $0x102b798,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │    0x00007f82a323d6b3:   jne    0x00007f82a323d74e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   3.18%  ↘    0x00007f82a323d6b9:   mov    0x8(,%rax,8),%r10d
   0.15%       0x00007f82a323d6c1:   movabs $0x7f8227000000,%r11
               0x00007f82a323d6cb:   lea    (%r11,%r10,1),%r8
   0.01%       0x00007f82a323d6cf:   movabs $0x7f822802b990,%r11         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.65%       0x00007f82a323d6d9:   nopl   0x0(%rax)
               0x00007f82a323d6e0:   cmp    0x20(%r8),%r11
           ╭   0x00007f82a323d6e4:   je     0x00007f82a323d6f7
   0.44%   │   0x00007f82a323d6ea:   cmp    $0x102b990,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           │   0x00007f82a323d6f1:   jne    0x00007f82a323d785           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   1.79%   ↘   0x00007f82a323d6f7:   mov    0x8(,%rax,8),%eax
   0.00%       0x00007f82a323d6fe:   movabs $0x7f8227000000,%r10
               0x00007f82a323d708:   lea    (%r10,%rax,1),%rax
               0x00007f82a323d70c:   cmp    -0xf3(%rip),%rax        # 0x00007f82a323d620
                                                                         ;   {section_word}
   0.71%    ╭  0x00007f82a323d713:   je     0x00007f82a323d72b
            │  0x00007f82a323d719:   cmp    -0xf8(%rip),%rax        # 0x00007f82a323d628
            │                                                            ;   {section_word}
            │  0x00007f82a323d720:   je     0x00007f82a323d7d7
            │  0x00007f82a323d726:   jmp    0x00007f82a323d7e5
            ↘  0x00007f82a323d72b:   mov    $0x1,%eax
               0x00007f82a323d730:   mov    0x10(%rsp),%rbp
               0x00007f82a323d735:   add    $0x18,%rsp
   0.74%       0x00007f82a323d739:   nopl   0x0(%rax)
               0x00007f82a323d740:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  27.20%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 966 
  27.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 966 
   2.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 5, compile id 992 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.35%  <...other 237 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 966 
   2.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 5, compile id 992 
   0.57%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  PerfLongVariant::sample 
   0.00%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%           libjvm.so  clock_gettime@plt 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%              [vdso]  __vdso_clock_gettime 
   0.00%           libjvm.so  PeriodicTask::real_time_tick 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%         c1, level 3  java.util.ArrayList::grow, version 1, compile id 806 
   0.00%           libjvm.so  methodHandle::~methodHandle 
   0.04%  <...other 42 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.31%      jvmci, level 4
   0.57%              kernel
   0.05%           libjvm.so
   0.03%                    
   0.02%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%         interpreter
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%          libjava.so
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
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = false)

# Run progress: 50.00% complete, ETA 00:07:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.042 ±(99.9%) 0.016 ns/op
# Warmup Iteration   2: 6.962 ±(99.9%) 0.011 ns/op
# Warmup Iteration   3: 7.005 ±(99.9%) 0.009 ns/op
# Warmup Iteration   4: 7.005 ±(99.9%) 1.010 ns/op
# Warmup Iteration   5: 6.978 ±(99.9%) 0.382 ns/op
Iteration   1: 6.964 ±(99.9%) 0.419 ns/op
Iteration   2: 6.993 ±(99.9%) 0.200 ns/op
Iteration   3: 6.984 ±(99.9%) 0.387 ns/op
Iteration   4: 6.997 ±(99.9%) 0.587 ns/op
Iteration   5: 6.986 ±(99.9%) 0.468 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  6.985 ±(99.9%) 0.050 ns/op [Average]
  (min, avg, max) = (6.964, 6.985, 6.997), stdev = 0.013
  CI (99.9%): [6.935, 7.035] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:asm":
PrintAssembly processed: 214723 total address lines.
Perf output processed (skipped 60.454 seconds):
 Column 1: cycles (150058 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 1002 

              0x00007f43af242510:   mov    0x18(%rsp),%rsi
              0x00007f43af242515:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f43af242520:   cmpb   $0x0,0x94(%rsi)
              0x00007f43af242527:   jne    0x00007f43af2425ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 192)
              0x00007f43af24252d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f43af242536:   jmp    0x00007f43af24254f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@13 (line 190)
          │   0x00007f43af24253b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 192)
   5.55%  │↗  0x00007f43af242540:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 192)
          ││  0x00007f43af242547:   test   %eax,(%r11)                  ;   {poll}
   0.96%  ││  0x00007f43af24254a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f43af24254f:   mov    0x8(%rsp),%r10
   4.86%   │  0x00007f43af242554:   mov    %r10,%rsi
           │  0x00007f43af242557:   call   0x00007f43aec2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   9.96%   │  0x00007f43af24255c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007f43af242564:   mov    0x20(%rsp),%r10
   1.46%   │  0x00007f43af242569:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@26 (line 191)
   5.50%   │  0x00007f43af24256c:   mov    0x18(%rsp),%rsi
           │  0x00007f43af242571:   cmpb   $0x0,0x94(%rsi)
  22.24%   ╰  0x00007f43af242578:   je     0x00007f43af242540           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 192)
              0x00007f43af24257a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@36 (line 193)
              0x00007f43af24257f:   nop
              0x00007f43af242580:   call   0x00007f43c7f70df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f43af242585:   nop
              0x00007f43af242586:   mov    0x10(%rsp),%rdx
              0x00007f43af24258b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@40 (line 193)
              0x00007f43af24258f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  50.54%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 968 

             # {method} {0x00007f432f47d240} &apos;is_duplicated_3&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f43af23db00:   mov    0x8(%rsi),%r10d
             0x00007f43af23db04:   movabs $0x7f4333000000,%r12
             0x00007f43af23db0e:   add    %r12,%r10
             0x00007f43af23db11:   xor    %r12,%r12
             0x00007f43af23db14:   cmp    %r10,%rax
             0x00007f43af23db17:   jne    0x00007f43aec2f080           ;   {runtime_call ic_miss_stub}
             0x00007f43af23db1d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.50%     0x00007f43af23db20:   mov    %eax,-0x14000(%rsp)
   4.89%     0x00007f43af23db27:   sub    $0x18,%rsp
   0.52%     0x00007f43af23db2b:   nop
             0x00007f43af23db2c:   cmpl   $0x1,0x20(%r15)
   4.98%     0x00007f43af23db34:   jne    0x00007f43af23db92
   1.05%     0x00007f43af23db3a:   mov    %rbp,0x10(%rsp)
   0.46%     0x00007f43af23db3f:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
             0x00007f43af23db42:   cmpl   $0x102b718,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f43af23dbb3
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  25.41%  ╭  0x00007f43af23db4d:   jne    0x00007f43af23db6f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   5.46%  │  0x00007f43af23db53:   mov    $0x1,%eax
          │  0x00007f43af23db58:   mov    0x10(%rsp),%rbp
          │  0x00007f43af23db5d:   add    $0x18,%rsp
          │  0x00007f43af23db61:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f43af23db68:   ja     0x00007f43af23db9f
   5.52%  │  0x00007f43af23db6e:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@7 (line 109)
          ↘  0x00007f43af23db6f:   movl   $0xffffffdd,0x484(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
             0x00007f43af23db7a:   movq   $0x0,0x490(%r15)
             0x00007f43af23db85:   call   0x00007f43aec3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  48.79%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 1002 
  48.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 968 
   0.26%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
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
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.19%  <...other 177 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 1002 
  48.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 968 
   0.62%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%                       <unknown> 
   0.00%           ld-2.31.so  __tls_get_addr 
   0.00%          interpreter  invokestatic  184 invokestatic  
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%          interpreter  method entry point (kind = zerolocals)  
   0.00%         libc-2.31.so  __strchrnul_avx2 
   0.00%   libpthread-2.31.so  __libc_read 
   0.00%            libjvm.so  Relocation::copy_into 
   0.00%          c1, level 3  java.util.concurrent.ConcurrentHashMap::computeIfAbsent, version 1, compile id 737 
   0.00%            libjvm.so  GraphBuilder::ScopeData::add_to_work_list 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%            libjvm.so  os::vsnprintf 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.02%  <...other 32 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.33%       jvmci, level 4
   0.62%               kernel
   0.02%            libjvm.so
   0.01%         libc-2.31.so
   0.01%                     
   0.00%       hsdis-amd64.so
   0.00%          interpreter
   0.00%   libpthread-2.31.so
   0.00%           ld-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%          c1, level 3
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
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = true)

# Run progress: 62.50% complete, ETA 00:05:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 95.319 ±(99.9%) 52.866 ns/op
# Warmup Iteration   2: 97.893 ±(99.9%) 213.700 ns/op
# Warmup Iteration   3: 98.353 ±(99.9%) 138.013 ns/op
# Warmup Iteration   4: 97.741 ±(99.9%) 71.800 ns/op
# Warmup Iteration   5: 106.104 ±(99.9%) 809.245 ns/op
Iteration   1: 96.821 ±(99.9%) 511.965 ns/op
Iteration   2: 98.086 ±(99.9%) 113.905 ns/op
Iteration   3: 98.063 ±(99.9%) 115.346 ns/op
Iteration   4: 98.067 ±(99.9%) 117.511 ns/op
Iteration   5: 106.120 ±(99.9%) 809.989 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  99.431 ±(99.9%) 14.549 ns/op [Average]
  (min, avg, max) = (96.821, 99.431, 106.120), stdev = 3.778
  CI (99.9%): [84.882, 113.980] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:asm":
PrintAssembly processed: 213170 total address lines.
Perf output processed (skipped 60.286 seconds):
 Column 1: cycles (149916 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 972 

                     0x00007fe80b23f88c:   cmp    -0xf3(%rip),%rax        # 0x00007fe80b23f7a0
                                                                               ;   {section_word}
   0.38%  ╭          0x00007fe80b23f893:   je     0x00007fe80b23f8ab
          │          0x00007fe80b23f899:   cmp    -0xf8(%rip),%rax        # 0x00007fe80b23f7a8
          │                                                                    ;   {section_word}
          │╭         0x00007fe80b23f8a0:   je     0x00007fe80b23f957
          ││         0x00007fe80b23f8a6:   jmp    0x00007fe80b23f965
          ↘│         0x00007fe80b23f8ab:   mov    $0x1,%eax
           │      ↗  0x00007fe80b23f8b0:   mov    0x10(%rsp),%rbp
           │      │  0x00007fe80b23f8b5:   add    $0x18,%rsp
   0.41%   │      │  0x00007fe80b23f8b9:   nopl   0x0(%rax)
           │      │  0x00007fe80b23f8c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │      │  0x00007fe80b23f8c7:   ja     0x00007fe80b23f9cf
           │      │  0x00007fe80b23f8cd:   ret    
   0.00%   │      │  0x00007fe80b23f8ce:   mov    0x28(%r8),%r10
  74.29%   │      │  0x00007fe80b23f8d2:   mov    (%r10),%r9d
   2.08%   │      │  0x00007fe80b23f8d5:   mov    $0x0,%ecx
           │╭     │  0x00007fe80b23f8da:   jmp    0x00007fe80b23f8fa
           ││     │  0x00007fe80b23f8df:   nop
   0.38%   ││ ↗   │  0x00007fe80b23f8e0:   mov    %ecx,%ebx
   0.00%   ││ │   │  0x00007fe80b23f8e2:   shl    $0x3,%ebx
           ││ │   │  0x00007fe80b23f8e5:   lea    0x8(%rbx),%ebx
           ││ │   │  0x00007fe80b23f8e8:   movslq %ebx,%rbx
   0.38%   ││ │   │  0x00007fe80b23f8eb:   mov    (%r10,%rbx,1),%rbx
           ││ │   │  0x00007fe80b23f8ef:   cmp    %rbx,%r11
           ││╭│   │  0x00007fe80b23f8f2:   je     0x00007fe80b23f945
           ││││   │  0x00007fe80b23f8f8:   inc    %ecx
           │↘││   │  0x00007fe80b23f8fa:   cmp    %ecx,%r9d
           │ │╰   │  0x00007fe80b23f8fd:   jg     0x00007fe80b23f8e0
           │ │    │  0x00007fe80b23f8ff:   nop
           │ │    │  0x00007fe80b23f900:   jmp    0x00007fe80b23f98d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.00%   │ │    │  0x00007fe80b23f905:   mov    0x28(%r8),%r10
   1.76%   │ │    │  0x00007fe80b23f909:   mov    (%r10),%r9d
   0.04%   │ │    │  0x00007fe80b23f90c:   mov    $0x0,%ecx
           │ │ ╭  │  0x00007fe80b23f911:   jmp    0x00007fe80b23f93a
           │ │ │  │  0x00007fe80b23f916:   data16 nopw 0x0(%rax,%rax,1)
   0.78%   │ │ │ ↗│  0x00007fe80b23f920:   mov    %ecx,%ebx
           │ │ │ ││  0x00007fe80b23f922:   shl    $0x3,%ebx
   0.00%   │ │ │ ││  0x00007fe80b23f925:   lea    0x8(%rbx),%ebx
           │ │ │ ││  0x00007fe80b23f928:   movslq %ebx,%rbx
   0.79%   │ │ │ ││  0x00007fe80b23f92b:   mov    (%r10,%rbx,1),%rbx
           │ │ │ ││  0x00007fe80b23f92f:   cmp    %rbx,%r11
           │ │ │╭││  0x00007fe80b23f932:   je     0x00007fe80b23f94e
   0.00%   │ │ ││││  0x00007fe80b23f938:   inc    %ecx
           │ │ ↘│││  0x00007fe80b23f93a:   cmp    %ecx,%r9d
           │ │  │╰│  0x00007fe80b23f93d:   jg     0x00007fe80b23f920
           │ │  │ │  0x00007fe80b23f93f:   nop
           │ │  │ │  0x00007fe80b23f940:   jmp    0x00007fe80b23f9b0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.00%   │ ↘  │ │  0x00007fe80b23f945:   mov    %r11,0x20(%r8)
           │    │ │  0x00007fe80b23f949:   jmp    0x00007fe80b23f839           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.00%   │    ↘ │  0x00007fe80b23f94e:   mov    %r11,0x20(%r8)
           │      │  0x00007fe80b23f952:   jmp    0x00007fe80b23f877           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
           ↘      │  0x00007fe80b23f957:   mov    $0x0,%eax
                  │  0x00007fe80b23f95c:   nopl   0x0(%rax)
                  ╰  0x00007fe80b23f960:   jmp    0x00007fe80b23f8b0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@7 (line 109)
                     0x00007fe80b23f965:   mov    $0x794,%r11
....................................................................................................
  80.91%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 972 

               # {method} {0x00007fe78b486078} &apos;is_duplicated_3&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007fe80b23f7c0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
               0x00007fe80b23f7c4:   movabs $0x7fe78f000000,%r12
               0x00007fe80b23f7ce:   add    %r12,%r10
               0x00007fe80b23f7d1:   xor    %r12,%r12
               0x00007fe80b23f7d4:   cmp    %r10,%rax
               0x00007fe80b23f7d7:   jne    0x00007fe80ac2f080           ;   {runtime_call ic_miss_stub}
               0x00007fe80b23f7dd:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.39%       0x00007fe80b23f7e0:   mov    %eax,-0x14000(%rsp)
               0x00007fe80b23f7e7:   sub    $0x18,%rsp
   0.39%       0x00007fe80b23f7eb:   nop
               0x00007fe80b23f7ec:   cmpl   $0x1,0x20(%r15)
               0x00007fe80b23f7f4:   jne    0x00007fe80b23f9bf
               0x00007fe80b23f7fa:   mov    %rbp,0x10(%rsp)
   0.40%       0x00007fe80b23f7ff:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
               0x00007fe80b23f802:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fe80b23f9e6
               0x00007fe80b23f80a:   movabs $0x7fe78f000000,%r11
               0x00007fe80b23f814:   lea    (%r11,%r10,1),%r8
   0.40%       0x00007fe80b23f818:   movabs $0x7fe79002b798,%r11         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
               0x00007fe80b23f822:   cmp    0x20(%r8),%r11
          ╭    0x00007fe80b23f826:   je     0x00007fe80b23f839
  13.68%  │    0x00007fe80b23f82c:   cmp    $0x102b798,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │    0x00007fe80b23f833:   jne    0x00007fe80b23f8ce           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.54%  ↘    0x00007fe80b23f839:   mov    0x8(,%rax,8),%r10d
   0.01%       0x00007fe80b23f841:   movabs $0x7fe78f000000,%r11
               0x00007fe80b23f84b:   lea    (%r11,%r10,1),%r8
   0.00%       0x00007fe80b23f84f:   movabs $0x7fe79002b990,%r11         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.39%       0x00007fe80b23f859:   nopl   0x0(%rax)
               0x00007fe80b23f860:   cmp    0x20(%r8),%r11
           ╭   0x00007fe80b23f864:   je     0x00007fe80b23f877
   0.09%   │   0x00007fe80b23f86a:   cmp    $0x102b990,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           │   0x00007fe80b23f871:   jne    0x00007fe80b23f905           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.48%   ↘   0x00007fe80b23f877:   mov    0x8(,%rax,8),%eax
               0x00007fe80b23f87e:   movabs $0x7fe78f000000,%r10
               0x00007fe80b23f888:   lea    (%r10,%rax,1),%rax
               0x00007fe80b23f88c:   cmp    -0xf3(%rip),%rax        # 0x00007fe80b23f7a0
                                                                         ;   {section_word}
   0.38%    ╭  0x00007fe80b23f893:   je     0x00007fe80b23f8ab
            │  0x00007fe80b23f899:   cmp    -0xf8(%rip),%rax        # 0x00007fe80b23f7a8
            │                                                            ;   {section_word}
            │  0x00007fe80b23f8a0:   je     0x00007fe80b23f957
            │  0x00007fe80b23f8a6:   jmp    0x00007fe80b23f965
            ↘  0x00007fe80b23f8ab:   mov    $0x1,%eax
               0x00007fe80b23f8b0:   mov    0x10(%rsp),%rbp
               0x00007fe80b23f8b5:   add    $0x18,%rsp
   0.41%       0x00007fe80b23f8b9:   nopl   0x0(%rax)
               0x00007fe80b23f8c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  17.15%  <total for region 2>

....[Hottest Regions]...............................................................................
  80.91%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 972 
  17.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 972 
   1.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 1003 
   0.14%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.36%  <...other 318 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 972 
   1.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 1003 
   0.62%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  resource_allocate_bytes 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  fileStream::write 
   0.00%    perf-2132722.map  [unknown] 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  GraphBuilder::iterate_bytecodes_for_block 
   0.00%          ld-2.31.so  update_get_addr 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  os::write 
   0.00%         c1, level 3  java.lang.StringLatin1::newString, version 1, compile id 178 
   0.00%           libjvm.so  CodeHeap::find_blob 
   0.03%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.30%      jvmci, level 4
   0.62%              kernel
   0.04%           libjvm.so
   0.01%                    
   0.01%        libc-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%    perf-2132722.map
   0.00%         c1, level 3
   0.00%  libpthread-2.31.so
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
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = false)

# Run progress: 75.00% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.093 ±(99.9%) 0.371 ns/op
# Warmup Iteration   2: 6.971 ±(99.9%) 0.039 ns/op
# Warmup Iteration   3: 7.019 ±(99.9%) 0.140 ns/op
# Warmup Iteration   4: 6.968 ±(99.9%) 0.026 ns/op
# Warmup Iteration   5: 6.972 ±(99.9%) 0.050 ns/op
Iteration   1: 6.976 ±(99.9%) 0.062 ns/op
Iteration   2: 6.964 ±(99.9%) 0.041 ns/op
Iteration   3: 6.969 ±(99.9%) 0.061 ns/op
Iteration   4: 6.995 ±(99.9%) 0.092 ns/op
Iteration   5: 6.973 ±(99.9%) 0.050 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  6.976 ±(99.9%) 0.046 ns/op [Average]
  (min, avg, max) = (6.964, 6.976, 6.995), stdev = 0.012
  CI (99.9%): [6.930, 7.021] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:asm":
PrintAssembly processed: 215479 total address lines.
Perf output processed (skipped 60.173 seconds):
 Column 1: cycles (199680 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 996 

              0x00007f96d3241190:   mov    0x18(%rsp),%rsi
              0x00007f96d3241195:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f96d32411a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f96d32411a7:   jne    0x00007f96d324123a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 192)
              0x00007f96d32411ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f96d32411b6:   jmp    0x00007f96d32411cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@13 (line 190)
          │   0x00007f96d32411bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 192)
   5.42%  │↗  0x00007f96d32411c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 192)
          ││  0x00007f96d32411c7:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007f96d32411ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f96d32411cf:   mov    0x8(%rsp),%r10
   5.51%   │  0x00007f96d32411d4:   mov    %r10,%rsi
           │  0x00007f96d32411d7:   call   0x00007f96d2c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   9.97%   │  0x00007f96d32411dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007f96d32411e4:   mov    0x20(%rsp),%r10
   1.32%   │  0x00007f96d32411e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@26 (line 191)
   5.58%   │  0x00007f96d32411ec:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007f96d32411f1:   cmpb   $0x0,0x94(%rsi)
  21.97%   ╰  0x00007f96d32411f8:   je     0x00007f96d32411c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 192)
              0x00007f96d32411fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@36 (line 193)
              0x00007f96d32411ff:   nop
              0x00007f96d3241200:   call   0x00007f96eb547df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f96d3241205:   nop
              0x00007f96d3241206:   mov    0x10(%rsp),%rdx
              0x00007f96d324120b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@40 (line 193)
              0x00007f96d324120f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 959 

             # {method} {0x00007f965347d348} &apos;is_duplicated_4&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f96d323bc80:   mov    0x8(%rsi),%r10d
             0x00007f96d323bc84:   movabs $0x7f9657000000,%r12
             0x00007f96d323bc8e:   add    %r12,%r10
             0x00007f96d323bc91:   xor    %r12,%r12
             0x00007f96d323bc94:   cmp    %r10,%rax
             0x00007f96d323bc97:   jne    0x00007f96d2c2f080           ;   {runtime_call ic_miss_stub}
             0x00007f96d323bc9d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.01%     0x00007f96d323bca0:   mov    %eax,-0x14000(%rsp)
   5.47%     0x00007f96d323bca7:   sub    $0x18,%rsp
   0.01%     0x00007f96d323bcab:   nop
             0x00007f96d323bcac:   cmpl   $0x1,0x20(%r15)
   5.57%     0x00007f96d323bcb4:   jne    0x00007f96d323bd12
   1.19%     0x00007f96d323bcba:   mov    %rbp,0x10(%rsp)
   0.01%     0x00007f96d323bcbf:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
             0x00007f96d323bcc2:   cmpl   $0x102b718,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f96d323bd33
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.40%  ╭  0x00007f96d323bccd:   jne    0x00007f96d323bcef           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   5.46%  │  0x00007f96d323bcd3:   mov    $0x1,%eax
          │  0x00007f96d323bcd8:   mov    0x10(%rsp),%rbp
          │  0x00007f96d323bcdd:   add    $0x18,%rsp
          │  0x00007f96d323bce1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f96d323bce8:   ja     0x00007f96d323bd1f
   5.53%  │  0x00007f96d323bcee:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@7 (line 116)
          ↘  0x00007f96d323bcef:   movl   $0xffffffdd,0x484(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
             0x00007f96d323bcfa:   movq   $0x0,0x490(%r15)
             0x00007f96d323bd05:   call   0x00007f96d2c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  49.65%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 996 
  49.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 959 
   0.06%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.32%  <...other 395 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 996 
  49.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 959 
   0.45%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  syscall 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.05%  <...other 81 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.44%      jvmci, level 4
   0.45%              kernel
   0.04%           libjvm.so
   0.03%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%              [vdso]
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
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = true)

# Run progress: 87.50% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 124.248 ±(99.9%) 133.780 ns/op
# Warmup Iteration   2: 127.180 ±(99.9%) 193.427 ns/op
# Warmup Iteration   3: 118.638 ±(99.9%) 146.357 ns/op
# Warmup Iteration   4: 146.106 ±(99.9%) 300.959 ns/op
# Warmup Iteration   5: 157.901 ±(99.9%) 73.390 ns/op
Iteration   1: 137.271 ±(99.9%) 186.478 ns/op
Iteration   2: 137.069 ±(99.9%) 181.280 ns/op
Iteration   3: 139.935 ±(99.9%) 212.786 ns/op
Iteration   4: 164.010 ±(99.9%) 102.889 ns/op
Iteration   5: 145.771 ±(99.9%) 298.724 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  144.811 ±(99.9%) 43.483 ns/op [Average]
  (min, avg, max) = (137.069, 144.811, 164.010), stdev = 11.292
  CI (99.9%): [101.328, 188.294] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:asm":
PrintAssembly processed: 231177 total address lines.
Perf output processed (skipped 60.671 seconds):
 Column 1: cycles (200635 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 971 

   0.00%           0x00007f3cf7244e4d:   ret    
   0.00%           0x00007f3cf7244e4e:   mov    $0x1,%eax
   0.29%           0x00007f3cf7244e53:   jmp    0x00007f3cf7244e30
                   0x00007f3cf7244e55:   mov    0x28(%r8),%r10
  26.58%           0x00007f3cf7244e59:   mov    (%r10),%r9d
   0.48%           0x00007f3cf7244e5c:   mov    $0x0,%ecx
          ╭        0x00007f3cf7244e61:   jmp    0x00007f3cf7244e9a
          │        0x00007f3cf7244e66:   data16 data16 nopw 0x0(%rax,%rax,1)
          │        0x00007f3cf7244e71:   data16 data16 xchg %ax,%ax
          │        0x00007f3cf7244e75:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.50%  │ ↗      0x00007f3cf7244e80:   mov    %ecx,%ebx
          │ │      0x00007f3cf7244e82:   shl    $0x3,%ebx
   0.02%  │ │      0x00007f3cf7244e85:   lea    0x8(%rbx),%ebx
          │ │      0x00007f3cf7244e88:   movslq %ebx,%rbx
   0.51%  │ │      0x00007f3cf7244e8b:   mov    (%r10,%rbx,1),%rbx
          │ │      0x00007f3cf7244e8f:   cmp    %rbx,%r11
          │╭│      0x00007f3cf7244e92:   je     0x00007f3cf7244ee5
   0.03%  │││      0x00007f3cf7244e98:   inc    %ecx
          ↘││      0x00007f3cf7244e9a:   cmp    %ecx,%r9d
           │╰      0x00007f3cf7244e9d:   jg     0x00007f3cf7244e80
           │       0x00007f3cf7244e9f:   nop
           │ ╭     0x00007f3cf7244ea0:   jmp    0x00007f3cf7244ef7           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.00%   │ │     0x00007f3cf7244ea5:   mov    0x28(%r8),%r10
  55.05%   │ │     0x00007f3cf7244ea9:   mov    (%r10),%r9d
   1.09%   │ │     0x00007f3cf7244eac:   mov    $0x0,%ecx
           │ │╭    0x00007f3cf7244eb1:   jmp    0x00007f3cf7244eda
           │ ││    0x00007f3cf7244eb6:   data16 nopw 0x0(%rax,%rax,1)
   0.28%   │ ││ ↗  0x00007f3cf7244ec0:   mov    %ecx,%ebx
           │ ││ │  0x00007f3cf7244ec2:   shl    $0x3,%ebx
           │ ││ │  0x00007f3cf7244ec5:   lea    0x8(%rbx),%ebx
           │ ││ │  0x00007f3cf7244ec8:   movslq %ebx,%rbx
   0.28%   │ ││ │  0x00007f3cf7244ecb:   mov    (%r10,%rbx,1),%rbx
           │ ││ │  0x00007f3cf7244ecf:   cmp    %rbx,%r11
           │ ││╭│  0x00007f3cf7244ed2:   je     0x00007f3cf7244eee
           │ ││││  0x00007f3cf7244ed8:   inc    %ecx
           │ │↘││  0x00007f3cf7244eda:   cmp    %ecx,%r9d
           │ │ │╰  0x00007f3cf7244edd:   jg     0x00007f3cf7244ec0
           │ │ │   0x00007f3cf7244edf:   nop
           │ │ │   0x00007f3cf7244ee0:   jmp    0x00007f3cf7244f1f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
           │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.02%   ↘ │ │   0x00007f3cf7244ee5:   mov    %r11,0x20(%r8)
             │ │   0x00007f3cf7244ee9:   jmp    0x00007f3cf7244df7           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.00%     │ ↘   0x00007f3cf7244eee:   mov    %r11,0x20(%r8)
             │     0x00007f3cf7244ef2:   jmp    0x00007f3cf7244db9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
             ↘     0x00007f3cf7244ef7:   mov    $0x0,%r11
                   0x00007f3cf7244efe:   mov    $0xffffffdd,%r10d
                   0x00007f3cf7244f04:   mov    %r10d,0x484(%r15)            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 123)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
....................................................................................................
  57.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 971 

                  # {method} {0x00007f3c7747d320} &apos;is_duplicated_4&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark&apos;
                  #           [sp+0x20]  (sp of caller)
                  0x00007f3cf7244d40:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                  0x00007f3cf7244d44:   movabs $0x7f3c7b000000,%r12
                  0x00007f3cf7244d4e:   add    %r12,%r10
                  0x00007f3cf7244d51:   xor    %r12,%r12
                  0x00007f3cf7244d54:   cmp    %r10,%rax
                  0x00007f3cf7244d57:   jne    0x00007f3cf6c2f080           ;   {runtime_call ic_miss_stub}
                  0x00007f3cf7244d5d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.29%          0x00007f3cf7244d60:   mov    %eax,-0x14000(%rsp)
   0.00%          0x00007f3cf7244d67:   sub    $0x18,%rsp
   0.00%          0x00007f3cf7244d6b:   nop
   0.27%          0x00007f3cf7244d6c:   cmpl   $0x1,0x20(%r15)
   0.00%          0x00007f3cf7244d74:   jne    0x00007f3cf7244f51
   0.00%          0x00007f3cf7244d7a:   mov    %rbp,0x10(%rsp)
   0.00%          0x00007f3cf7244d7f:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
   0.28%          0x00007f3cf7244d82:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f3cf7244f75
   0.00%          0x00007f3cf7244d8a:   movabs $0x7f3c7b000000,%r11
   0.00%          0x00007f3cf7244d94:   lea    (%r11,%r10,1),%r8
   0.00%          0x00007f3cf7244d98:   movabs $0x7f3c7c02b328,%r11         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
   0.28%          0x00007f3cf7244da2:   cmp    0x20(%r8),%r11
          ╭       0x00007f3cf7244da6:   je     0x00007f3cf7244db9
   7.70%  │       0x00007f3cf7244dac:   cmp    $0x102b328,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │       0x00007f3cf7244db3:   jne    0x00007f3cf7244ea5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 122)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.75%  ↘       0x00007f3cf7244db9:   mov    0x8(,%rax,8),%r10d
   0.02%          0x00007f3cf7244dc1:   movabs $0x7f3c7b000000,%r11
                  0x00007f3cf7244dcb:   lea    (%r11,%r10,1),%r8
   0.00%          0x00007f3cf7244dcf:   movabs $0x7f3c7c02b520,%r11         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.28%          0x00007f3cf7244dd9:   nopl   0x0(%rax)
                  0x00007f3cf7244de0:   cmp    0x20(%r8),%r11
           ╭      0x00007f3cf7244de4:   je     0x00007f3cf7244df7
   2.26%   │      0x00007f3cf7244dea:   cmp    $0x102b520,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           │╭     0x00007f3cf7244df1:   jne    0x00007f3cf7244e55
   0.54%   ↘│     0x00007f3cf7244df7:   mov    0x8(,%rax,8),%eax
   0.00%    │     0x00007f3cf7244dfe:   movabs $0x7f3c7b000000,%r10
            │     0x00007f3cf7244e08:   lea    (%r10,%rax,1),%rax
            │     0x00007f3cf7244e0c:   cmp    -0xf3(%rip),%rax        # 0x00007f3cf7244d20
            │                                                               ;   {section_word}
   0.29%    │╭    0x00007f3cf7244e13:   je     0x00007f3cf7244e2b
   0.00%    ││    0x00007f3cf7244e19:   cmp    -0xf8(%rip),%rax        # 0x00007f3cf7244d28
            ││                                                              ;   {section_word}
   0.00%    ││╭   0x00007f3cf7244e20:   je     0x00007f3cf7244e4e
            │││   0x00007f3cf7244e26:   jmp    0x00007f3cf7244f42
            │↘│   0x00007f3cf7244e2b:   mov    $0x0,%eax
   0.00%    │ │↗  0x00007f3cf7244e30:   mov    0x10(%rsp),%rbp
   0.00%    │ ││  0x00007f3cf7244e35:   add    $0x18,%rsp
            │ ││  0x00007f3cf7244e39:   nopl   0x0(%rax)
   0.25%    │ ││  0x00007f3cf7244e40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │ ││  0x00007f3cf7244e47:   ja     0x00007f3cf7244f61
   0.00%    │ ││  0x00007f3cf7244e4d:   ret    
   0.00%    │ ↘│  0x00007f3cf7244e4e:   mov    $0x1,%eax
   0.29%    │  ╰  0x00007f3cf7244e53:   jmp    0x00007f3cf7244e30
            ↘     0x00007f3cf7244e55:   mov    0x28(%r8),%r10
  26.58%          0x00007f3cf7244e59:   mov    (%r10),%r9d
   0.48%          0x00007f3cf7244e5c:   mov    $0x0,%ecx
                  0x00007f3cf7244e61:   jmp    0x00007f3cf7244e9a
                  0x00007f3cf7244e66:   data16 data16 nopw 0x0(%rax,%rax,1)
                  0x00007f3cf7244e71:   data16 data16 xchg %ax,%ax
                  0x00007f3cf7244e75:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.50%          0x00007f3cf7244e80:   mov    %ecx,%ebx
                  0x00007f3cf7244e82:   shl    $0x3,%ebx
   0.02%          0x00007f3cf7244e85:   lea    0x8(%rbx),%ebx
                  0x00007f3cf7244e88:   movslq %ebx,%rbx
   0.51%          0x00007f3cf7244e8b:   mov    (%r10,%rbx,1),%rbx
                  0x00007f3cf7244e8f:   cmp    %rbx,%r11
....................................................................................................
  40.56%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 971 
  40.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 971 
   0.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 1003 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.44%  <...other 507 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 971 
   0.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 1003 
   0.65%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%            libjvm.so  fileStream::write 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  stringStream::write 
   0.00%           ld-2.31.so  __tls_get_addr 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.00%         libc-2.31.so  __strchrnul_avx2 
   0.00%         libc-2.31.so  __GI___libc_write 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.07%  <...other 115 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.21%       jvmci, level 4
   0.65%               kernel
   0.06%            libjvm.so
   0.04%         libc-2.31.so
   0.01%                     
   0.01%       hsdis-amd64.so
   0.00%  libjvmcicompiler.so
   0.00%          interpreter
   0.00%          c1, level 3
   0.00%   libpthread-2.31.so
   0.00%           ld-2.31.so
   0.00%         libjimage.so
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:13

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
TypeCheckScalabilityBenchmark.is_duplicated_1                false  avgt    5    6.959 ±  0.028  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_1                 true  avgt    5   15.251 ±  0.078  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                false  avgt    5    6.972 ±  0.019  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                 true  avgt    5   56.627 ± 40.197  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                false  avgt    5    6.985 ±  0.050  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                 true  avgt    5   99.431 ± 14.549  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                false  avgt    5    6.976 ±  0.046  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                 true  avgt    5  144.811 ± 43.483  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:asm             true  avgt           NaN             ---
