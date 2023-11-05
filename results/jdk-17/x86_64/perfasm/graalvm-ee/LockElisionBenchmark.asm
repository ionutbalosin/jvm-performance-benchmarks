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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.360 ns/op
# Warmup Iteration   2: 6.590 ns/op
# Warmup Iteration   3: 6.582 ns/op
# Warmup Iteration   4: 6.580 ns/op
# Warmup Iteration   5: 6.587 ns/op
Iteration   1: 6.567 ns/op
Iteration   2: 6.584 ns/op
Iteration   3: 6.600 ns/op
Iteration   4: 6.566 ns/op
Iteration   5: 6.580 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  6.580 ±(99.9%) 0.053 ns/op [Average]
  (min, avg, max) = (6.566, 6.580, 6.600), stdev = 0.014
  CI (99.9%): [6.527, 6.632] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:·asm":
PrintAssembly processed: 191490 total address lines.
Perf output processed (skipped 58.728 seconds):
 Column 1: cycles (50349 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 730 

            #           [sp+0x10]  (sp of caller)
            0x00007fe726b1b280:   mov    0x8(%rsi),%r10d
            0x00007fe726b1b284:   movabs $0x800000000,%r12
            0x00007fe726b1b28e:   add    %r12,%r10
            0x00007fe726b1b291:   xor    %r12,%r12
            0x00007fe726b1b294:   cmp    %r10,%rax
            0x00007fe726b1b297:   jne    0x00007fe71f01e780           ;   {runtime_call ic_miss_stub}
            0x00007fe726b1b29d:   nop
            0x00007fe726b1b29e:   xchg   %ax,%ax
          [Verified Entry Point]
   4.65%    0x00007fe726b1b2a0:   nopl   0x0(%rax,%rax,1)
   1.18%    0x00007fe726b1b2a5:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@1 (line 203)
            0x00007fe726b1b2a8:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 205)
   4.58%    0x00007fe726b1b2ac:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@5 (line 203)
            0x00007fe726b1b2ae:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@12 (line 205)
   1.25%    0x00007fe726b1b2b1:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@19 (line 206)
   4.48%    0x00007fe726b1b2b4:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@26 (line 207)
  18.43%    0x00007fe726b1b2b7:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@33 (line 208)
            0x00007fe726b1b2ba:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@40 (line 209)
   1.79%    0x00007fe726b1b2bd:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@47 (line 210)
            0x00007fe726b1b2c0:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@54 (line 211)
   8.93%    0x00007fe726b1b2c3:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 212)
            0x00007fe726b1b2c6:   mov    0x348(%r15),%rcx
   1.24%    0x00007fe726b1b2cd:   test   %eax,(%rcx)                  ;   {poll_return}
   4.50%    0x00007fe726b1b2cf:   ret    
          [Exception Handler]
            0x00007fe726b1b2d0:   call   0x00007fe71f169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fe726b1b2d5:   nop
          [Deopt Handler Code]
            0x00007fe726b1b2d6:   call   0x00007fe71f024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fe726b1b2db:   nop
          [Stub Code]
            0x00007fe726b1b2dc:   hlt    
            0x00007fe726b1b2dd:   hlt    
            0x00007fe726b1b2de:   hlt    
