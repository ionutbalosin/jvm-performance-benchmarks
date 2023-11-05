# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 8.563 ns/op
# Warmup Iteration   2: 8.517 ns/op
# Warmup Iteration   3: 7.067 ns/op
# Warmup Iteration   4: 7.106 ns/op
# Warmup Iteration   5: 7.091 ns/op
Iteration   1: 7.071 ns/op
Iteration   2: 7.085 ns/op
Iteration   3: 7.060 ns/op
Iteration   4: 7.069 ns/op
Iteration   5: 7.085 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  7.074 ±(99.9%) 0.042 ns/op [Average]
  (min, avg, max) = (7.060, 7.074, 7.085), stdev = 0.011
  CI (99.9%): [7.032, 7.116] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:·asm":
PrintAssembly processed: 113530 total address lines.
Perf output processed (skipped 55.626 seconds):
 Column 1: cycles (50784 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 473 

             # {method} {0x00007fbe39c743b0} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fbe58f62a00:   mov    0x8(%rsi),%r10d
             0x00007fbe58f62a04:   movabs $0x800000000,%r11
             0x00007fbe58f62a0e:   add    %r11,%r10
             0x00007fbe58f62a11:   cmp    %r10,%rax
             0x00007fbe58f62a14:   jne    0x00007fbe589fbd80           ;   {runtime_call ic_miss_stub}
             0x00007fbe58f62a1a:   xchg   %ax,%ax
             0x00007fbe58f62a1c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.34%     0x00007fbe58f62a20:   sub    $0x18,%rsp
             0x00007fbe58f62a27:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@-1 (line 203)
   0.00%     0x00007fbe58f62a2c:   mov    0x14(%rsi),%r11d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 205)
   5.35%     0x00007fbe58f62a30:   mov    0x10(%rsi),%eax
             0x00007fbe58f62a33:   shl    %eax
             0x00007fbe58f62a35:   add    %r11d,%eax
   0.00%     0x00007fbe58f62a38:   add    %r11d,%eax
   5.36%     0x00007fbe58f62a3b:   add    %r11d,%eax
  21.37%     0x00007fbe58f62a3e:   add    %r11d,%eax
             0x00007fbe58f62a41:   add    %r11d,%eax
             0x00007fbe58f62a44:   add    %r11d,%eax
             0x00007fbe58f62a47:   add    %r11d,%eax
   5.57%     0x00007fbe58f62a4a:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 212)
   5.58%     0x00007fbe58f62a4d:   add    $0x10,%rsp
             0x00007fbe58f62a51:   pop    %rbp
             0x00007fbe58f62a52:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007fbe58f62a59:   ja     0x00007fbe58f62a60
   5.30%  │  0x00007fbe58f62a5f:   ret    
          ↘  0x00007fbe58f62a60:   movabs $0x7fbe58f62a52,%r10         ;   {internal_word}
             0x00007fbe58f62a6a:   mov    %r10,0x358(%r15)
             0x00007fbe58f62a71:   jmp    0x00007fbe58a02700           ;   {runtime_call SafepointBlob}
             0x00007fbe58f62a76:   hlt    
             0x00007fbe58f62a77:   hlt    
             0x00007fbe58f62a78:   hlt    
             0x00007fbe58f62a79:   hlt    
             0x00007fbe58f62a7a:   hlt    
             0x00007fbe58f62a7b:   hlt    
             0x00007fbe58f62a7c:   hlt    
....................................................................................................
  53.87%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 505 

              0x00007fbe58f65c26:   mov    0x38(%rsp),%r10
              0x00007fbe58f65c2b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fbe58f65cdc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 234)
              0x00007fbe58f65c33:   mov    $0x1,%ebp
              0x00007fbe58f65c38:   test   %r11d,%r11d
          ╭   0x00007fbe58f65c3b:   jne    0x00007fbe58f65c6c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
          │   0x00007fbe58f65c3d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 235)
   5.34%  │↗  0x00007fbe58f65c40:   mov    0x40(%rsp),%rsi
          ││  0x00007fbe58f65c45:   xchg   %ax,%ax
          ││  0x00007fbe58f65c47:   call   0x00007fbe589fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007fbe58f65c4c:   mov    0x38(%rsp),%r10
  17.11%  ││  0x00007fbe58f65c51:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
  21.67%  ││  0x00007fbe58f65c59:   mov    0x348(%r15),%r11
          ││  0x00007fbe58f65c60:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
          ││  0x00007fbe58f65c64:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fbe58f65c67:   test   %r10d,%r10d
          │╰  0x00007fbe58f65c6a:   je     0x00007fbe58f65c40           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 235)
          ↘   0x00007fbe58f65c6c:   movabs $0x7fbe6f395d10,%r10
              0x00007fbe58f65c76:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  44.11%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 473 
  44.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 505 
   1.22%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  [unknown] 
   0.52%  <...other 200 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 473 
  44.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 505 
   1.82%              kernel  [unknown] 
   0.02%        libc-2.31.so  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%         interpreter  invokevirtual  182 invokevirtual  
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%         interpreter  getstatic  178 getstatic  
   0.00%           libjvm.so  JfrTraceId::assign 
   0.00%           libjvm.so  ArenaBitMap::ArenaBitMap 
   0.00%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.07%  <...other 37 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.99%         c2, level 4
   1.82%              kernel
   0.07%           libjvm.so
   0.06%        libc-2.31.so
   0.01%                    
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.545 ns/op
# Warmup Iteration   2: 7.070 ns/op
# Warmup Iteration   3: 8.203 ns/op
# Warmup Iteration   4: 7.102 ns/op
# Warmup Iteration   5: 7.118 ns/op
Iteration   1: 7.099 ns/op
Iteration   2: 7.117 ns/op
Iteration   3: 7.116 ns/op
Iteration   4: 7.118 ns/op
Iteration   5: 7.096 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  7.109 ±(99.9%) 0.041 ns/op [Average]
  (min, avg, max) = (7.096, 7.109, 7.118), stdev = 0.011
  CI (99.9%): [7.068, 7.151] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 118119 total address lines.
