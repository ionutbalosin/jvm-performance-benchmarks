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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.117 ns/op
# Warmup Iteration   2: 10.058 ns/op
# Warmup Iteration   3: 10.101 ns/op
# Warmup Iteration   4: 10.056 ns/op
# Warmup Iteration   5: 10.057 ns/op
Iteration   1: 10.057 ns/op
Iteration   2: 10.057 ns/op
Iteration   3: 10.057 ns/op
Iteration   4: 10.057 ns/op
Iteration   5: 10.057 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill":
  10.057 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (10.057, 10.057, 10.057), stdev = 0.001
  CI (99.9%): [10.056, 10.058] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill:asm":
PrintAssembly processed: 225228 total address lines.
Perf output processed (skipped 60.598 seconds):
 Column 1: cycles (50658 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 991 

              0x00007f629ed8345c:   mov    0x8(%rsp),%rsi
          ╭   0x00007f629ed83461:   jmp    0x00007f629ed8348a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@13 (line 194)
          │   0x00007f629ed83466:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f629ed83471:   data16 data16 xchg %ax,%ax
          │   0x00007f629ed83475:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
          │↗  0x00007f629ed83480:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
   3.46%  ││  0x00007f629ed83487:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@13 (line 194)
          ││                                                            ;   {poll}
   0.13%  ↘│  0x00007f629ed8348a:   mov    0xd4(%r10),%r8d              ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@2 (line 80)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   0.19%   │  0x00007f629ed83491:   mov    %r8d,0xd8(%r10)              ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@5 (line 80)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   0.16%   │  0x00007f629ed83498:   mov    0xc(%r10),%r8d               ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@9 (line 82)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.27%   │  0x00007f629ed8349c:   mov    %r8d,0x70(%r10)              ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@157 (line 108)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   0.39%   │  0x00007f629ed834a0:   mov    0x10(%r10),%r8d              ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@14 (line 83)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   0.26%   │  0x00007f629ed834a4:   mov    %r8d,0x74(%r10)              ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@162 (line 109)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.38%   │  0x00007f629ed834a8:   mov    0x14(%r10),%r8d              ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@19 (line 84)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed834ac:   mov    %r8d,0x78(%r10)              ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@167 (line 110)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.86%   │  0x00007f629ed834b0:   mov    0x18(%r10),%r8d              ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@24 (line 85)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed834b4:   mov    %r8d,0x7c(%r10)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@173 (line 111)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.82%   │  0x00007f629ed834b8:   mov    0x1c(%r10),%r8d              ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@30 (line 86)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed834bc:   mov    %r8d,0x80(%r10)              ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@179 (line 112)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.67%   │  0x00007f629ed834c3:   mov    0x20(%r10),%r8d              ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@36 (line 87)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed834c7:   mov    %r8d,0x84(%r10)              ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@185 (line 113)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.75%   │  0x00007f629ed834ce:   mov    0x24(%r10),%r8d              ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@42 (line 88)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed834d2:   mov    %r8d,0x88(%r10)              ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@191 (line 114)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.80%   │  0x00007f629ed834d9:   mov    0x28(%r10),%r8d              ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@48 (line 89)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed834dd:   mov    %r8d,0x8c(%r10)              ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@197 (line 115)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.89%   │  0x00007f629ed834e4:   mov    0x2c(%r10),%r8d              ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@54 (line 90)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed834e8:   mov    %r8d,0x90(%r10)              ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@203 (line 116)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.75%   │  0x00007f629ed834ef:   mov    0x30(%r10),%r8d              ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@60 (line 91)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed834f3:   mov    %r8d,0x94(%r10)              ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@209 (line 117)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.65%   │  0x00007f629ed834fa:   mov    0x34(%r10),%r8d              ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@66 (line 92)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed834fe:   mov    %r8d,0x98(%r10)              ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@215 (line 118)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.75%   │  0x00007f629ed83505:   mov    0x38(%r10),%r8d              ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@72 (line 93)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed83509:   mov    %r8d,0x9c(%r10)              ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@221 (line 119)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.97%   │  0x00007f629ed83510:   mov    0x3c(%r10),%r8d              ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@78 (line 94)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed83514:   mov    %r8d,0xa0(%r10)              ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@227 (line 120)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.64%   │  0x00007f629ed8351b:   mov    0x40(%r10),%r8d              ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@84 (line 95)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed8351f:   mov    %r8d,0xa4(%r10)              ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@233 (line 121)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.70%   │  0x00007f629ed83526:   mov    0x44(%r10),%r8d              ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@90 (line 96)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed8352a:   mov    %r8d,0xa8(%r10)              ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@239 (line 122)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.74%   │  0x00007f629ed83531:   mov    0x48(%r10),%r8d              ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@96 (line 97)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed83535:   mov    %r8d,0xac(%r10)              ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@245 (line 123)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.65%   │  0x00007f629ed8353c:   mov    0x4c(%r10),%r8d              ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@102 (line 98)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed83540:   mov    %r8d,0xb0(%r10)              ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@251 (line 124)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.84%   │  0x00007f629ed83547:   mov    0x50(%r10),%r8d              ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@108 (line 99)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed8354b:   mov    %r8d,0xb4(%r10)              ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@257 (line 125)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.75%   │  0x00007f629ed83552:   mov    0x54(%r10),%r8d              ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@114 (line 100)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed83556:   mov    %r8d,0xb8(%r10)              ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@263 (line 126)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.92%   │  0x00007f629ed8355d:   mov    0x58(%r10),%r8d              ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@120 (line 101)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed83561:   mov    %r8d,0xbc(%r10)              ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@269 (line 127)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.69%   │  0x00007f629ed83568:   mov    0x5c(%r10),%r8d              ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@126 (line 102)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed8356c:   mov    %r8d,0xc0(%r10)              ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@275 (line 128)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.62%   │  0x00007f629ed83573:   mov    0x60(%r10),%r8d              ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@132 (line 103)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed83577:   mov    %r8d,0xc4(%r10)              ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@281 (line 129)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.85%   │  0x00007f629ed8357e:   mov    0x64(%r10),%r8d              ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@138 (line 104)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed83582:   mov    %r8d,0xc8(%r10)              ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@287 (line 130)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │                                                            ;   {no_reloc}
   3.94%   │  0x00007f629ed83589:   mov    0x68(%r10),%r8d              ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@144 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed8358d:   mov    %r8d,0xcc(%r10)              ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@293 (line 131)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.84%   │  0x00007f629ed83594:   mov    0x6c(%r10),%r8d              ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@150 (line 106)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007f629ed83598:   mov    %r8d,0xd0(%r10)              ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@299 (line 132)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.48%   │  0x00007f629ed8359f:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@21 (line 195)
           │  0x00007f629ed835a2:   cmpb   $0x0,0x94(%rsi)
   0.26%   ╰  0x00007f629ed835a9:   je     0x00007f629ed83480           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
              0x00007f629ed835af:   mov    %r11,0x20(%rsp)
              0x00007f629ed835b4:   call   0x00007f62b530fdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f629ed835b9:   nop
              0x00007f629ed835ba:   mov    0x18(%rsp),%rdx
              0x00007f629ed835bf:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@35 (line 197)
              0x00007f629ed835c3:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@41 (line 198)
              0x00007f629ed835c7:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  98.08%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 991 
   0.49%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   0.85%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 991 
   1.58%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  syscall 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  clock_gettime@plt 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.12%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.08%      jvmci, level 4
   1.58%              kernel
   0.11%           libjvm.so
   0.09%                    
   0.09%        libc-2.31.so
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu

# Run progress: 33.33% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.363 ns/op
# Warmup Iteration   2: 15.858 ns/op
# Warmup Iteration   3: 15.897 ns/op
# Warmup Iteration   4: 15.858 ns/op
# Warmup Iteration   5: 15.858 ns/op
Iteration   1: 15.858 ns/op
Iteration   2: 15.858 ns/op
Iteration   3: 15.857 ns/op
Iteration   4: 15.857 ns/op
Iteration   5: 15.858 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu":
  15.858 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (15.857, 15.858, 15.858), stdev = 0.001
  CI (99.9%): [15.855, 15.860] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu:asm":
PrintAssembly processed: 229094 total address lines.
Perf output processed (skipped 60.790 seconds):
 Column 1: cycles (50959 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 998 

              0x00007f1de2d85252:   movq   $0x0,0x50(%rsp)
              0x00007f1de2d8525b:   mov    (%rsp),%r10
              0x00007f1de2d8525f:   nop
          ╭   0x00007f1de2d85260:   jmp    0x00007f1de2d8528f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@13 (line 194)
          │   0x00007f1de2d85265:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f1de2d85270:   data16 data16 xchg %ax,%ax
          │   0x00007f1de2d85274:   nopl   0x0(%rax,%rax,1)
          │   0x00007f1de2d8527c:   data16 data16 xchg %ax,%ax          ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
   0.61%  │↗  0x00007f1de2d85280:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop r10=Oop [8]=Oop [16]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
          ││  0x00007f1de2d85287:   test   %eax,(%r8)                   ;   {poll}
   1.81%  ││  0x00007f1de2d8528a:   mov    %r11,0x50(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f1de2d8528f:   mov    0xc(%r10),%r8d               ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 160)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.62%   │  0x00007f1de2d85293:   mov    0x10(%r10),%r9d              ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 161)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d85297:   mov    0x14(%r10),%ecx              ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 162)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   1.69%   │  0x00007f1de2d8529b:   mov    0x18(%r10),%ebx              ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 163)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d8529f:   mov    0x1c(%r10),%edi              ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 164)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.70%   │  0x00007f1de2d852a3:   mov    0x20(%r10),%eax              ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 165)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852a7:   mov    0x24(%r10),%ebp              ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 166)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   1.79%   │  0x00007f1de2d852ab:   mov    0x28(%r10),%r13d             ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 167)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852af:   mov    0x2c(%r10),%r14d             ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 168)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.64%   │  0x00007f1de2d852b3:   mov    0x30(%r10),%edx              ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 169)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852b7:   mov    0x34(%r10),%esi              ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@58 (line 170)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   1.73%   │  0x00007f1de2d852bb:   mov    0x38(%r10),%r11d             ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 171)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852bf:   mov    %r11d,0x4c(%rsp)
   0.58%   │  0x00007f1de2d852c4:   mov    0x3c(%r10),%r11d             ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 172)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852c8:   mov    %r11d,0x48(%rsp)
   1.64%   │  0x00007f1de2d852cd:   mov    0x40(%r10),%r11d             ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 173)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852d1:   mov    %r11d,0x44(%rsp)
   0.65%   │  0x00007f1de2d852d6:   mov    0x44(%r10),%r11d             ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 174)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852da:   mov    %r11d,0x40(%rsp)
   1.63%   │  0x00007f1de2d852df:   mov    0x48(%r10),%r11d             ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 175)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852e3:   mov    %r11d,0x3c(%rsp)
   0.65%   │  0x00007f1de2d852e8:   mov    0x4c(%r10),%r11d             ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 176)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852ec:   mov    %r11d,0x38(%rsp)
   1.74%   │  0x00007f1de2d852f1:   mov    0x50(%r10),%r11d             ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 177)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852f5:   mov    %r11d,0x34(%rsp)
   0.76%   │  0x00007f1de2d852fa:   mov    0x54(%r10),%r11d             ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 178)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d852fe:   mov    %r11d,0x30(%rsp)
   1.62%   │  0x00007f1de2d85303:   mov    0x58(%r10),%r11d             ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 179)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d85307:   mov    %r11d,0x2c(%rsp)
   2.62%   │  0x00007f1de2d8530c:   mov    0x5c(%r10),%r11d             ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 180)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d85310:   mov    %r11d,0x28(%rsp)
   1.86%   │  0x00007f1de2d85315:   mov    0x60(%r10),%r11d             ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 181)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d85319:   mov    %r11d,0x24(%rsp)
   2.41%   │  0x00007f1de2d8531e:   mov    0x64(%r10),%r11d             ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 182)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d85322:   mov    %r11d,0x20(%rsp)
   2.12%   │  0x00007f1de2d85327:   mov    0x68(%r10),%r11d             ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 183)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d8532b:   mov    %r11d,0x1c(%rsp)
   2.31%   │  0x00007f1de2d85330:   mov    0x6c(%r10),%r11d             ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 184)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d85334:   mov    %r11d,0x18(%rsp)
   2.23%   │  0x00007f1de2d85339:   mov    0xd4(%r10),%r11d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 186)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007f1de2d85340:   mov    %r11d,0xd8(%r10)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 186)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.69%   │  0x00007f1de2d85347:   mov    %r8d,0x70(%r10)              ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 188)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.13%   │  0x00007f1de2d8534b:   mov    %r9d,0x74(%r10)              ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@162 (line 189)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.56%   │  0x00007f1de2d8534f:   mov    %ecx,0x78(%r10)              ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 190)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.33%   │  0x00007f1de2d85353:   mov    %ebx,0x7c(%r10)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 191)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.02%   │  0x00007f1de2d85357:   mov    %edi,0x80(%r10)              ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 192)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.39%   │  0x00007f1de2d8535e:   mov    %eax,0x84(%r10)              ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 193)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.23%   │  0x00007f1de2d85365:   mov    %ebp,0x88(%r10)              ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 194)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.55%   │  0x00007f1de2d8536c:   mov    %r13d,0x8c(%r10)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 195)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.23%   │  0x00007f1de2d85373:   mov    %r14d,0x90(%r10)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 196)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.43%   │  0x00007f1de2d8537a:   mov    %edx,0x94(%r10)              ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 197)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.16%   │  0x00007f1de2d85381:   mov    %esi,0x98(%r10)              ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 198)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │                                                            ;   {no_reloc}
   1.97%   │  0x00007f1de2d85388:   mov    0x4c(%rsp),%r11d
   0.01%   │  0x00007f1de2d8538d:   mov    %r11d,0x9c(%r10)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 199)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.28%   │  0x00007f1de2d85394:   mov    0x48(%rsp),%r11d
   0.04%   │  0x00007f1de2d85399:   mov    %r11d,0xa0(%r10)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 200)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.30%   │  0x00007f1de2d853a0:   mov    0x44(%rsp),%r11d
           │  0x00007f1de2d853a5:   mov    %r11d,0xa4(%r10)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 201)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.55%   │  0x00007f1de2d853ac:   mov    0x40(%rsp),%r11d
           │  0x00007f1de2d853b1:   mov    %r11d,0xa8(%r10)             ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 202)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.49%   │  0x00007f1de2d853b8:   mov    0x3c(%rsp),%r11d
           │  0x00007f1de2d853bd:   mov    %r11d,0xac(%r10)             ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 203)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.25%   │  0x00007f1de2d853c4:   mov    0x38(%rsp),%r11d
           │  0x00007f1de2d853c9:   mov    %r11d,0xb0(%r10)             ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 204)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.33%   │  0x00007f1de2d853d0:   mov    0x34(%rsp),%r11d
           │  0x00007f1de2d853d5:   mov    %r11d,0xb4(%r10)             ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 205)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.39%   │  0x00007f1de2d853dc:   mov    0x30(%rsp),%r11d
           │  0x00007f1de2d853e1:   mov    %r11d,0xb8(%r10)             ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 206)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.22%   │  0x00007f1de2d853e8:   mov    0x2c(%rsp),%r11d
           │  0x00007f1de2d853ed:   mov    %r11d,0xbc(%r10)             ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 207)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.37%   │  0x00007f1de2d853f4:   mov    0x28(%rsp),%r11d
           │  0x00007f1de2d853f9:   mov    %r11d,0xc0(%r10)             ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 208)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.36%   │  0x00007f1de2d85400:   mov    0x24(%rsp),%r11d
           │  0x00007f1de2d85405:   mov    %r11d,0xc4(%r10)             ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 209)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.43%   │  0x00007f1de2d8540c:   mov    0x20(%rsp),%r11d
           │  0x00007f1de2d85411:   mov    %r11d,0xc8(%r10)             ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 210)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.73%   │  0x00007f1de2d85418:   mov    0x1c(%rsp),%r11d
           │  0x00007f1de2d8541d:   mov    %r11d,0xcc(%r10)             ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 211)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.23%   │  0x00007f1de2d85424:   mov    0x18(%rsp),%r11d
           │  0x00007f1de2d85429:   mov    %r11d,0xd0(%r10)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 212)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.30%   │  0x00007f1de2d85430:   mov    0x50(%rsp),%r11
           │  0x00007f1de2d85435:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@21 (line 195)
   0.21%   │  0x00007f1de2d85438:   mov    0x10(%rsp),%rsi
           │  0x00007f1de2d8543d:   data16 xchg %ax,%ax
   2.10%   │  0x00007f1de2d85440:   cmpb   $0x0,0x94(%rsi)
   1.86%   ╰  0x00007f1de2d85447:   je     0x00007f1de2d85280           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
              0x00007f1de2d8544d:   mov    %r11,0x50(%rsp)
              0x00007f1de2d85452:   call   0x00007f1dfc78cdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1de2d85457:   nop
              0x00007f1de2d85458:   mov    0x8(%rsp),%rdx
              0x00007f1de2d8545d:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@35 (line 197)
              0x00007f1de2d85461:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@41 (line 198)
              0x00007f1de2d85465:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  97.55%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 998 
   0.96%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.92%  <...other 299 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 998 
   2.11%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  os::current_thread_id 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         libc-2.31.so  __strchr_avx2 
   0.00%       hsdis-amd64.so  print_insn 
   0.16%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.55%       jvmci, level 4
   2.11%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.03%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%          interpreter
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.00%     perf-1796472.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu

# Run progress: 66.67% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.360 ns/op
# Warmup Iteration   2: 15.867 ns/op
# Warmup Iteration   3: 15.906 ns/op
# Warmup Iteration   4: 15.858 ns/op
# Warmup Iteration   5: 15.858 ns/op
Iteration   1: 15.858 ns/op
Iteration   2: 15.857 ns/op
Iteration   3: 15.869 ns/op
Iteration   4: 15.866 ns/op
Iteration   5: 16.079 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu":
  15.906 ±(99.9%) 0.373 ns/op [Average]
  (min, avg, max) = (15.857, 15.906, 16.079), stdev = 0.097
  CI (99.9%): [15.533, 16.279] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu:asm":
PrintAssembly processed: 225916 total address lines.
Perf output processed (skipped 60.698 seconds):
 Column 1: cycles (50720 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 981 

              0x00007fd0c6d82bd2:   movq   $0x0,0x50(%rsp)
              0x00007fd0c6d82bdb:   mov    (%rsp),%r10
              0x00007fd0c6d82bdf:   nop
          ╭   0x00007fd0c6d82be0:   jmp    0x00007fd0c6d82c0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@13 (line 194)
          │   0x00007fd0c6d82be5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fd0c6d82bf0:   data16 data16 xchg %ax,%ax
          │   0x00007fd0c6d82bf4:   nopl   0x0(%rax,%rax,1)
          │   0x00007fd0c6d82bfc:   data16 data16 xchg %ax,%ax          ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
   0.56%  │↗  0x00007fd0c6d82c00:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop r10=Oop [8]=Oop [16]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
          ││  0x00007fd0c6d82c07:   test   %eax,(%r8)                   ;   {poll}
   1.87%  ││  0x00007fd0c6d82c0a:   mov    %r11,0x50(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@13 (line 194)
   0.00%  ↘│  0x00007fd0c6d82c0f:   mov    0xc(%r10),%r8d               ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 160)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.56%   │  0x00007fd0c6d82c13:   mov    0x10(%r10),%r9d              ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 161)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82c17:   mov    0x14(%r10),%ecx              ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 162)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.83%   │  0x00007fd0c6d82c1b:   mov    0x18(%r10),%ebx              ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 163)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82c1f:   mov    0x1c(%r10),%edi              ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 164)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.60%   │  0x00007fd0c6d82c23:   mov    0x20(%r10),%eax              ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 165)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82c27:   mov    0x24(%r10),%ebp              ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 166)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.73%   │  0x00007fd0c6d82c2b:   mov    0x28(%r10),%r13d             ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 167)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.00%   │  0x00007fd0c6d82c2f:   mov    0x2c(%r10),%r14d             ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 168)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.57%   │  0x00007fd0c6d82c33:   mov    0x30(%r10),%edx              ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 169)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82c37:   mov    0x34(%r10),%esi              ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@58 (line 170)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.86%   │  0x00007fd0c6d82c3b:   mov    0x38(%r10),%r11d             ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 171)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82c3f:   mov    %r11d,0x4c(%rsp)
   0.55%   │  0x00007fd0c6d82c44:   mov    0x3c(%r10),%r11d             ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 172)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82c48:   mov    %r11d,0x48(%rsp)
   1.74%   │  0x00007fd0c6d82c4d:   mov    0x40(%r10),%r11d             ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 173)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82c51:   mov    %r11d,0x44(%rsp)
   0.56%   │  0x00007fd0c6d82c56:   mov    0x44(%r10),%r11d             ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 174)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82c5a:   mov    %r11d,0x40(%rsp)
   1.74%   │  0x00007fd0c6d82c5f:   mov    0x48(%r10),%r11d             ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 175)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.00%   │  0x00007fd0c6d82c63:   mov    %r11d,0x3c(%rsp)
   0.57%   │  0x00007fd0c6d82c68:   mov    0x4c(%r10),%r11d             ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 176)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82c6c:   mov    %r11d,0x38(%rsp)
   1.77%   │  0x00007fd0c6d82c71:   mov    0x50(%r10),%r11d             ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 177)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.00%   │  0x00007fd0c6d82c75:   mov    %r11d,0x34(%rsp)
   0.62%   │  0x00007fd0c6d82c7a:   mov    0x54(%r10),%r11d             ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 178)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82c7e:   mov    %r11d,0x30(%rsp)
   1.74%   │  0x00007fd0c6d82c83:   mov    0x58(%r10),%r11d             ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 179)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.00%   │  0x00007fd0c6d82c87:   mov    %r11d,0x2c(%rsp)
   2.47%   │  0x00007fd0c6d82c8c:   mov    0x5c(%r10),%r11d             ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 180)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.00%   │  0x00007fd0c6d82c90:   mov    %r11d,0x28(%rsp)
   1.95%   │  0x00007fd0c6d82c95:   mov    0x60(%r10),%r11d             ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 181)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.00%   │  0x00007fd0c6d82c99:   mov    %r11d,0x24(%rsp)
   2.35%   │  0x00007fd0c6d82c9e:   mov    0x64(%r10),%r11d             ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 182)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82ca2:   mov    %r11d,0x20(%rsp)
   1.94%   │  0x00007fd0c6d82ca7:   mov    0x68(%r10),%r11d             ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 183)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.00%   │  0x00007fd0c6d82cab:   mov    %r11d,0x1c(%rsp)
   2.34%   │  0x00007fd0c6d82cb0:   mov    0x6c(%r10),%r11d             ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 184)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fd0c6d82cb4:   mov    %r11d,0x18(%rsp)
   2.05%   │  0x00007fd0c6d82cb9:   mov    0xd4(%r10),%r11d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 186)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.00%   │  0x00007fd0c6d82cc0:   mov    %r11d,0xd8(%r10)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 186)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.66%   │  0x00007fd0c6d82cc7:   mov    %r8d,0x70(%r10)              ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 188)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.05%   │  0x00007fd0c6d82ccb:   mov    %r9d,0x74(%r10)              ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@162 (line 189)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.10%   │  0x00007fd0c6d82ccf:   mov    %ecx,0x78(%r10)              ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 190)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.94%   │  0x00007fd0c6d82cd3:   mov    %ebx,0x7c(%r10)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 191)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.12%   │  0x00007fd0c6d82cd7:   mov    %edi,0x80(%r10)              ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 192)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.97%   │  0x00007fd0c6d82cde:   mov    %eax,0x84(%r10)              ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 193)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.97%   │  0x00007fd0c6d82ce5:   mov    %ebp,0x88(%r10)              ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 194)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.03%   │  0x00007fd0c6d82cec:   mov    %r13d,0x8c(%r10)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 195)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.31%   │  0x00007fd0c6d82cf3:   mov    %r14d,0x90(%r10)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 196)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.22%   │  0x00007fd0c6d82cfa:   mov    %edx,0x94(%r10)              ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 197)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.07%   │  0x00007fd0c6d82d01:   mov    %esi,0x98(%r10)              ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 198)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │                                                            ;   {no_reloc}
   2.06%   │  0x00007fd0c6d82d08:   mov    0x4c(%rsp),%r11d
   0.07%   │  0x00007fd0c6d82d0d:   mov    %r11d,0x9c(%r10)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 199)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.18%   │  0x00007fd0c6d82d14:   mov    0x48(%rsp),%r11d
   0.02%   │  0x00007fd0c6d82d19:   mov    %r11d,0xa0(%r10)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 200)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.39%   │  0x00007fd0c6d82d20:   mov    0x44(%rsp),%r11d
   0.00%   │  0x00007fd0c6d82d25:   mov    %r11d,0xa4(%r10)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 201)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.53%   │  0x00007fd0c6d82d2c:   mov    0x40(%rsp),%r11d
           │  0x00007fd0c6d82d31:   mov    %r11d,0xa8(%r10)             ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 202)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.48%   │  0x00007fd0c6d82d38:   mov    0x3c(%rsp),%r11d
           │  0x00007fd0c6d82d3d:   mov    %r11d,0xac(%r10)             ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 203)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.33%   │  0x00007fd0c6d82d44:   mov    0x38(%rsp),%r11d
           │  0x00007fd0c6d82d49:   mov    %r11d,0xb0(%r10)             ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 204)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.38%   │  0x00007fd0c6d82d50:   mov    0x34(%rsp),%r11d
           │  0x00007fd0c6d82d55:   mov    %r11d,0xb4(%r10)             ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 205)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.42%   │  0x00007fd0c6d82d5c:   mov    0x30(%rsp),%r11d
           │  0x00007fd0c6d82d61:   mov    %r11d,0xb8(%r10)             ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 206)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.43%   │  0x00007fd0c6d82d68:   mov    0x2c(%rsp),%r11d
           │  0x00007fd0c6d82d6d:   mov    %r11d,0xbc(%r10)             ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 207)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.50%   │  0x00007fd0c6d82d74:   mov    0x28(%rsp),%r11d
           │  0x00007fd0c6d82d79:   mov    %r11d,0xc0(%r10)             ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 208)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.46%   │  0x00007fd0c6d82d80:   mov    0x24(%rsp),%r11d
   0.00%   │  0x00007fd0c6d82d85:   mov    %r11d,0xc4(%r10)             ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 209)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.37%   │  0x00007fd0c6d82d8c:   mov    0x20(%rsp),%r11d
           │  0x00007fd0c6d82d91:   mov    %r11d,0xc8(%r10)             ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 210)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.60%   │  0x00007fd0c6d82d98:   mov    0x1c(%rsp),%r11d
           │  0x00007fd0c6d82d9d:   mov    %r11d,0xcc(%r10)             ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 211)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.14%   │  0x00007fd0c6d82da4:   mov    0x18(%rsp),%r11d
           │  0x00007fd0c6d82da9:   mov    %r11d,0xd0(%r10)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 212)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.22%   │  0x00007fd0c6d82db0:   mov    0x50(%rsp),%r11
   0.00%   │  0x00007fd0c6d82db5:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@21 (line 195)
   0.12%   │  0x00007fd0c6d82db8:   mov    0x10(%rsp),%rsi
           │  0x00007fd0c6d82dbd:   data16 xchg %ax,%ax
   2.18%   │  0x00007fd0c6d82dc0:   cmpb   $0x0,0x94(%rsi)
   4.48%   ╰  0x00007fd0c6d82dc7:   je     0x00007fd0c6d82c00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
              0x00007fd0c6d82dcd:   mov    %r11,0x50(%rsp)
              0x00007fd0c6d82dd2:   call   0x00007fd0dde78df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd0c6d82dd7:   nop
              0x00007fd0c6d82dd8:   mov    0x8(%rsp),%rdx
              0x00007fd0c6d82ddd:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@35 (line 197)
              0x00007fd0c6d82de1:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@41 (line 198)
              0x00007fd0c6d82de5:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  97.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 981 
   0.95%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%               kernel  [unknown] 
   0.71%  <...other 271 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 981 
   1.87%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  _IO_fflush 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.00%   libpthread-2.31.so  __libc_write 
   0.16%  <...other 80 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.80%       jvmci, level 4
   1.87%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.02%                     
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%          interpreter
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:42

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

Benchmark                                            Mode  Cnt   Score   Error  Units
StackSpillingBenchmark.load_store_no_spill           avgt    5  10.057 ± 0.001  ns/op
StackSpillingBenchmark.load_store_no_spill:asm       avgt          NaN            ---
StackSpillingBenchmark.load_store_spill_no_fpu       avgt    5  15.858 ± 0.003  ns/op
StackSpillingBenchmark.load_store_spill_no_fpu:asm   avgt          NaN            ---
StackSpillingBenchmark.load_store_spill_use_fpu      avgt    5  15.906 ± 0.373  ns/op
StackSpillingBenchmark.load_store_spill_use_fpu:asm  avgt          NaN            ---