....................................................................................................
  51.03%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 752 

              0x00007fe726b1e758:   call   0x00007fe7409844f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe726b1e75d:   nop
              0x00007fe726b1e75e:   mov    0x10(%rsp),%rdx
              0x00007fe726b1e763:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@10 (line 230)
              0x00007fe726b1e767:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fe726b1e770:   jmp    0x00007fe726b1e78f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 232)
          │   0x00007fe726b1e775:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
   5.88%  │↗  0x00007fe726b1e780:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
          ││  0x00007fe726b1e787:   test   %eax,(%r11)                  ;   {poll}
   4.86%  ││  0x00007fe726b1e78a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fe726b1e78f:   mov    0x8(%rsp),%r10
   1.17%   │  0x00007fe726b1e794:   mov    %r10,%rsi
           │  0x00007fe726b1e797:   call   0x00007fe71f01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
           │  0x00007fe726b1e79c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 232)
           │  0x00007fe726b1e79d:   mov    0x20(%rsp),%r10
   1.42%   │  0x00007fe726b1e7a2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 233)
   4.44%   │  0x00007fe726b1e7a5:   mov    0x18(%rsp),%rsi
           │  0x00007fe726b1e7aa:   cmpb   $0x0,0x94(%rsi)
  30.02%   ╰  0x00007fe726b1e7b1:   je     0x00007fe726b1e780           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
              0x00007fe726b1e7b3:   mov    %r10,0x20(%rsp)
              0x00007fe726b1e7b8:   call   0x00007fe7409844f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe726b1e7bd:   nop
              0x00007fe726b1e7be:   mov    0x10(%rsp),%rdx
              0x00007fe726b1e7c3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 235)
              0x00007fe726b1e7c7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 236)
              0x00007fe726b1e7cb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  47.79%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 730 
  47.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 752 
   0.22%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.56%  <...other 204 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 730 
  47.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 752 
   0.91%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.02%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  decode_env::print_hook_comments 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%            libjvm.so  os::vsnprintf 
   0.00%         libc-2.31.so  _nl_parse_alt_digit 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%            libjvm.so  event_to_env 
   0.00%            libjvm.so  defaultStream::write 
   0.11%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.83%       jvmci, level 4
   0.91%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.02%                     
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%          c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.361 ns/op
# Warmup Iteration   2: 6.617 ns/op
# Warmup Iteration   3: 6.574 ns/op
# Warmup Iteration   4: 6.574 ns/op
# Warmup Iteration   5: 6.574 ns/op
Iteration   1: 6.574 ns/op
Iteration   2: 6.574 ns/op
Iteration   3: 6.574 ns/op
Iteration   4: 6.574 ns/op
Iteration   5: 6.575 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  6.574 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (6.574, 6.574, 6.575), stdev = 0.001
  CI (99.9%): [6.573, 6.576] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 189280 total address lines.
Perf output processed (skipped 58.645 seconds):
 Column 1: cycles (50445 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 731 

            #           [sp+0x10]  (sp of caller)
            0x00007f5e92b18700:   mov    0x8(%rsi),%r10d
            0x00007f5e92b18704:   movabs $0x800000000,%r12
            0x00007f5e92b1870e:   add    %r12,%r10
            0x00007f5e92b18711:   xor    %r12,%r12
            0x00007f5e92b18714:   cmp    %r10,%rax
            0x00007f5e92b18717:   jne    0x00007f5e8b01e780           ;   {runtime_call ic_miss_stub}
            0x00007f5e92b1871d:   nop
            0x00007f5e92b1871e:   xchg   %ax,%ax
          [Verified Entry Point]
   4.72%    0x00007f5e92b18720:   nopl   0x0(%rax,%rax,1)
   1.19%    0x00007f5e92b18725:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@1 (line 118)
            0x00007f5e92b18728:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@9 (line 120)
   4.59%    0x00007f5e92b1872c:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@5 (line 118)
            0x00007f5e92b1872e:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@9 (line 120)
   1.19%    0x00007f5e92b18731:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@15 (line 121)
   4.71%    0x00007f5e92b18734:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@21 (line 122)
  18.52%    0x00007f5e92b18737:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@27 (line 123)
            0x00007f5e92b1873a:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@33 (line 124)
   1.33%    0x00007f5e92b1873d:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@39 (line 125)
            0x00007f5e92b18740:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@45 (line 126)
   9.21%    0x00007f5e92b18743:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 127)
            0x00007f5e92b18746:   mov    0x348(%r15),%rcx
   1.17%    0x00007f5e92b1874d:   test   %eax,(%rcx)                  ;   {poll_return}
   4.75%    0x00007f5e92b1874f:   ret    
          [Exception Handler]
            0x00007f5e92b18750:   call   0x00007f5e8b169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f5e92b18755:   nop
          [Deopt Handler Code]
            0x00007f5e92b18756:   call   0x00007f5e8b024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f5e92b1875b:   nop
          [Stub Code]
            0x00007f5e92b1875c:   hlt    
            0x00007f5e92b1875d:   hlt    
            0x00007f5e92b1875e:   hlt    
