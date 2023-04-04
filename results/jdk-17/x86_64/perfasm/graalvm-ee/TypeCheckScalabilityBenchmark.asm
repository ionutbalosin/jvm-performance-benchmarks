# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = false)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.093 ns/op
# Warmup Iteration   2: 6.982 ns/op
# Warmup Iteration   3: 7.014 ns/op
# Warmup Iteration   4: 6.962 ns/op
# Warmup Iteration   5: 6.962 ns/op
Iteration   1: 6.962 ns/op
Iteration   2: 6.962 ns/op
Iteration   3: 6.961 ns/op
Iteration   4: 6.962 ns/op
Iteration   5: 6.963 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  6.962 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (6.961, 6.962, 6.963), stdev = 0.001
  CI (99.9%): [6.960, 6.964] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:·asm":
PrintAssembly processed: 188865 total address lines.
Perf output processed (skipped 58.576 seconds):
 Column 1: cycles (50670 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 720 

             #           [sp+0x20]  (sp of caller)
             0x00007ff62ab18600:   mov    0x8(%rsi),%r10d
             0x00007ff62ab18604:   movabs $0x800000000,%r12
             0x00007ff62ab1860e:   add    %r12,%r10
             0x00007ff62ab18611:   xor    %r12,%r12
             0x00007ff62ab18614:   cmp    %r10,%rax
             0x00007ff62ab18617:   jne    0x00007ff62301e780           ;   {runtime_call ic_miss_stub}
             0x00007ff62ab1861d:   nop
             0x00007ff62ab1861e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.01%     0x00007ff62ab18620:   mov    %eax,-0x14000(%rsp)
   6.61%     0x00007ff62ab18627:   sub    $0x18,%rsp
   0.01%     0x00007ff62ab1862b:   mov    %rbp,0x10(%rsp)
   2.48%     0x00007ff62ab18630:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@1 (line 95)
   1.96%     0x00007ff62ab18633:   nopw   0x0(%rax,%rax,1)
   1.01%     0x00007ff62ab1863c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
   0.01%     0x00007ff62ab18640:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007ff62ab18681
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.57%  ╭  0x00007ff62ab1864b:   jne    0x00007ff62ab18669           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   5.37%  │  0x00007ff62ab18651:   mov    $0x1,%eax
          │  0x00007ff62ab18656:   mov    0x10(%rsp),%rbp
          │  0x00007ff62ab1865b:   add    $0x18,%rsp
          │  0x00007ff62ab1865f:   mov    0x348(%r15),%rcx
   5.40%  │  0x00007ff62ab18666:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007ff62ab18668:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@7 (line 95)
          ↘  0x00007ff62ab18669:   movl   $0xffffffdd,0x370(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
             0x00007ff62ab18674:   mov    %r12,0x378(%r15)
             0x00007ff62ab1867b:   call   0x00007ff62302427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
....................................................................................................
  49.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 742 

              0x00007ff62ab1b0d8:   call   0x00007ff641b324f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007ff62ab1b0dd:   nop
              0x00007ff62ab1b0de:   mov    0x10(%rsp),%rdx
              0x00007ff62ab1b0e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@10 (line 184)
              0x00007ff62ab1b0e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007ff62ab1b0f0:   jmp    0x00007ff62ab1b10f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 186)
          │   0x00007ff62ab1b0f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
   5.42%  │↗  0x00007ff62ab1b100:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
          ││  0x00007ff62ab1b107:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007ff62ab1b10a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 186)
          ↘│  0x00007ff62ab1b10f:   mov    0x8(%rsp),%r10
   5.48%   │  0x00007ff62ab1b114:   mov    %r10,%rsi
           │  0x00007ff62ab1b117:   call   0x00007ff62301ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
  10.07%   │  0x00007ff62ab1b11c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@20 (line 186)
           │  0x00007ff62ab1b11d:   mov    0x20(%rsp),%r10
   4.42%   │  0x00007ff62ab1b122:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@26 (line 187)
   5.52%   │  0x00007ff62ab1b125:   mov    0x18(%rsp),%rsi
           │  0x00007ff62ab1b12a:   cmpb   $0x0,0x94(%rsi)
  17.73%   ╰  0x00007ff62ab1b131:   je     0x00007ff62ab1b100           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
              0x00007ff62ab1b133:   mov    %r10,0x20(%rsp)
              0x00007ff62ab1b138:   call   0x00007ff641b324f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007ff62ab1b13d:   nop
              0x00007ff62ab1b13e:   mov    0x10(%rsp),%rdx
              0x00007ff62ab1b143:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@40 (line 189)
              0x00007ff62ab1b147:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@46 (line 190)
              0x00007ff62ab1b14b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  48.66%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 720 
  48.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 742 
   0.64%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
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
   0.75%  <...other 262 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 720 
  48.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 742 
   1.59%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%         libc-2.31.so  realloc 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%         libc-2.31.so  _nl_parse_alt_digit 
   0.00%         libc-2.31.so  _nl_cleanup_time 
   0.00%   libpthread-2.31.so  __libc_write 
   0.15%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.11%       jvmci, level 4
   1.59%               kernel
   0.11%            libjvm.so
   0.10%         libc-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%      perf-117751.map
   0.00%          c1, level 3
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = true)

# Run progress: 8.33% complete, ETA 00:20:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.103 ns/op
# Warmup Iteration   2: 14.507 ns/op
# Warmup Iteration   3: 14.625 ns/op
# Warmup Iteration   4: 14.616 ns/op
# Warmup Iteration   5: 14.565 ns/op
Iteration   1: 14.603 ns/op
Iteration   2: 14.555 ns/op
Iteration   3: 14.571 ns/op
Iteration   4: 14.565 ns/op
Iteration   5: 14.596 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  14.578 ±(99.9%) 0.079 ns/op [Average]
  (min, avg, max) = (14.555, 14.578, 14.603), stdev = 0.021
  CI (99.9%): [14.499, 14.657] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:·asm":
PrintAssembly processed: 196138 total address lines.
Perf output processed (skipped 58.898 seconds):
 Column 1: cycles (50805 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 726 

              #           [sp+0x20]  (sp of caller)
              0x00007f7ccab1d720:   mov    0x8(%rsi),%r10d
              0x00007f7ccab1d724:   movabs $0x800000000,%r12
              0x00007f7ccab1d72e:   add    %r12,%r10
              0x00007f7ccab1d731:   xor    %r12,%r12
              0x00007f7ccab1d734:   cmp    %r10,%rax
              0x00007f7ccab1d737:   jne    0x00007f7cc301e780           ;   {runtime_call ic_miss_stub}
              0x00007f7ccab1d73d:   nop
              0x00007f7ccab1d73e:   xchg   %ax,%ax
            [Verified Entry Point]
   1.88%      0x00007f7ccab1d740:   mov    %eax,-0x14000(%rsp)
   0.79%      0x00007f7ccab1d747:   sub    $0x18,%rsp
   1.92%      0x00007f7ccab1d74b:   mov    %rbp,0x10(%rsp)
   0.09%      0x00007f7ccab1d750:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@0 (line 95)
   0.61%      0x00007f7ccab1d753:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f7ccab1d90d
   7.21%      0x00007f7ccab1d75b:   movabs $0x800000000,%r11
              0x00007f7ccab1d765:   lea    (%r11,%r10,1),%r8
   2.73%      0x00007f7ccab1d769:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
              0x00007f7ccab1d773:   cmp    0x20(%r8),%r11
          ╭   0x00007f7ccab1d777:   je     0x00007f7ccab1d78d
  15.38%  │   0x00007f7ccab1d77d:   data16 xchg %ax,%ax
          │   0x00007f7ccab1d780:   cmp    $0xc265e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │   0x00007f7ccab1d787:   jne    0x00007f7ccab1d805           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   2.62%  ↘   0x00007f7ccab1d78d:   mov    0x8(,%rax,8),%r10d
              0x00007f7ccab1d795:   movabs $0x800000000,%r11
              0x00007f7ccab1d79f:   lea    (%r11,%r10,1),%r8
              0x00007f7ccab1d7a3:   movabs $0x800c267e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   2.57%      0x00007f7ccab1d7ad:   cmp    0x20(%r8),%r11
           ╭  0x00007f7ccab1d7b1:   je     0x00007f7ccab1d7cd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
           │  0x00007f7ccab1d7b7:   nopw   0x0(%rax,%rax,1)
           │  0x00007f7ccab1d7c0:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           │  0x00007f7ccab1d7c7:   jne    0x00007f7ccab1d845
   2.61%   ↘  0x00007f7ccab1d7cd:   mov    0x8(,%rax,8),%r10d
              0x00007f7ccab1d7d5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f7ccab1d7e0:   cmp    $0xc26c08,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
              0x00007f7ccab1d7e7:   jne    0x00007f7ccab1d897           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
              0x00007f7ccab1d7ed:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@7 (line 95)
   2.66%      0x00007f7ccab1d7f2:   mov    0x10(%rsp),%rbp
              0x00007f7ccab1d7f7:   add    $0x18,%rsp
              0x00007f7ccab1d7fb:   mov    0x348(%r15),%rcx
....................................................................................................
  38.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 726 

                     0x00007f7ccab1d7c0:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          ╭          0x00007f7ccab1d7c7:   jne    0x00007f7ccab1d845
   2.61%  │       ↗  0x00007f7ccab1d7cd:   mov    0x8(,%rax,8),%r10d
          │       │  0x00007f7ccab1d7d5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │       │  0x00007f7ccab1d7e0:   cmp    $0xc26c08,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │╭      │  0x00007f7ccab1d7e7:   jne    0x00007f7ccab1d897           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          ││      │  0x00007f7ccab1d7ed:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@7 (line 95)
   2.66%  ││      │  0x00007f7ccab1d7f2:   mov    0x10(%rsp),%rbp
          ││      │  0x00007f7ccab1d7f7:   add    $0x18,%rsp
          ││      │  0x00007f7ccab1d7fb:   mov    0x348(%r15),%rcx
          ││      │  0x00007f7ccab1d802:   test   %eax,(%rcx)                  ;   {poll_return}
   2.55%  ││      │  0x00007f7ccab1d804:   ret    
          ││      │  0x00007f7ccab1d805:   mov    0x28(%r8),%r10
          ││      │  0x00007f7ccab1d809:   mov    (%r10),%r9d
   8.77%  ││      │  0x00007f7ccab1d80c:   mov    $0x0,%ecx
          ││╭     │  0x00007f7ccab1d811:   jmp    0x00007f7ccab1d83a
          │││     │  0x00007f7ccab1d816:   data16 nopw 0x0(%rax,%rax,1)
   2.55%  │││ ↗   │  0x00007f7ccab1d820:   mov    %ecx,%ebx
          │││ │   │  0x00007f7ccab1d822:   shl    $0x3,%ebx
          │││ │   │  0x00007f7ccab1d825:   lea    0x8(%rbx),%ebx
          │││ │   │  0x00007f7ccab1d828:   movslq %ebx,%rbx
   2.52%  │││ │   │  0x00007f7ccab1d82b:   mov    (%r10,%rbx,1),%rbx
          │││ │   │  0x00007f7ccab1d82f:   cmp    %rbx,%r11
          │││╭│   │  0x00007f7ccab1d832:   je     0x00007f7ccab1d885
          │││││   │  0x00007f7ccab1d838:   inc    %ecx
          ││↘││   │  0x00007f7ccab1d83a:   cmp    %ecx,%r9d
          ││ │╰   │  0x00007f7ccab1d83d:   jg     0x00007f7ccab1d820
          ││ │    │  0x00007f7ccab1d83f:   nop
          ││ │    │  0x00007f7ccab1d840:   jmp    0x00007f7ccab1d8e6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          ↘│ │    │  0x00007f7ccab1d845:   mov    0x28(%r8),%r10
   2.67%   │ │    │  0x00007f7ccab1d849:   mov    (%r10),%r9d
   0.08%   │ │    │  0x00007f7ccab1d84c:   mov    $0x0,%ecx
           │ │ ╭  │  0x00007f7ccab1d851:   jmp    0x00007f7ccab1d87a
           │ │ │  │  0x00007f7ccab1d856:   data16 nopw 0x0(%rax,%rax,1)
   5.25%   │ │ │ ↗│  0x00007f7ccab1d860:   mov    %ecx,%ebx
           │ │ │ ││  0x00007f7ccab1d862:   shl    $0x3,%ebx
   0.00%   │ │ │ ││  0x00007f7ccab1d865:   lea    0x8(%rbx),%ebx
           │ │ │ ││  0x00007f7ccab1d868:   movslq %ebx,%rbx
   5.26%   │ │ │ ││  0x00007f7ccab1d86b:   mov    (%r10,%rbx,1),%rbx
           │ │ │ ││  0x00007f7ccab1d86f:   cmp    %rbx,%r11
           │ │ │╭││  0x00007f7ccab1d872:   je     0x00007f7ccab1d88e
   0.00%   │ │ ││││  0x00007f7ccab1d878:   inc    %ecx
           │ │ ↘│││  0x00007f7ccab1d87a:   cmp    %ecx,%r9d
           │ │  │╰│  0x00007f7ccab1d87d:   jg     0x00007f7ccab1d860
           │ │  │ │  0x00007f7ccab1d87f:   nop
           │ │  │ │  0x00007f7ccab1d880:   jmp    0x00007f7ccab1d8c5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
           │ ↘  │ │  0x00007f7ccab1d885:   mov    %r11,0x20(%r8)
           │    │ │  0x00007f7ccab1d889:   jmp    0x00007f7ccab1d78d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
           │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   0.00%   │    ↘ │  0x00007f7ccab1d88e:   mov    %r11,0x20(%r8)
           │      ╰  0x00007f7ccab1d892:   jmp    0x00007f7ccab1d7cd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
           ↘         0x00007f7ccab1d897:   nopw   0x0(%rax,%rax,1)
                     0x00007f7ccab1d8a0:   cmp    $0xc269e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
                     0x00007f7ccab1d8a7:   jne    0x00007f7ccab1d8fe           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
....................................................................................................
  32.32%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 749 

              0x00007f7ccab20958:   call   0x00007f7ce2b7b4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f7ccab2095d:   nop
              0x00007f7ccab2095e:   mov    0x10(%rsp),%rdx
              0x00007f7ccab20963:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@10 (line 184)
              0x00007f7ccab20967:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f7ccab20970:   jmp    0x00007f7ccab2098f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 186)
          │   0x00007f7ccab20975:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
   2.54%  │↗  0x00007f7ccab20980:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
          ││  0x00007f7ccab20987:   test   %eax,(%r11)                  ;   {poll}
   1.88%  ││  0x00007f7ccab2098a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@13 (line 186)
          ↘│  0x00007f7ccab2098f:   mov    0x8(%rsp),%r10
   0.82%   │  0x00007f7ccab20994:   mov    %r10,%rsi
           │  0x00007f7ccab20997:   call   0x00007f7cc301ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f7ccab2099c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@20 (line 186)
           │  0x00007f7ccab2099d:   mov    0x20(%rsp),%r10
   8.88%   │  0x00007f7ccab209a2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@26 (line 187)
   2.61%   │  0x00007f7ccab209a5:   mov    0x18(%rsp),%rsi
           │  0x00007f7ccab209aa:   cmpb   $0x0,0x94(%rsi)
  10.40%   ╰  0x00007f7ccab209b1:   je     0x00007f7ccab20980           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
              0x00007f7ccab209b3:   mov    %r10,0x20(%rsp)
              0x00007f7ccab209b8:   call   0x00007f7ce2b7b4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f7ccab209bd:   nop
              0x00007f7ccab209be:   mov    0x10(%rsp),%rdx
              0x00007f7ccab209c3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@40 (line 189)
              0x00007f7ccab209c7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@46 (line 190)
              0x00007f7ccab209cb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  27.13%  <total for region 3>