Perf output processed (skipped 55.759 seconds):
 Column 1: cycles (51000 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 488 

             # {method} {0x00007f97a9073fe0} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f97b8f65980:   mov    0x8(%rsi),%r10d
             0x00007f97b8f65984:   movabs $0x800000000,%r11
             0x00007f97b8f6598e:   add    %r11,%r10
             0x00007f97b8f65991:   cmp    %r10,%rax
             0x00007f97b8f65994:   jne    0x00007f97b89fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f97b8f6599a:   xchg   %ax,%ax
             0x00007f97b8f6599c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.39%     0x00007f97b8f659a0:   sub    $0x18,%rsp
             0x00007f97b8f659a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@-1 (line 118)
   0.00%     0x00007f97b8f659ac:   mov    0x14(%rsi),%r11d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 220)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@21 (line 122)
   5.19%     0x00007f97b8f659b0:   mov    0x10(%rsi),%eax
             0x00007f97b8f659b3:   shl    %eax
             0x00007f97b8f659b5:   add    %r11d,%eax
   0.01%     0x00007f97b8f659b8:   add    %r11d,%eax
   5.20%     0x00007f97b8f659bb:   add    %r11d,%eax
  21.23%     0x00007f97b8f659be:   add    %r11d,%eax
             0x00007f97b8f659c1:   add    %r11d,%eax
             0x00007f97b8f659c4:   add    %r11d,%eax
             0x00007f97b8f659c7:   add    %r11d,%eax
   5.45%     0x00007f97b8f659ca:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 127)
   5.44%     0x00007f97b8f659cd:   add    $0x10,%rsp
             0x00007f97b8f659d1:   pop    %rbp
             0x00007f97b8f659d2:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f97b8f659d9:   ja     0x00007f97b8f659e0
   5.34%  │  0x00007f97b8f659df:   ret    
          ↘  0x00007f97b8f659e0:   movabs $0x7f97b8f659d2,%r10         ;   {internal_word}
             0x00007f97b8f659ea:   mov    %r10,0x358(%r15)
             0x00007f97b8f659f1:   jmp    0x00007f97b8a02700           ;   {runtime_call SafepointBlob}
             0x00007f97b8f659f6:   hlt    
             0x00007f97b8f659f7:   hlt    
             0x00007f97b8f659f8:   hlt    
             0x00007f97b8f659f9:   hlt    
             0x00007f97b8f659fa:   hlt    
             0x00007f97b8f659fb:   hlt    
             0x00007f97b8f659fc:   hlt    
....................................................................................................
  53.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 524 

              0x00007f97b8f68826:   mov    0x38(%rsp),%r10
              0x00007f97b8f6882b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f97b8f688dc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@30 (line 234)
              0x00007f97b8f68833:   mov    $0x1,%ebp
              0x00007f97b8f68838:   test   %r11d,%r11d
          ╭   0x00007f97b8f6883b:   jne    0x00007f97b8f6886c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
          │   0x00007f97b8f6883d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 235)
   5.21%  │↗  0x00007f97b8f68840:   mov    0x40(%rsp),%rsi
          ││  0x00007f97b8f68845:   xchg   %ax,%ax
          ││  0x00007f97b8f68847:   call   0x00007f97b89fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007f97b8f6884c:   mov    0x38(%rsp),%r10
  18.04%  ││  0x00007f97b8f68851:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
  21.05%  ││  0x00007f97b8f68859:   mov    0x348(%r15),%r11
          ││  0x00007f97b8f68860:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f97b8f68864:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f97b8f68867:   test   %r10d,%r10d
          │╰  0x00007f97b8f6886a:   je     0x00007f97b8f68840           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 235)
          ↘   0x00007f97b8f6886c:   movabs $0x7f97d0be5d10,%r10
              0x00007f97b8f68876:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  44.31%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 488 
  44.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 524 
   1.59%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
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
   0.48%  <...other 190 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 488 
  44.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 524 
   2.24%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%        libc-2.31.so  [unknown] 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%           libjvm.so  os::free 
   0.00%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%           libjvm.so  Symbol::print_value_on 
   0.00%        libc-2.31.so  __strncat_ssse3 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%           libjvm.so  LIR_Assembler::emit_lir_list 
   0.00%      perf-19766.map  [unknown] 
   0.00%           libjvm.so  metaspace::MetaspaceArena::MetaspaceArena 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%           libjvm.so  Assembler::movl 
   0.08%  <...other 41 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.57%         c2, level 4
   2.24%              kernel
   0.10%           libjvm.so
   0.04%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%      perf-19766.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.645 ns/op
# Warmup Iteration   2: 8.493 ns/op
# Warmup Iteration   3: 8.624 ns/op
# Warmup Iteration   4: 8.242 ns/op
# Warmup Iteration   5: 8.277 ns/op
Iteration   1: 8.176 ns/op
Iteration   2: 8.200 ns/op
Iteration   3: 8.487 ns/op
Iteration   4: 8.743 ns/op
Iteration   5: 8.127 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  8.347 ±(99.9%) 1.010 ns/op [Average]
  (min, avg, max) = (8.127, 8.347, 8.743), stdev = 0.262
  CI (99.9%): [7.336, 9.357] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 113813 total address lines.