....................................................................................................
  51.39%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 746 

              0x00007f5e92b1acd8:   call   0x00007f5eaa8164f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f5e92b1acdd:   nop
              0x00007f5e92b1acde:   mov    0x10(%rsp),%rdx
              0x00007f5e92b1ace3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@10 (line 230)
              0x00007f5e92b1ace7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f5e92b1acf0:   jmp    0x00007f5e92b1ad0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007f5e92b1acf5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
   5.77%  │↗  0x00007f5e92b1ad00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f5e92b1ad07:   test   %eax,(%r11)                  ;   {poll}
   4.53%  ││  0x00007f5e92b1ad0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f5e92b1ad0f:   mov    0x8(%rsp),%r10
   1.13%   │  0x00007f5e92b1ad14:   mov    %r10,%rsi
           │  0x00007f5e92b1ad17:   call   0x00007f5e8b01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   0.00%   │  0x00007f5e92b1ad1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007f5e92b1ad1d:   mov    0x20(%rsp),%r10
   1.17%   │  0x00007f5e92b1ad22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 233)
   4.66%   │  0x00007f5e92b1ad25:   mov    0x18(%rsp),%rsi
           │  0x00007f5e92b1ad2a:   cmpb   $0x0,0x94(%rsi)
  29.85%   ╰  0x00007f5e92b1ad31:   je     0x00007f5e92b1ad00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f5e92b1ad33:   mov    %r10,0x20(%rsp)
              0x00007f5e92b1ad38:   call   0x00007f5eaa8164f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f5e92b1ad3d:   nop
              0x00007f5e92b1ad3e:   mov    0x10(%rsp),%rdx
              0x00007f5e92b1ad43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 235)
              0x00007f5e92b1ad47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 236)
              0x00007f5e92b1ad4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  47.13%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 731 
  47.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 746 
   0.20%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
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
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%               kernel  [unknown] 
   0.85%  <...other 304 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 731 
  47.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 746 
   1.17%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%         libc-2.31.so  __vfwprintf_internal 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.52%       jvmci, level 4
   1.17%               kernel
   0.13%            libjvm.so
   0.06%         libc-2.31.so
   0.06%                     
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.915 ns/op
# Warmup Iteration   2: 8.870 ns/op
# Warmup Iteration   3: 8.904 ns/op
# Warmup Iteration   4: 8.871 ns/op
# Warmup Iteration   5: 8.869 ns/op
Iteration   1: 8.867 ns/op
Iteration   2: 8.865 ns/op
Iteration   3: 8.875 ns/op
Iteration   4: 8.859 ns/op
Iteration   5: 8.856 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  8.864 ±(99.9%) 0.029 ns/op [Average]
  (min, avg, max) = (8.856, 8.864, 8.875), stdev = 0.007
  CI (99.9%): [8.836, 8.893] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 191197 total address lines.
