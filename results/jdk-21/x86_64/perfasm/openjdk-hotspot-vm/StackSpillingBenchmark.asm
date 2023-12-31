# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 10.124 ns/op
# Warmup Iteration   2: 10.057 ns/op
# Warmup Iteration   3: 10.091 ns/op
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
PrintAssembly processed: 122894 total address lines.
Perf output processed (skipped 56.170 seconds):
 Column 1: cycles (50698 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 586 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@25 (line 196)
              0x00007fd1d863b808:   mov    $0x1,%ebp
              0x00007fd1d863b80d:   test   %r10d,%r10d
          ╭   0x00007fd1d863b810:   jne    0x00007fd1d863b952           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
          │   0x00007fd1d863b816:   data16 nopw 0x0(%rax,%rax,1)        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@31 (line 197)
          │↗  0x00007fd1d863b820:   mov    0xd4(%r8),%r10d              ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@2 (line 80)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.35%  ││  0x00007fd1d863b827:   mov    %r10d,0xd8(%r8)              ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@5 (line 80)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   0.05%  ││  0x00007fd1d863b82e:   movzbl 0x94(%r9),%ecx               ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@25 (line 196)
   0.32%  ││  0x00007fd1d863b836:   mov    0x6c(%r8),%r10d
          ││  0x00007fd1d863b83a:   mov    %r10d,0xd0(%r8)              ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@299 (line 132)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.65%  ││  0x00007fd1d863b841:   mov    0xc(%r8),%r11d
   0.07%  ││  0x00007fd1d863b845:   mov    %r11d,0x70(%r8)              ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@157 (line 108)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.67%  ││  0x00007fd1d863b849:   mov    0x68(%r8),%r10d
          ││  0x00007fd1d863b84d:   mov    %r10d,0xcc(%r8)              ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@293 (line 131)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.71%  ││  0x00007fd1d863b854:   mov    0x64(%r8),%r11d
          ││  0x00007fd1d863b858:   mov    %r11d,0xc8(%r8)              ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@287 (line 130)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.74%  ││  0x00007fd1d863b85f:   mov    0x60(%r8),%r10d
          ││  0x00007fd1d863b863:   mov    %r10d,0xc4(%r8)              ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@281 (line 129)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.71%  ││  0x00007fd1d863b86a:   mov    0x5c(%r8),%r11d
          ││  0x00007fd1d863b86e:   mov    %r11d,0xc0(%r8)              ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@275 (line 128)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.66%  ││  0x00007fd1d863b875:   mov    0x58(%r8),%r10d
          ││  0x00007fd1d863b879:   mov    %r10d,0xbc(%r8)              ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@269 (line 127)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.91%  ││  0x00007fd1d863b880:   mov    0x54(%r8),%r11d
          ││  0x00007fd1d863b884:   mov    %r11d,0xb8(%r8)              ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@263 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.75%  ││  0x00007fd1d863b88b:   mov    0x50(%r8),%r10d
          ││  0x00007fd1d863b88f:   mov    %r10d,0xb4(%r8)              ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@257 (line 125)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.77%  ││  0x00007fd1d863b896:   mov    0x4c(%r8),%r11d
          ││  0x00007fd1d863b89a:   mov    %r11d,0xb0(%r8)              ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@251 (line 124)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.91%  ││  0x00007fd1d863b8a1:   mov    0x48(%r8),%r10d
          ││  0x00007fd1d863b8a5:   mov    %r10d,0xac(%r8)              ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@245 (line 123)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.66%  ││  0x00007fd1d863b8ac:   mov    0x44(%r8),%r11d
          ││  0x00007fd1d863b8b0:   mov    %r11d,0xa8(%r8)              ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@239 (line 122)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.83%  ││  0x00007fd1d863b8b7:   add    $0x1,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@21 (line 195)
          ││  0x00007fd1d863b8bb:   mov    0x3c(%r8),%r11d
   0.09%  ││  0x00007fd1d863b8bf:   mov    %r11d,0xa0(%r8)              ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@227 (line 120)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.62%  ││  0x00007fd1d863b8c6:   mov    0x38(%r8),%r10d
   0.09%  ││  0x00007fd1d863b8ca:   mov    %r10d,0x9c(%r8)              ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@221 (line 119)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {no_reloc}
   3.73%  ││  0x00007fd1d863b8d1:   mov    0x34(%r8),%r11d
          ││  0x00007fd1d863b8d5:   mov    %r11d,0x98(%r8)              ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@215 (line 118)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.79%  ││  0x00007fd1d863b8dc:   mov    0x30(%r8),%r10d
          ││  0x00007fd1d863b8e0:   mov    %r10d,0x94(%r8)              ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@209 (line 117)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.69%  ││  0x00007fd1d863b8e7:   mov    0x2c(%r8),%r11d
   0.00%  ││  0x00007fd1d863b8eb:   mov    %r11d,0x90(%r8)              ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@203 (line 116)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.89%  ││  0x00007fd1d863b8f2:   mov    0x28(%r8),%r10d
          ││  0x00007fd1d863b8f6:   mov    %r10d,0x8c(%r8)              ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@197 (line 115)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.72%  ││  0x00007fd1d863b8fd:   mov    0x24(%r8),%r11d
          ││  0x00007fd1d863b901:   mov    %r11d,0x88(%r8)              ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@191 (line 114)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.82%  ││  0x00007fd1d863b908:   mov    0x20(%r8),%r10d
          ││  0x00007fd1d863b90c:   mov    %r10d,0x84(%r8)              ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@185 (line 113)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.87%  ││  0x00007fd1d863b913:   mov    0x1c(%r8),%r11d
          ││  0x00007fd1d863b917:   mov    %r11d,0x80(%r8)              ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@179 (line 112)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.73%  ││  0x00007fd1d863b91e:   mov    0x18(%r8),%r10d
          ││  0x00007fd1d863b922:   mov    %r10d,0x7c(%r8)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@173 (line 111)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.75%  ││  0x00007fd1d863b926:   mov    0x14(%r8),%r11d
   0.00%  ││  0x00007fd1d863b92a:   mov    %r11d,0x78(%r8)              ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@167 (line 110)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.76%  ││  0x00007fd1d863b92e:   mov    0x10(%r8),%r10d
          ││  0x00007fd1d863b932:   mov    %r10d,0x74(%r8)              ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@162 (line 109)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
   3.85%  ││  0x00007fd1d863b936:   mov    0x40(%r8),%r11d
          ││  0x00007fd1d863b93a:   mov    %r11d,0xa4(%r8)              ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@25 (line 196)
   3.46%  ││  0x00007fd1d863b941:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r8=Oop r9=Oop rbx=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
          ││  0x00007fd1d863b948:   test   %eax,(%rdi)                  ;   {poll}
   0.43%  ││  0x00007fd1d863b94a:   test   %ecx,%ecx
          │╰  0x00007fd1d863b94c:   je     0x00007fd1d863b820           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@31 (line 197)
          ↘   0x00007fd1d863b952:   movabs $0x7fd1ef2e5b90,%r10
              0x00007fd1d863b95c:   call   *%r10
              0x00007fd1d863b95f:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@32 (line 197)
                                                                        ;   {other}
              0x00007fd1d863b967:   mov    %rax,0x30(%rbx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@35 (line 197)
              0x00007fd1d863b96b:   mov    %r12,0x20(%rbx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 586 
   0.60%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.79%  <...other 250 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 586 
   1.67%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%              [vdso]  __vdso_clock_gettime 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.10%  <...other 46 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%         c2, level 4
   1.67%              kernel
   0.10%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu

# Run progress: 33.33% complete, ETA 00:03:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.164 ns/op
# Warmup Iteration   2: 10.747 ns/op
# Warmup Iteration   3: 10.483 ns/op
# Warmup Iteration   4: 11.189 ns/op
# Warmup Iteration   5: 11.139 ns/op
Iteration   1: 11.140 ns/op
Iteration   2: 11.138 ns/op
Iteration   3: 11.133 ns/op
Iteration   4: 11.163 ns/op
Iteration   5: 11.158 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu":
  11.147 ±(99.9%) 0.051 ns/op [Average]
  (min, avg, max) = (11.133, 11.147, 11.163), stdev = 0.013
  CI (99.9%): [11.095, 11.198] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu:asm":
PrintAssembly processed: 118478 total address lines.
Perf output processed (skipped 55.905 seconds):
 Column 1: cycles (50635 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 561 

                                                                       ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@25 (line 196)
                                                                       ;   {no_reloc}
             0x00007f11bc63aad4:   test   %r11d,%r11d
             0x00007f11bc63aad7:   jne    0x00007f11bc63ad0e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
             0x00007f11bc63aadd:   mov    $0x1,%r10d
             0x00007f11bc63aae3:   vmovq  %r10,%xmm12
             0x00007f11bc63aae8:   nopl   0x0(%rax,%rax,1)             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@31 (line 197)
   0.85%  ↗  0x00007f11bc63aaf0:   vmovq  %xmm0,%r11
          │  0x00007f11bc63aaf5:   mov    0x6c(%r11),%eax              ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 184)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.55%  │  0x00007f11bc63aaf9:   mov    0x68(%r11),%r10d             ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 183)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63aafd:   vmovd  %r10d,%xmm1
   0.75%  │  0x00007f11bc63ab02:   mov    0xd4(%r11),%r8d              ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 186)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab09:   vmovd  %r8d,%xmm3
   2.52%  │  0x00007f11bc63ab0e:   mov    0xc(%r11),%r10d              ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 160)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab12:   vmovd  %r10d,%xmm2
   0.75%  │  0x00007f11bc63ab17:   mov    0x10(%r11),%r8d              ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 161)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab1b:   vmovd  %r8d,%xmm5
   2.68%  │  0x00007f11bc63ab20:   mov    0x14(%r11),%r10d             ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 162)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab24:   vmovd  %r10d,%xmm4
   0.85%  │  0x00007f11bc63ab29:   mov    0x18(%r11),%r10d             ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 163)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab2d:   vmovd  %r10d,%xmm7
   2.58%  │  0x00007f11bc63ab32:   mov    0x1c(%r11),%r10d             ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 164)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab36:   vmovd  %r10d,%xmm6
   0.74%  │  0x00007f11bc63ab3b:   mov    0x20(%r11),%r10d             ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 165)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab3f:   vmovd  %r10d,%xmm9
   2.66%  │  0x00007f11bc63ab44:   mov    0x24(%r11),%r10d             ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 166)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab48:   vmovd  %r10d,%xmm10
   2.49%  │  0x00007f11bc63ab4d:   mov    0x28(%r11),%r10d             ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 167)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab51:   vmovd  %r10d,%xmm11
   2.70%  │  0x00007f11bc63ab56:   mov    0x2c(%r11),%r10d             ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 168)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab5a:   vmovd  %r10d,%xmm8
   3.46%  │  0x00007f11bc63ab5f:   mov    0x30(%r11),%r10d             ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 169)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab63:   vmovd  %r10d,%xmm13
   3.28%  │  0x00007f11bc63ab68:   vmovq  %xmm12,%r10
          │  0x00007f11bc63ab6d:   add    $0x1,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@21 (line 195)
   0.20%  │  0x00007f11bc63ab71:   vmovq  %r10,%xmm12
          │  0x00007f11bc63ab76:   mov    0x38(%r11),%r10d             ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 171)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   6.16%  │  0x00007f11bc63ab7a:   vmovd  %r10d,%xmm14
   0.28%  │  0x00007f11bc63ab7f:   mov    0x3c(%r11),%r10d             ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 172)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.22%  │  0x00007f11bc63ab83:   vmovd  %r10d,%xmm15
          │  0x00007f11bc63ab88:   mov    0x40(%r11),%r11d             ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 173)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.91%  │  0x00007f11bc63ab8c:   vmovq  %xmm0,%r10
   0.29%  │  0x00007f11bc63ab91:   mov    0x44(%r10),%r9d              ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 174)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.23%  │  0x00007f11bc63ab95:   mov    0x48(%r10),%r8d              ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 175)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63ab99:   mov    0x4c(%r10),%ebx              ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 176)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.99%  │  0x00007f11bc63ab9d:   mov    0x50(%r10),%ecx              ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 177)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.26%  │  0x00007f11bc63aba1:   mov    0x54(%r10),%edx              ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 178)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.22%  │  0x00007f11bc63aba5:   mov    0x58(%r10),%edi              ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 179)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63aba9:   mov    0x5c(%r10),%esi              ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 180)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   3.02%  │  0x00007f11bc63abad:   mov    0x60(%r10),%r13d             ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 181)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.27%  │  0x00007f11bc63abb1:   mov    0x64(%r10),%ebp              ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 182)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.23%  │  0x00007f11bc63abb5:   mov    0x34(%r10),%r14d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 186)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f11bc63abb9:   mov    %eax,0xd0(%r10)              ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 212)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.96%  │  0x00007f11bc63abc0:   mov    %r10,%rax
   0.25%  │  0x00007f11bc63abc3:   vmovd  %xmm1,%r10d
   0.28%  │  0x00007f11bc63abc8:   mov    %r10d,0xcc(%rax)             ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 211)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          │                                                            ;   {no_reloc}
          │  0x00007f11bc63abcf:   mov    %ebp,0xc8(%rax)              ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 210)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.99%  │  0x00007f11bc63abd5:   mov    %r13d,0xc4(%rax)             ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 209)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.26%  │  0x00007f11bc63abdc:   mov    %esi,0xc0(%rax)              ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 208)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.24%  │  0x00007f11bc63abe2:   mov    %edi,0xbc(%rax)              ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 207)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.11%  │  0x00007f11bc63abe8:   mov    %edx,0xb8(%rax)              ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 206)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.86%  │  0x00007f11bc63abee:   mov    %ecx,0xb4(%rax)              ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 205)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.90%  │  0x00007f11bc63abf4:   mov    %ebx,0xb0(%rax)              ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 204)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   1.02%  │  0x00007f11bc63abfa:   mov    %r8d,0xac(%rax)              ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 203)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.38%  │  0x00007f11bc63ac01:   mov    %r9d,0xa8(%rax)              ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 202)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   3.05%  │  0x00007f11bc63ac08:   mov    %r11d,0xa4(%rax)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 201)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.47%  │  0x00007f11bc63ac0f:   vmovd  %xmm15,%r10d
   0.08%  │  0x00007f11bc63ac14:   mov    %r10d,0xa0(%rax)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 200)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   1.25%  │  0x00007f11bc63ac1b:   vmovd  %xmm14,%r10d
   2.26%  │  0x00007f11bc63ac20:   mov    %r10d,0x9c(%rax)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.52%  │  0x00007f11bc63ac27:   mov    %r14d,0x98(%rax)             ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 198)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.10%  │  0x00007f11bc63ac2e:   vmovd  %xmm3,%r10d
   0.71%  │  0x00007f11bc63ac33:   mov    %r10d,0xd8(%rax)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 186)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.15%  │  0x00007f11bc63ac3a:   vmovd  %xmm2,%r10d
   0.47%  │  0x00007f11bc63ac3f:   mov    %r10d,0x70(%rax)             ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 188)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   1.36%  │  0x00007f11bc63ac43:   vmovd  %xmm13,%r10d
   0.60%  │  0x00007f11bc63ac48:   mov    %r10d,0x94(%rax)             ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 197)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   0.90%  │  0x00007f11bc63ac4f:   vmovd  %xmm8,%r10d
   0.48%  │  0x00007f11bc63ac54:   mov    %r10d,0x90(%rax)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 196)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   1.82%  │  0x00007f11bc63ac5b:   vmovd  %xmm11,%r10d
   0.59%  │  0x00007f11bc63ac60:   mov    %r10d,0x8c(%rax)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 195)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   1.00%  │  0x00007f11bc63ac67:   vmovd  %xmm10,%r10d
   0.42%  │  0x00007f11bc63ac6c:   mov    %r10d,0x88(%rax)             ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 194)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.41%  │  0x00007f11bc63ac73:   vmovd  %xmm9,%r11d
   0.60%  │  0x00007f11bc63ac78:   mov    %r11d,0x84(%rax)             ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 193)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.45%  │  0x00007f11bc63ac7f:   vmovd  %xmm6,%r10d
   0.49%  │  0x00007f11bc63ac84:   mov    %r10d,0x80(%rax)             ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 192)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.63%  │  0x00007f11bc63ac8b:   vmovd  %xmm7,%r8d
   0.36%  │  0x00007f11bc63ac90:   mov    %r8d,0x7c(%rax)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 191)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   3.34%  │  0x00007f11bc63ac94:   vmovd  %xmm4,%r11d
          │  0x00007f11bc63ac99:   mov    %r11d,0x78(%rax)             ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 190)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 143)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   3.38%  │  0x00007f11bc63ac9d:   vmovd  %xmm5,%r8d
          │  0x00007f11bc63aca2:   mov    %r8d,0x74(%rax)              ;*invokevirtual load_store_spill_no_fpu {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
   2.62%  │  0x00007f11bc63aca6:   mov    0x20(%rsp),%r10
          │  0x00007f11bc63acab:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@25 (line 196)
   0.79%  │  0x00007f11bc63acb3:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rax=Oop xmm0=Oop [32]=Oop [40]=Oop }
          │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
          │  0x00007f11bc63acba:   test   %eax,(%r11)                  ;   {poll}
   2.55%  │  0x00007f11bc63acbd:   data16 xchg %ax,%ax
          │  0x00007f11bc63acc0:   test   %r10d,%r10d
          ╰  0x00007f11bc63acc3:   je     0x00007f11bc63aaf0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
             0x00007f11bc63acc9:   vmovq  %xmm12,%rbx                  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@31 (line 197)
             0x00007f11bc63acce:   movabs $0x7f11d4725b90,%r10
             0x00007f11bc63acd8:   call   *%r10
             0x00007f11bc63acdb:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@32 (line 197)
                                                                       ;   {other}