Perf output processed (skipped 55.645 seconds):
 Column 1: cycles (50548 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 477 

              # {method} {0x00007f78f547ee58} &apos;conditional_chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007f7914f63a20:   mov    0x8(%rsi),%r10d
              0x00007f7914f63a24:   movabs $0x800000000,%r11
              0x00007f7914f63a2e:   add    %r11,%r10
              0x00007f7914f63a31:   cmp    %r10,%rax
              0x00007f7914f63a34:   jne    0x00007f79149fbd80           ;   {runtime_call ic_miss_stub}
              0x00007f7914f63a3a:   xchg   %ax,%ax
              0x00007f7914f63a3c:   nopl   0x0(%rax)
            [Verified Entry Point]
   4.35%      0x00007f7914f63a40:   mov    %eax,-0x14000(%rsp)
  10.43%      0x00007f7914f63a47:   push   %rbp
              0x00007f7914f63a48:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@-1 (line 135)
   1.14%      0x00007f7914f63a4c:   mov    %rsi,%r11
   3.56%      0x00007f7914f63a4f:   mov    0x10(%rsi),%eax
              0x00007f7914f63a52:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 135)
   0.82%      0x00007f7914f63a54:   cmp    $0x20,%eax
          ╭   0x00007f7914f63a57:   jle    0x00007f7914f63ad4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 138)
   0.26%  │   0x00007f7914f63a5d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 220)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 151)
   3.35%  │   0x00007f7914f63a61:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 139)
   0.00%  │   0x00007f7914f63a64:   cmp    $0x20,%eax
          │╭  0x00007f7914f63a67:   jle    0x00007f7914f63ae8           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 141)
   1.26%  ││  0x00007f7914f63a6d:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 142)
   0.26%  ││  0x00007f7914f63a70:   cmp    $0x20,%eax
          ││  0x00007f7914f63a73:   jle    0x00007f7914f63afc           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 144)
   4.52%  ││  0x00007f7914f63a79:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 145)
          ││  0x00007f7914f63a7c:   nopl   0x0(%rax)
   1.04%  ││  0x00007f7914f63a80:   cmp    $0x20,%eax
          ││  0x00007f7914f63a83:   jle    0x00007f7914f63b10           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 147)
   0.26%  ││  0x00007f7914f63a89:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 148)
   4.84%  ││  0x00007f7914f63a8c:   cmp    $0x20,%eax
          ││  0x00007f7914f63a8f:   jle    0x00007f7914f63b24           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 150)
          ││  0x00007f7914f63a95:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 151)
   0.97%  ││  0x00007f7914f63a98:   cmp    $0x20,%eax
   0.31%  ││  0x00007f7914f63a9b:   nopl   0x0(%rax,%rax,1)
   6.74%  ││  0x00007f7914f63aa0:   jle    0x00007f7914f63b38           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 153)
          ││  0x00007f7914f63aa6:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 154)
   0.85%  ││  0x00007f7914f63aa9:   cmp    $0x20,%eax
          ││  0x00007f7914f63aac:   jle    0x00007f7914f63b4c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 156)
   0.35%  ││  0x00007f7914f63ab2:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 157)
   3.77%  ││  0x00007f7914f63ab5:   cmp    $0x20,%eax
          ││  0x00007f7914f63ab8:   jle    0x00007f7914f63b60           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@94 (line 159)
   0.75%  ││  0x00007f7914f63abe:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@99 (line 160)
   0.66%  ││  0x00007f7914f63ac1:   add    $0x20,%rsp
   0.23%  ││  0x00007f7914f63ac5:   pop    %rbp
   5.64%  ││  0x00007f7914f63ac6:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007f7914f63acd:   ja     0x00007f7914f63b74
   1.42%  ││  0x00007f7914f63ad3:   ret    
          ↘│  0x00007f7914f63ad4:   mov    $0xffffff45,%esi
           │  0x00007f7914f63ad9:   mov    %r11,%rbp
           │  0x00007f7914f63adc:   mov    %eax,0x4(%rsp)
           │  0x00007f7914f63ae0:   data16 xchg %ax,%ax
           │  0x00007f7914f63ae3:   call   0x00007f7914a01600           ; ImmutableOopMap {rbp=Oop }
           │                                                            ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 138)
           │                                                            ;   {runtime_call UncommonTrapBlob}
           ↘  0x00007f7914f63ae8:   mov    $0xffffff45,%esi
              0x00007f7914f63aed:   mov    %r11,%rbp
....................................................................................................
  57.76%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 514 

              0x00007f7914f66c26:   mov    0x38(%rsp),%r10
              0x00007f7914f66c2b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f7914f66cdc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@30 (line 234)
              0x00007f7914f66c33:   mov    $0x1,%ebp
              0x00007f7914f66c38:   test   %r11d,%r11d
          ╭   0x00007f7914f66c3b:   jne    0x00007f7914f66c6c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
          │   0x00007f7914f66c3d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@36 (line 235)
   4.37%  │↗  0x00007f7914f66c40:   mov    0x40(%rsp),%rsi
   0.32%  ││  0x00007f7914f66c45:   xchg   %ax,%ax
          ││  0x00007f7914f66c47:   call   0x00007f79149fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
  14.73%  ││  0x00007f7914f66c4c:   mov    0x38(%rsp),%r10
   4.55%  ││  0x00007f7914f66c51:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
  16.20%  ││  0x00007f7914f66c59:   mov    0x348(%r15),%r11
   0.33%  ││  0x00007f7914f66c60:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f7914f66c64:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f7914f66c67:   test   %r10d,%r10d
          │╰  0x00007f7914f66c6a:   je     0x00007f7914f66c40           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@36 (line 235)
          ↘   0x00007f7914f66c6c:   movabs $0x7f792aae9d10,%r10
              0x00007f7914f66c76:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@37 (line 235)
              0x00007f7914f66c79:   mov    0x30(%rsp),%r10