Perf output processed (skipped 58.534 seconds):
 Column 1: cycles (50625 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 745 

              0x00007fd32eb20e58:   call   0x00007fd3456174f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd32eb20e5d:   nop
              0x00007fd32eb20e5e:   mov    0x10(%rsp),%rdx
              0x00007fd32eb20e63:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@10 (line 230)
              0x00007fd32eb20e67:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fd32eb20e70:   jmp    0x00007fd32eb20e8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007fd32eb20e75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
   4.41%  │↗  0x00007fd32eb20e80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007fd32eb20e87:   test   %eax,(%r11)                  ;   {poll}
   4.11%  ││  0x00007fd32eb20e8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fd32eb20e8f:   mov    0x8(%rsp),%r10
   1.12%   │  0x00007fd32eb20e94:   mov    %r10,%rsi
   0.00%   │  0x00007fd32eb20e97:   call   0x00007fd32701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
  23.19%   │  0x00007fd32eb20e9c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007fd32eb20e9d:   mov    0x20(%rsp),%r10
   3.88%   │  0x00007fd32eb20ea2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 233)
   4.10%   │  0x00007fd32eb20ea5:   mov    0x18(%rsp),%rsi
           │  0x00007fd32eb20eaa:   cmpb   $0x0,0x94(%rsi)
  13.59%   ╰  0x00007fd32eb20eb1:   je     0x00007fd32eb20e80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007fd32eb20eb3:   mov    %r10,0x20(%rsp)
              0x00007fd32eb20eb8:   call   0x00007fd3456174f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd32eb20ebd:   nop
              0x00007fd32eb20ebe:   mov    0x10(%rsp),%rdx
              0x00007fd32eb20ec3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@40 (line 235)
              0x00007fd32eb20ec7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@46 (line 236)
              0x00007fd32eb20ecb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  54.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 718 

             #           [sp+0x20]  (sp of caller)
             0x00007fd32eb1cc00:   mov    0x8(%rsi),%r10d
             0x00007fd32eb1cc04:   movabs $0x800000000,%r12
             0x00007fd32eb1cc0e:   add    %r12,%r10
             0x00007fd32eb1cc11:   xor    %r12,%r12
             0x00007fd32eb1cc14:   cmp    %r10,%rax
             0x00007fd32eb1cc17:   jne    0x00007fd32701e780           ;   {runtime_call ic_miss_stub}
             0x00007fd32eb1cc1d:   nop
             0x00007fd32eb1cc1e:   xchg   %ax,%ax
           [Verified Entry Point]
   3.22%     0x00007fd32eb1cc20:   mov    %eax,-0x14000(%rsp)
   1.15%     0x00007fd32eb1cc27:   sub    $0x18,%rsp
   3.27%     0x00007fd32eb1cc2b:   mov    %rbp,0x10(%rsp)
   0.38%     0x00007fd32eb1cc30:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@1 (line 135)
   0.52%     0x00007fd32eb1cc33:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 135)
   1.04%     0x00007fd32eb1cc35:   cmp    $0x21,%eax
          ╭  0x00007fd32eb1cc38:   jl     0x00007fd32eb1ccbf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 138)
   4.01%  │  0x00007fd32eb1cc3e:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 139)
   0.01%  │  0x00007fd32eb1cc42:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 139)
   0.35%  │  0x00007fd32eb1cc45:   cmp    $0x21,%eax
          │  0x00007fd32eb1cc48:   jl     0x00007fd32eb1cd0b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 141)
   2.01%  │  0x00007fd32eb1cc4e:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 142)
   2.08%  │  0x00007fd32eb1cc51:   cmp    $0x21,%eax
          │  0x00007fd32eb1cc54:   jl     0x00007fd32eb1ccde           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 144)
   4.13%  │  0x00007fd32eb1cc5a:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 145)
   0.28%  │  0x00007fd32eb1cc5d:   data16 xchg %ax,%ax
   0.03%  │  0x00007fd32eb1cc60:   cmp    $0x21,%eax
          │  0x00007fd32eb1cc63:   jl     0x00007fd32eb1cd14           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 147)
   2.12%  │  0x00007fd32eb1cc69:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 148)
   2.00%  │  0x00007fd32eb1cc6c:   cmp    $0x21,%eax
          │  0x00007fd32eb1cc6f:   jl     0x00007fd32eb1cd02           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 150)
   1.04%  │  0x00007fd32eb1cc75:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 151)
   0.51%  │  0x00007fd32eb1cc78:   nopl   0x0(%rax,%rax,1)
   2.68%  │  0x00007fd32eb1cc80:   cmp    $0x21,%eax
          │  0x00007fd32eb1cc83:   jl     0x00007fd32eb1ccf0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 153)
   3.09%  │  0x00007fd32eb1cc89:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 154)
   0.57%  │  0x00007fd32eb1cc8c:   cmp    $0x21,%eax
          │  0x00007fd32eb1cc8f:   jl     0x00007fd32eb1cce7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 156)
   0.63%  │  0x00007fd32eb1cc95:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 157)
   1.92%  │  0x00007fd32eb1cc98:   nopl   0x0(%rax,%rax,1)
   1.38%  │  0x00007fd32eb1cca0:   cmp    $0x21,%eax
          │  0x00007fd32eb1cca3:   jl     0x00007fd32eb1ccf9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@94 (line 159)
   0.53%  │  0x00007fd32eb1cca9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@99 (line 160)
   0.43%  │  0x00007fd32eb1ccac:   mov    0x10(%rsp),%rbp
   2.05%  │  0x00007fd32eb1ccb1:   add    $0x18,%rsp
   1.26%  │  0x00007fd32eb1ccb5:   mov    0x348(%r15),%rcx
   0.50%  │  0x00007fd32eb1ccbc:   test   %eax,(%rcx)                  ;   {poll_return}
   0.66%  │  0x00007fd32eb1ccbe:   ret    
          ↘  0x00007fd32eb1ccbf:   mov    $0x10,%r10
             0x00007fd32eb1ccc6:   movl   $0xffffffed,0x370(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 138)
             0x00007fd32eb1ccd1:   mov    %r10,0x378(%r15)
             0x00007fd32eb1ccd8:   call   0x00007fd32702427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@0 (line 135)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fd32eb1ccdd:   nop                                 ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 144)
....................................................................................................
  43.87%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 745 
  43.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 718 
   0.57%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.72%  <...other 274 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 745 
  43.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 718 
   1.43%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  ptmalloc_init.part.0 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  _int_malloc 
   0.00%            libjvm.so  fileStream::write 
   0.00%          interpreter  method entry point (kind = zerolocals)  
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.28%       jvmci, level 4
   1.43%               kernel
   0.11%            libjvm.so
   0.07%         libc-2.31.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%       perf-39382.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.885 ns/op
# Warmup Iteration   2: 8.859 ns/op
# Warmup Iteration   3: 8.958 ns/op
# Warmup Iteration   4: 8.899 ns/op
# Warmup Iteration   5: 8.869 ns/op
Iteration   1: 8.870 ns/op
Iteration   2: 8.867 ns/op
Iteration   3: 8.865 ns/op
Iteration   4: 8.869 ns/op
Iteration   5: 8.862 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  8.867 ±(99.9%) 0.012 ns/op [Average]
  (min, avg, max) = (8.862, 8.867, 8.870), stdev = 0.003
  CI (99.9%): [8.854, 8.879] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 190570 total address lines.
