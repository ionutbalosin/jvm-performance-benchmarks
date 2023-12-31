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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.137 ns/op
# Warmup Iteration   2: 10.058 ns/op
# Warmup Iteration   3: 10.118 ns/op
# Warmup Iteration   4: 10.057 ns/op
# Warmup Iteration   5: 10.056 ns/op
Iteration   1: 10.056 ns/op
Iteration   2: 10.056 ns/op
Iteration   3: 10.056 ns/op
Iteration   4: 10.056 ns/op
Iteration   5: 10.057 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill":
  10.056 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (10.056, 10.056, 10.057), stdev = 0.001
  CI (99.9%): [10.055, 10.058] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill:asm":
PrintAssembly processed: 214313 total address lines.
Perf output processed (skipped 60.231 seconds):
 Column 1: cycles (51031 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 975 

              0x00007fdd0b24119c:   mov    $0x1,%r11
          ╭   0x00007fdd0b2411a3:   jmp    0x00007fdd0b2411ca           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@13 (line 194)
          │   0x00007fdd0b2411a8:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fdd0b2411b3:   data16 data16 xchg %ax,%ax
          │   0x00007fdd0b2411b7:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
          │↗  0x00007fdd0b2411c0:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
   3.54%  ││  0x00007fdd0b2411c7:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@13 (line 194)
          ││                                                            ;   {poll}
   0.15%  ↘│  0x00007fdd0b2411ca:   mov    0xd4(%r10),%r8d              ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@2 (line 80)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   0.21%   │  0x00007fdd0b2411d1:   mov    %r8d,0xd8(%r10)              ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@5 (line 80)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   0.13%   │  0x00007fdd0b2411d8:   mov    0xc(%r10),%r8d               ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@9 (line 82)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.31%   │  0x00007fdd0b2411dc:   mov    %r8d,0x70(%r10)              ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@157 (line 108)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   0.30%   │  0x00007fdd0b2411e0:   mov    0x10(%r10),%r8d              ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@14 (line 83)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   0.21%   │  0x00007fdd0b2411e4:   mov    %r8d,0x74(%r10)              ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@162 (line 109)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.34%   │  0x00007fdd0b2411e8:   mov    0x14(%r10),%r8d              ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@19 (line 84)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b2411ec:   mov    %r8d,0x78(%r10)              ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@167 (line 110)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.81%   │  0x00007fdd0b2411f0:   mov    0x18(%r10),%r8d              ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@24 (line 85)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   0.00%   │  0x00007fdd0b2411f4:   mov    %r8d,0x7c(%r10)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@173 (line 111)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.88%   │  0x00007fdd0b2411f8:   mov    0x1c(%r10),%r8d              ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@30 (line 86)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b2411fc:   mov    %r8d,0x80(%r10)              ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@179 (line 112)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.72%   │  0x00007fdd0b241203:   mov    0x20(%r10),%r8d              ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@36 (line 87)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b241207:   mov    %r8d,0x84(%r10)              ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@185 (line 113)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.69%   │  0x00007fdd0b24120e:   mov    0x24(%r10),%r8d              ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@42 (line 88)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b241212:   mov    %r8d,0x88(%r10)              ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@191 (line 114)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.74%   │  0x00007fdd0b241219:   mov    0x28(%r10),%r8d              ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@48 (line 89)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b24121d:   mov    %r8d,0x8c(%r10)              ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@197 (line 115)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.67%   │  0x00007fdd0b241224:   mov    0x2c(%r10),%r8d              ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@54 (line 90)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b241228:   mov    %r8d,0x90(%r10)              ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@203 (line 116)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.74%   │  0x00007fdd0b24122f:   mov    0x30(%r10),%r8d              ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@60 (line 91)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b241233:   mov    %r8d,0x94(%r10)              ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@209 (line 117)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.67%   │  0x00007fdd0b24123a:   mov    0x34(%r10),%r8d              ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@66 (line 92)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b24123e:   mov    %r8d,0x98(%r10)              ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@215 (line 118)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.71%   │  0x00007fdd0b241245:   mov    0x38(%r10),%r8d              ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@72 (line 93)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b241249:   mov    %r8d,0x9c(%r10)              ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@221 (line 119)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.95%   │  0x00007fdd0b241250:   mov    0x3c(%r10),%r8d              ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@78 (line 94)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b241254:   mov    %r8d,0xa0(%r10)              ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@227 (line 120)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.65%   │  0x00007fdd0b24125b:   mov    0x40(%r10),%r8d              ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@84 (line 95)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b24125f:   mov    %r8d,0xa4(%r10)              ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@233 (line 121)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.63%   │  0x00007fdd0b241266:   mov    0x44(%r10),%r8d              ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@90 (line 96)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b24126a:   mov    %r8d,0xa8(%r10)              ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@239 (line 122)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.71%   │  0x00007fdd0b241271:   mov    0x48(%r10),%r8d              ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@96 (line 97)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b241275:   mov    %r8d,0xac(%r10)              ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@245 (line 123)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.65%   │  0x00007fdd0b24127c:   mov    0x4c(%r10),%r8d              ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@102 (line 98)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b241280:   mov    %r8d,0xb0(%r10)              ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@251 (line 124)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.77%   │  0x00007fdd0b241287:   mov    0x50(%r10),%r8d              ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@108 (line 99)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b24128b:   mov    %r8d,0xb4(%r10)              ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@257 (line 125)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.82%   │  0x00007fdd0b241292:   mov    0x54(%r10),%r8d              ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@114 (line 100)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b241296:   mov    %r8d,0xb8(%r10)              ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@263 (line 126)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.63%   │  0x00007fdd0b24129d:   mov    0x58(%r10),%r8d              ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@120 (line 101)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b2412a1:   mov    %r8d,0xbc(%r10)              ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@269 (line 127)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.62%   │  0x00007fdd0b2412a8:   mov    0x5c(%r10),%r8d              ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@126 (line 102)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b2412ac:   mov    %r8d,0xc0(%r10)              ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@275 (line 128)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.74%   │  0x00007fdd0b2412b3:   mov    0x60(%r10),%r8d              ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@132 (line 103)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b2412b7:   mov    %r8d,0xc4(%r10)              ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@281 (line 129)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.70%   │  0x00007fdd0b2412be:   mov    0x64(%r10),%r8d              ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@138 (line 104)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b2412c2:   mov    %r8d,0xc8(%r10)              ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@287 (line 130)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │                                                            ;   {no_reloc}
   3.72%   │  0x00007fdd0b2412c9:   mov    0x68(%r10),%r8d              ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@144 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b2412cd:   mov    %r8d,0xcc(%r10)              ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@293 (line 131)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.96%   │  0x00007fdd0b2412d4:   mov    0x6c(%r10),%r8d              ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@150 (line 106)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │  0x00007fdd0b2412d8:   mov    %r8d,0xd0(%r10)              ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@299 (line 132)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.54%   │  0x00007fdd0b2412df:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@21 (line 195)
           │  0x00007fdd0b2412e2:   cmpb   $0x0,0x94(%rsi)
   0.21%   ╰  0x00007fdd0b2412e9:   je     0x00007fdd0b2411c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
              0x00007fdd0b2412ef:   mov    %r11,0x20(%rsp)
              0x00007fdd0b2412f4:   call   0x00007fdd21e92df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fdd0b2412f9:   nop
              0x00007fdd0b2412fa:   mov    0x18(%rsp),%rdx
              0x00007fdd0b2412ff:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@35 (line 197)
              0x00007fdd0b241303:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@41 (line 198)
              0x00007fdd0b24130b:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.12%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 975 
   0.74%               kernel  [unknown] 
   0.44%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.07%  <...other 341 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 975 
   2.52%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  _itoa_word 
   0.00%         libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.00%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  defaultStream::hold 
   0.19%  <...other 90 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.12%       jvmci, level 4
   2.52%               kernel
   0.14%            libjvm.so
   0.08%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu

# Run progress: 33.33% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.035 ns/op
# Warmup Iteration   2: 15.858 ns/op
# Warmup Iteration   3: 15.953 ns/op
# Warmup Iteration   4: 15.859 ns/op
# Warmup Iteration   5: 15.859 ns/op
Iteration   1: 15.858 ns/op
Iteration   2: 15.859 ns/op
Iteration   3: 15.858 ns/op
Iteration   4: 15.859 ns/op
Iteration   5: 15.859 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu":
  15.859 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (15.858, 15.859, 15.859), stdev = 0.001
  CI (99.9%): [15.857, 15.860] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu:asm":
PrintAssembly processed: 218267 total address lines.
Perf output processed (skipped 60.360 seconds):
 Column 1: cycles (50874 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 988 

              0x00007fa997242910:   cmpb   $0x0,0x94(%rsi)
              0x00007fa997242917:   jne    0x00007fa997242b52           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
              0x00007fa99724291d:   movq   $0x1,0x18(%rsp)
          ╭   0x00007fa997242926:   jmp    0x00007fa99724294f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@13 (line 194)
          │   0x00007fa99724292b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa997242936:   data16 data16 xchg %ax,%ax
          │   0x00007fa99724293a:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
   0.23%  │↗  0x00007fa997242940:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop r10=Oop [8]=Oop [16]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
          ││  0x00007fa997242947:   test   %eax,(%r8)                   ;   {poll}
   2.13%  ││  0x00007fa99724294a:   mov    %r11,0x18(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@13 (line 194)
          ↘│  0x00007fa99724294f:   mov    0xc(%r10),%r8d               ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 160)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.22%   │  0x00007fa997242953:   mov    0x10(%r10),%r9d              ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 161)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa997242957:   mov    0x14(%r10),%ecx              ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 162)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.12%   │  0x00007fa99724295b:   mov    0x18(%r10),%ebx              ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 163)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa99724295f:   mov    0x1c(%r10),%edi              ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 164)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.25%   │  0x00007fa997242963:   mov    0x20(%r10),%eax              ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 165)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa997242967:   mov    0x24(%r10),%ebp              ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 166)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.20%   │  0x00007fa99724296b:   mov    0x28(%r10),%r13d             ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 167)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa99724296f:   mov    0x2c(%r10),%r14d             ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 168)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.19%   │  0x00007fa997242973:   mov    0x30(%r10),%edx              ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 169)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa997242977:   mov    0x34(%r10),%esi              ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@58 (line 170)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.27%   │  0x00007fa99724297b:   mov    0x38(%r10),%r11d             ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 171)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa99724297f:   mov    %r11d,0x48(%rsp)
   0.26%   │  0x00007fa997242984:   mov    0x3c(%r10),%r11d             ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 172)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa997242988:   mov    %r11d,0x4c(%rsp)
   2.04%   │  0x00007fa99724298d:   mov    0x40(%r10),%r11d             ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 173)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa997242991:   mov    %r11d,0x50(%rsp)
   0.21%   │  0x00007fa997242996:   mov    0x44(%r10),%r11d             ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 174)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa99724299a:   mov    %r11d,0x54(%rsp)
   2.17%   │  0x00007fa99724299f:   mov    0x48(%r10),%r11d             ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 175)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa9972429a3:   mov    %r11d,0x58(%rsp)
   0.24%   │  0x00007fa9972429a8:   mov    0x4c(%r10),%r11d             ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 176)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa9972429ac:   mov    %r11d,0x5c(%rsp)
   2.10%   │  0x00007fa9972429b1:   mov    0x50(%r10),%r11d             ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 177)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa9972429b5:   mov    %r11d,0x60(%rsp)
   0.37%   │  0x00007fa9972429ba:   mov    0x54(%r10),%r11d             ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 178)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa9972429be:   mov    %r11d,0x64(%rsp)
   1.98%   │  0x00007fa9972429c3:   mov    0x58(%r10),%r11d             ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 179)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa9972429c7:   mov    %r11d,0x68(%rsp)
   2.64%   │  0x00007fa9972429cc:   mov    0x5c(%r10),%r11d             ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 180)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa9972429d0:   mov    %r11d,0x6c(%rsp)
   2.31%   │  0x00007fa9972429d5:   mov    0x60(%r10),%r11d             ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 181)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa9972429d9:   mov    %r11d,0x70(%rsp)
   2.35%   │  0x00007fa9972429de:   mov    0x64(%r10),%r11d             ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 182)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa9972429e2:   mov    %r11d,0x74(%rsp)
   2.48%   │  0x00007fa9972429e7:   mov    0x68(%r10),%r11d             ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 183)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa9972429eb:   mov    %r11d,0x78(%rsp)
   2.30%   │  0x00007fa9972429f0:   mov    0x6c(%r10),%r11d             ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 184)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa9972429f4:   mov    %r11d,0x7c(%rsp)
   2.53%   │  0x00007fa9972429f9:   mov    0xd4(%r10),%r11d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 186)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fa997242a00:   mov    %r11d,0xd8(%r10)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 186)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.65%   │  0x00007fa997242a07:   mov    %r8d,0x70(%r10)              ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 188)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.52%   │  0x00007fa997242a0b:   mov    %r9d,0x74(%r10)              ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@162 (line 189)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.68%   │  0x00007fa997242a0f:   mov    %ecx,0x78(%r10)              ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 190)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.47%   │  0x00007fa997242a13:   mov    %ebx,0x7c(%r10)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 191)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   1.95%   │  0x00007fa997242a17:   mov    %edi,0x80(%r10)              ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 192)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.34%   │  0x00007fa997242a1e:   mov    %eax,0x84(%r10)              ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 193)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.18%   │  0x00007fa997242a25:   mov    %ebp,0x88(%r10)              ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 194)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.24%   │  0x00007fa997242a2c:   mov    %r13d,0x8c(%r10)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 195)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.21%   │  0x00007fa997242a33:   mov    %r14d,0x90(%r10)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 196)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.66%   │  0x00007fa997242a3a:   mov    %edx,0x94(%r10)              ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 197)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.19%   │  0x00007fa997242a41:   mov    %esi,0x98(%r10)              ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 198)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │                                                            ;   {no_reloc}
   2.14%   │  0x00007fa997242a48:   mov    0x48(%rsp),%r11d
   0.04%   │  0x00007fa997242a4d:   mov    %r11d,0x9c(%r10)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 199)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.33%   │  0x00007fa997242a54:   mov    0x4c(%rsp),%r11d
   0.03%   │  0x00007fa997242a59:   mov    %r11d,0xa0(%r10)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 200)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.42%   │  0x00007fa997242a60:   mov    0x50(%rsp),%r11d
           │  0x00007fa997242a65:   mov    %r11d,0xa4(%r10)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 201)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.46%   │  0x00007fa997242a6c:   mov    0x54(%rsp),%r11d
           │  0x00007fa997242a71:   mov    %r11d,0xa8(%r10)             ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 202)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.57%   │  0x00007fa997242a78:   mov    0x58(%rsp),%r11d
           │  0x00007fa997242a7d:   mov    %r11d,0xac(%r10)             ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 203)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.45%   │  0x00007fa997242a84:   mov    0x5c(%rsp),%r11d
           │  0x00007fa997242a89:   mov    %r11d,0xb0(%r10)             ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 204)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.16%   │  0x00007fa997242a90:   mov    0x60(%rsp),%r11d
           │  0x00007fa997242a95:   mov    %r11d,0xb4(%r10)             ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 205)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.54%   │  0x00007fa997242a9c:   mov    0x64(%rsp),%r11d
           │  0x00007fa997242aa1:   mov    %r11d,0xb8(%r10)             ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 206)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.28%   │  0x00007fa997242aa8:   mov    0x68(%rsp),%r11d
           │  0x00007fa997242aad:   mov    %r11d,0xbc(%r10)             ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 207)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.31%   │  0x00007fa997242ab4:   mov    0x6c(%rsp),%r11d
           │  0x00007fa997242ab9:   mov    %r11d,0xc0(%r10)             ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 208)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.19%   │  0x00007fa997242ac0:   mov    0x70(%rsp),%r11d
           │  0x00007fa997242ac5:   mov    %r11d,0xc4(%r10)             ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 209)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.41%   │  0x00007fa997242acc:   mov    0x74(%rsp),%r11d
           │  0x00007fa997242ad1:   mov    %r11d,0xc8(%r10)             ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 210)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.77%   │  0x00007fa997242ad8:   mov    0x78(%rsp),%r11d
           │  0x00007fa997242add:   mov    %r11d,0xcc(%r10)             ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 211)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.34%   │  0x00007fa997242ae4:   mov    0x7c(%rsp),%r11d
           │  0x00007fa997242ae9:   mov    %r11d,0xd0(%r10)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 212)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.19%   │  0x00007fa997242af0:   mov    0x18(%rsp),%r11
   0.00%   │  0x00007fa997242af5:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@21 (line 195)
   0.23%   │  0x00007fa997242af8:   mov    0x10(%rsp),%rsi
           │  0x00007fa997242afd:   data16 xchg %ax,%ax
   2.19%   │  0x00007fa997242b00:   cmpb   $0x0,0x94(%rsi)
           ╰  0x00007fa997242b07:   je     0x00007fa997242940           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
              0x00007fa997242b0d:   mov    %r11,0x18(%rsp)
              0x00007fa997242b12:   call   0x00007fa9adb81df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa997242b17:   nop
              0x00007fa997242b18:   mov    0x8(%rsp),%rdx
              0x00007fa997242b1d:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@35 (line 197)
              0x00007fa997242b21:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@41 (line 198)