....................................................................................................
  40.49%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 477 
  40.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 514 
   0.59%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
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
   0.80%  <...other 257 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 477 
  40.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 514 
   1.51%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  [unknown] 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  LinearScan::build_intervals 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.10%  <...other 46 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.26%         c2, level 4
   1.51%              kernel
   0.12%           libjvm.so
   0.06%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%                    
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.621 ns/op
# Warmup Iteration   2: 8.529 ns/op
# Warmup Iteration   3: 8.788 ns/op
# Warmup Iteration   4: 8.675 ns/op
# Warmup Iteration   5: 8.811 ns/op
Iteration   1: 8.797 ns/op
Iteration   2: 8.177 ns/op
Iteration   3: 8.557 ns/op
Iteration   4: 8.824 ns/op
Iteration   5: 8.383 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  8.548 ±(99.9%) 1.061 ns/op [Average]
  (min, avg, max) = (8.177, 8.548, 8.824), stdev = 0.275
  CI (99.9%): [7.487, 9.608] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 115997 total address lines.
Perf output processed (skipped 55.726 seconds):
 Column 1: cycles (51161 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 486 

              # {method} {0x00007fb05907efb8} &apos;conditional_nested_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007fb068f659a0:   mov    0x8(%rsi),%r10d
              0x00007fb068f659a4:   movabs $0x800000000,%r11
              0x00007fb068f659ae:   add    %r11,%r10
              0x00007fb068f659b1:   cmp    %r10,%rax
              0x00007fb068f659b4:   jne    0x00007fb0689fbd80           ;   {runtime_call ic_miss_stub}
              0x00007fb068f659ba:   xchg   %ax,%ax
              0x00007fb068f659bc:   nopl   0x0(%rax)
            [Verified Entry Point]
   4.15%      0x00007fb068f659c0:   mov    %eax,-0x14000(%rsp)
  11.02%      0x00007fb068f659c7:   push   %rbp
              0x00007fb068f659c8:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@-1 (line 169)
   0.75%      0x00007fb068f659cc:   mov    %rsi,%r11
   3.62%      0x00007fb068f659cf:   mov    0x10(%rsi),%eax
              0x00007fb068f659d2:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 169)
   0.58%      0x00007fb068f659d4:   cmp    $0x20,%eax
          ╭   0x00007fb068f659d7:   jle    0x00007fb068f65a54           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 172)
   0.13%  │   0x00007fb068f659dd:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 220)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 181)
   3.57%  │   0x00007fb068f659e1:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 173)
   0.00%  │   0x00007fb068f659e4:   cmp    $0x20,%eax
          │╭  0x00007fb068f659e7:   jle    0x00007fb068f65a68           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 174)
   0.89%  ││  0x00007fb068f659ed:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 175)
   0.09%  ││  0x00007fb068f659f0:   cmp    $0x20,%eax
          ││  0x00007fb068f659f3:   jle    0x00007fb068f65a7c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 176)
   4.44%  ││  0x00007fb068f659f9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 177)
          ││  0x00007fb068f659fc:   nopl   0x0(%rax)
   0.83%  ││  0x00007fb068f65a00:   cmp    $0x20,%eax
          ││  0x00007fb068f65a03:   jle    0x00007fb068f65a90           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 178)
   0.13%  ││  0x00007fb068f65a09:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 179)
   4.90%  ││  0x00007fb068f65a0c:   cmp    $0x20,%eax
          ││  0x00007fb068f65a0f:   jle    0x00007fb068f65aa4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 180)
          ││  0x00007fb068f65a15:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 181)
   0.75%  ││  0x00007fb068f65a18:   cmp    $0x20,%eax
   0.14%  ││  0x00007fb068f65a1b:   nopl   0x0(%rax,%rax,1)
   7.59%  ││  0x00007fb068f65a20:   jle    0x00007fb068f65ab8           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 182)
          ││  0x00007fb068f65a26:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 183)
   0.69%  ││  0x00007fb068f65a29:   cmp    $0x20,%eax
          ││  0x00007fb068f65a2c:   jle    0x00007fb068f65acc           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 184)
   0.16%  ││  0x00007fb068f65a32:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 185)
   3.97%  ││  0x00007fb068f65a35:   cmp    $0x20,%eax
          ││  0x00007fb068f65a38:   jle    0x00007fb068f65ae0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@94 (line 186)
   0.75%  ││  0x00007fb068f65a3e:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@99 (line 187)
   0.50%  ││  0x00007fb068f65a41:   add    $0x20,%rsp
   0.13%  ││  0x00007fb068f65a45:   pop    %rbp
   6.11%  ││  0x00007fb068f65a46:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007fb068f65a4d:   ja     0x00007fb068f65af4
   1.18%  ││  0x00007fb068f65a53:   ret    
          ↘│  0x00007fb068f65a54:   mov    $0xffffff45,%esi
           │  0x00007fb068f65a59:   mov    %r11,%rbp
           │  0x00007fb068f65a5c:   mov    %eax,0x4(%rsp)
           │  0x00007fb068f65a60:   data16 xchg %ax,%ax
           │  0x00007fb068f65a63:   call   0x00007fb068a01600           ; ImmutableOopMap {rbp=Oop }
           │                                                            ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 172)
           │                                                            ;   {runtime_call UncommonTrapBlob}
           ↘  0x00007fb068f65a68:   mov    $0xffffff45,%esi
              0x00007fb068f65a6d:   mov    %r11,%rbp
