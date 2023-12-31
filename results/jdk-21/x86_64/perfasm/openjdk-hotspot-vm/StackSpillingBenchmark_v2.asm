# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseFPUForSpilling
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.996 ns/op
# Warmup Iteration   2: 15.859 ns/op
# Warmup Iteration   3: 15.909 ns/op
# Warmup Iteration   4: 15.858 ns/op
# Warmup Iteration   5: 15.858 ns/op
Iteration   1: 15.858 ns/op
Iteration   2: 15.859 ns/op
Iteration   3: 15.859 ns/op
Iteration   4: 15.859 ns/op
Iteration   5: 15.859 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu":
  15.859 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (15.858, 15.859, 15.859), stdev = 0.001
  CI (99.9%): [15.856, 15.861] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu:asm":
PrintAssembly processed: 124461 total address lines.
Perf output processed (skipped 56.239 seconds):
 Column 1: cycles (51065 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 609 

                                                                       ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@25 (line 196)
             0x00007f31f063cc68:   test   %r11d,%r11d
             0x00007f31f063cc6b:   jne    0x00007f31f063ceb0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
             0x00007f31f063cc71:   mov    $0x1,%r10d
             0x00007f31f063cc77:   mov    %r10,0x30(%rsp)
             0x00007f31f063cc7c:   nopl   0x0(%rax)                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@31 (line 197)
          ↗  0x00007f31f063cc80:   mov    0x70(%rsp),%r11
   0.02%  │  0x00007f31f063cc85:   mov    0x6c(%r11),%eax              ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 184)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f31f063cc89:   mov    0x68(%r11),%r10d             ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 183)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.46%  │  0x00007f31f063cc8d:   mov    %r10d,(%rsp)
          │  0x00007f31f063cc91:   mov    0xd4(%r11),%r8d              ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 186)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.02%  │  0x00007f31f063cc98:   mov    %r8d,0x4(%rsp)
   0.04%  │  0x00007f31f063cc9d:   mov    0xc(%r11),%r10d              ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 160)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.38%  │  0x00007f31f063cca1:   mov    %r10d,0x8(%rsp)
   0.04%  │  0x00007f31f063cca6:   mov    0x10(%r11),%r8d              ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 161)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.04%  │  0x00007f31f063ccaa:   mov    %r8d,0xc(%rsp)
   2.33%  │  0x00007f31f063ccaf:   mov    0x14(%r11),%r10d             ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 162)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.00%  │  0x00007f31f063ccb3:   mov    %r10d,0x10(%rsp)
   2.34%  │  0x00007f31f063ccb8:   mov    0x18(%r11),%r10d             ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 163)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.00%  │  0x00007f31f063ccbc:   mov    %r10d,0x14(%rsp)
   2.45%  │  0x00007f31f063ccc1:   mov    0x1c(%r11),%r10d             ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 164)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f31f063ccc5:   mov    %r10d,0x18(%rsp)
   2.46%  │  0x00007f31f063ccca:   mov    0x20(%r11),%r10d             ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 165)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.00%  │  0x00007f31f063ccce:   mov    %r10d,0x1c(%rsp)
   2.35%  │  0x00007f31f063ccd3:   mov    0x24(%r11),%r10d             ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 166)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f31f063ccd7:   mov    %r10d,0x20(%rsp)
   2.36%  │  0x00007f31f063ccdc:   mov    0x28(%r11),%r10d             ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 167)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f31f063cce0:   mov    %r10d,0x24(%rsp)
   2.38%  │  0x00007f31f063cce5:   mov    0x2c(%r11),%r10d             ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 168)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f31f063cce9:   mov    %r10d,0x28(%rsp)
   2.31%  │  0x00007f31f063ccee:   mov    0x30(%r11),%r10d             ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 169)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f31f063ccf2:   mov    %r10d,0x2c(%rsp)
   2.35%  │  0x00007f31f063ccf7:   mov    0x30(%rsp),%r10
          │  0x00007f31f063ccfc:   add    $0x1,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@21 (line 195)
   0.05%  │  0x00007f31f063cd00:   mov    %r10,0x30(%rsp)
   2.31%  │  0x00007f31f063cd05:   mov    0x38(%r11),%r10d             ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 171)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.06%  │  0x00007f31f063cd09:   mov    %r10d,0x38(%rsp)
   2.33%  │  0x00007f31f063cd0e:   mov    0x3c(%r11),%r10d             ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 172)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.01%  │  0x00007f31f063cd12:   mov    %r10d,0x3c(%rsp)
   2.23%  │  0x00007f31f063cd17:   mov    0x40(%r11),%r11d             ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 173)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f31f063cd1b:   mov    0x70(%rsp),%r10
   0.05%  │  0x00007f31f063cd20:   mov    0x44(%r10),%r9d              ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 174)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.02%  │  0x00007f31f063cd24:   mov    0x48(%r10),%r8d              ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 175)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.21%  │  0x00007f31f063cd28:   mov    0x4c(%r10),%ebx              ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 176)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f31f063cd2c:   mov    0x50(%r10),%ecx              ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 177)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.05%  │  0x00007f31f063cd30:   mov    0x54(%r10),%edx              ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 178)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.02%  │  0x00007f31f063cd34:   mov    0x58(%r10),%edi              ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 179)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.25%  │  0x00007f31f063cd38:   mov    0x5c(%r10),%esi              ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 180)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f31f063cd3c:   mov    0x60(%r10),%r13d             ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 181)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.05%  │  0x00007f31f063cd40:   mov    0x64(%r10),%ebp              ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 182)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.01%  │  0x00007f31f063cd44:   mov    0x34(%r10),%r14d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 186)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.29%  │  0x00007f31f063cd48:   mov    %eax,0xd0(%r10)              ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 212)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │                                                            ;   {no_reloc}
   0.05%  │  0x00007f31f063cd4f:   mov    0x70(%rsp),%rax
   0.04%  │  0x00007f31f063cd54:   mov    (%rsp),%r10d
   0.01%  │  0x00007f31f063cd58:   mov    %r10d,0xcc(%rax)             ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 211)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.40%  │  0x00007f31f063cd5f:   mov    %ebp,0xc8(%rax)              ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 210)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.42%  │  0x00007f31f063cd65:   mov    %r13d,0xc4(%rax)             ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 209)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.39%  │  0x00007f31f063cd6c:   mov    %esi,0xc0(%rax)              ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 208)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.17%  │  0x00007f31f063cd72:   mov    %edi,0xbc(%rax)              ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 207)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.58%  │  0x00007f31f063cd78:   mov    %edx,0xb8(%rax)              ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 206)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.45%  │  0x00007f31f063cd7e:   mov    %ecx,0xb4(%rax)              ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 205)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.30%  │  0x00007f31f063cd84:   mov    %ebx,0xb0(%rax)              ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 204)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.32%  │  0x00007f31f063cd8a:   mov    %r8d,0xac(%rax)              ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 203)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.16%  │  0x00007f31f063cd91:   mov    %r9d,0xa8(%rax)              ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 202)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.41%  │  0x00007f31f063cd98:   mov    %r11d,0xa4(%rax)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 201)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.09%  │  0x00007f31f063cd9f:   mov    0x3c(%rsp),%r10d
   0.02%  │  0x00007f31f063cda4:   mov    %r10d,0xa0(%rax)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 200)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.25%  │  0x00007f31f063cdab:   mov    0x38(%rsp),%r10d
   0.03%  │  0x00007f31f063cdb0:   mov    %r10d,0x9c(%rax)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.39%  │  0x00007f31f063cdb7:   mov    %r14d,0x98(%rax)             ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 198)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.37%  │  0x00007f31f063cdbe:   mov    0x4(%rsp),%r10d
   0.02%  │  0x00007f31f063cdc3:   mov    %r10d,0xd8(%rax)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 186)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.28%  │  0x00007f31f063cdca:   mov    0x8(%rsp),%r10d
   0.03%  │  0x00007f31f063cdcf:   mov    %r10d,0x70(%rax)             ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 188)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.40%  │  0x00007f31f063cdd3:   mov    0x2c(%rsp),%r10d
          │  0x00007f31f063cdd8:   mov    %r10d,0x94(%rax)             ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 197)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.30%  │  0x00007f31f063cddf:   mov    0x28(%rsp),%r10d
          │  0x00007f31f063cde4:   mov    %r10d,0x90(%rax)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 196)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.30%  │  0x00007f31f063cdeb:   mov    0x24(%rsp),%r10d
          │  0x00007f31f063cdf0:   mov    %r10d,0x8c(%rax)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 195)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.30%  │  0x00007f31f063cdf7:   mov    0x20(%rsp),%r10d
          │  0x00007f31f063cdfc:   mov    %r10d,0x88(%rax)             ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 194)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.42%  │  0x00007f31f063ce03:   mov    0x1c(%rsp),%r11d
          │  0x00007f31f063ce08:   mov    %r11d,0x84(%rax)             ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 193)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.41%  │  0x00007f31f063ce0f:   mov    0x18(%rsp),%r10d
          │  0x00007f31f063ce14:   mov    %r10d,0x80(%rax)             ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 192)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.47%  │  0x00007f31f063ce1b:   mov    0x14(%rsp),%r8d
          │  0x00007f31f063ce20:   mov    %r8d,0x7c(%rax)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 191)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.32%  │  0x00007f31f063ce24:   mov    0x10(%rsp),%r11d
          │  0x00007f31f063ce29:   mov    %r11d,0x78(%rax)             ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 190)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.47%  │  0x00007f31f063ce2d:   mov    0xc(%rsp),%r8d
          │  0x00007f31f063ce32:   mov    %r8d,0x74(%rax)              ;*invokevirtual load_store_spill_no_fpu {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.30%  │  0x00007f31f063ce36:   mov    0x60(%rsp),%r10
          │  0x00007f31f063ce3b:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@25 (line 196)
   0.02%  │  0x00007f31f063ce43:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[96]=Oop [104]=Oop [112]=Oop }
          │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
          │  0x00007f31f063ce4a:   test   %eax,(%r11)                  ;   {poll}
   2.20%  │  0x00007f31f063ce4d:   test   %r10d,%r10d
          ╰  0x00007f31f063ce50:   je     0x00007f31f063cc80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
             0x00007f31f063ce56:   mov    0x30(%rsp),%rbx              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@31 (line 197)
             0x00007f31f063ce5b:   movabs $0x7f3208ac1b90,%r10
             0x00007f31f063ce65:   call   *%r10
             0x00007f31f063ce68:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@32 (line 197)
                                                                       ;   {other}
             0x00007f31f063ce70:   mov    0x68(%rsp),%r10
....................................................................................................
  97.36%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 609 
   1.28%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.75%  <...other 229 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 609 
   2.38%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%      hsdis-amd64.so  print_insn_i386 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%         interpreter  invokestatic  184 invokestatic  
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.11%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.36%         c2, level 4
   2.38%              kernel
   0.12%           libjvm.so
   0.06%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:49

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

Benchmark                                           Mode  Cnt   Score   Error  Units
StackSpillingBenchmark.load_store_spill_no_fpu      avgt    5  15.859 ± 0.002  ns/op
StackSpillingBenchmark.load_store_spill_no_fpu:asm  avgt          NaN            ---