Perf output processed (skipped 58.624 seconds):
 Column 1: cycles (50610 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 749 

              0x00007f5922b1d0d8:   call   0x00007f593af1d4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f5922b1d0dd:   nop
              0x00007f5922b1d0de:   mov    0x10(%rsp),%rdx
              0x00007f5922b1d0e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@10 (line 230)
              0x00007f5922b1d0e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f5922b1d0f0:   jmp    0x00007f5922b1d10f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007f5922b1d0f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
   4.39%  │↗  0x00007f5922b1d100:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f5922b1d107:   test   %eax,(%r11)                  ;   {poll}
   3.67%  ││  0x00007f5922b1d10a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f5922b1d10f:   mov    0x8(%rsp),%r10
   1.66%   │  0x00007f5922b1d114:   mov    %r10,%rsi
           │  0x00007f5922b1d117:   call   0x00007f591b01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
  22.20%   │  0x00007f5922b1d11c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007f5922b1d11d:   mov    0x20(%rsp),%r10
   4.01%   │  0x00007f5922b1d122:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 233)
   4.24%   │  0x00007f5922b1d125:   mov    0x18(%rsp),%rsi
           │  0x00007f5922b1d12a:   cmpb   $0x0,0x94(%rsi)
  13.55%   ╰  0x00007f5922b1d131:   je     0x00007f5922b1d100           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f5922b1d133:   mov    %r10,0x20(%rsp)
              0x00007f5922b1d138:   call   0x00007f593af1d4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f5922b1d13d:   nop
              0x00007f5922b1d13e:   mov    0x10(%rsp),%rdx
              0x00007f5922b1d143:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@40 (line 235)
              0x00007f5922b1d147:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@46 (line 236)
              0x00007f5922b1d14b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  53.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 728 

                    #           [sp+0x20]  (sp of caller)
                    0x00007f5922b1a480:   mov    0x8(%rsi),%r10d
                    0x00007f5922b1a484:   movabs $0x800000000,%r12
                    0x00007f5922b1a48e:   add    %r12,%r10
                    0x00007f5922b1a491:   xor    %r12,%r12
                    0x00007f5922b1a494:   cmp    %r10,%rax
                    0x00007f5922b1a497:   jne    0x00007f591b01e780           ;   {runtime_call ic_miss_stub}
                    0x00007f5922b1a49d:   nop
                    0x00007f5922b1a49e:   xchg   %ax,%ax
                  [Verified Entry Point]
   2.61%            0x00007f5922b1a4a0:   mov    %eax,-0x14000(%rsp)
   1.80%            0x00007f5922b1a4a7:   sub    $0x18,%rsp
   2.68%            0x00007f5922b1a4ab:   mov    %rbp,0x10(%rsp)
   0.69%            0x00007f5922b1a4b0:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@1 (line 169)
   0.76%            0x00007f5922b1a4b3:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 169)
   1.11%            0x00007f5922b1a4b5:   cmp    $0x21,%eax
          ╭         0x00007f5922b1a4b8:   jl     0x00007f5922b1a53f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 172)
   3.67%  │         0x00007f5922b1a4be:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 220)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 173)
          │         0x00007f5922b1a4c2:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 173)
   0.53%  │         0x00007f5922b1a4c5:   cmp    $0x21,%eax
          │╭        0x00007f5922b1a4c8:   jl     0x00007f5922b1a53f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 174)
   2.10%  ││        0x00007f5922b1a4ce:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 175)
   1.60%  ││        0x00007f5922b1a4d1:   cmp    $0x21,%eax
          ││╭       0x00007f5922b1a4d4:   jl     0x00007f5922b1a53f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 176)
   4.93%  │││       0x00007f5922b1a4da:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 177)
   0.46%  │││       0x00007f5922b1a4dd:   data16 xchg %ax,%ax
   0.04%  │││       0x00007f5922b1a4e0:   cmp    $0x21,%eax
          │││╭      0x00007f5922b1a4e3:   jl     0x00007f5922b1a53f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 178)
   1.78%  ││││      0x00007f5922b1a4e9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 179)
   2.20%  ││││      0x00007f5922b1a4ec:   cmp    $0x21,%eax
          ││││╭     0x00007f5922b1a4ef:   jl     0x00007f5922b1a53f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 180)
   1.63%  │││││     0x00007f5922b1a4f5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 181)
   0.56%  │││││     0x00007f5922b1a4f8:   nopl   0x0(%rax,%rax,1)
   2.06%  │││││     0x00007f5922b1a500:   cmp    $0x21,%eax
          │││││╭    0x00007f5922b1a503:   jl     0x00007f5922b1a53f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 182)
   3.00%  ││││││    0x00007f5922b1a509:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 183)
   0.72%  ││││││    0x00007f5922b1a50c:   cmp    $0x21,%eax
          ││││││╭   0x00007f5922b1a50f:   jl     0x00007f5922b1a53f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 184)
   0.64%  │││││││   0x00007f5922b1a515:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 185)
   1.61%  │││││││   0x00007f5922b1a518:   nopl   0x0(%rax,%rax,1)
   1.51%  │││││││   0x00007f5922b1a520:   cmp    $0x21,%eax
          │││││││╭  0x00007f5922b1a523:   jl     0x00007f5922b1a53f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@94 (line 186)
   0.72%  ││││││││  0x00007f5922b1a529:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@99 (line 187)
   0.61%  ││││││││  0x00007f5922b1a52c:   mov    0x10(%rsp),%rbp
   1.65%  ││││││││  0x00007f5922b1a531:   add    $0x18,%rsp
   1.35%  ││││││││  0x00007f5922b1a535:   mov    0x348(%r15),%rcx
   0.77%  ││││││││  0x00007f5922b1a53c:   test   %eax,(%rcx)                  ;   {poll_return}
   0.81%  ││││││││  0x00007f5922b1a53e:   ret    
          ↘↘↘↘↘↘↘↘  0x00007f5922b1a53f:   movl   $0xffffffed,0x370(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 172)
                    0x00007f5922b1a54a:   movq   $0x10,0x378(%r15)
                    0x00007f5922b1a555:   call   0x00007f591b02427a           ; ImmutableOopMap {rsi=Oop }
                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@0 (line 169)
                                                                              ;   {runtime_call DeoptimizationBlob}
                    0x00007f5922b1a55a:   nop
                  [Exception Handler]
                    0x00007f5922b1a55b:   call   0x00007f591b169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  44.59%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 749 
  44.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 728 
   0.45%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
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
   0.70%  <...other 259 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 749 
  44.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 728 
   1.39%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%   libpthread-2.31.so  __pthread_mutex_lock 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.32%       jvmci, level 4
   1.39%               kernel
   0.13%            libjvm.so
   0.05%                     
   0.05%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.01%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.189 ns/op