....................................................................................................
  57.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 519 

              0x00007fb068f68ba6:   mov    0x38(%rsp),%r10
              0x00007fb068f68bab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fb068f68c5c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@30 (line 234)
              0x00007fb068f68bb3:   mov    $0x1,%ebp
              0x00007fb068f68bb8:   test   %r11d,%r11d
          ╭   0x00007fb068f68bbb:   jne    0x00007fb068f68bec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
          │   0x00007fb068f68bbd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@36 (line 235)
   4.21%  │↗  0x00007fb068f68bc0:   mov    0x40(%rsp),%rsi
   0.16%  ││  0x00007fb068f68bc5:   xchg   %ax,%ax
          ││  0x00007fb068f68bc7:   call   0x00007fb0689fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
  13.04%  ││  0x00007fb068f68bcc:   mov    0x38(%rsp),%r10
   6.07%  ││  0x00007fb068f68bd1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
  16.53%  ││  0x00007fb068f68bd9:   mov    0x348(%r15),%r11
   0.18%  ││  0x00007fb068f68be0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007fb068f68be4:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fb068f68be7:   test   %r10d,%r10d
          │╰  0x00007fb068f68bea:   je     0x00007fb068f68bc0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@36 (line 235)
          ↘   0x00007fb068f68bec:   movabs $0x7fb080c0dd10,%r10
              0x00007fb068f68bf6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@37 (line 235)
              0x00007fb068f68bf9:   mov    0x30(%rsp),%r10
....................................................................................................
  40.20%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 486 
  40.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 519 
   1.93%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
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
   0.43%  <...other 169 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 486 
  40.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 519 
   2.56%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  [unknown] 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%         interpreter  return entry points  
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  Assembler::locate_operand 
   0.00%           libjvm.so  Mutex::lock 
   0.00%           libjvm.so  os::PlatformMonitor::wait 
   0.00%         interpreter  nofast_iload  237 nofast_iload  
   0.00%      hsdis-amd64.so  putop 
   0.00%      hsdis-amd64.so  print_insn 
   0.05%  <...other 24 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.27%         c2, level 4
   2.56%              kernel
   0.08%           libjvm.so
   0.04%        libc-2.31.so
   0.02%                    
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1462.203 ns/op
# Warmup Iteration   2: 1460.614 ns/op
# Warmup Iteration   3: 1453.268 ns/op
# Warmup Iteration   4: 1454.071 ns/op
# Warmup Iteration   5: 1452.305 ns/op
Iteration   1: 1453.649 ns/op
Iteration   2: 1454.784 ns/op
Iteration   3: 1455.287 ns/op
Iteration   4: 1456.067 ns/op
Iteration   5: 1454.302 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  1454.818 ±(99.9%) 3.557 ns/op [Average]
  (min, avg, max) = (1453.649, 1454.818, 1456.067), stdev = 0.924
  CI (99.9%): [1451.261, 1458.375] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 113710 total address lines.