....[Hottest Regions]...............................................................................
  38.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 726 
  32.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 726 
  27.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 749 
   0.73%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  fileStream::write 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.89%  <...other 320 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 726 
  27.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 749 
   1.79%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  outputStream::print 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.16%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%       jvmci, level 4
   1.79%               kernel
   0.16%            libjvm.so
   0.07%                     
   0.07%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%           ld-2.31.so
   0.00%      perf-117817.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = false)

# Run progress: 16.67% complete, ETA 00:18:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.165 ns/op
# Warmup Iteration   2: 6.955 ns/op
# Warmup Iteration   3: 7.001 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.962 ns/op
Iteration   1: 6.964 ns/op
Iteration   2: 6.965 ns/op
Iteration   3: 6.964 ns/op
Iteration   4: 6.965 ns/op
Iteration   5: 6.962 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  6.964 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (6.962, 6.964, 6.965), stdev = 0.001
  CI (99.9%): [6.959, 6.969] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:·asm":
PrintAssembly processed: 190811 total address lines.
Perf output processed (skipped 58.584 seconds):
 Column 1: cycles (100634 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 731 

             #           [sp+0x20]  (sp of caller)
             0x00007f039eb1ad00:   mov    0x8(%rsi),%r10d
             0x00007f039eb1ad04:   movabs $0x800000000,%r12
             0x00007f039eb1ad0e:   add    %r12,%r10
             0x00007f039eb1ad11:   xor    %r12,%r12
             0x00007f039eb1ad14:   cmp    %r10,%rax
             0x00007f039eb1ad17:   jne    0x00007f039701e780           ;   {runtime_call ic_miss_stub}
             0x00007f039eb1ad1d:   nop
             0x00007f039eb1ad1e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.04%     0x00007f039eb1ad20:   mov    %eax,-0x14000(%rsp)
   6.29%     0x00007f039eb1ad27:   sub    $0x18,%rsp
   0.03%     0x00007f039eb1ad2b:   mov    %rbp,0x10(%rsp)
   2.51%     0x00007f039eb1ad30:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@1 (line 102)
   2.13%     0x00007f039eb1ad33:   nopw   0x0(%rax,%rax,1)
   0.88%     0x00007f039eb1ad3c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
   0.03%     0x00007f039eb1ad40:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f039eb1ad81
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.65%  ╭  0x00007f039eb1ad4b:   jne    0x00007f039eb1ad69           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   5.46%  │  0x00007f039eb1ad51:   mov    $0x1,%eax
          │  0x00007f039eb1ad56:   mov    0x10(%rsp),%rbp
          │  0x00007f039eb1ad5b:   add    $0x18,%rsp
          │  0x00007f039eb1ad5f:   mov    0x348(%r15),%rcx
   5.52%  │  0x00007f039eb1ad66:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007f039eb1ad68:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@7 (line 102)
          ↘  0x00007f039eb1ad69:   movl   $0xffffffdd,0x370(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
             0x00007f039eb1ad74:   mov    %r12,0x378(%r15)
             0x00007f039eb1ad7b:   call   0x00007f039702427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
....................................................................................................
  49.54%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 754 

              0x00007f039eb1e6d8:   call   0x00007f03b60414f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f039eb1e6dd:   nop
              0x00007f039eb1e6de:   mov    0x10(%rsp),%rdx
              0x00007f039eb1e6e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@10 (line 184)
              0x00007f039eb1e6e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f039eb1e6f0:   jmp    0x00007f039eb1e70f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@13 (line 186)
          │   0x00007f039eb1e6f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 188)
   5.50%  │↗  0x00007f039eb1e700:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 188)
          ││  0x00007f039eb1e707:   test   %eax,(%r11)                  ;   {poll}
   0.02%  ││  0x00007f039eb1e70a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@13 (line 186)
          ↘│  0x00007f039eb1e70f:   mov    0x8(%rsp),%r10
   5.44%   │  0x00007f039eb1e714:   mov    %r10,%rsi
           │  0x00007f039eb1e717:   call   0x00007f039701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
   9.58%   │  0x00007f039eb1e71c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@20 (line 186)
           │  0x00007f039eb1e71d:   mov    0x20(%rsp),%r10
   4.59%   │  0x00007f039eb1e722:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@26 (line 187)
   5.57%   │  0x00007f039eb1e725:   mov    0x18(%rsp),%rsi
           │  0x00007f039eb1e72a:   cmpb   $0x0,0x94(%rsi)
  18.43%   ╰  0x00007f039eb1e731:   je     0x00007f039eb1e700           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 188)
              0x00007f039eb1e733:   mov    %r10,0x20(%rsp)
              0x00007f039eb1e738:   call   0x00007f03b60414f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f039eb1e73d:   nop
              0x00007f039eb1e73e:   mov    0x10(%rsp),%rdx
              0x00007f039eb1e743:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@40 (line 189)
              0x00007f039eb1e747:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@46 (line 190)
              0x00007f039eb1e74b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  49.13%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 731 
  49.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 754 
   0.32%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
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
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.65%  <...other 393 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 731 
  49.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 754 
   1.12%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%               [vdso]  __vdso_clock_gettime 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%            libjvm.so  defaultStream::hold 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  os::javaTimeNanos 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  event_to_env 
   0.09%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.68%       jvmci, level 4
   1.12%               kernel
   0.09%            libjvm.so
   0.03%         libc-2.31.so
   0.02%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%  libjvmcicompiler.so
   0.00%               [vdso]
   0.00%      perf-117873.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = true)

# Run progress: 25.00% complete, ETA 00:16:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 44.403 ns/op
# Warmup Iteration   2: 41.981 ns/op
# Warmup Iteration   3: 45.773 ns/op
# Warmup Iteration   4: 44.380 ns/op
# Warmup Iteration   5: 44.658 ns/op
Iteration   1: 44.539 ns/op
Iteration   2: 40.397 ns/op
Iteration   3: 42.716 ns/op
Iteration   4: 42.518 ns/op
Iteration   5: 40.503 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  42.134 ±(99.9%) 6.655 ns/op [Average]
  (min, avg, max) = (40.397, 42.134, 44.539), stdev = 1.728
  CI (99.9%): [35.479, 48.789] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:·asm":