# Warmup Iteration   2: 6.599 ns/op
# Warmup Iteration   3: 6.612 ns/op
# Warmup Iteration   4: 6.581 ns/op
# Warmup Iteration   5: 6.579 ns/op
Iteration   1: 6.575 ns/op
Iteration   2: 6.575 ns/op
Iteration   3: 6.577 ns/op
Iteration   4: 6.578 ns/op
Iteration   5: 6.575 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  6.576 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (6.575, 6.576, 6.578), stdev = 0.001
  CI (99.9%): [6.571, 6.581] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 190301 total address lines.
Perf output processed (skipped 58.637 seconds):
 Column 1: cycles (50870 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 721 

            #           [sp+0x10]  (sp of caller)
            0x00007f3b4eb16900:   mov    0x8(%rsi),%r10d
            0x00007f3b4eb16904:   movabs $0x800000000,%r12
            0x00007f3b4eb1690e:   add    %r12,%r10
            0x00007f3b4eb16911:   xor    %r12,%r12
            0x00007f3b4eb16914:   cmp    %r10,%rax
            0x00007f3b4eb16917:   jne    0x00007f3b4701e780           ;   {runtime_call ic_miss_stub}
            0x00007f3b4eb1691d:   nop
            0x00007f3b4eb1691e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.03%    0x00007f3b4eb16920:   nopl   0x0(%rax,%rax,1)
            0x00007f3b4eb16925:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@1 (line 75)
            0x00007f3b4eb16928:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@21 (line 80)
   5.72%    0x00007f3b4eb1692c:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@5 (line 75)
            0x00007f3b4eb1692e:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@24 (line 80)
            0x00007f3b4eb16931:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@36 (line 82)
   5.72%    0x00007f3b4eb16934:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@48 (line 84)
  22.90%    0x00007f3b4eb16937:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@60 (line 86)
            0x00007f3b4eb1693a:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@72 (line 88)
   0.02%    0x00007f3b4eb1693d:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@84 (line 90)
            0x00007f3b4eb16940:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@96 (line 92)
  11.62%    0x00007f3b4eb16943:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@108 (line 94)
            0x00007f3b4eb16946:   mov    0x348(%r15),%rcx
   0.01%    0x00007f3b4eb1694d:   test   %eax,(%rcx)                  ;   {poll_return}
   5.70%    0x00007f3b4eb1694f:   ret    
          [Exception Handler]
            0x00007f3b4eb16950:   call   0x00007f3b47169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f3b4eb16955:   nop
          [Deopt Handler Code]
            0x00007f3b4eb16956:   call   0x00007f3b47024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f3b4eb1695b:   nop
          [Stub Code]
            0x00007f3b4eb1695c:   hlt    
            0x00007f3b4eb1695d:   hlt    
            0x00007f3b4eb1695e:   hlt    
....................................................................................................
  57.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 751 

              0x00007f3b4eb1ced8:   call   0x00007f3b689de4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f3b4eb1cedd:   nop
              0x00007f3b4eb1cede:   mov    0x10(%rsp),%rdx
              0x00007f3b4eb1cee3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@10 (line 230)
              0x00007f3b4eb1cee7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f3b4eb1cef0:   jmp    0x00007f3b4eb1cf0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 232)
          │   0x00007f3b4eb1cef5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
   5.77%  │↗  0x00007f3b4eb1cf00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
          ││  0x00007f3b4eb1cf07:   test   %eax,(%r11)                  ;   {poll}
   5.75%  ││  0x00007f3b4eb1cf0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f3b4eb1cf0f:   mov    0x8(%rsp),%r10
           │  0x00007f3b4eb1cf14:   mov    %r10,%rsi
           │  0x00007f3b4eb1cf17:   call   0x00007f3b4701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual nested_synchronized {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f3b4eb1cf1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@20 (line 232)
           │  0x00007f3b4eb1cf1d:   mov    0x20(%rsp),%r10
   0.02%   │  0x00007f3b4eb1cf22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@26 (line 233)
   5.53%   │  0x00007f3b4eb1cf25:   mov    0x18(%rsp),%rsi
           │  0x00007f3b4eb1cf2a:   cmpb   $0x0,0x94(%rsi)
  22.84%   ╰  0x00007f3b4eb1cf31:   je     0x00007f3b4eb1cf00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
              0x00007f3b4eb1cf33:   mov    %r10,0x20(%rsp)
              0x00007f3b4eb1cf38:   call   0x00007f3b689de4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f3b4eb1cf3d:   nop
              0x00007f3b4eb1cf3e:   mov    0x10(%rsp),%rdx
              0x00007f3b4eb1cf43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@40 (line 235)
              0x00007f3b4eb1cf47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@46 (line 236)
              0x00007f3b4eb1cf4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  39.92%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 721 
  39.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 751 
   0.82%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
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
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   1.04%  <...other 340 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 721 
  39.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 751 
   2.02%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%         libc-2.31.so  _int_malloc 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  stringStream::write 
   0.00%            libjvm.so  os::elapsed_counter 
   0.16%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.62%       jvmci, level 4
   2.02%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.02%               [vdso]
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.392 ns/op
# Warmup Iteration   2: 6.574 ns/op
# Warmup Iteration   3: 6.585 ns/op
# Warmup Iteration   4: 6.574 ns/op
# Warmup Iteration   5: 6.574 ns/op
Iteration   1: 6.574 ns/op
Iteration   2: 6.574 ns/op
Iteration   3: 6.575 ns/op
Iteration   4: 6.574 ns/op
Iteration   5: 6.574 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  6.574 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.574, 6.574, 6.575), stdev = 0.001
  CI (99.9%): [6.573, 6.575] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 188852 total address lines.