Perf output processed (skipped 55.583 seconds):
 Column 1: cycles (50502 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
interpreter, monitorenter  194 monitorenter  

                 --------------------------------------------------------------------------------
                 ----------------------------------------------------------------------
                 monitorenter  194 monitorenter  [0x00007f2aa89c6520, 0x00007f2aa89c6660]  320 bytes
                 --------------------------------------------------------------------------------
   2.37%           0x00007f2aa89c6520:   pop    %rax
   2.17%           0x00007f2aa89c6521:   cmp    (%rax),%rax
   1.10%           0x00007f2aa89c6524:   xor    %esi,%esi
                   0x00007f2aa89c6526:   mov    -0x48(%rbp),%rcx
                   0x00007f2aa89c652a:   lea    -0x48(%rbp),%rdx
          ╭        0x00007f2aa89c652e:   jmp    0x00007f2aa89c6546
   0.21%  │ ↗      0x00007f2aa89c6530:   cmpq   $0x0,0x8(%rcx)
          │ │      0x00007f2aa89c6538:   cmove  %rcx,%rsi
   0.07%  │ │      0x00007f2aa89c653c:   cmp    0x8(%rcx),%rax
          │╭│      0x00007f2aa89c6540:   je     0x00007f2aa89c654b
          │││      0x00007f2aa89c6542:   add    $0x10,%rcx
   0.25%  ↘││      0x00007f2aa89c6546:   cmp    %rdx,%rcx
           │╰      0x00007f2aa89c6549:   jne    0x00007f2aa89c6530
   0.15%   ↘       0x00007f2aa89c654b:   test   %rsi,%rsi
             ╭     0x00007f2aa89c654e:   jne    0x00007f2aa89c657c
   0.10%     │     0x00007f2aa89c6554:   mov    -0x48(%rbp),%rsi
   0.02%     │     0x00007f2aa89c6558:   sub    $0x10,%rsp
   0.08%     │     0x00007f2aa89c655c:   sub    $0x10,%rsi
   0.10%     │     0x00007f2aa89c6560:   mov    %rsp,%rcx
             │     0x00007f2aa89c6563:   mov    %rsi,-0x48(%rbp)
   0.07%     │╭    0x00007f2aa89c6567:   jmp    0x00007f2aa89c6577
             ││↗   0x00007f2aa89c656c:   mov    0x10(%rcx),%rdx
             │││   0x00007f2aa89c6570:   mov    %rdx,(%rcx)
             │││   0x00007f2aa89c6573:   add    $0x8,%rcx
   0.06%     │↘│   0x00007f2aa89c6577:   cmp    %rsi,%rcx
             │ ╰   0x00007f2aa89c657a:   jne    0x00007f2aa89c656c
   0.11%     ↘     0x00007f2aa89c657c:   inc    %r13
                   0x00007f2aa89c657f:   mov    %rax,0x8(%rsi)
   0.55%           0x00007f2aa89c6583:   mov    0x8(%rsi),%rcx
   0.92%           0x00007f2aa89c6587:   mov    $0x1,%eax
                   0x00007f2aa89c658c:   or     (%rcx),%rax
   1.37%           0x00007f2aa89c658f:   mov    %rax,(%rsi)
   0.37%           0x00007f2aa89c6592:   lock cmpxchg %rsi,(%rcx)
   4.03%           0x00007f2aa89c6597:   je     0x00007f2aa89c663a
                   0x00007f2aa89c659d:   sub    %rsp,%rax
   0.18%           0x00007f2aa89c65a0:   and    $0xfffffffffffff007,%rax
                   0x00007f2aa89c65a7:   mov    %rax,(%rsi)
   0.10%           0x00007f2aa89c65aa:   je     0x00007f2aa89c663a
                ╭  0x00007f2aa89c65b0:   call   0x00007f2aa89c65ba
                │  0x00007f2aa89c65b5:   jmp    0x00007f2aa89c663a
                ↘  0x00007f2aa89c65ba:   lea    0x8(%rsp),%rax
                   0x00007f2aa89c65bf:   mov    %r13,-0x40(%rbp)
                   0x00007f2aa89c65c3:   mov    %r15,%rdi
                   0x00007f2aa89c65c6:   vzeroupper 
                   0x00007f2aa89c65c9:   mov    %rbp,0x298(%r15)
                   0x00007f2aa89c65d0:   mov    %rax,0x288(%r15)
                   0x00007f2aa89c65d7:   test   $0xf,%esp
                   0x00007f2aa89c65dd:   je     0x00007f2aa89c65f5
....................................................................................................
  14.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
interpreter, fast_iaccess_0  221 fast_iaccess_0  

               0x00007f2aa89c7f20:   sub    $0x8,%rsp
               0x00007f2aa89c7f24:   vmovss %xmm0,(%rsp)
          ╭    0x00007f2aa89c7f29:   jmp    0x00007f2aa89c7f4a
          │    0x00007f2aa89c7f2b:   sub    $0x10,%rsp
          │    0x00007f2aa89c7f2f:   vmovsd %xmm0,(%rsp)
          │╭   0x00007f2aa89c7f34:   jmp    0x00007f2aa89c7f4a
          ││   0x00007f2aa89c7f36:   sub    $0x10,%rsp
          ││   0x00007f2aa89c7f3a:   mov    %rax,(%rsp)
          ││   0x00007f2aa89c7f3e:   movq   $0x0,0x8(%rsp)
          ││╭  0x00007f2aa89c7f47:   jmp    0x00007f2aa89c7f4a
   4.07%  │││  0x00007f2aa89c7f49:   push   %rax
   2.57%  ↘↘↘  0x00007f2aa89c7f4a:   mov    (%r14),%rax
   0.28%       0x00007f2aa89c7f4d:   movzwl 0x2(%r13),%edx
   0.01%       0x00007f2aa89c7f52:   mov    -0x30(%rbp),%rcx
   0.03%       0x00007f2aa89c7f56:   shl    $0x2,%edx
   0.21%       0x00007f2aa89c7f59:   mov    0x38(%rcx,%rdx,8),%rbx
   1.12%       0x00007f2aa89c7f5e:   inc    %r13
               0x00007f2aa89c7f61:   cmp    (%rax),%rax
   0.43%       0x00007f2aa89c7f64:   mov    (%rax,%rbx,1),%eax
   1.22%       0x00007f2aa89c7f67:   dec    %r13
               0x00007f2aa89c7f6a:   movzbl 0x4(%r13),%ebx
               0x00007f2aa89c7f6f:   add    $0x4,%r13
   0.03%       0x00007f2aa89c7f73:   movabs $0x7f2ac028c060,%r10
   0.20%       0x00007f2aa89c7f7d:   jmp    *(%r10,%rbx,8)
               0x00007f2aa89c7f81:   nopl   0x0(%rax)
               0x00007f2aa89c7f88:   add    %al,(%rax)
               0x00007f2aa89c7f8a:   add    %al,(%rax)
               0x00007f2aa89c7f8c:   add    %al,(%rax)
               0x00007f2aa89c7f8e:   add    %al,(%rax)
               0x00007f2aa89c7f90:   add    %al,(%rax)
               0x00007f2aa89c7f92:   add    %al,(%rax)
               0x00007f2aa89c7f94:   add    %al,(%rax)
               0x00007f2aa89c7f96:   add    %al,(%rax)
               0x00007f2aa89c7f98:   add    %al,(%rax)
....................................................................................................
  10.17%  <total for region 2>

....[Hottest Regions]...............................................................................
  14.40%         interpreter  monitorenter  194 monitorenter  
  10.17%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   8.35%         interpreter  monitorexit  195 monitorexit  
   7.78%         interpreter  goto  167 goto  
   7.68%         interpreter  dup  89 dup  
   6.76%         interpreter  istore_1  60 istore_1  
   6.43%         interpreter  aload  25 aload  
   6.14%         interpreter  astore  58 astore  
   6.04%         interpreter  aload_2  44 aload_2  
   5.10%         interpreter  iadd  96 iadd  
   2.48%         interpreter  monitorexit  195 monitorexit  
   1.73%         interpreter  iload_1  27 iload_1  
   1.49%         interpreter  new  187 new  
   1.10%         interpreter  method entry point (kind = zerolocals)  
   0.93%         interpreter  return entry points  
   0.92%         interpreter  ishl  120 ishl  
   0.86%         interpreter  invokespecial  183 invokespecial  
   0.76%         interpreter  aload_3  45 aload_3  
   0.72%         interpreter  astore_2  77 astore_2  
   0.69%         interpreter  astore_3  78 astore_3  
   9.48%  <...other 350 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  14.62%         interpreter  monitorenter  194 monitorenter  
  11.39%         interpreter  monitorexit  195 monitorexit  
  10.17%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   8.41%         interpreter  goto  167 goto  
   7.68%         interpreter  dup  89 dup  
   6.76%         interpreter  istore_1  60 istore_1  
   6.43%         interpreter  aload  25 aload  
   6.14%         interpreter  astore  58 astore  
   6.04%         interpreter  aload_2  44 aload_2  
   5.10%         interpreter  iadd  96 iadd  
   2.10%         interpreter  method entry point (kind = zerolocals)  
   1.73%         interpreter  iload_1  27 iload_1  
   1.58%         interpreter  new  187 new  
   1.47%         interpreter  ireturn  172 ireturn  
   1.43%         interpreter  invokespecial  183 invokespecial  
   1.18%              kernel  [unknown] 
   1.06%      perf-19934.map  [unknown] 
   0.93%         interpreter  return entry points  
   0.92%         interpreter  ishl  120 ishl  
   0.76%         interpreter  aload_3  45 aload_3  
   4.09%  <...other 105 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.60%         interpreter
   1.32%         c2, level 4
   1.18%              kernel
   1.06%      perf-19934.map
   0.69%           libjvm.so
   0.05%                    
   0.04%        libc-2.31.so
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 27.251 ns/op
# Warmup Iteration   2: 26.574 ns/op
# Warmup Iteration   3: 26.803 ns/op
# Warmup Iteration   4: 25.619 ns/op
# Warmup Iteration   5: 25.584 ns/op
Iteration   1: 25.614 ns/op
Iteration   2: 25.561 ns/op
Iteration   3: 25.598 ns/op
Iteration   4: 25.559 ns/op
Iteration   5: 25.639 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  25.594 ±(99.9%) 0.133 ns/op [Average]
  (min, avg, max) = (25.559, 25.594, 25.639), stdev = 0.035
  CI (99.9%): [25.461, 25.728] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 113129 total address lines.
Perf output processed (skipped 55.617 seconds):
 Column 1: cycles (50462 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 479 

                  # parm1:    rcx       = int
                  #           [sp+0x30]  (sp of caller)
                  0x00007f18dcf646a0:   mov    0x8(%rsi),%r10d
                  0x00007f18dcf646a4:   movabs $0x800000000,%r11
                  0x00007f18dcf646ae:   add    %r11,%r10
                  0x00007f18dcf646b1:   cmp    %r10,%rax
                  0x00007f18dcf646b4:   jne    0x00007f18dc9fbd80           ;   {runtime_call ic_miss_stub}
                  0x00007f18dcf646ba:   xchg   %ax,%ax
                  0x00007f18dcf646bc:   nopl   0x0(%rax)
                [Verified Entry Point]
   4.20%    ↗     0x00007f18dcf646c0:   mov    %eax,-0x14000(%rsp)
   4.12%    │     0x00007f18dcf646c7:   push   %rbp
   5.68%    │     0x00007f18dcf646c8:   sub    $0x20,%rsp                   ;*synchronization entry
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@-1 (line 225)
   1.01%    │     0x00007f18dcf646cc:   test   %ecx,%ecx
          ╭ │     0x00007f18dcf646ce:   je     0x00007f18dcf646f7           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 227)
   1.02%  │ │     0x00007f18dcf646d0:   mov    0x14(%rsi),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 230)
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
   2.26%  │ │     0x00007f18dcf646d3:   cmp    $0x1,%ecx
          │╭│     0x00007f18dcf646d6:   je     0x00007f18dcf646fb           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 227)
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
   0.47%  │││     0x00007f18dcf646d8:   add    $0xfffffffe,%ecx
   0.54%  ││╰     0x00007f18dcf646db:   call   0x00007f18dcf646c0           ; ImmutableOopMap {}
          ││                                                                ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
          ││                                                                ;   {optimized virtual_call}
  19.36%  ││      0x00007f18dcf646e0:   add    %ebp,%eax                    ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
   0.42%  ││   ↗  0x00007f18dcf646e2:   add    %ebp,%eax
   2.60%  ││  ↗│  0x00007f18dcf646e4:   add    $0x20,%rsp
   3.07%  ││  ││  0x00007f18dcf646e8:   pop    %rbp
   5.64%  ││  ││  0x00007f18dcf646e9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││ ╭││  0x00007f18dcf646f0:   ja     0x00007f18dcf6470c
   3.03%  ││ │││  0x00007f18dcf646f6:   ret    
   0.95%  ↘│ │││  0x00007f18dcf646f7:   mov    %edx,%eax
   0.54%   │ │╰│  0x00007f18dcf646f9:   jmp    0x00007f18dcf646e4
           ↘ │ │  0x00007f18dcf646fb:   mov    %edx,%eax
             │ ╰  0x00007f18dcf646fd:   jmp    0x00007f18dcf646e2           ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
             │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
             │    0x00007f18dcf646ff:   mov    %rax,%rsi
             │    0x00007f18dcf64702:   add    $0x20,%rsp
             │    0x00007f18dcf64706:   pop    %rbp
             │    0x00007f18dcf64707:   jmp    0x00007f18dcab0100           ;   {runtime_call _rethrow_Java}
             ↘    0x00007f18dcf6470c:   movabs $0x7f18dcf646e9,%r10         ;   {internal_word}
                  0x00007f18dcf64716:   mov    %r10,0x358(%r15)