....................................................................................................
  98.20%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 561 
   0.78%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%                      <unknown> 
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
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.57%  <...other 197 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 561 
   1.53%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%        libc-2.31.so  syscall 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%         interpreter  dup  89 dup  
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%           libjvm.so  InstanceKlass::find_method_index 
   0.00%           libjvm.so  clock_gettime@plt 
   0.00%        libc-2.31.so  __libc_disable_asynccancel 
   0.00%           libjvm.so  xmlStream::write_text 
   0.09%  <...other 47 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.20%         c2, level 4
   1.53%              kernel
   0.10%           libjvm.so
   0.07%                    
   0.05%        libc-2.31.so
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu

# Run progress: 66.67% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.160 ns/op
# Warmup Iteration   2: 10.753 ns/op
# Warmup Iteration   3: 10.479 ns/op
# Warmup Iteration   4: 11.171 ns/op
# Warmup Iteration   5: 11.172 ns/op
Iteration   1: 11.165 ns/op
Iteration   2: 11.153 ns/op
Iteration   3: 11.162 ns/op
Iteration   4: 11.159 ns/op
Iteration   5: 11.156 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu":
  11.159 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (11.153, 11.159, 11.165), stdev = 0.005
  CI (99.9%): [11.140, 11.178] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu:asm":