PrintAssembly processed: 188991 total address lines.
Perf output processed (skipped 58.587 seconds):
 Column 1: cycles (100736 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 727 

                         #           [sp+0x20]  (sp of caller)
                         0x00007fae06b19c20:   mov    0x8(%rsi),%r10d
                         0x00007fae06b19c24:   movabs $0x800000000,%r12
                         0x00007fae06b19c2e:   add    %r12,%r10
                         0x00007fae06b19c31:   xor    %r12,%r12
                         0x00007fae06b19c34:   cmp    %r10,%rax
                         0x00007fae06b19c37:   jne    0x00007fadff01e780           ;   {runtime_call ic_miss_stub}
                         0x00007fae06b19c3d:   nop
                         0x00007fae06b19c3e:   xchg   %ax,%ax
                       [Verified Entry Point]
   0.00%                 0x00007fae06b19c40:   mov    %eax,-0x14000(%rsp)
   0.96%                 0x00007fae06b19c47:   sub    $0x18,%rsp
                         0x00007fae06b19c4b:   mov    %rbp,0x10(%rsp)
                         0x00007fae06b19c50:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                   ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@0 (line 102)
   0.89%                 0x00007fae06b19c53:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fae06b19e0d
   0.04%                 0x00007fae06b19c5b:   movabs $0x800000000,%r11
                         0x00007fae06b19c65:   lea    (%r11,%r10,1),%r8
   0.03%                 0x00007fae06b19c69:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
   0.92%                 0x00007fae06b19c73:   cmp    0x20(%r8),%r11
          ╭              0x00007fae06b19c77:   je     0x00007fae06b19c8d
  14.15%  │              0x00007fae06b19c7d:   data16 xchg %ax,%ax
          │              0x00007fae06b19c80:   cmp    $0xc265e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │╭             0x00007fae06b19c87:   jne    0x00007fae06b19d05           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   5.38%  ↘│         ↗   0x00007fae06b19c8d:   mov    0x8(,%rax,8),%r10d
   0.30%   │         │   0x00007fae06b19c95:   movabs $0x800000000,%r11
           │         │   0x00007fae06b19c9f:   lea    (%r11,%r10,1),%r8
   0.03%   │         │   0x00007fae06b19ca3:   movabs $0x800c267e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.92%   │         │   0x00007fae06b19cad:   cmp    0x20(%r8),%r11
           │╭        │   0x00007fae06b19cb1:   je     0x00007fae06b19ccd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           ││        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   1.35%   ││        │   0x00007fae06b19cb7:   nopw   0x0(%rax,%rax,1)
           ││        │   0x00007fae06b19cc0:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           ││╭       │   0x00007fae06b19cc7:   jne    0x00007fae06b19d45
   2.01%   │↘│       │↗  0x00007fae06b19ccd:   mov    0x8(,%rax,8),%r10d
   0.00%   │ │       ││  0x00007fae06b19cd5:   data16 data16 nopw 0x0(%rax,%rax,1)
           │ │       ││  0x00007fae06b19ce0:   cmp    $0xc26c08,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
           │ │╭      ││  0x00007fae06b19ce7:   jne    0x00007fae06b19d97           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
           │ ││      ││  0x00007fae06b19ced:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@7 (line 102)
   0.86%   │ ││      ││  0x00007fae06b19cf2:   mov    0x10(%rsp),%rbp
           │ ││      ││  0x00007fae06b19cf7:   add    $0x18,%rsp
           │ ││      ││  0x00007fae06b19cfb:   mov    0x348(%r15),%rcx
   0.02%   │ ││      ││  0x00007fae06b19d02:   test   %eax,(%rcx)                  ;   {poll_return}
   0.99%   │ ││      ││  0x00007fae06b19d04:   ret    
           ↘ ││      ││  0x00007fae06b19d05:   mov    0x28(%r8),%r10
  53.08%     ││      ││  0x00007fae06b19d09:   mov    (%r10),%r9d
   2.72%     ││      ││  0x00007fae06b19d0c:   mov    $0x0,%ecx
             ││╭     ││  0x00007fae06b19d11:   jmp    0x00007fae06b19d3a
             │││     ││  0x00007fae06b19d16:   data16 nopw 0x0(%rax,%rax,1)
   0.86%     │││ ↗   ││  0x00007fae06b19d20:   mov    %ecx,%ebx
             │││ │   ││  0x00007fae06b19d22:   shl    $0x3,%ebx
             │││ │   ││  0x00007fae06b19d25:   lea    0x8(%rbx),%ebx
             │││ │   ││  0x00007fae06b19d28:   movslq %ebx,%rbx
   0.88%     │││ │   ││  0x00007fae06b19d2b:   mov    (%r10,%rbx,1),%rbx
             │││ │   ││  0x00007fae06b19d2f:   cmp    %rbx,%r11
             │││╭│   ││  0x00007fae06b19d32:   je     0x00007fae06b19d85
             │││││   ││  0x00007fae06b19d38:   inc    %ecx
             ││↘││   ││  0x00007fae06b19d3a:   cmp    %ecx,%r9d
             ││ │╰   ││  0x00007fae06b19d3d:   jg     0x00007fae06b19d20
             ││ │    ││  0x00007fae06b19d3f:   nop
             ││ │    ││  0x00007fae06b19d40:   jmp    0x00007fae06b19de6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             ││ │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
             ││ │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.00%     ↘│ │    ││  0x00007fae06b19d45:   mov    0x28(%r8),%r10
   5.52%      │ │    ││  0x00007fae06b19d49:   mov    (%r10),%r9d
   0.28%      │ │    ││  0x00007fae06b19d4c:   mov    $0x0,%ecx
              │ │ ╭  ││  0x00007fae06b19d51:   jmp    0x00007fae06b19d7a
              │ │ │  ││  0x00007fae06b19d56:   data16 nopw 0x0(%rax,%rax,1)
   1.74%      │ │ │ ↗││  0x00007fae06b19d60:   mov    %ecx,%ebx
              │ │ │ │││  0x00007fae06b19d62:   shl    $0x3,%ebx
   0.01%      │ │ │ │││  0x00007fae06b19d65:   lea    0x8(%rbx),%ebx
              │ │ │ │││  0x00007fae06b19d68:   movslq %ebx,%rbx
   1.79%      │ │ │ │││  0x00007fae06b19d6b:   mov    (%r10,%rbx,1),%rbx
              │ │ │ │││  0x00007fae06b19d6f:   cmp    %rbx,%r11
              │ │ │╭│││  0x00007fae06b19d72:   je     0x00007fae06b19d8e
   0.01%      │ │ │││││  0x00007fae06b19d78:   inc    %ecx
              │ │ ↘││││  0x00007fae06b19d7a:   cmp    %ecx,%r9d
              │ │  │╰││  0x00007fae06b19d7d:   jg     0x00007fae06b19d60
              │ │  │ ││  0x00007fae06b19d7f:   nop
              │ │  │ ││  0x00007fae06b19d80:   jmp    0x00007fae06b19dc5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │ │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
              │ │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
              │ ↘  │ ││  0x00007fae06b19d85:   mov    %r11,0x20(%r8)
              │    │ ╰│  0x00007fae06b19d89:   jmp    0x00007fae06b19c8d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
              │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.02%      │    ↘  │  0x00007fae06b19d8e:   mov    %r11,0x20(%r8)
              │       ╰  0x00007fae06b19d92:   jmp    0x00007fae06b19ccd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
              │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
              ↘          0x00007fae06b19d97:   nopw   0x0(%rax,%rax,1)
                         0x00007fae06b19da0:   cmp    $0xc269e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
                         0x00007fae06b19da7:   jne    0x00007fae06b19dfe           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
....................................................................................................
  95.76%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 727 
   2.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 747 
   0.47%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.62%  <...other 366 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 727 
   2.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 747 
   1.25%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%            libjvm.so  fileStream::write 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%      perf-117931.map  [unknown] 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%         libc-2.31.so  ptmalloc_init.part.0 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.08%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.57%       jvmci, level 4
   1.25%               kernel
   0.08%            libjvm.so
   0.05%         libc-2.31.so
   0.02%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%           ld-2.31.so
   0.00%          interpreter
   0.00%      perf-117931.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = false)

# Run progress: 33.33% complete, ETA 00:14:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.133 ±(99.9%) 0.252 ns/op
# Warmup Iteration   2: 6.966 ±(99.9%) 0.105 ns/op
# Warmup Iteration   3: 7.083 ±(99.9%) 0.486 ns/op
# Warmup Iteration   4: 6.983 ±(99.9%) 0.474 ns/op
# Warmup Iteration   5: 6.979 ±(99.9%) 0.348 ns/op
Iteration   1: 6.979 ±(99.9%) 0.576 ns/op
Iteration   2: 6.964 ±(99.9%) 0.122 ns/op
Iteration   3: 6.976 ±(99.9%) 0.081 ns/op
Iteration   4: 6.976 ±(99.9%) 0.281 ns/op
Iteration   5: 6.977 ±(99.9%) 0.263 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  6.974 ±(99.9%) 0.022 ns/op [Average]
  (min, avg, max) = (6.964, 6.974, 6.979), stdev = 0.006
  CI (99.9%): [6.952, 6.996] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:·asm":
PrintAssembly processed: 190453 total address lines.
Perf output processed (skipped 58.669 seconds):
 Column 1: cycles (150234 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 725 

             #           [sp+0x20]  (sp of caller)
             0x00007fe026b19d00:   mov    0x8(%rsi),%r10d
             0x00007fe026b19d04:   movabs $0x800000000,%r12
             0x00007fe026b19d0e:   add    %r12,%r10
             0x00007fe026b19d11:   xor    %r12,%r12
             0x00007fe026b19d14:   cmp    %r10,%rax
             0x00007fe026b19d17:   jne    0x00007fe01f01e780           ;   {runtime_call ic_miss_stub}
             0x00007fe026b19d1d:   nop
             0x00007fe026b19d1e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.23%     0x00007fe026b19d20:   mov    %eax,-0x14000(%rsp)
   6.25%     0x00007fe026b19d27:   sub    $0x18,%rsp
   0.24%     0x00007fe026b19d2b:   mov    %rbp,0x10(%rsp)
   2.38%     0x00007fe026b19d30:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@1 (line 109)
   2.00%     0x00007fe026b19d33:   nopw   0x0(%rax,%rax,1)
   0.91%     0x00007fe026b19d3c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
   0.22%     0x00007fe026b19d40:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007fe026b19d81
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.78%  ╭  0x00007fe026b19d4b:   jne    0x00007fe026b19d69           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   5.52%  │  0x00007fe026b19d51:   mov    $0x1,%eax
          │  0x00007fe026b19d56:   mov    0x10(%rsp),%rbp
          │  0x00007fe026b19d5b:   add    $0x18,%rsp
          │  0x00007fe026b19d5f:   mov    0x348(%r15),%rcx
   5.49%  │  0x00007fe026b19d66:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007fe026b19d68:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@7 (line 109)
          ↘  0x00007fe026b19d69:   movl   $0xffffffdd,0x370(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
             0x00007fe026b19d74:   mov    %r12,0x378(%r15)
             0x00007fe026b19d7b:   call   0x00007fe01f02427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
....................................................................................................
  50.03%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 754 

              0x00007fe026b1cdd8:   call   0x00007fe03ee7c4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe026b1cddd:   nop
              0x00007fe026b1cdde:   mov    0x10(%rsp),%rdx
              0x00007fe026b1cde3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@10 (line 184)
              0x00007fe026b1cde7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fe026b1cdf0:   jmp    0x00007fe026b1ce0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@13 (line 186)
          │   0x00007fe026b1cdf5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 188)
   5.55%  │↗  0x00007fe026b1ce00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 188)
          ││  0x00007fe026b1ce07:   test   %eax,(%r11)                  ;   {poll}
   0.25%  ││  0x00007fe026b1ce0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@13 (line 186)
          ↘│  0x00007fe026b1ce0f:   mov    0x8(%rsp),%r10
   5.33%   │  0x00007fe026b1ce14:   mov    %r10,%rsi
           │  0x00007fe026b1ce17:   call   0x00007fe01f01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
   9.71%   │  0x00007fe026b1ce1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@20 (line 186)
           │  0x00007fe026b1ce1d:   mov    0x20(%rsp),%r10
   4.82%   │  0x00007fe026b1ce22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@26 (line 187)
   5.33%   │  0x00007fe026b1ce25:   mov    0x18(%rsp),%rsi
           │  0x00007fe026b1ce2a:   cmpb   $0x0,0x94(%rsi)
  18.14%   ╰  0x00007fe026b1ce31:   je     0x00007fe026b1ce00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 188)
              0x00007fe026b1ce33:   mov    %r10,0x20(%rsp)
              0x00007fe026b1ce38:   call   0x00007fe03ee7c4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe026b1ce3d:   nop
              0x00007fe026b1ce3e:   mov    0x10(%rsp),%rdx
              0x00007fe026b1ce43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@40 (line 189)
              0x00007fe026b1ce47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@46 (line 190)
              0x00007fe026b1ce4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  49.13%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 725 
  49.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 754 
   0.23%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
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
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.39%  <...other 349 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 725 
  49.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 754 
   0.73%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.01%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%            libjvm.so  os::PlatformMonitor::wait 
   0.00%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%         libc-2.31.so  _nl_cleanup_time 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.05%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.16%       jvmci, level 4
   0.73%               kernel
   0.04%            libjvm.so
   0.03%         libc-2.31.so
   0.01%                     
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.00%       hsdis-amd64.so
   0.00%  libjvmcicompiler.so
   0.00%           ld-2.31.so
   0.00%         libjimage.so
   0.00%          c1, level 3
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = true)