....................................................................................................
  54.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 515 

              0x00007f18dcf67a26:   mov    0x38(%rsp),%r10
              0x00007f18dcf67a2b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f18dcf67adc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@30 (line 234)
              0x00007f18dcf67a33:   mov    $0x1,%ebp
              0x00007f18dcf67a38:   test   %r11d,%r11d
          ╭   0x00007f18dcf67a3b:   jne    0x00007f18dcf67a6c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
          │   0x00007f18dcf67a3d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@36 (line 235)
   1.54%  │↗  0x00007f18dcf67a40:   mov    0x40(%rsp),%rsi
          ││  0x00007f18dcf67a45:   xchg   %ax,%ax
          ││  0x00007f18dcf67a47:   call   0x00007f18dc9fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
   2.98%  ││  0x00007f18dcf67a4c:   mov    0x38(%rsp),%r10
  11.54%  ││  0x00007f18dcf67a51:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
   6.03%  ││  0x00007f18dcf67a59:   mov    0x348(%r15),%r11
          ││  0x00007f18dcf67a60:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f18dcf67a64:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f18dcf67a67:   test   %r10d,%r10d
          │╰  0x00007f18dcf67a6a:   je     0x00007f18dcf67a40           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@36 (line 235)
          ↘   0x00007f18dcf67a6c:   movabs $0x7f18f4e1bd10,%r10
              0x00007f18dcf67a76:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  22.09%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 480 

             # {method} {0x00007f18cd07e610} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f18dcf64aa0:   mov    0x8(%rsi),%r10d
             0x00007f18dcf64aa4:   movabs $0x800000000,%r11
             0x00007f18dcf64aae:   add    %r11,%r10
             0x00007f18dcf64ab1:   cmp    %r10,%rax
             0x00007f18dcf64ab4:   jne    0x00007f18dc9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f18dcf64aba:   xchg   %ax,%ax
             0x00007f18dcf64abc:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.58%     0x00007f18dcf64ac0:   mov    %eax,-0x14000(%rsp)
   1.62%     0x00007f18dcf64ac7:   push   %rbp
             0x00007f18dcf64ac8:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@-1 (line 110)
   0.91%     0x00007f18dcf64acc:   mov    0x14(%rsi),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   0.63%     0x00007f18dcf64acf:   mov    0x10(%rsi),%edx
             0x00007f18dcf64ad2:   shl    %edx                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 110)
   0.87%     0x00007f18dcf64ad4:   mov    $0x6,%ecx
             0x00007f18dcf64ad9:   xchg   %ax,%ax
   0.66%     0x00007f18dcf64adb:   call   0x00007f18dcf646c0           ; ImmutableOopMap {}
                                                                       ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
                                                                       ;   {optimized virtual_call}
   3.00%     0x00007f18dcf64ae0:   add    %ebp,%eax
   2.98%     0x00007f18dcf64ae2:   add    %ebp,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   3.07%     0x00007f18dcf64ae4:   add    $0x30,%rsp
             0x00007f18dcf64ae8:   pop    %rbp
   4.54%     0x00007f18dcf64ae9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f18dcf64af0:   ja     0x00007f18dcf64b04
   1.57%  │  0x00007f18dcf64af6:   ret                                 ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@-1 (line 110)
          │  0x00007f18dcf64af7:   mov    %rax,%rsi
          │  0x00007f18dcf64afa:   add    $0x30,%rsp
          │  0x00007f18dcf64afe:   pop    %rbp
          │  0x00007f18dcf64aff:   jmp    0x00007f18dcab0100           ;   {runtime_call _rethrow_Java}
          ↘  0x00007f18dcf64b04:   movabs $0x7f18dcf64ae9,%r10         ;   {internal_word}
             0x00007f18dcf64b0e:   mov    %r10,0x358(%r15)
             0x00007f18dcf64b15:   jmp    0x00007f18dca02700           ;   {runtime_call SafepointBlob}
             0x00007f18dcf64b1a:   hlt    
             0x00007f18dcf64b1b:   hlt    