Perf output processed (skipped 58.565 seconds):
 Column 1: cycles (50519 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 732 

            #           [sp+0x10]  (sp of caller)
            0x00007fa45eb19200:   mov    0x8(%rsi),%r10d
            0x00007fa45eb19204:   movabs $0x800000000,%r12
            0x00007fa45eb1920e:   add    %r12,%r10
            0x00007fa45eb19211:   xor    %r12,%r12
            0x00007fa45eb19214:   cmp    %r10,%rax
            0x00007fa45eb19217:   jne    0x00007fa45701e780           ;   {runtime_call ic_miss_stub}
            0x00007fa45eb1921d:   nop
            0x00007fa45eb1921e:   xchg   %ax,%ax
          [Verified Entry Point]
   5.75%    0x00007fa45eb19220:   nopl   0x0(%rax,%rax,1)
            0x00007fa45eb19225:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@1 (line 110)
            0x00007fa45eb19228:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   5.86%    0x00007fa45eb1922c:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 110)
            0x00007fa45eb1922e:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
            0x00007fa45eb19231:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   5.77%    0x00007fa45eb19234:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
  23.13%    0x00007fa45eb19237:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
            0x00007fa45eb1923a:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   0.01%    0x00007fa45eb1923d:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
            0x00007fa45eb19240:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
  11.49%    0x00007fa45eb19243:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
            0x00007fa45eb19246:   mov    0x348(%r15),%rcx
   0.00%    0x00007fa45eb1924d:   test   %eax,(%rcx)                  ;   {poll_return}
   5.66%    0x00007fa45eb1924f:   ret    
          [Exception Handler]
            0x00007fa45eb19250:   call   0x00007fa457169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fa45eb19255:   nop
          [Deopt Handler Code]
            0x00007fa45eb19256:   call   0x00007fa457024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fa45eb1925b:   nop
          [Stub Code]
            0x00007fa45eb1925c:   hlt    
            0x00007fa45eb1925d:   hlt    
            0x00007fa45eb1925e:   hlt    