# Run progress: 41.67% complete, ETA 00:13:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 81.504 ±(99.9%) 337.862 ns/op
# Warmup Iteration   2: 84.720 ±(99.9%) 322.618 ns/op
# Warmup Iteration   3: 98.144 ±(99.9%) 94.566 ns/op
# Warmup Iteration   4: 93.251 ±(99.9%) 138.246 ns/op
# Warmup Iteration   5: 80.377 ±(99.9%) 386.448 ns/op
Iteration   1: 94.832 ±(99.9%) 46.386 ns/op
Iteration   2: 112.527 ±(99.9%) 547.789 ns/op
Iteration   3: 72.584 ±(99.9%) 314.406 ns/op
Iteration   4: 93.251 ±(99.9%) 138.124 ns/op
Iteration   5: 92.890 ±(99.9%) 137.396 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  93.217 ±(99.9%) 54.500 ns/op [Average]
  (min, avg, max) = (72.584, 93.217, 112.527), stdev = 14.154
  CI (99.9%): [38.716, 147.717] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:·asm":
PrintAssembly processed: 196870 total address lines.
Perf output processed (skipped 58.793 seconds):
 Column 1: cycles (151039 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 734 

                         0x00007f080ab1b020:   mov    0x8(%rsi),%r10d
                         0x00007f080ab1b024:   movabs $0x800000000,%r12
                         0x00007f080ab1b02e:   add    %r12,%r10
                         0x00007f080ab1b031:   xor    %r12,%r12
                         0x00007f080ab1b034:   cmp    %r10,%rax
                         0x00007f080ab1b037:   jne    0x00007f080301e780           ;   {runtime_call ic_miss_stub}
                         0x00007f080ab1b03d:   nop
                         0x00007f080ab1b03e:   xchg   %ax,%ax
                       [Verified Entry Point]
                         0x00007f080ab1b040:   mov    %eax,-0x14000(%rsp)
   0.42%                 0x00007f080ab1b047:   sub    $0x18,%rsp
                         0x00007f080ab1b04b:   mov    %rbp,0x10(%rsp)
                         0x00007f080ab1b050:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                   ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@0 (line 109)
   0.43%                 0x00007f080ab1b053:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f080ab1b20d
   0.00%                 0x00007f080ab1b05b:   movabs $0x800000000,%r11
                         0x00007f080ab1b065:   lea    (%r11,%r10,1),%r8
   0.00%                 0x00007f080ab1b069:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
   0.45%                 0x00007f080ab1b073:   cmp    0x20(%r8),%r11
          ╭              0x00007f080ab1b077:   je     0x00007f080ab1b08d
  11.75%  │              0x00007f080ab1b07d:   data16 xchg %ax,%ax
          │              0x00007f080ab1b080:   cmp    $0xc265e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │╭             0x00007f080ab1b087:   jne    0x00007f080ab1b105           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   1.27%  ↘│         ↗   0x00007f080ab1b08d:   mov    0x8(,%rax,8),%r10d
   0.04%   │         │   0x00007f080ab1b095:   movabs $0x800000000,%r11
           │         │   0x00007f080ab1b09f:   lea    (%r11,%r10,1),%r8
   0.00%   │         │   0x00007f080ab1b0a3:   movabs $0x800c267e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.42%   │         │   0x00007f080ab1b0ad:   cmp    0x20(%r8),%r11
           │╭        │   0x00007f080ab1b0b1:   je     0x00007f080ab1b0cd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           ││        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   1.19%   ││        │   0x00007f080ab1b0b7:   nopw   0x0(%rax,%rax,1)
           ││        │   0x00007f080ab1b0c0:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           ││╭       │   0x00007f080ab1b0c7:   jne    0x00007f080ab1b145
   0.45%   │↘│       │↗  0x00007f080ab1b0cd:   mov    0x8(,%rax,8),%r10d
   0.00%   │ │       ││  0x00007f080ab1b0d5:   data16 data16 nopw 0x0(%rax,%rax,1)
           │ │       ││  0x00007f080ab1b0e0:   cmp    $0xc26c08,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
           │ │╭      ││  0x00007f080ab1b0e7:   jne    0x00007f080ab1b197           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.00%   │ ││      ││  0x00007f080ab1b0ed:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@7 (line 109)
   0.44%   │ ││      ││  0x00007f080ab1b0f2:   mov    0x10(%rsp),%rbp
   0.01%   │ ││      ││  0x00007f080ab1b0f7:   add    $0x18,%rsp
           │ ││      ││  0x00007f080ab1b0fb:   mov    0x348(%r15),%rcx
   0.01%   │ ││      ││  0x00007f080ab1b102:   test   %eax,(%rcx)                  ;   {poll_return}
   0.45%   │ ││      ││  0x00007f080ab1b104:   ret    
           ↘ ││      ││  0x00007f080ab1b105:   mov    0x28(%r8),%r10
  67.95%     ││      ││  0x00007f080ab1b109:   mov    (%r10),%r9d
   2.12%     ││      ││  0x00007f080ab1b10c:   mov    $0x0,%ecx
             ││╭     ││  0x00007f080ab1b111:   jmp    0x00007f080ab1b13a
             │││     ││  0x00007f080ab1b116:   data16 nopw 0x0(%rax,%rax,1)
   0.39%     │││ ↗   ││  0x00007f080ab1b120:   mov    %ecx,%ebx
             │││ │   ││  0x00007f080ab1b122:   shl    $0x3,%ebx
             │││ │   ││  0x00007f080ab1b125:   lea    0x8(%rbx),%ebx
             │││ │   ││  0x00007f080ab1b128:   movslq %ebx,%rbx
   0.41%     │││ │   ││  0x00007f080ab1b12b:   mov    (%r10,%rbx,1),%rbx
   0.01%     │││ │   ││  0x00007f080ab1b12f:   cmp    %rbx,%r11
             │││╭│   ││  0x00007f080ab1b132:   je     0x00007f080ab1b185
             │││││   ││  0x00007f080ab1b138:   inc    %ecx
             ││↘││   ││  0x00007f080ab1b13a:   cmp    %ecx,%r9d
             ││ │╰   ││  0x00007f080ab1b13d:   jg     0x00007f080ab1b120
             ││ │    ││  0x00007f080ab1b13f:   nop
             ││ │    ││  0x00007f080ab1b140:   jmp    0x00007f080ab1b1e6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             ││ │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
             ││ │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.00%     ↘│ │    ││  0x00007f080ab1b145:   mov    0x28(%r8),%r10
   7.08%      │ │    ││  0x00007f080ab1b149:   mov    (%r10),%r9d
   0.38%      │ │    ││  0x00007f080ab1b14c:   mov    $0x0,%ecx
              │ │ ╭  ││  0x00007f080ab1b151:   jmp    0x00007f080ab1b17a
              │ │ │  ││  0x00007f080ab1b156:   data16 nopw 0x0(%rax,%rax,1)
   0.86%      │ │ │ ↗││  0x00007f080ab1b160:   mov    %ecx,%ebx
              │ │ │ │││  0x00007f080ab1b162:   shl    $0x3,%ebx
   0.02%      │ │ │ │││  0x00007f080ab1b165:   lea    0x8(%rbx),%ebx
              │ │ │ │││  0x00007f080ab1b168:   movslq %ebx,%rbx
   0.84%      │ │ │ │││  0x00007f080ab1b16b:   mov    (%r10,%rbx,1),%rbx
   0.05%      │ │ │ │││  0x00007f080ab1b16f:   cmp    %rbx,%r11
              │ │ │╭│││  0x00007f080ab1b172:   je     0x00007f080ab1b18e
   0.02%      │ │ │││││  0x00007f080ab1b178:   inc    %ecx
              │ │ ↘││││  0x00007f080ab1b17a:   cmp    %ecx,%r9d
              │ │  │╰││  0x00007f080ab1b17d:   jg     0x00007f080ab1b160
              │ │  │ ││  0x00007f080ab1b17f:   nop
              │ │  │ ││  0x00007f080ab1b180:   jmp    0x00007f080ab1b1c5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │ │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
              │ │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.01%      │ ↘  │ ││  0x00007f080ab1b185:   mov    %r11,0x20(%r8)
              │    │ ╰│  0x00007f080ab1b189:   jmp    0x00007f080ab1b08d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
              │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.02%      │    ↘  │  0x00007f080ab1b18e:   mov    %r11,0x20(%r8)
              │       ╰  0x00007f080ab1b192:   jmp    0x00007f080ab1b0cd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
              │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
              ↘          0x00007f080ab1b197:   nopw   0x0(%rax,%rax,1)
                         0x00007f080ab1b1a0:   cmp    $0xc269e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
                         0x00007f080ab1b1a7:   jne    0x00007f080ab1b1fe           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
....................................................................................................
  97.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 734 
   1.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 5, compile id 755 
   0.72%               kernel  [unknown] 
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
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%            libjvm.so  fileStream::write 
   0.00%                       <unknown> 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.31%  <...other 309 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 734 
   1.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 5, compile id 755 
   1.10%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  _int_malloc 
   0.00%            libjvm.so  outputStream::print 
   0.00%       hsdis-amd64.so  putop 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  ptmalloc_init.part.0 
   0.06%  <...other 81 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.75%       jvmci, level 4
   1.10%               kernel
   0.05%            libjvm.so
   0.03%                     
   0.03%         libc-2.31.so
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.00%           ld-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%          interpreter
   0.00%          c1, level 3
   0.00%           libjava.so
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = false)