PrintAssembly processed: 121779 total address lines.
Perf output processed (skipped 56.113 seconds):
 Column 1: cycles (50718 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 596 

                                                                       ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@25 (line 196)
                                                                       ;   {no_reloc}
             0x00007f794863c954:   test   %r11d,%r11d
             0x00007f794863c957:   jne    0x00007f794863cb8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
             0x00007f794863c95d:   mov    $0x1,%r10d
             0x00007f794863c963:   vmovq  %r10,%xmm12
             0x00007f794863c968:   nopl   0x0(%rax,%rax,1)             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@31 (line 197)
   0.67%  ↗  0x00007f794863c970:   vmovq  %xmm0,%r11
          │  0x00007f794863c975:   mov    0x6c(%r11),%eax              ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 184)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.70%  │  0x00007f794863c979:   mov    0x68(%r11),%r10d             ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 183)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c97d:   vmovd  %r10d,%xmm1
   0.62%  │  0x00007f794863c982:   mov    0xd4(%r11),%r8d              ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 186)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c989:   vmovd  %r8d,%xmm3
   2.72%  │  0x00007f794863c98e:   mov    0xc(%r11),%r10d              ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 160)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c992:   vmovd  %r10d,%xmm2
   0.66%  │  0x00007f794863c997:   mov    0x10(%r11),%r8d              ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 161)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c99b:   vmovd  %r8d,%xmm5
   2.79%  │  0x00007f794863c9a0:   mov    0x14(%r11),%r10d             ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 162)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c9a4:   vmovd  %r10d,%xmm4
   0.67%  │  0x00007f794863c9a9:   mov    0x18(%r11),%r10d             ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 163)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c9ad:   vmovd  %r10d,%xmm7
   2.75%  │  0x00007f794863c9b2:   mov    0x1c(%r11),%r10d             ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 164)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c9b6:   vmovd  %r10d,%xmm6
   0.67%  │  0x00007f794863c9bb:   mov    0x20(%r11),%r10d             ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 165)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c9bf:   vmovd  %r10d,%xmm9
   2.93%  │  0x00007f794863c9c4:   mov    0x24(%r11),%r10d             ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 166)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c9c8:   vmovd  %r10d,%xmm10
   2.53%  │  0x00007f794863c9cd:   mov    0x28(%r11),%r10d             ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 167)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c9d1:   vmovd  %r10d,%xmm11
   2.90%  │  0x00007f794863c9d6:   mov    0x2c(%r11),%r10d             ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 168)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c9da:   vmovd  %r10d,%xmm8
   3.45%  │  0x00007f794863c9df:   mov    0x30(%r11),%r10d             ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 169)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863c9e3:   vmovd  %r10d,%xmm13
   3.21%  │  0x00007f794863c9e8:   vmovq  %xmm12,%r10
          │  0x00007f794863c9ed:   add    $0x1,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@21 (line 195)
   0.22%  │  0x00007f794863c9f1:   vmovq  %r10,%xmm12
          │  0x00007f794863c9f6:   mov    0x38(%r11),%r10d             ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 171)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   6.04%  │  0x00007f794863c9fa:   vmovd  %r10d,%xmm14
   0.21%  │  0x00007f794863c9ff:   mov    0x3c(%r11),%r10d             ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 172)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.19%  │  0x00007f794863ca03:   vmovd  %r10d,%xmm15
          │  0x00007f794863ca08:   mov    0x40(%r11),%r11d             ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 173)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   3.00%  │  0x00007f794863ca0c:   vmovq  %xmm0,%r10
   0.24%  │  0x00007f794863ca11:   mov    0x44(%r10),%r9d              ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 174)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.17%  │  0x00007f794863ca15:   mov    0x48(%r10),%r8d              ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 175)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863ca19:   mov    0x4c(%r10),%ebx              ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 176)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.99%  │  0x00007f794863ca1d:   mov    0x50(%r10),%ecx              ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 177)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.22%  │  0x00007f794863ca21:   mov    0x54(%r10),%edx              ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 178)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.19%  │  0x00007f794863ca25:   mov    0x58(%r10),%edi              ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 179)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863ca29:   mov    0x5c(%r10),%esi              ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 180)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   3.02%  │  0x00007f794863ca2d:   mov    0x60(%r10),%r13d             ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 181)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.19%  │  0x00007f794863ca31:   mov    0x64(%r10),%ebp              ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 182)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.18%  │  0x00007f794863ca35:   mov    0x34(%r10),%r14d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 186)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │  0x00007f794863ca39:   mov    %eax,0xd0(%r10)              ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 212)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   3.01%  │  0x00007f794863ca40:   mov    %r10,%rax
   0.23%  │  0x00007f794863ca43:   vmovd  %xmm1,%r10d
   0.18%  │  0x00007f794863ca48:   mov    %r10d,0xcc(%rax)             ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 211)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          │                                                            ;   {no_reloc}
          │  0x00007f794863ca4f:   mov    %ebp,0xc8(%rax)              ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 210)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.98%  │  0x00007f794863ca55:   mov    %r13d,0xc4(%rax)             ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 209)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.26%  │  0x00007f794863ca5c:   mov    %esi,0xc0(%rax)              ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 208)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.20%  │  0x00007f794863ca62:   mov    %edi,0xbc(%rax)              ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 207)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.16%  │  0x00007f794863ca68:   mov    %edx,0xb8(%rax)              ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 206)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.76%  │  0x00007f794863ca6e:   mov    %ecx,0xb4(%rax)              ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 205)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.78%  │  0x00007f794863ca74:   mov    %ebx,0xb0(%rax)              ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 204)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.80%  │  0x00007f794863ca7a:   mov    %r8d,0xac(%rax)              ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 203)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.46%  │  0x00007f794863ca81:   mov    %r9d,0xa8(%rax)              ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 202)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   3.18%  │  0x00007f794863ca88:   mov    %r11d,0xa4(%rax)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 201)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.40%  │  0x00007f794863ca8f:   vmovd  %xmm15,%r10d
   0.06%  │  0x00007f794863ca94:   mov    %r10d,0xa0(%rax)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 200)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.14%  │  0x00007f794863ca9b:   vmovd  %xmm14,%r10d
   2.37%  │  0x00007f794863caa0:   mov    %r10d,0x9c(%rax)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 199)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.35%  │  0x00007f794863caa7:   mov    %r14d,0x98(%rax)             ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 198)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.09%  │  0x00007f794863caae:   vmovd  %xmm3,%r10d
   0.63%  │  0x00007f794863cab3:   mov    %r10d,0xd8(%rax)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 186)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.41%  │  0x00007f794863caba:   vmovd  %xmm2,%r10d
   0.40%  │  0x00007f794863cabf:   mov    %r10d,0x70(%rax)             ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 188)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.61%  │  0x00007f794863cac3:   vmovd  %xmm13,%r10d
   0.60%  │  0x00007f794863cac8:   mov    %r10d,0x94(%rax)             ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 197)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.89%  │  0x00007f794863cacf:   vmovd  %xmm8,%r10d
   0.38%  │  0x00007f794863cad4:   mov    %r10d,0x90(%rax)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 196)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   1.96%  │  0x00007f794863cadb:   vmovd  %xmm11,%r10d
   0.55%  │  0x00007f794863cae0:   mov    %r10d,0x8c(%rax)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 195)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   0.98%  │  0x00007f794863cae7:   vmovd  %xmm10,%r10d
   0.41%  │  0x00007f794863caec:   mov    %r10d,0x88(%rax)             ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 194)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.46%  │  0x00007f794863caf3:   vmovd  %xmm9,%r11d
   0.47%  │  0x00007f794863caf8:   mov    %r11d,0x84(%rax)             ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 193)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.75%  │  0x00007f794863caff:   vmovd  %xmm6,%r10d
   0.37%  │  0x00007f794863cb04:   mov    %r10d,0x80(%rax)             ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 192)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.48%  │  0x00007f794863cb0b:   vmovd  %xmm7,%r8d
   0.33%  │  0x00007f794863cb10:   mov    %r8d,0x7c(%rax)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 191)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   3.69%  │  0x00007f794863cb14:   vmovd  %xmm4,%r11d
   0.00%  │  0x00007f794863cb19:   mov    %r11d,0x78(%rax)             ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 190)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 137)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   3.00%  │  0x00007f794863cb1d:   vmovd  %xmm5,%r8d
          │  0x00007f794863cb22:   mov    %r8d,0x74(%rax)              ;*invokevirtual load_store_spill_use_fpu {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
   2.79%  │  0x00007f794863cb26:   mov    0x20(%rsp),%r10
          │  0x00007f794863cb2b:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@25 (line 196)
   0.57%  │  0x00007f794863cb33:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rax=Oop xmm0=Oop [32]=Oop [40]=Oop }
          │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
          │  0x00007f794863cb3a:   test   %eax,(%r11)                  ;   {poll}
   2.76%  │  0x00007f794863cb3d:   data16 xchg %ax,%ax
          │  0x00007f794863cb40:   test   %r10d,%r10d
          ╰  0x00007f794863cb43:   je     0x00007f794863c970           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
             0x00007f794863cb49:   vmovq  %xmm12,%rbx                  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@31 (line 197)
             0x00007f794863cb4e:   movabs $0x7f795f109b90,%r10
             0x00007f794863cb58:   call   *%r10
             0x00007f794863cb5b:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@32 (line 197)
                                                                       ;   {other}
....................................................................................................
  98.04%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 596 
   0.77%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.70%  <...other 234 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 596 
   1.68%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%         interpreter  nofast_iload  237 nofast_iload  
   0.00%           libjvm.so  clock_gettime@plt 
   0.00%         interpreter  nofast_getfield  234 nofast_getfield  
   0.11%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.04%         c2, level 4
   1.68%              kernel
   0.12%           libjvm.so
   0.05%                    
   0.04%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:26

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
StackSpillingBenchmark.load_store_spill_no_fpu       avgt    5  11.147 ± 0.051  ns/op
StackSpillingBenchmark.load_store_spill_no_fpu:asm   avgt          NaN            ---
StackSpillingBenchmark.load_store_spill_use_fpu      avgt    5  11.159 ± 0.019  ns/op
StackSpillingBenchmark.load_store_spill_use_fpu:asm  avgt          NaN            ---