....................................................................................................
  57.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 753 

              0x00007fa45eb1bcd8:   call   0x00007fa4760f74f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa45eb1bcdd:   nop
              0x00007fa45eb1bcde:   mov    0x10(%rsp),%rdx
              0x00007fa45eb1bce3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@10 (line 230)
              0x00007fa45eb1bce7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fa45eb1bcf0:   jmp    0x00007fa45eb1bd0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007fa45eb1bcf5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
   5.74%  │↗  0x00007fa45eb1bd00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007fa45eb1bd07:   test   %eax,(%r11)                  ;   {poll}
   5.89%  ││  0x00007fa45eb1bd0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fa45eb1bd0f:   mov    0x8(%rsp),%r10
           │  0x00007fa45eb1bd14:   mov    %r10,%rsi
           │  0x00007fa45eb1bd17:   call   0x00007fa45701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
           │  0x00007fa45eb1bd1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007fa45eb1bd1d:   mov    0x20(%rsp),%r10
   0.00%   │  0x00007fa45eb1bd22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 233)
   5.80%   │  0x00007fa45eb1bd25:   mov    0x18(%rsp),%rsi
           │  0x00007fa45eb1bd2a:   cmpb   $0x0,0x94(%rsi)
  23.38%   ╰  0x00007fa45eb1bd31:   je     0x00007fa45eb1bd00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
              0x00007fa45eb1bd33:   mov    %r10,0x20(%rsp)
              0x00007fa45eb1bd38:   call   0x00007fa4760f74f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa45eb1bd3d:   nop
              0x00007fa45eb1bd3e:   mov    0x10(%rsp),%rdx
              0x00007fa45eb1bd43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 235)
              0x00007fa45eb1bd47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@46 (line 236)
              0x00007fa45eb1bd4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  40.81%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 732 
  40.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 753 
   0.44%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
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
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%                       <unknown> 
   0.63%  <...other 233 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 732 
  40.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 753 
   1.25%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __strchr_sse2 
   0.02%         libc-2.31.so  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%          interpreter  invokestatic  184 invokestatic  
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.10%  <...other 50 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.49%       jvmci, level 4
   1.25%               kernel
   0.10%            libjvm.so
   0.07%         libc-2.31.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%       hsdis-amd64.so
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:09

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

Benchmark                                                  Mode  Cnt  Score   Error  Units
LockElisionBenchmark.baseline                              avgt    5  6.580 ± 0.053  ns/op
LockElisionBenchmark.baseline:·asm                         avgt         NaN            ---
LockElisionBenchmark.chain_method_calls                    avgt    5  6.574 ± 0.002  ns/op
LockElisionBenchmark.chain_method_calls:·asm               avgt         NaN            ---
LockElisionBenchmark.conditional_chain_method_calls        avgt    5  8.864 ± 0.029  ns/op
LockElisionBenchmark.conditional_chain_method_calls:·asm   avgt         NaN            ---
LockElisionBenchmark.conditional_nested_method_calls       avgt    5  8.867 ± 0.012  ns/op
LockElisionBenchmark.conditional_nested_method_calls:·asm  avgt         NaN            ---
LockElisionBenchmark.nested_synchronized                   avgt    5  6.576 ± 0.005  ns/op
LockElisionBenchmark.nested_synchronized:·asm              avgt         NaN            ---
LockElisionBenchmark.recursive_method_calls                avgt    5  6.574 ± 0.001  ns/op
LockElisionBenchmark.recursive_method_calls:·asm           avgt         NaN            ---