....................................................................................................
  97.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 988 
   0.86%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
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
   0.84%  <...other 284 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 988 
   1.93%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  outputStream::print 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  os::vsnprintf 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.19%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.72%       jvmci, level 4
   1.93%               kernel
   0.15%            libjvm.so
   0.08%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%     perf-1795878.map
   0.00%          c1, level 2
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu

# Run progress: 66.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.024 ns/op
# Warmup Iteration   2: 15.860 ns/op
# Warmup Iteration   3: 15.979 ns/op
# Warmup Iteration   4: 15.859 ns/op
# Warmup Iteration   5: 15.858 ns/op
Iteration   1: 15.858 ns/op
Iteration   2: 15.857 ns/op
Iteration   3: 15.858 ns/op
Iteration   4: 15.858 ns/op
Iteration   5: 15.861 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu":
  15.859 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (15.857, 15.859, 15.861), stdev = 0.002
  CI (99.9%): [15.852, 15.865] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu:asm":
PrintAssembly processed: 213521 total address lines.
Perf output processed (skipped 60.238 seconds):
 Column 1: cycles (50499 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 983 

              0x00007fc873242e10:   cmpb   $0x0,0x94(%rsi)
              0x00007fc873242e17:   jne    0x00007fc873243052           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
              0x00007fc873242e1d:   movq   $0x1,0x18(%rsp)
          ╭   0x00007fc873242e26:   jmp    0x00007fc873242e4f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@13 (line 194)
          │   0x00007fc873242e2b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fc873242e36:   data16 data16 xchg %ax,%ax
          │   0x00007fc873242e3a:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
   0.54%  │↗  0x00007fc873242e40:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop r10=Oop [8]=Oop [16]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
          ││  0x00007fc873242e47:   test   %eax,(%r8)                   ;   {poll}
   1.85%  ││  0x00007fc873242e4a:   mov    %r11,0x18(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@13 (line 194)
          ↘│  0x00007fc873242e4f:   mov    0xc(%r10),%r8d               ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 160)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.57%   │  0x00007fc873242e53:   mov    0x10(%r10),%r9d              ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 161)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242e57:   mov    0x14(%r10),%ecx              ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 162)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.88%   │  0x00007fc873242e5b:   mov    0x18(%r10),%ebx              ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 163)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242e5f:   mov    0x1c(%r10),%edi              ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 164)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.53%   │  0x00007fc873242e63:   mov    0x20(%r10),%eax              ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 165)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.00%   │  0x00007fc873242e67:   mov    0x24(%r10),%ebp              ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 166)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.83%   │  0x00007fc873242e6b:   mov    0x28(%r10),%r13d             ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 167)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242e6f:   mov    0x2c(%r10),%r14d             ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 168)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.56%   │  0x00007fc873242e73:   mov    0x30(%r10),%edx              ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 169)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242e77:   mov    0x34(%r10),%esi              ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@58 (line 170)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.78%   │  0x00007fc873242e7b:   mov    0x38(%r10),%r11d             ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 171)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242e7f:   mov    %r11d,0x48(%rsp)
   0.56%   │  0x00007fc873242e84:   mov    0x3c(%r10),%r11d             ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 172)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242e88:   mov    %r11d,0x4c(%rsp)
   1.88%   │  0x00007fc873242e8d:   mov    0x40(%r10),%r11d             ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 173)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242e91:   mov    %r11d,0x50(%rsp)
   0.52%   │  0x00007fc873242e96:   mov    0x44(%r10),%r11d             ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 174)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242e9a:   mov    %r11d,0x54(%rsp)
   1.89%   │  0x00007fc873242e9f:   mov    0x48(%r10),%r11d             ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 175)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242ea3:   mov    %r11d,0x58(%rsp)
   0.48%   │  0x00007fc873242ea8:   mov    0x4c(%r10),%r11d             ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 176)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242eac:   mov    %r11d,0x5c(%rsp)
   1.91%   │  0x00007fc873242eb1:   mov    0x50(%r10),%r11d             ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 177)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242eb5:   mov    %r11d,0x60(%rsp)
   0.70%   │  0x00007fc873242eba:   mov    0x54(%r10),%r11d             ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 178)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242ebe:   mov    %r11d,0x64(%rsp)
   1.65%   │  0x00007fc873242ec3:   mov    0x58(%r10),%r11d             ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 179)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242ec7:   mov    %r11d,0x68(%rsp)
   2.56%   │  0x00007fc873242ecc:   mov    0x5c(%r10),%r11d             ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 180)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242ed0:   mov    %r11d,0x6c(%rsp)
   2.00%   │  0x00007fc873242ed5:   mov    0x60(%r10),%r11d             ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 181)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242ed9:   mov    %r11d,0x70(%rsp)
   2.42%   │  0x00007fc873242ede:   mov    0x64(%r10),%r11d             ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 182)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242ee2:   mov    %r11d,0x74(%rsp)
   2.22%   │  0x00007fc873242ee7:   mov    0x68(%r10),%r11d             ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 183)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242eeb:   mov    %r11d,0x78(%rsp)
   2.24%   │  0x00007fc873242ef0:   mov    0x6c(%r10),%r11d             ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 184)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242ef4:   mov    %r11d,0x7c(%rsp)
   2.41%   │  0x00007fc873242ef9:   mov    0xd4(%r10),%r11d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 186)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │  0x00007fc873242f00:   mov    %r11d,0xd8(%r10)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 186)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.95%   │  0x00007fc873242f07:   mov    %r8d,0x70(%r10)              ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 188)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.35%   │  0x00007fc873242f0b:   mov    %r9d,0x74(%r10)              ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@162 (line 189)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   3.04%   │  0x00007fc873242f0f:   mov    %ecx,0x78(%r10)              ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 190)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.46%   │  0x00007fc873242f13:   mov    %ebx,0x7c(%r10)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 191)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.93%   │  0x00007fc873242f17:   mov    %edi,0x80(%r10)              ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 192)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.47%   │  0x00007fc873242f1e:   mov    %eax,0x84(%r10)              ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 193)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.26%   │  0x00007fc873242f25:   mov    %ebp,0x88(%r10)              ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 194)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.21%   │  0x00007fc873242f2c:   mov    %r13d,0x8c(%r10)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 195)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.33%   │  0x00007fc873242f33:   mov    %r14d,0x90(%r10)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 196)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.63%   │  0x00007fc873242f3a:   mov    %edx,0x94(%r10)              ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 197)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.86%   │  0x00007fc873242f41:   mov    %esi,0x98(%r10)              ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 198)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │                                                            ;   {no_reloc}
   2.17%   │  0x00007fc873242f48:   mov    0x48(%rsp),%r11d
   0.05%   │  0x00007fc873242f4d:   mov    %r11d,0x9c(%r10)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 199)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.30%   │  0x00007fc873242f54:   mov    0x4c(%rsp),%r11d
   0.03%   │  0x00007fc873242f59:   mov    %r11d,0xa0(%r10)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 200)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.38%   │  0x00007fc873242f60:   mov    0x50(%rsp),%r11d
           │  0x00007fc873242f65:   mov    %r11d,0xa4(%r10)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 201)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.54%   │  0x00007fc873242f6c:   mov    0x54(%rsp),%r11d
           │  0x00007fc873242f71:   mov    %r11d,0xa8(%r10)             ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 202)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.64%   │  0x00007fc873242f78:   mov    0x58(%rsp),%r11d
           │  0x00007fc873242f7d:   mov    %r11d,0xac(%r10)             ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 203)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.17%   │  0x00007fc873242f84:   mov    0x5c(%rsp),%r11d
           │  0x00007fc873242f89:   mov    %r11d,0xb0(%r10)             ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 204)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.22%   │  0x00007fc873242f90:   mov    0x60(%rsp),%r11d
           │  0x00007fc873242f95:   mov    %r11d,0xb4(%r10)             ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 205)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.57%   │  0x00007fc873242f9c:   mov    0x64(%rsp),%r11d
           │  0x00007fc873242fa1:   mov    %r11d,0xb8(%r10)             ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 206)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.21%   │  0x00007fc873242fa8:   mov    0x68(%rsp),%r11d
           │  0x00007fc873242fad:   mov    %r11d,0xbc(%r10)             ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 207)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.43%   │  0x00007fc873242fb4:   mov    0x6c(%rsp),%r11d
           │  0x00007fc873242fb9:   mov    %r11d,0xc0(%r10)             ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 208)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.35%   │  0x00007fc873242fc0:   mov    0x70(%rsp),%r11d
           │  0x00007fc873242fc5:   mov    %r11d,0xc4(%r10)             ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 209)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.54%   │  0x00007fc873242fcc:   mov    0x74(%rsp),%r11d
           │  0x00007fc873242fd1:   mov    %r11d,0xc8(%r10)             ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 210)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.85%   │  0x00007fc873242fd8:   mov    0x78(%rsp),%r11d
           │  0x00007fc873242fdd:   mov    %r11d,0xcc(%r10)             ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 211)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.22%   │  0x00007fc873242fe4:   mov    0x7c(%rsp),%r11d
           │  0x00007fc873242fe9:   mov    %r11d,0xd0(%r10)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 212)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.08%   │  0x00007fc873242ff0:   mov    0x18(%rsp),%r11
           │  0x00007fc873242ff5:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@21 (line 195)
   0.22%   │  0x00007fc873242ff8:   mov    0x10(%rsp),%rsi
           │  0x00007fc873242ffd:   data16 xchg %ax,%ax
   2.16%   │  0x00007fc873243000:   cmpb   $0x0,0x94(%rsi)
   0.84%   ╰  0x00007fc873243007:   je     0x00007fc873242e40           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
              0x00007fc87324300d:   mov    %r11,0x18(%rsp)
              0x00007fc873243012:   call   0x00007fc88b6dedf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fc873243017:   nop
              0x00007fc873243018:   mov    0x8(%rsp),%rdx
              0x00007fc87324301d:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@35 (line 197)
              0x00007fc873243021:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@41 (line 198)
              0x00007fc873243029:   vcvtsi2sdq 0x18(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.44%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 983 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.90%  <...other 289 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 983 
   1.19%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.01%         libc-2.31.so  __strncmp_avx2 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  fileStream::flush 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.18%  <...other 82 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.44%       jvmci, level 4
   1.19%               kernel
   0.11%            libjvm.so
   0.10%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%     perf-1795949.map
....................................................................................................
  99.99%  <totals>



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

Benchmark                                            Mode  Cnt   Score   Error  Units
StackSpillingBenchmark.load_store_no_spill           avgt    5  10.056 ± 0.001  ns/op
StackSpillingBenchmark.load_store_no_spill:asm       avgt          NaN            ---
StackSpillingBenchmark.load_store_spill_no_fpu       avgt    5  15.859 ± 0.002  ns/op
StackSpillingBenchmark.load_store_spill_no_fpu:asm   avgt          NaN            ---
StackSpillingBenchmark.load_store_spill_use_fpu      avgt    5  15.859 ± 0.006  ns/op
StackSpillingBenchmark.load_store_spill_use_fpu:asm  avgt          NaN            ---