# Run progress: 50.00% complete, ETA 00:11:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.055 ±(99.9%) 0.337 ns/op
# Warmup Iteration   2: 6.966 ±(99.9%) 0.023 ns/op
# Warmup Iteration   3: 7.020 ±(99.9%) 0.037 ns/op
# Warmup Iteration   4: 7.026 ±(99.9%) 0.218 ns/op
# Warmup Iteration   5: 7.014 ±(99.9%) 0.236 ns/op
Iteration   1: 7.037 ±(99.9%) 0.246 ns/op
Iteration   2: 7.013 ±(99.9%) 0.230 ns/op
Iteration   3: 7.023 ±(99.9%) 0.543 ns/op
Iteration   4: 7.001 ±(99.9%) 0.250 ns/op
Iteration   5: 7.031 ±(99.9%) 0.246 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  7.021 ±(99.9%) 0.056 ns/op [Average]
  (min, avg, max) = (7.001, 7.021, 7.037), stdev = 0.015
  CI (99.9%): [6.965, 7.077] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:·asm":
PrintAssembly processed: 193992 total address lines.
Perf output processed (skipped 58.472 seconds):
 Column 1: cycles (200111 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 760 

              0x00007f67aab1ced8:   call   0x00007f67c0f034f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f67aab1cedd:   nop
              0x00007f67aab1cede:   mov    0x10(%rsp),%rdx
              0x00007f67aab1cee3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@10 (line 184)
              0x00007f67aab1cee7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f67aab1cef0:   jmp    0x00007f67aab1cf0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@13 (line 186)
          │   0x00007f67aab1cef5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 188)
   5.52%  │↗  0x00007f67aab1cf00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 188)
          ││  0x00007f67aab1cf07:   test   %eax,(%r11)                  ;   {poll}
   0.23%  ││  0x00007f67aab1cf0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@13 (line 186)
          ↘│  0x00007f67aab1cf0f:   mov    0x8(%rsp),%r10
   5.29%   │  0x00007f67aab1cf14:   mov    %r10,%rsi
   0.00%   │  0x00007f67aab1cf17:   call   0x00007f67a301ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
   9.40%   │  0x00007f67aab1cf1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@20 (line 186)
   0.00%   │  0x00007f67aab1cf1d:   mov    0x20(%rsp),%r10
   5.28%   │  0x00007f67aab1cf22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@26 (line 187)
   5.43%   │  0x00007f67aab1cf25:   mov    0x18(%rsp),%rsi
           │  0x00007f67aab1cf2a:   cmpb   $0x0,0x94(%rsi)
  18.52%   ╰  0x00007f67aab1cf31:   je     0x00007f67aab1cf00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 188)
              0x00007f67aab1cf33:   mov    %r10,0x20(%rsp)
              0x00007f67aab1cf38:   call   0x00007f67c0f034f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f67aab1cf3d:   nop
              0x00007f67aab1cf3e:   mov    0x10(%rsp),%rdx
              0x00007f67aab1cf43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@40 (line 189)
              0x00007f67aab1cf47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@46 (line 190)
              0x00007f67aab1cf4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  49.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 729 

             #           [sp+0x20]  (sp of caller)
             0x00007f67aab17c80:   mov    0x8(%rsi),%r10d
             0x00007f67aab17c84:   movabs $0x800000000,%r12
             0x00007f67aab17c8e:   add    %r12,%r10
             0x00007f67aab17c91:   xor    %r12,%r12
             0x00007f67aab17c94:   cmp    %r10,%rax
             0x00007f67aab17c97:   jne    0x00007f67a301e780           ;   {runtime_call ic_miss_stub}
             0x00007f67aab17c9d:   nop
             0x00007f67aab17c9e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.24%     0x00007f67aab17ca0:   mov    %eax,-0x14000(%rsp)
   6.11%     0x00007f67aab17ca7:   sub    $0x18,%rsp
   0.23%     0x00007f67aab17cab:   mov    %rbp,0x10(%rsp)
   2.39%     0x00007f67aab17cb0:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@1 (line 116)
   2.01%     0x00007f67aab17cb3:   nopw   0x0(%rax,%rax,1)
   0.87%     0x00007f67aab17cbc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
   0.24%     0x00007f67aab17cc0:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f67aab17d01
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.48%  ╭  0x00007f67aab17ccb:   jne    0x00007f67aab17ce9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   5.51%  │  0x00007f67aab17cd1:   mov    $0x1,%eax
          │  0x00007f67aab17cd6:   mov    0x10(%rsp),%rbp
          │  0x00007f67aab17cdb:   add    $0x18,%rsp
          │  0x00007f67aab17cdf:   mov    0x348(%r15),%rcx
   5.49%  │  0x00007f67aab17ce6:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007f67aab17ce8:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@7 (line 116)
          ↘  0x00007f67aab17ce9:   movl   $0xffffffdd,0x370(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
             0x00007f67aab17cf4:   mov    %r12,0x378(%r15)
             0x00007f67aab17cfb:   call   0x00007f67a302427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
....................................................................................................
  49.57%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 760 
  49.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 729 
   0.12%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
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
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  [unknown] 
   0.00%               kernel  [unknown] 
   0.42%  <...other 465 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 760 
  49.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 729 
   0.63%               kernel  [unknown] 
   0.01%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%                       <unknown> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  defaultStream::hold 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  outputStream::print 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  event_to_env 
   0.05%  <...other 84 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.24%       jvmci, level 4
   0.63%               kernel
   0.05%            libjvm.so
   0.04%         libc-2.31.so
   0.01%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%           ld-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%          interpreter
   0.00%      perf-118109.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = true)

# Run progress: 58.33% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 143.497 ±(99.9%) 330.559 ns/op
# Warmup Iteration   2: 139.694 ±(99.9%) 251.480 ns/op
# Warmup Iteration   3: 129.604 ±(99.9%) 148.306 ns/op
# Warmup Iteration   4: 128.431 ±(99.9%) 150.696 ns/op
# Warmup Iteration   5: 142.250 ±(99.9%) 316.271 ns/op
Iteration   1: 133.609 ±(99.9%) 155.878 ns/op
Iteration   2: 132.923 ±(99.9%) 247.159 ns/op
Iteration   3: 133.020 ±(99.9%) 247.152 ns/op
Iteration   4: 122.053 ±(99.9%) 21.091 ns/op
Iteration   5: 128.119 ±(99.9%) 144.284 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  129.945 ±(99.9%) 18.998 ns/op [Average]
  (min, avg, max) = (122.053, 129.945, 133.609), stdev = 4.934
  CI (99.9%): [110.947, 148.943] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:·asm":