....................................................................................................
  21.43%  <total for region 3>

....[Hottest Regions]...............................................................................
  54.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 479 
  22.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 515 
  21.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 480 
   0.47%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
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
   0.68%  <...other 251 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 479 
  22.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 515 
  21.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 480 
   1.32%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%           libjvm.so  xmlTextStream::write 
   0.00%           libjvm.so  clock_gettime@plt 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%           libjvm.so  jio_print 
   0.10%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.43%         c2, level 4
   1.32%              kernel
   0.10%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%      perf-19994.map
   0.00%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:10:48

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

Benchmark                                                  Mode  Cnt     Score   Error  Units
LockElisionBenchmark.baseline                              avgt    5     7.074 ± 0.042  ns/op
LockElisionBenchmark.baseline:·asm                         avgt            NaN            ---
LockElisionBenchmark.chain_method_calls                    avgt    5     7.109 ± 0.041  ns/op
LockElisionBenchmark.chain_method_calls:·asm               avgt            NaN            ---
LockElisionBenchmark.conditional_chain_method_calls        avgt    5     8.347 ± 1.010  ns/op
LockElisionBenchmark.conditional_chain_method_calls:·asm   avgt            NaN            ---
LockElisionBenchmark.conditional_nested_method_calls       avgt    5     8.548 ± 1.061  ns/op
LockElisionBenchmark.conditional_nested_method_calls:·asm  avgt            NaN            ---
LockElisionBenchmark.nested_synchronized                   avgt    5  1454.818 ± 3.557  ns/op
LockElisionBenchmark.nested_synchronized:·asm              avgt            NaN            ---
LockElisionBenchmark.recursive_method_calls                avgt    5    25.594 ± 0.133  ns/op
LockElisionBenchmark.recursive_method_calls:·asm           avgt            NaN            ---