PrintAssembly processed: 194659 total address lines.
Perf output processed (skipped 58.500 seconds):
 Column 1: cycles (200068 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 733 

                     0x00007fb4e2b1a940:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          ╭          0x00007fb4e2b1a947:   jne    0x00007fb4e2b1a9c5
   0.30%  │       ↗  0x00007fb4e2b1a94d:   mov    0x8(,%rax,8),%r10d
          │       │  0x00007fb4e2b1a955:   data16 data16 nopw 0x0(%rax,%rax,1)
          │       │  0x00007fb4e2b1a960:   cmp    $0xc26c08,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │╭      │  0x00007fb4e2b1a967:   jne    0x00007fb4e2b1aa17           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
          ││      │  0x00007fb4e2b1a96d:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@7 (line 116)
   0.32%  ││      │  0x00007fb4e2b1a972:   mov    0x10(%rsp),%rbp
          ││      │  0x00007fb4e2b1a977:   add    $0x18,%rsp
          ││      │  0x00007fb4e2b1a97b:   mov    0x348(%r15),%rcx
          ││      │  0x00007fb4e2b1a982:   test   %eax,(%rcx)                  ;   {poll_return}
   0.30%  ││      │  0x00007fb4e2b1a984:   ret    
          ││      │  0x00007fb4e2b1a985:   mov    0x28(%r8),%r10
  80.21%  ││      │  0x00007fb4e2b1a989:   mov    (%r10),%r9d
   1.62%  ││      │  0x00007fb4e2b1a98c:   mov    $0x0,%ecx
          ││╭     │  0x00007fb4e2b1a991:   jmp    0x00007fb4e2b1a9ba
          │││     │  0x00007fb4e2b1a996:   data16 nopw 0x0(%rax,%rax,1)
   0.31%  │││ ↗   │  0x00007fb4e2b1a9a0:   mov    %ecx,%ebx
          │││ │   │  0x00007fb4e2b1a9a2:   shl    $0x3,%ebx
          │││ │   │  0x00007fb4e2b1a9a5:   lea    0x8(%rbx),%ebx
          │││ │   │  0x00007fb4e2b1a9a8:   movslq %ebx,%rbx
   0.28%  │││ │   │  0x00007fb4e2b1a9ab:   mov    (%r10,%rbx,1),%rbx
          │││ │   │  0x00007fb4e2b1a9af:   cmp    %rbx,%r11
          │││╭│   │  0x00007fb4e2b1a9b2:   je     0x00007fb4e2b1aa05
          │││││   │  0x00007fb4e2b1a9b8:   inc    %ecx
          ││↘││   │  0x00007fb4e2b1a9ba:   cmp    %ecx,%r9d
          ││ │╰   │  0x00007fb4e2b1a9bd:   jg     0x00007fb4e2b1a9a0
          ││ │    │  0x00007fb4e2b1a9bf:   nop
          ││ │    │  0x00007fb4e2b1a9c0:   jmp    0x00007fb4e2b1aa66           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
          ↘│ │    │  0x00007fb4e2b1a9c5:   mov    0x28(%r8),%r10
   2.21%   │ │    │  0x00007fb4e2b1a9c9:   mov    (%r10),%r9d
   0.04%   │ │    │  0x00007fb4e2b1a9cc:   mov    $0x0,%ecx
           │ │ ╭  │  0x00007fb4e2b1a9d1:   jmp    0x00007fb4e2b1a9fa
           │ │ │  │  0x00007fb4e2b1a9d6:   data16 nopw 0x0(%rax,%rax,1)
   0.58%   │ │ │ ↗│  0x00007fb4e2b1a9e0:   mov    %ecx,%ebx
           │ │ │ ││  0x00007fb4e2b1a9e2:   shl    $0x3,%ebx
           │ │ │ ││  0x00007fb4e2b1a9e5:   lea    0x8(%rbx),%ebx
           │ │ │ ││  0x00007fb4e2b1a9e8:   movslq %ebx,%rbx
   0.59%   │ │ │ ││  0x00007fb4e2b1a9eb:   mov    (%r10,%rbx,1),%rbx
           │ │ │ ││  0x00007fb4e2b1a9ef:   cmp    %rbx,%r11
           │ │ │╭││  0x00007fb4e2b1a9f2:   je     0x00007fb4e2b1aa0e
   0.00%   │ │ ││││  0x00007fb4e2b1a9f8:   inc    %ecx
           │ │ ↘│││  0x00007fb4e2b1a9fa:   cmp    %ecx,%r9d
           │ │  │╰│  0x00007fb4e2b1a9fd:   jg     0x00007fb4e2b1a9e0
           │ │  │ │  0x00007fb4e2b1a9ff:   nop
           │ │  │ │  0x00007fb4e2b1aa00:   jmp    0x00007fb4e2b1aa45           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.00%   │ ↘  │ │  0x00007fb4e2b1aa05:   mov    %r11,0x20(%r8)
           │    │ │  0x00007fb4e2b1aa09:   jmp    0x00007fb4e2b1a90d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
           │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.00%   │    ↘ │  0x00007fb4e2b1aa0e:   mov    %r11,0x20(%r8)
           │      ╰  0x00007fb4e2b1aa12:   jmp    0x00007fb4e2b1a94d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
           ↘         0x00007fb4e2b1aa17:   nopw   0x0(%rax,%rax,1)
                     0x00007fb4e2b1aa20:   cmp    $0xc269e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
                     0x00007fb4e2b1aa27:   jne    0x00007fb4e2b1aa7e           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
....................................................................................................
  86.46%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 733 

              0x00007fb4e2b1a8a0:   mov    0x8(%rsi),%r10d
              0x00007fb4e2b1a8a4:   movabs $0x800000000,%r12
              0x00007fb4e2b1a8ae:   add    %r12,%r10
              0x00007fb4e2b1a8b1:   xor    %r12,%r12
              0x00007fb4e2b1a8b4:   cmp    %r10,%rax
              0x00007fb4e2b1a8b7:   jne    0x00007fb4db01e780           ;   {runtime_call ic_miss_stub}
              0x00007fb4e2b1a8bd:   nop
              0x00007fb4e2b1a8be:   xchg   %ax,%ax
            [Verified Entry Point]
              0x00007fb4e2b1a8c0:   mov    %eax,-0x14000(%rsp)
   0.28%      0x00007fb4e2b1a8c7:   sub    $0x18,%rsp
              0x00007fb4e2b1a8cb:   mov    %rbp,0x10(%rsp)
              0x00007fb4e2b1a8d0:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@0 (line 116)
   0.33%      0x00007fb4e2b1a8d3:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fb4e2b1aa8d
   0.00%      0x00007fb4e2b1a8db:   movabs $0x800000000,%r11
              0x00007fb4e2b1a8e5:   lea    (%r11,%r10,1),%r8
              0x00007fb4e2b1a8e9:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
   0.30%      0x00007fb4e2b1a8f3:   cmp    0x20(%r8),%r11
          ╭   0x00007fb4e2b1a8f7:   je     0x00007fb4e2b1a90d
  10.08%  │   0x00007fb4e2b1a8fd:   data16 xchg %ax,%ax
   0.00%  │   0x00007fb4e2b1a900:   cmp    $0xc265e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │   0x00007fb4e2b1a907:   jne    0x00007fb4e2b1a985           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.31%  ↘   0x00007fb4e2b1a90d:   mov    0x8(,%rax,8),%r10d
   0.00%      0x00007fb4e2b1a915:   movabs $0x800000000,%r11
              0x00007fb4e2b1a91f:   lea    (%r11,%r10,1),%r8
              0x00007fb4e2b1a923:   movabs $0x800c267e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.29%      0x00007fb4e2b1a92d:   cmp    0x20(%r8),%r11
           ╭  0x00007fb4e2b1a931:   je     0x00007fb4e2b1a94d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.01%   │  0x00007fb4e2b1a937:   nopw   0x0(%rax,%rax,1)
           │  0x00007fb4e2b1a940:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           │  0x00007fb4e2b1a947:   jne    0x00007fb4e2b1a9c5
   0.30%   ↘  0x00007fb4e2b1a94d:   mov    0x8(,%rax,8),%r10d
              0x00007fb4e2b1a955:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fb4e2b1a960:   cmp    $0xc26c08,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
              0x00007fb4e2b1a967:   jne    0x00007fb4e2b1aa17           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
              0x00007fb4e2b1a96d:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@7 (line 116)
   0.32%      0x00007fb4e2b1a972:   mov    0x10(%rsp),%rbp
              0x00007fb4e2b1a977:   add    $0x18,%rsp
              0x00007fb4e2b1a97b:   mov    0x348(%r15),%rcx
....................................................................................................
  11.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  86.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 733 
  11.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 733 
   0.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 760 
   0.11%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.39%  <...other 450 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 733 
   0.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 760 
   0.60%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%            libjvm.so  os::current_thread_id 
   0.00%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  fileStream::write 
   0.00%          interpreter  method entry point (kind = zerolocals)  
   0.04%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.28%       jvmci, level 4
   0.60%               kernel
   0.04%            libjvm.so
   0.03%                     
   0.02%         libc-2.31.so
   0.01%       hsdis-amd64.so
   0.00%           ld-2.31.so
   0.00%          interpreter
   0.00%   libpthread-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%      perf-118177.map
   0.00%          c1, level 1
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 5 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5
# Parameters: (typePollution = false)

# Run progress: 66.67% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.105 ±(99.9%) 0.170 ns/op
# Warmup Iteration   2: 7.133 ±(99.9%) 0.030 ns/op
# Warmup Iteration   3: 6.999 ±(99.9%) 0.070 ns/op
# Warmup Iteration   4: 6.985 ±(99.9%) 0.055 ns/op
# Warmup Iteration   5: 6.986 ±(99.9%) 0.082 ns/op
Iteration   1: 7.097 ±(99.9%) 0.106 ns/op
Iteration   2: 7.051 ±(99.9%) 0.144 ns/op
Iteration   3: 6.994 ±(99.9%) 0.114 ns/op
Iteration   4: 6.995 ±(99.9%) 0.098 ns/op
Iteration   5: 6.992 ±(99.9%) 0.057 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5":
  7.026 ±(99.9%) 0.181 ns/op [Average]
  (min, avg, max) = (6.992, 7.026, 7.097), stdev = 0.047
  CI (99.9%): [6.845, 7.207] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5:·asm":
PrintAssembly processed: 202709 total address lines.
Perf output processed (skipped 58.744 seconds):
 Column 1: cycles (249620 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 733 

             #           [sp+0x20]  (sp of caller)
             0x00007f1dd6b1bb00:   mov    0x8(%rsi),%r10d
             0x00007f1dd6b1bb04:   movabs $0x800000000,%r12
             0x00007f1dd6b1bb0e:   add    %r12,%r10
             0x00007f1dd6b1bb11:   xor    %r12,%r12
             0x00007f1dd6b1bb14:   cmp    %r10,%rax
             0x00007f1dd6b1bb17:   jne    0x00007f1dcf01e780           ;   {runtime_call ic_miss_stub}
             0x00007f1dd6b1bb1d:   nop
             0x00007f1dd6b1bb1e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.11%     0x00007f1dd6b1bb20:   mov    %eax,-0x14000(%rsp)
   6.32%     0x00007f1dd6b1bb27:   sub    $0x18,%rsp
   0.11%     0x00007f1dd6b1bb2b:   mov    %rbp,0x10(%rsp)
   2.40%     0x00007f1dd6b1bb30:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@1 (line 123)
   2.11%     0x00007f1dd6b1bb33:   nopw   0x0(%rax,%rax,1)
   0.92%     0x00007f1dd6b1bb3c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@0 (line 123)
   0.13%     0x00007f1dd6b1bb40:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f1dd6b1bb81
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  26.65%  ╭  0x00007f1dd6b1bb4b:   jne    0x00007f1dd6b1bb69           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   5.53%  │  0x00007f1dd6b1bb51:   mov    $0x1,%eax
          │  0x00007f1dd6b1bb56:   mov    0x10(%rsp),%rbp
          │  0x00007f1dd6b1bb5b:   add    $0x18,%rsp
          │  0x00007f1dd6b1bb5f:   mov    0x348(%r15),%rcx
   5.49%  │  0x00007f1dd6b1bb66:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007f1dd6b1bb68:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@7 (line 123)
          ↘  0x00007f1dd6b1bb69:   movl   $0xffffffdd,0x370(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
             0x00007f1dd6b1bb74:   mov    %r12,0x378(%r15)
             0x00007f1dd6b1bb7b:   call   0x00007f1dcf02427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@0 (line 123)
....................................................................................................
  49.76%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 5, compile id 757 

              0x00007f1dd6b1ee58:   call   0x00007f1ded8904f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1dd6b1ee5d:   nop
              0x00007f1dd6b1ee5e:   mov    0x10(%rsp),%rdx
              0x00007f1dd6b1ee63:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@10 (line 184)
              0x00007f1dd6b1ee67:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f1dd6b1ee70:   jmp    0x00007f1dd6b1ee8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@13 (line 186)
          │   0x00007f1dd6b1ee75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@33 (line 188)
   5.54%  │↗  0x00007f1dd6b1ee80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@33 (line 188)
          ││  0x00007f1dd6b1ee87:   test   %eax,(%r11)                  ;   {poll}
   0.11%  ││  0x00007f1dd6b1ee8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@13 (line 186)
          ↘│  0x00007f1dd6b1ee8f:   mov    0x8(%rsp),%r10
   5.42%   │  0x00007f1dd6b1ee94:   mov    %r10,%rsi
           │  0x00007f1dd6b1ee97:   call   0x00007f1dcf01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
   9.96%   │  0x00007f1dd6b1ee9c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@20 (line 186)
   0.00%   │  0x00007f1dd6b1ee9d:   mov    0x20(%rsp),%r10
   4.80%   │  0x00007f1dd6b1eea2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@26 (line 187)
   5.42%   │  0x00007f1dd6b1eea5:   mov    0x18(%rsp),%rsi
           │  0x00007f1dd6b1eeaa:   cmpb   $0x0,0x94(%rsi)
  18.07%   ╰  0x00007f1dd6b1eeb1:   je     0x00007f1dd6b1ee80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@33 (line 188)
              0x00007f1dd6b1eeb3:   mov    %r10,0x20(%rsp)
              0x00007f1dd6b1eeb8:   call   0x00007f1ded8904f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1dd6b1eebd:   nop
              0x00007f1dd6b1eebe:   mov    0x10(%rsp),%rdx
              0x00007f1dd6b1eec3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@40 (line 189)
              0x00007f1dd6b1eec7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@46 (line 190)
              0x00007f1dd6b1eecb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  49.32%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 733 
  49.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 5, compile id 757 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_AverageTime, version 4, compile id 786 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.61%  <...other 780 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 733 
  49.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 5, compile id 757 
   0.67%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_AverageTime, version 4, compile id 786 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  fileStream::write 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.12%  <...other 229 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.09%       jvmci, level 4
   0.67%               kernel
   0.08%            libjvm.so
   0.06%  libjvmcicompiler.so
   0.04%         libc-2.31.so
   0.04%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%           ld-2.31.so
   0.00%          c1, level 3
   0.00%          interpreter
   0.00%      perf-118234.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 5 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5
# Parameters: (typePollution = true)

# Run progress: 75.00% complete, ETA 00:05:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 152.525 ±(99.9%) 140.400 ns/op
# Warmup Iteration   2: 249.700 ±(99.9%) 713.972 ns/op
# Warmup Iteration   3: 177.987 ±(99.9%) 304.943 ns/op
# Warmup Iteration   4: 165.147 ±(99.9%) 199.976 ns/op
# Warmup Iteration   5: 171.589 ±(99.9%) 216.332 ns/op
Iteration   1: 156.510 ±(99.9%) 161.156 ns/op
Iteration   2: 160.498 ±(99.9%) 169.380 ns/op
Iteration   3: 155.897 ±(99.9%) 133.119 ns/op
Iteration   4: 157.361 ±(99.9%) 157.654 ns/op
Iteration   5: 209.375 ±(99.9%) 477.627 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5":
  167.928 ±(99.9%) 89.478 ns/op [Average]
  (min, avg, max) = (155.897, 167.928, 209.375), stdev = 23.237
  CI (99.9%): [78.450, 257.406] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5:·asm":
PrintAssembly processed: 206453 total address lines.
Perf output processed (skipped 58.957 seconds):
 Column 1: cycles (249987 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 734 

                   0x00007f7372b196e7:   jne    0x00007f7372b19705           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
                   0x00007f7372b196ed:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@7 (line 123)
                   0x00007f7372b196f2:   mov    0x10(%rsp),%rbp
                   0x00007f7372b196f7:   add    $0x18,%rsp
                   0x00007f7372b196fb:   mov    0x348(%r15),%rcx
                   0x00007f7372b19702:   test   %eax,(%rcx)                  ;   {poll_return}
                   0x00007f7372b19704:   ret    
   0.26%           0x00007f7372b19705:   cmp    $0xc26c08,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
                   0x00007f7372b1970c:   jne    0x00007f7372b197f0           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   0.00%           0x00007f7372b19712:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@7 (line 123)
                   0x00007f7372b19717:   mov    0x10(%rsp),%rbp
   0.00%           0x00007f7372b1971c:   add    $0x18,%rsp
   0.26%           0x00007f7372b19720:   mov    0x348(%r15),%rcx
   0.00%           0x00007f7372b19727:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%           0x00007f7372b19729:   ret    
                   0x00007f7372b1972a:   mov    0x28(%r8),%r10
  12.12%           0x00007f7372b1972e:   mov    (%r10),%r9d
   0.16%           0x00007f7372b19731:   mov    $0x0,%ecx
          ╭        0x00007f7372b19736:   jmp    0x00007f7372b1975a
          │        0x00007f7372b1973b:   nopl   0x0(%rax,%rax,1)
   0.49%  │ ↗      0x00007f7372b19740:   mov    %ecx,%ebx
          │ │      0x00007f7372b19742:   shl    $0x3,%ebx
   0.01%  │ │      0x00007f7372b19745:   lea    0x8(%rbx),%ebx
   0.00%  │ │      0x00007f7372b19748:   movslq %ebx,%rbx
   0.51%  │ │      0x00007f7372b1974b:   mov    (%r10,%rbx,1),%rbx
          │ │      0x00007f7372b1974f:   cmp    %rbx,%r11
          │╭│      0x00007f7372b19752:   je     0x00007f7372b197a5
   0.01%  │││      0x00007f7372b19758:   inc    %ecx
          ↘││      0x00007f7372b1975a:   cmp    %ecx,%r9d
           │╰      0x00007f7372b1975d:   jg     0x00007f7372b19740
           │       0x00007f7372b1975f:   nop
           │ ╭     0x00007f7372b19760:   jmp    0x00007f7372b197b7           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
           │ │     0x00007f7372b19765:   mov    0x28(%r8),%r10
  72.47%   │ │     0x00007f7372b19769:   mov    (%r10),%r9d
   1.14%   │ │     0x00007f7372b1976c:   mov    $0x0,%ecx
   0.04%   │ │╭    0x00007f7372b19771:   jmp    0x00007f7372b1979a
           │ ││    0x00007f7372b19776:   data16 nopw 0x0(%rax,%rax,1)
   0.25%   │ ││ ↗  0x00007f7372b19780:   mov    %ecx,%ebx
           │ ││ │  0x00007f7372b19782:   shl    $0x3,%ebx
           │ ││ │  0x00007f7372b19785:   lea    0x8(%rbx),%ebx
           │ ││ │  0x00007f7372b19788:   movslq %ebx,%rbx
   0.25%   │ ││ │  0x00007f7372b1978b:   mov    (%r10,%rbx,1),%rbx
   0.00%   │ ││ │  0x00007f7372b1978f:   cmp    %rbx,%r11
           │ ││╭│  0x00007f7372b19792:   je     0x00007f7372b197ae
           │ ││││  0x00007f7372b19798:   inc    %ecx
           │ │↘││  0x00007f7372b1979a:   cmp    %ecx,%r9d
           │ │ │╰  0x00007f7372b1979d:   jg     0x00007f7372b19780
           │ │ │   0x00007f7372b1979f:   nop
           │ │ │   0x00007f7372b197a0:   jmp    0x00007f7372b197d8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
           │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   0.01%   ↘ │ │   0x00007f7372b197a5:   mov    %r11,0x20(%r8)
   0.00%     │ │   0x00007f7372b197a9:   jmp    0x00007f7372b196cd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   0.00%     │ ↘   0x00007f7372b197ae:   mov    %r11,0x20(%r8)
             │     0x00007f7372b197b2:   jmp    0x00007f7372b1968d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
             ↘     0x00007f7372b197b7:   mov    $0x0,%r11
                   0x00007f7372b197be:   mov    $0xffffffdd,%r10d
                   0x00007f7372b197c4:   mov    %r10d,0x370(%r15)            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
....................................................................................................
  88.00%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 734 

              #           [sp+0x20]  (sp of caller)
              0x00007f7372b19620:   mov    0x8(%rsi),%r10d
              0x00007f7372b19624:   movabs $0x800000000,%r12
              0x00007f7372b1962e:   add    %r12,%r10
              0x00007f7372b19631:   xor    %r12,%r12
              0x00007f7372b19634:   cmp    %r10,%rax
              0x00007f7372b19637:   jne    0x00007f736b01e780           ;   {runtime_call ic_miss_stub}
              0x00007f7372b1963d:   nop
              0x00007f7372b1963e:   xchg   %ax,%ax
            [Verified Entry Point]
   0.25%      0x00007f7372b19640:   mov    %eax,-0x14000(%rsp)
   0.00%      0x00007f7372b19647:   sub    $0x18,%rsp
   0.25%      0x00007f7372b1964b:   mov    %rbp,0x10(%rsp)
   0.00%      0x00007f7372b19650:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@0 (line 123)
              0x00007f7372b19653:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f7372b197ff
   0.00%      0x00007f7372b1965b:   movabs $0x800000000,%r11
   0.27%      0x00007f7372b19665:   lea    (%r11,%r10,1),%r8
   0.00%      0x00007f7372b19669:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
              0x00007f7372b19673:   cmp    0x20(%r8),%r11
          ╭   0x00007f7372b19677:   je     0x00007f7372b1968d
   7.38%  │   0x00007f7372b1967d:   data16 xchg %ax,%ax
   0.06%  │   0x00007f7372b19680:   cmp    $0xc265e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
          │   0x00007f7372b19687:   jne    0x00007f7372b19765           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   0.33%  ↘   0x00007f7372b1968d:   mov    0x8(,%rax,8),%r10d
   0.00%      0x00007f7372b19695:   movabs $0x800000000,%r11
              0x00007f7372b1969f:   lea    (%r11,%r10,1),%r8
              0x00007f7372b196a3:   movabs $0x800c267e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
   0.27%      0x00007f7372b196ad:   cmp    0x20(%r8),%r11
           ╭  0x00007f7372b196b1:   je     0x00007f7372b196cd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   0.94%   │  0x00007f7372b196b7:   nopw   0x0(%rax,%rax,1)
           │  0x00007f7372b196c0:   cmp    $0xc267e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
           │  0x00007f7372b196c7:   jne    0x00007f7372b1972a
   0.49%   ↘  0x00007f7372b196cd:   mov    0x8(,%rax,8),%r10d
   0.00%      0x00007f7372b196d5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f7372b196e0:   cmp    $0xc269e0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
              0x00007f7372b196e7:   jne    0x00007f7372b19705           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
              0x00007f7372b196ed:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@7 (line 123)
              0x00007f7372b196f2:   mov    0x10(%rsp),%rbp
              0x00007f7372b196f7:   add    $0x18,%rsp
              0x00007f7372b196fb:   mov    0x348(%r15),%rcx
              0x00007f7372b19702:   test   %eax,(%rcx)                  ;   {poll_return}
....................................................................................................
  10.27%  <total for region 2>

....[Hottest Regions]...............................................................................
  88.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 734 
  10.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 734 
   0.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 5, compile id 760 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
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
   0.61%  <...other 792 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 734 
   0.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 5, compile id 760 
   0.70%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%            libjvm.so  defaultStream::write 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  outputStream::update_position 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%  libjvmcicompiler.so  GreyObjectsWalker_walkGreyObjects_eb32754f646620dd6416e9c72990a79fa796f775 
   0.12%  <...other 217 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.06%       jvmci, level 4
   0.70%               kernel
   0.07%            libjvm.so
   0.05%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.00%          interpreter
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 6 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6
# Parameters: (typePollution = false)

# Run progress: 83.33% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.129 ±(99.9%) 0.234 ns/op
# Warmup Iteration   2: 7.036 ±(99.9%) 0.122 ns/op
# Warmup Iteration   3: 7.154 ±(99.9%) 0.062 ns/op
# Warmup Iteration   4: 7.019 ±(99.9%) 0.204 ns/op
# Warmup Iteration   5: 7.106 ±(99.9%) 0.144 ns/op
Iteration   1: 7.089 ±(99.9%) 0.232 ns/op
Iteration   2: 7.121 ±(99.9%) 0.115 ns/op
Iteration   3: 7.061 ±(99.9%) 0.103 ns/op
Iteration   4: 7.026 ±(99.9%) 0.052 ns/op
Iteration   5: 6.993 ±(99.9%) 0.040 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6":
  7.058 ±(99.9%) 0.194 ns/op [Average]
  (min, avg, max) = (6.993, 7.058, 7.121), stdev = 0.050
  CI (99.9%): [6.864, 7.253] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6:·asm":
PrintAssembly processed: 210700 total address lines.
Perf output processed (skipped 58.712 seconds):
 Column 1: cycles (297755 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 740 

             #           [sp+0x20]  (sp of caller)
             0x00007fb096b19580:   mov    0x8(%rsi),%r10d
             0x00007fb096b19584:   movabs $0x800000000,%r12
             0x00007fb096b1958e:   add    %r12,%r10
             0x00007fb096b19591:   xor    %r12,%r12
             0x00007fb096b19594:   cmp    %r10,%rax
             0x00007fb096b19597:   jne    0x00007fb08f01e780           ;   {runtime_call ic_miss_stub}
             0x00007fb096b1959d:   nop
             0x00007fb096b1959e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.25%     0x00007fb096b195a0:   mov    %eax,-0x14000(%rsp)
   6.16%     0x00007fb096b195a7:   sub    $0x18,%rsp
   0.11%     0x00007fb096b195ab:   mov    %rbp,0x10(%rsp)
   2.49%     0x00007fb096b195b0:   mov    0x10(%rsi),%eax              ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@1 (line 130)
   1.98%     0x00007fb096b195b3:   nopw   0x0(%rax,%rax,1)
   0.96%     0x00007fb096b195bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@0 (line 130)
   0.11%     0x00007fb096b195c0:   cmpl   $0xc269e0,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007fb096b19601
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
  27.67%  ╭  0x00007fb096b195cb:   jne    0x00007fb096b195e9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   5.48%  │  0x00007fb096b195d1:   mov    $0x1,%eax
          │  0x00007fb096b195d6:   mov    0x10(%rsp),%rbp
   0.00%  │  0x00007fb096b195db:   add    $0x18,%rsp
   0.00%  │  0x00007fb096b195df:   mov    0x348(%r15),%rcx
   5.48%  │  0x00007fb096b195e6:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%  │  0x00007fb096b195e8:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@7 (line 130)
          ↘  0x00007fb096b195e9:   movl   $0xffffffdd,0x370(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 207)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@1 (line 136)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
             0x00007fb096b195f4:   mov    %r12,0x378(%r15)
             0x00007fb096b195fb:   call   0x00007fb08f02427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@0 (line 130)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  50.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 6, compile id 776 

              0x00007fb096b1f3d8:   call   0x00007fb0aec394f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb096b1f3dd:   nop
              0x00007fb096b1f3de:   mov    0x10(%rsp),%rdx
              0x00007fb096b1f3e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@10 (line 184)
              0x00007fb096b1f3e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fb096b1f3f0:   jmp    0x00007fb096b1f40f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@13 (line 186)
          │   0x00007fb096b1f3f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@33 (line 188)
   5.32%  │↗  0x00007fb096b1f400:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@33 (line 188)
   0.05%  ││  0x00007fb096b1f407:   test   %eax,(%r11)                  ;   {poll}
   0.11%  ││  0x00007fb096b1f40a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@13 (line 186)
   0.14%  ↘│  0x00007fb096b1f40f:   mov    0x8(%rsp),%r10
   5.21%   │  0x00007fb096b1f414:   mov    %r10,%rsi
   0.03%   │  0x00007fb096b1f417:   call   0x00007fb08f01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual is_duplicated_6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
   9.69%   │  0x00007fb096b1f41c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@20 (line 186)
           │  0x00007fb096b1f41d:   mov    0x20(%rsp),%r10
   4.60%   │  0x00007fb096b1f422:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@26 (line 187)
   5.31%   │  0x00007fb096b1f425:   mov    0x18(%rsp),%rsi
           │  0x00007fb096b1f42a:   cmpb   $0x0,0x94(%rsi)
  17.86%   ╰  0x00007fb096b1f431:   je     0x00007fb096b1f400           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@33 (line 188)
              0x00007fb096b1f433:   mov    %r10,0x20(%rsp)
              0x00007fb096b1f438:   call   0x00007fb0aec394f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb096b1f43d:   nop
              0x00007fb096b1f43e:   mov    0x10(%rsp),%rdx
              0x00007fb096b1f443:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@40 (line 189)
              0x00007fb096b1f447:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@46 (line 190)
              0x00007fb096b1f44b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  48.32%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 740 
  48.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 6, compile id 776 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_AverageTime, version 5, compile id 806 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%               kernel  [unknown] 
   0.62%  <...other 872 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 740 
  48.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 6, compile id 776 
   0.72%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_AverageTime, version 5, compile id 806 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  defaultStream::hold 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%            libjvm.so  outputStream::print 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.11%  <...other 236 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.05%       jvmci, level 4
   0.72%               kernel
   0.07%            libjvm.so
   0.05%  libjvmcicompiler.so
   0.04%         libc-2.31.so
   0.04%                     
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.00%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 6 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6
# Parameters: (typePollution = true)

# Run progress: 91.67% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 250.812 ±(99.9%) 309.028 ns/op
# Warmup Iteration   2: 245.637 ±(99.9%) 297.560 ns/op
# Warmup Iteration   3: 240.448 ±(99.9%) 280.212 ns/op
# Warmup Iteration   4: 243.588 ±(99.9%) 292.096 ns/op
# Warmup Iteration   5: 237.193 ±(99.9%) 275.366 ns/op
Iteration   1: 235.784 ±(99.9%) 262.751 ns/op
Iteration   2: 235.795 ±(99.9%) 261.512 ns/op
Iteration   3: 236.707 ±(99.9%) 264.495 ns/op
Iteration   4: 244.981 ±(99.9%) 298.277 ns/op
Iteration   5: 248.343 ±(99.9%) 294.331 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6":
  240.322 ±(99.9%) 22.797 ns/op [Average]
  (min, avg, max) = (235.784, 240.322, 248.343), stdev = 5.920
  CI (99.9%): [217.525, 263.119] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6:·asm":
PrintAssembly processed: 207553 total address lines.
Perf output processed (skipped 58.856 seconds):
 Column 1: cycles (296659 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 4, compile id 743 

                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
                   0x00007fbcd2b1d512:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@7 (line 130)
                   0x00007fbcd2b1d517:   mov    0x10(%rsp),%rbp
                   0x00007fbcd2b1d51c:   add    $0x18,%rsp
                   0x00007fbcd2b1d520:   mov    0x348(%r15),%rcx
                   0x00007fbcd2b1d527:   test   %eax,(%rcx)                  ;   {poll_return}
                   0x00007fbcd2b1d529:   ret    
                   0x00007fbcd2b1d52a:   mov    0x28(%r8),%r10
  27.07%           0x00007fbcd2b1d52e:   mov    (%r10),%r9d
   0.37%           0x00007fbcd2b1d531:   mov    $0x0,%ecx
          ╭        0x00007fbcd2b1d536:   jmp    0x00007fbcd2b1d55a
          │        0x00007fbcd2b1d53b:   nopl   0x0(%rax,%rax,1)
   0.36%  │ ↗      0x00007fbcd2b1d540:   mov    %ecx,%ebx
          │ │      0x00007fbcd2b1d542:   shl    $0x3,%ebx
   0.02%  │ │      0x00007fbcd2b1d545:   lea    0x8(%rbx),%ebx
          │ │      0x00007fbcd2b1d548:   movslq %ebx,%rbx
   0.35%  │ │      0x00007fbcd2b1d54b:   mov    (%r10,%rbx,1),%rbx
          │ │      0x00007fbcd2b1d54f:   cmp    %rbx,%r11
          │╭│      0x00007fbcd2b1d552:   je     0x00007fbcd2b1d5a5
   0.02%  │││      0x00007fbcd2b1d558:   inc    %ecx
          ↘││      0x00007fbcd2b1d55a:   cmp    %ecx,%r9d
           │╰      0x00007fbcd2b1d55d:   jg     0x00007fbcd2b1d540
           │       0x00007fbcd2b1d55f:   nop
           │ ╭     0x00007fbcd2b1d560:   jmp    0x00007fbcd2b1d5b7           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   0.00%   │ │     0x00007fbcd2b1d565:   mov    0x28(%r8),%r10
  59.55%   │ │     0x00007fbcd2b1d569:   mov    (%r10),%r9d
   0.72%   │ │     0x00007fbcd2b1d56c:   mov    $0x0,%ecx
           │ │╭    0x00007fbcd2b1d571:   jmp    0x00007fbcd2b1d59a
           │ ││    0x00007fbcd2b1d576:   data16 nopw 0x0(%rax,%rax,1)
   0.18%   │ ││ ↗  0x00007fbcd2b1d580:   mov    %ecx,%ebx
           │ ││ │  0x00007fbcd2b1d582:   shl    $0x3,%ebx
           │ ││ │  0x00007fbcd2b1d585:   lea    0x8(%rbx),%ebx
           │ ││ │  0x00007fbcd2b1d588:   movslq %ebx,%rbx
   0.18%   │ ││ │  0x00007fbcd2b1d58b:   mov    (%r10,%rbx,1),%rbx
           │ ││ │  0x00007fbcd2b1d58f:   cmp    %rbx,%r11
           │ ││╭│  0x00007fbcd2b1d592:   je     0x00007fbcd2b1d5ae
           │ ││││  0x00007fbcd2b1d598:   inc    %ecx
           │ │↘││  0x00007fbcd2b1d59a:   cmp    %ecx,%r9d
           │ │ │╰  0x00007fbcd2b1d59d:   jg     0x00007fbcd2b1d580
           │ │ │   0x00007fbcd2b1d59f:   nop
           │ │ │   0x00007fbcd2b1d5a0:   jmp    0x00007fbcd2b1d5d8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
           │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   0.02%   ↘ │ │   0x00007fbcd2b1d5a5:   mov    %r11,0x20(%r8)
   0.00%     │ │   0x00007fbcd2b1d5a9:   jmp    0x00007fbcd2b1d4cd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
             │ ↘   0x00007fbcd2b1d5ae:   mov    %r11,0x20(%r8)
             │     0x00007fbcd2b1d5b2:   jmp    0x00007fbcd2b1d48d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
             ↘     0x00007fbcd2b1d5b7:   mov    $0x0,%r11
                   0x00007fbcd2b1d5be:   mov    $0xffffffdd,%r10d
                   0x00007fbcd2b1d5c4:   mov    %r10d,0x370(%r15)            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
....................................................................................................
  88.85%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 4, compile id 743 
   9.96%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 4, compile id 743 
   0.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 5, compile id 766 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
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
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.40%  <...other 594 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 4, compile id 743 
   0.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 5, compile id 766 
   0.50%               kernel  [unknown] 
   0.01%         libc-2.31.so  [unknown] 
   0.01%                       <unknown> 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.00%            libjvm.so  fileStream::write 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%            libjvm.so  defaultStream::write 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  event_to_env 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.05%  <...other 120 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.38%       jvmci, level 4
   0.50%               kernel
   0.04%            libjvm.so
   0.03%         libc-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%                     
   0.01%       hsdis-amd64.so
   0.00%   libpthread-2.31.so
   0.00%          interpreter
   0.00%           ld-2.31.so
   0.00%          c1, level 1
   0.00%          c1, level 3
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:26

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

Benchmark                                           (typePollution)  Mode  Cnt    Score    Error  Units
TypeCheckScalabilityBenchmark.is_duplicated_1                 false  avgt    5    6.962 ±  0.002  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_1                  true  avgt    5   14.578 ±  0.079  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                 false  avgt    5    6.964 ±  0.005  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                  true  avgt    5   42.134 ±  6.655  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                 false  avgt    5    6.974 ±  0.022  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                  true  avgt    5   93.217 ± 54.500  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                 false  avgt    5    7.021 ±  0.056  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                  true  avgt    5  129.945 ± 18.998  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_5                 false  avgt    5    7.026 ±  0.181  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_5:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_5                  true  avgt    5  167.928 ± 89.478  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_5:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_6                 false  avgt    5    7.058 ±  0.194  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_6:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_6                  true  avgt    5  240.322 ± 22.797  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_6:·asm             true  avgt           NaN             ---
