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
# Warmup Iteration   1: 13.586 ns/op
# Warmup Iteration   2: 12.997 ns/op
# Warmup Iteration   3: 13.765 ns/op
# Warmup Iteration   4: 12.992 ns/op
# Warmup Iteration   5: 13.020 ns/op
Iteration   1: 13.024 ns/op
Iteration   2: 12.969 ns/op
Iteration   3: 12.979 ns/op
Iteration   4: 13.017 ns/op
Iteration   5: 12.819 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill":
  12.961 ±(99.9%) 0.321 ns/op [Average]
  (min, avg, max) = (12.819, 12.961, 13.024), stdev = 0.083
  CI (99.9%): [12.641, 13.282] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill:asm":
PrintAssembly processed: 124805 total address lines.
Perf output processed (skipped 56.231 seconds):
 Column 1: cycles (50287 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill, version 2, compile id 548 

                # {method} {0x00007fb3eb482570} &apos;load_store_no_spill&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fb46c637180:   mov    0x8(%rsi),%r10d
                0x00007fb46c637184:   movabs $0x7fb3ef000000,%r11
                0x00007fb46c63718e:   add    %r11,%r10
                0x00007fb46c637191:   cmp    %r10,%rax
                0x00007fb46c637194:   jne    0x00007fb46c0c4080           ;   {runtime_call ic_miss_stub}
                0x00007fb46c63719a:   xchg   %ax,%ax
                0x00007fb46c63719c:   nopl   0x0(%rax)
              [Verified Entry Point]
   2.96%        0x00007fb46c6371a0:   sub    $0x18,%rsp
                0x00007fb46c6371a7:   mov    %rbp,0x10(%rsp)
   4.29%        0x00007fb46c6371ac:   cmpl   $0x1,0x20(%r15)
   0.82%  ╭     0x00007fb46c6371b4:   jne    0x00007fb46c6372f8           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@-1 (line 82)
          │  ↗  0x00007fb46c6371ba:   mov    0xd4(%rsi),%r11d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@2 (line 82)
          │  │  0x00007fb46c6371c1:   mov    %r11d,0xd8(%rsi)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@5 (line 82)
   2.71%  │  │  0x00007fb46c6371c8:   mov    0x6c(%rsi),%r10d
   0.35%  │  │  0x00007fb46c6371cc:   mov    %r10d,0xd0(%rsi)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@299 (line 134)
   2.35%  │  │  0x00007fb46c6371d3:   mov    0x68(%rsi),%r11d
          │  │  0x00007fb46c6371d7:   mov    %r11d,0xcc(%rsi)             ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@293 (line 133)
   3.63%  │  │  0x00007fb46c6371de:   mov    0x64(%rsi),%r10d
   0.29%  │  │  0x00007fb46c6371e2:   mov    %r10d,0xc8(%rsi)             ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@287 (line 132)
   6.93%  │  │  0x00007fb46c6371e9:   mov    0x60(%rsi),%r11d
          │  │  0x00007fb46c6371ed:   mov    %r11d,0xc4(%rsi)             ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@281 (line 131)
   3.68%  │  │  0x00007fb46c6371f4:   mov    0x5c(%rsi),%r10d
   0.25%  │  │  0x00007fb46c6371f8:   mov    %r10d,0xc0(%rsi)             ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@275 (line 130)
   2.28%  │  │  0x00007fb46c6371ff:   mov    0x58(%rsi),%r11d
          │  │  0x00007fb46c637203:   mov    %r11d,0xbc(%rsi)             ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@269 (line 129)
   4.34%  │  │  0x00007fb46c63720a:   mov    0x54(%rsi),%r10d
   0.01%  │  │  0x00007fb46c63720e:   mov    %r10d,0xb8(%rsi)             ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@263 (line 128)
   0.23%  │  │  0x00007fb46c637215:   mov    0x50(%rsi),%r11d
          │  │  0x00007fb46c637219:   mov    %r11d,0xb4(%rsi)             ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@257 (line 127)
   3.48%  │  │  0x00007fb46c637220:   mov    0x4c(%rsi),%r10d
          │  │  0x00007fb46c637224:   mov    %r10d,0xb0(%rsi)             ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@251 (line 126)
   1.24%  │  │  0x00007fb46c63722b:   mov    0x48(%rsi),%r11d
          │  │  0x00007fb46c63722f:   mov    %r11d,0xac(%rsi)             ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@245 (line 125)
   2.33%  │  │  0x00007fb46c637236:   mov    0x44(%rsi),%r10d
          │  │  0x00007fb46c63723a:   mov    %r10d,0xa8(%rsi)             ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@239 (line 124)
   2.27%  │  │  0x00007fb46c637241:   mov    0x40(%rsi),%r11d
   0.00%  │  │  0x00007fb46c637245:   mov    %r11d,0xa4(%rsi)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@233 (line 123)
   1.36%  │  │  0x00007fb46c63724c:   mov    0x3c(%rsi),%r10d
          │  │  0x00007fb46c637250:   mov    %r10d,0xa0(%rsi)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@227 (line 122)
   2.54%  │  │  0x00007fb46c637257:   mov    0x38(%rsi),%r11d
          │  │  0x00007fb46c63725b:   mov    %r11d,0x9c(%rsi)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@221 (line 121)
   2.55%  │  │  0x00007fb46c637262:   mov    0x34(%rsi),%r10d
          │  │  0x00007fb46c637266:   mov    %r10d,0x98(%rsi)             ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@215 (line 120)
   2.26%  │  │  0x00007fb46c63726d:   mov    0x30(%rsi),%r11d
          │  │  0x00007fb46c637271:   mov    %r11d,0x94(%rsi)             ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@209 (line 119)
   2.86%  │  │  0x00007fb46c637278:   mov    0x2c(%rsi),%r10d
          │  │  0x00007fb46c63727c:   mov    %r10d,0x90(%rsi)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@203 (line 118)
   3.09%  │  │  0x00007fb46c637283:   mov    0x28(%rsi),%r11d
          │  │  0x00007fb46c637287:   mov    %r11d,0x8c(%rsi)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@197 (line 117)
   3.15%  │  │  0x00007fb46c63728e:   mov    0x24(%rsi),%r10d
          │  │  0x00007fb46c637292:   mov    %r10d,0x88(%rsi)             ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@191 (line 116)
          │  │                                                            ;   {no_reloc}
   2.59%  │  │  0x00007fb46c637299:   mov    0x20(%rsi),%r11d
          │  │  0x00007fb46c63729d:   mov    %r11d,0x84(%rsi)             ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@185 (line 115)
   2.89%  │  │  0x00007fb46c6372a4:   mov    0x1c(%rsi),%r10d
          │  │  0x00007fb46c6372a8:   mov    %r10d,0x80(%rsi)             ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@179 (line 114)
   2.94%  │  │  0x00007fb46c6372af:   mov    0x18(%rsi),%r11d
          │  │  0x00007fb46c6372b3:   mov    %r11d,0x7c(%rsi)             ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@173 (line 113)
   2.65%  │  │  0x00007fb46c6372b7:   mov    0x14(%rsi),%r10d
          │  │  0x00007fb46c6372bb:   mov    %r10d,0x78(%rsi)             ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@167 (line 112)
   2.70%  │  │  0x00007fb46c6372bf:   mov    0x10(%rsi),%r11d
          │  │  0x00007fb46c6372c3:   mov    %r11d,0x74(%rsi)             ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@162 (line 111)
   3.03%  │  │  0x00007fb46c6372c7:   mov    0xc(%rsi),%r10d
          │  │  0x00007fb46c6372cb:   mov    %r10d,0x70(%rsi)             ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@157 (line 110)
   2.89%  │  │  0x00007fb46c6372cf:   add    $0x10,%rsp
          │  │  0x00007fb46c6372d3:   pop    %rbp
   0.02%  │ ↗│  0x00007fb46c6372d4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fb46c6372db:   ja     0x00007fb46c6372e2
   2.95%  ││││  0x00007fb46c6372e1:   ret    
          │↘╰│  0x00007fb46c6372e2:   movabs $0x7fb46c6372d4,%r10         ;   {internal_word}
          │  │  0x00007fb46c6372ec:   mov    %r10,0x468(%r15)
          │  │  0x00007fb46c6372f3:   jmp    0x00007fb46c0cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007fb46c6372f8:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007fb46c6372fd:   jmp    0x00007fb46c6371ba
                0x00007fb46c637302:   hlt    
                0x00007fb46c637303:   hlt    
                0x00007fb46c637304:   hlt    
                0x00007fb46c637305:   hlt    
                0x00007fb46c637306:   hlt    
....................................................................................................
  84.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 584 

              0x00007fb46c63a524:   mov    0x28(%rsp),%r10
              0x00007fb46c63a529:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007fb46c63a5f0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@25 (line 196)
              0x00007fb46c63a531:   mov    $0x1,%ebp
              0x00007fb46c63a536:   test   %r10d,%r10d
          ╭   0x00007fb46c63a539:   jne    0x00007fb46c63a574           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
          │   0x00007fb46c63a53b:   nopl   0x0(%rax,%rax,1)             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@31 (line 197)
   3.13%  │↗  0x00007fb46c63a540:   mov    0x30(%rsp),%rsi
          ││  0x00007fb46c63a545:   xchg   %ax,%ax
          ││  0x00007fb46c63a547:   call   0x00007fb46c0c4380           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual load_store_no_spill {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007fb46c63a54c:   nopl   0x100023c(%rax,%rax,1)       ;*invokevirtual load_store_no_spill {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {other}
   0.04%  ││  0x00007fb46c63a554:   mov    0x28(%rsp),%r10
   2.78%  ││  0x00007fb46c63a559:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
   7.85%  ││  0x00007fb46c63a561:   mov    0x458(%r15),%r11
          ││  0x00007fb46c63a568:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
          ││  0x00007fb46c63a56c:   test   %eax,(%r11)                  ;   {poll}
   0.16%  ││  0x00007fb46c63a56f:   test   %r10d,%r10d
          │╰  0x00007fb46c63a572:   je     0x00007fb46c63a540           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@31 (line 197)
          ↘   0x00007fb46c63a574:   movabs $0x7fb481920b90,%r10
              0x00007fb46c63a57e:   call   *%r10
              0x00007fb46c63a581:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@32 (line 197)
                                                                        ;   {other}
              0x00007fb46c63a589:   mov    0x20(%rsp),%r10
              0x00007fb46c63a58e:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@35 (line 197)
....................................................................................................
  13.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  84.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill, version 2, compile id 548 
  13.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 584 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   0.63%  <...other 205 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  84.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill, version 2, compile id 548 
  13.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 584 
   0.90%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  clock_gettime@plt 
   0.00%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.00%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%           libjvm.so  xmlStream::write_text 
   0.08%  <...other 42 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.88%         c2, level 4
   0.90%              kernel
   0.09%           libjvm.so
   0.06%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
....................................................................................................
  99.99%  <totals>



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

# Run progress: 33.33% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.279 ns/op
# Warmup Iteration   2: 16.787 ns/op
# Warmup Iteration   3: 17.268 ns/op
# Warmup Iteration   4: 16.657 ns/op
# Warmup Iteration   5: 16.777 ns/op
Iteration   1: 16.715 ns/op
Iteration   2: 16.692 ns/op
Iteration   3: 16.716 ns/op
Iteration   4: 16.747 ns/op
Iteration   5: 16.772 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu":
  16.728 ±(99.9%) 0.120 ns/op [Average]
  (min, avg, max) = (16.692, 16.728, 16.772), stdev = 0.031
  CI (99.9%): [16.608, 16.848] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu:asm":
PrintAssembly processed: 123222 total address lines.
Perf output processed (skipped 56.082 seconds):
 Column 1: cycles (50846 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu, version 2, compile id 552 

                # {method} {0x00007fbc24479918} &apos;load_store_spill_no_fpu&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fbca8638380:   mov    0x8(%rsi),%r10d
                0x00007fbca8638384:   movabs $0x7fbc2f000000,%r11
                0x00007fbca863838e:   add    %r11,%r10
                0x00007fbca8638391:   cmp    %r10,%rax
                0x00007fbca8638394:   jne    0x00007fbca80c4080           ;   {runtime_call ic_miss_stub}
                0x00007fbca863839a:   xchg   %ax,%ax
                0x00007fbca863839c:   nopl   0x0(%rax)
              [Verified Entry Point]
   2.28%        0x00007fbca86383a0:   sub    $0x18,%rsp
                0x00007fbca86383a7:   mov    %rbp,0x10(%rsp)
   4.14%        0x00007fbca86383ac:   cmpl   $0x1,0x20(%r15)
   0.20%  ╭     0x00007fbca86383b4:   jne    0x00007fbca8638578           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@-1 (line 147)
          │  ↗  0x00007fbca86383ba:   mov    0xd4(%rsi),%r11d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 190)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca86383c1:   vmovd  %r11d,%xmm1
   2.08%  │  │  0x00007fbca86383c6:   mov    0xc(%rsi),%r10d              ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 164)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.18%  │  │  0x00007fbca86383ca:   vmovd  %r10d,%xmm0
   0.00%  │  │  0x00007fbca86383cf:   mov    0x10(%rsi),%r11d             ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 165)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca86383d3:   vmovd  %r11d,%xmm3
   2.30%  │  │  0x00007fbca86383d8:   mov    0x14(%rsi),%r10d             ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 166)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca86383dc:   vmovd  %r10d,%xmm2
   3.07%  │  │  0x00007fbca86383e1:   mov    0x18(%rsi),%r11d             ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 167)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca86383e5:   vmovd  %r11d,%xmm5
   1.44%  │  │  0x00007fbca86383ea:   mov    0x1c(%rsi),%r10d             ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 168)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca86383ee:   vmovd  %r10d,%xmm4
   3.18%  │  │  0x00007fbca86383f3:   mov    0x20(%rsi),%r11d             ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 169)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca86383f7:   vmovd  %r11d,%xmm7
   1.32%  │  │  0x00007fbca86383fc:   mov    0x24(%rsi),%r10d             ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 170)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca8638400:   vmovd  %r10d,%xmm6
   2.27%  │  │  0x00007fbca8638405:   mov    0x28(%rsi),%r11d             ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 171)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca8638409:   vmovd  %r11d,%xmm9
   2.26%  │  │  0x00007fbca863840e:   mov    0x2c(%rsi),%r10d             ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 172)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca8638412:   vmovd  %r10d,%xmm8
   2.48%  │  │  0x00007fbca8638417:   mov    0x30(%rsi),%r11d             ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 173)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca863841b:   vmovd  %r11d,%xmm11
   1.95%  │  │  0x00007fbca8638420:   mov    0x34(%rsi),%r10d             ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@58 (line 174)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca8638424:   vmovd  %r10d,%xmm12
   2.34%  │  │  0x00007fbca8638429:   mov    0x38(%rsi),%r10d             ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 175)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca863842d:   vmovd  %r10d,%xmm10
   3.21%  │  │  0x00007fbca8638432:   mov    0x3c(%rsi),%r10d             ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 176)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca8638436:   vmovd  %r10d,%xmm14
   1.24%  │  │  0x00007fbca863843b:   mov    0x40(%rsi),%r13d             ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 177)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca863843f:   mov    0x44(%rsi),%r10d             ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 178)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.97%  │  │  0x00007fbca8638443:   mov    0x48(%rsi),%r11d             ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 179)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca8638447:   mov    0x4c(%rsi),%r9d              ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 180)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.17%  │  │  0x00007fbca863844b:   mov    0x50(%rsi),%r8d              ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 181)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca863844f:   mov    0x54(%rsi),%ebx              ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 182)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.00%  │  │  0x00007fbca8638452:   mov    0x58(%rsi),%ecx              ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 183)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca8638455:   mov    0x5c(%rsi),%edx              ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 184)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.30%  │  │  0x00007fbca8638458:   mov    0x60(%rsi),%edi              ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 185)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca863845b:   mov    0x64(%rsi),%ebp              ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 186)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.01%  │  │  0x00007fbca863845e:   mov    0x68(%rsi),%eax              ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 187)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca8638461:   mov    0x6c(%rsi),%r14d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 190)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.30%  │  │  0x00007fbca8638465:   mov    %r14d,0xd0(%rsi)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 216)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca863846c:   mov    %eax,0xcc(%rsi)              ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 215)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.04%  │  │  0x00007fbca8638472:   mov    %ebp,0xc8(%rsi)              ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 214)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca8638478:   mov    %edi,0xc4(%rsi)              ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 213)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.25%  │  │  0x00007fbca863847e:   mov    %edx,0xc0(%rsi)              ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 212)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.78%  │  │  0x00007fbca8638484:   mov    %ecx,0xbc(%rsi)              ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 211)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.31%  │  │  0x00007fbca863848a:   mov    %ebx,0xb8(%rsi)              ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 210)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   4.12%  │  │  0x00007fbca8638490:   mov    %r8d,0xb4(%rsi)              ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 209)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │                                                            ;   {no_reloc}
   2.23%  │  │  0x00007fbca8638497:   mov    %r9d,0xb0(%rsi)              ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 208)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.56%  │  │  0x00007fbca863849e:   mov    %r11d,0xac(%rsi)             ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 207)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.40%  │  │  0x00007fbca86384a5:   mov    %r10d,0xa8(%rsi)             ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 206)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │  │  0x00007fbca86384ac:   mov    %r13d,0xa4(%rsi)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 205)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.05%  │  │  0x00007fbca86384b3:   vmovd  %xmm14,%r10d
   0.12%  │  │  0x00007fbca86384b8:   mov    %r10d,0xa0(%rsi)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 204)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.10%  │  │  0x00007fbca86384bf:   vmovd  %xmm1,%r10d
          │  │  0x00007fbca86384c4:   mov    %r10d,0xd8(%rsi)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 190)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.97%  │  │  0x00007fbca86384cb:   vmovd  %xmm10,%r10d
   0.13%  │  │  0x00007fbca86384d0:   mov    %r10d,0x9c(%rsi)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 203)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.08%  │  │  0x00007fbca86384d7:   vmovd  %xmm12,%r10d
          │  │  0x00007fbca86384dc:   mov    %r10d,0x98(%rsi)             ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 202)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   3.07%  │  │  0x00007fbca86384e3:   vmovd  %xmm11,%r11d
   0.13%  │  │  0x00007fbca86384e8:   mov    %r11d,0x94(%rsi)             ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 201)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.03%  │  │  0x00007fbca86384ef:   vmovd  %xmm8,%r10d
   0.00%  │  │  0x00007fbca86384f4:   mov    %r10d,0x90(%rsi)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 200)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.03%  │  │  0x00007fbca86384fb:   vmovd  %xmm9,%r11d
   0.12%  │  │  0x00007fbca8638500:   mov    %r11d,0x8c(%rsi)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 199)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.06%  │  │  0x00007fbca8638507:   vmovd  %xmm6,%r10d
          │  │  0x00007fbca863850c:   mov    %r10d,0x88(%rsi)             ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 198)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   3.27%  │  │  0x00007fbca8638513:   vmovd  %xmm7,%r11d
   0.00%  │  │  0x00007fbca8638518:   mov    %r11d,0x84(%rsi)             ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 197)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.26%  │  │  0x00007fbca863851f:   vmovd  %xmm4,%r10d
          │  │  0x00007fbca8638524:   mov    %r10d,0x80(%rsi)             ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 196)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.18%  │  │  0x00007fbca863852b:   vmovd  %xmm5,%r11d
          │  │  0x00007fbca8638530:   mov    %r11d,0x7c(%rsi)             ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 195)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.66%  │  │  0x00007fbca8638534:   vmovd  %xmm2,%r10d
          │  │  0x00007fbca8638539:   mov    %r10d,0x78(%rsi)             ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 194)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.94%  │  │  0x00007fbca863853d:   vmovd  %xmm3,%r11d
          │  │  0x00007fbca8638542:   mov    %r11d,0x74(%rsi)             ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@162 (line 193)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   3.24%  │  │  0x00007fbca8638546:   vmovd  %xmm0,%r10d
          │  │  0x00007fbca863854b:   mov    %r10d,0x70(%rsi)             ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 192)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.44%  │  │  0x00007fbca863854f:   add    $0x10,%rsp
          │  │  0x00007fbca8638553:   pop    %rbp
   0.93%  │ ↗│  0x00007fbca8638554:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fbca863855b:   ja     0x00007fbca8638562
   1.40%  ││││  0x00007fbca8638561:   ret    
          │↘╰│  0x00007fbca8638562:   movabs $0x7fbca8638554,%r10         ;   {internal_word}
          │  │  0x00007fbca863856c:   mov    %r10,0x468(%r15)
          │  │  0x00007fbca8638573:   jmp    0x00007fbca80cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007fbca8638578:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007fbca863857d:   jmp    0x00007fbca86383ba
                0x00007fbca8638582:   hlt    
                0x00007fbca8638583:   hlt    
                0x00007fbca8638584:   hlt    
                0x00007fbca8638585:   hlt    
                0x00007fbca8638586:   hlt    
....................................................................................................
  87.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 590 

              0x00007fbca863c5a4:   mov    0x28(%rsp),%r10
              0x00007fbca863c5a9:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007fbca863c670
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@25 (line 196)
              0x00007fbca863c5b1:   mov    $0x1,%ebp
              0x00007fbca863c5b6:   test   %r10d,%r10d
          ╭   0x00007fbca863c5b9:   jne    0x00007fbca863c5f4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
          │   0x00007fbca863c5bb:   nopl   0x0(%rax,%rax,1)             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@31 (line 197)
   2.19%  │↗  0x00007fbca863c5c0:   mov    0x30(%rsp),%rsi
          ││  0x00007fbca863c5c5:   xchg   %ax,%ax
          ││  0x00007fbca863c5c7:   call   0x00007fbca80c4380           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual load_store_spill_no_fpu {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007fbca863c5cc:   nopl   0x100023c(%rax,%rax,1)       ;*invokevirtual load_store_spill_no_fpu {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {other}
   0.83%  ││  0x00007fbca863c5d4:   mov    0x28(%rsp),%r10
   1.36%  ││  0x00007fbca863c5d9:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
   5.83%  ││  0x00007fbca863c5e1:   mov    0x458(%r15),%r11
          ││  0x00007fbca863c5e8:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
          ││  0x00007fbca863c5ec:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007fbca863c5ef:   test   %r10d,%r10d
          │╰  0x00007fbca863c5f2:   je     0x00007fbca863c5c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@31 (line 197)
          ↘   0x00007fbca863c5f4:   movabs $0x7fbcc034db90,%r10
              0x00007fbca863c5fe:   call   *%r10
              0x00007fbca863c601:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@32 (line 197)
                                                                        ;   {other}
              0x00007fbca863c609:   mov    0x20(%rsp),%r10
              0x00007fbca863c60e:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@35 (line 197)
....................................................................................................
  10.21%  <total for region 2>

....[Hottest Regions]...............................................................................
  87.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu, version 2, compile id 552 
  10.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 590 
   1.23%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.56%  <...other 216 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu, version 2, compile id 552 
  10.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 590 
   1.95%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%         interpreter  invokestatic  184 invokestatic  
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.12%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.79%         c2, level 4
   1.95%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-1956974.map
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
# Warmup Iteration   1: 17.021 ns/op
# Warmup Iteration   2: 16.486 ns/op
# Warmup Iteration   3: 16.963 ns/op
# Warmup Iteration   4: 16.647 ns/op
# Warmup Iteration   5: 16.589 ns/op
Iteration   1: 16.657 ns/op
Iteration   2: 16.774 ns/op
Iteration   3: 16.665 ns/op
Iteration   4: 16.448 ns/op
Iteration   5: 16.667 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu":
  16.642 ±(99.9%) 0.458 ns/op [Average]
  (min, avg, max) = (16.448, 16.642, 16.774), stdev = 0.119
  CI (99.9%): [16.184, 17.101] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu:asm":
PrintAssembly processed: 124226 total address lines.
Perf output processed (skipped 56.153 seconds):
 Column 1: cycles (50970 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu, version 2, compile id 558 

                # {method} {0x00007f961447c7a0} &apos;load_store_spill_use_fpu&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f9698637b00:   mov    0x8(%rsi),%r10d
                0x00007f9698637b04:   movabs $0x7f961f000000,%r11
                0x00007f9698637b0e:   add    %r11,%r10
                0x00007f9698637b11:   cmp    %r10,%rax
                0x00007f9698637b14:   jne    0x00007f96980c4080           ;   {runtime_call ic_miss_stub}
                0x00007f9698637b1a:   xchg   %ax,%ax
                0x00007f9698637b1c:   nopl   0x0(%rax)
              [Verified Entry Point]
   2.28%        0x00007f9698637b20:   sub    $0x18,%rsp
                0x00007f9698637b27:   mov    %rbp,0x10(%rsp)
   3.07%        0x00007f9698637b2c:   cmpl   $0x1,0x20(%r15)
   0.75%  ╭     0x00007f9698637b34:   jne    0x00007f9698637cf8           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@-1 (line 140)
          │  ↗  0x00007f9698637b3a:   mov    0xd4(%rsi),%r11d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 190)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637b41:   vmovd  %r11d,%xmm1
   1.58%  │  │  0x00007f9698637b46:   mov    0xc(%rsi),%r10d              ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 164)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.77%  │  │  0x00007f9698637b4a:   vmovd  %r10d,%xmm0
   0.00%  │  │  0x00007f9698637b4f:   mov    0x10(%rsi),%r11d             ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 165)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637b53:   vmovd  %r11d,%xmm3
   1.88%  │  │  0x00007f9698637b58:   mov    0x14(%rsi),%r10d             ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 166)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.32%  │  │  0x00007f9698637b5c:   vmovd  %r10d,%xmm2
   3.07%  │  │  0x00007f9698637b61:   mov    0x18(%rsi),%r11d             ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 167)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637b65:   vmovd  %r11d,%xmm5
   0.93%  │  │  0x00007f9698637b6a:   mov    0x1c(%rsi),%r10d             ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 168)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.29%  │  │  0x00007f9698637b6e:   vmovd  %r10d,%xmm4
   2.41%  │  │  0x00007f9698637b73:   mov    0x20(%rsi),%r11d             ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 169)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637b77:   vmovd  %r11d,%xmm7
   1.58%  │  │  0x00007f9698637b7c:   mov    0x24(%rsi),%r10d             ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 170)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.31%  │  │  0x00007f9698637b80:   vmovd  %r10d,%xmm6
   2.01%  │  │  0x00007f9698637b85:   mov    0x28(%rsi),%r11d             ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 171)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637b89:   vmovd  %r11d,%xmm9
   1.84%  │  │  0x00007f9698637b8e:   mov    0x2c(%rsi),%r10d             ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 172)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.28%  │  │  0x00007f9698637b92:   vmovd  %r10d,%xmm8
   2.17%  │  │  0x00007f9698637b97:   mov    0x30(%rsi),%r11d             ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 173)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637b9b:   vmovd  %r11d,%xmm11
   1.70%  │  │  0x00007f9698637ba0:   mov    0x34(%rsi),%r10d             ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@58 (line 174)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.33%  │  │  0x00007f9698637ba4:   vmovd  %r10d,%xmm12
   2.04%  │  │  0x00007f9698637ba9:   mov    0x38(%rsi),%r10d             ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 175)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637bad:   vmovd  %r10d,%xmm10
   2.52%  │  │  0x00007f9698637bb2:   mov    0x3c(%rsi),%r10d             ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 176)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637bb6:   vmovd  %r10d,%xmm14
   1.78%  │  │  0x00007f9698637bbb:   mov    0x40(%rsi),%r13d             ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 177)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637bbf:   mov    0x44(%rsi),%r10d             ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 178)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.49%  │  │  0x00007f9698637bc3:   mov    0x48(%rsi),%r11d             ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 179)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637bc7:   mov    0x4c(%rsi),%r9d              ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 180)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.90%  │  │  0x00007f9698637bcb:   mov    0x50(%rsi),%r8d              ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 181)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637bcf:   mov    0x54(%rsi),%ebx              ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 182)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.43%  │  │  0x00007f9698637bd2:   mov    0x58(%rsi),%ecx              ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 183)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637bd5:   mov    0x5c(%rsi),%edx              ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 184)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.76%  │  │  0x00007f9698637bd8:   mov    0x60(%rsi),%edi              ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 185)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637bdb:   mov    0x64(%rsi),%ebp              ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 186)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.45%  │  │  0x00007f9698637bde:   mov    0x68(%rsi),%eax              ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 187)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637be1:   mov    0x6c(%rsi),%r14d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 190)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.83%  │  │  0x00007f9698637be5:   mov    %r14d,0xd0(%rsi)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 216)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637bec:   mov    %eax,0xcc(%rsi)              ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 215)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.46%  │  │  0x00007f9698637bf2:   mov    %ebp,0xc8(%rsi)              ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 214)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │  0x00007f9698637bf8:   mov    %edi,0xc4(%rsi)              ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 213)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.76%  │  │  0x00007f9698637bfe:   mov    %edx,0xc0(%rsi)              ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 212)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.31%  │  │  0x00007f9698637c04:   mov    %ecx,0xbc(%rsi)              ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 211)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.12%  │  │  0x00007f9698637c0a:   mov    %ebx,0xb8(%rsi)              ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 210)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.58%  │  │  0x00007f9698637c10:   mov    %r8d,0xb4(%rsi)              ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 209)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │  │                                                            ;   {no_reloc}
   2.28%  │  │  0x00007f9698637c17:   mov    %r9d,0xb0(%rsi)              ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 208)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.53%  │  │  0x00007f9698637c1e:   mov    %r11d,0xac(%rsi)             ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 207)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.62%  │  │  0x00007f9698637c25:   mov    %r10d,0xa8(%rsi)             ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 206)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.02%  │  │  0x00007f9698637c2c:   mov    %r13d,0xa4(%rsi)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 205)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.73%  │  │  0x00007f9698637c33:   vmovd  %xmm14,%r10d
   0.32%  │  │  0x00007f9698637c38:   mov    %r10d,0xa0(%rsi)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 204)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.12%  │  │  0x00007f9698637c3f:   vmovd  %xmm1,%r10d
   0.01%  │  │  0x00007f9698637c44:   mov    %r10d,0xd8(%rsi)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 190)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.68%  │  │  0x00007f9698637c4b:   vmovd  %xmm10,%r10d
   0.39%  │  │  0x00007f9698637c50:   mov    %r10d,0x9c(%rsi)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 203)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.14%  │  │  0x00007f9698637c57:   vmovd  %xmm12,%r10d
   0.01%  │  │  0x00007f9698637c5c:   mov    %r10d,0x98(%rsi)             ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 202)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   3.03%  │  │  0x00007f9698637c63:   vmovd  %xmm11,%r11d
   0.37%  │  │  0x00007f9698637c68:   mov    %r11d,0x94(%rsi)             ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 201)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.57%  │  │  0x00007f9698637c6f:   vmovd  %xmm8,%r10d
   0.01%  │  │  0x00007f9698637c74:   mov    %r10d,0x90(%rsi)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 200)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.73%  │  │  0x00007f9698637c7b:   vmovd  %xmm9,%r11d
   0.34%  │  │  0x00007f9698637c80:   mov    %r11d,0x8c(%rsi)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 199)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.71%  │  │  0x00007f9698637c87:   vmovd  %xmm6,%r10d
   0.01%  │  │  0x00007f9698637c8c:   mov    %r10d,0x88(%rsi)             ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 198)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.92%  │  │  0x00007f9698637c93:   vmovd  %xmm7,%r11d
   0.00%  │  │  0x00007f9698637c98:   mov    %r11d,0x84(%rsi)             ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 197)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.53%  │  │  0x00007f9698637c9f:   vmovd  %xmm4,%r10d
   0.01%  │  │  0x00007f9698637ca4:   mov    %r10d,0x80(%rsi)             ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 196)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.19%  │  │  0x00007f9698637cab:   vmovd  %xmm5,%r11d
   0.00%  │  │  0x00007f9698637cb0:   mov    %r11d,0x7c(%rsi)             ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 195)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.92%  │  │  0x00007f9698637cb4:   vmovd  %xmm2,%r10d
   0.01%  │  │  0x00007f9698637cb9:   mov    %r10d,0x78(%rsi)             ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 194)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.66%  │  │  0x00007f9698637cbd:   vmovd  %xmm3,%r11d
   0.00%  │  │  0x00007f9698637cc2:   mov    %r11d,0x74(%rsi)             ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@162 (line 193)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   3.42%  │  │  0x00007f9698637cc6:   vmovd  %xmm0,%r10d
          │  │  0x00007f9698637ccb:   mov    %r10d,0x70(%rsi)             ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 192)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.02%  │  │  0x00007f9698637ccf:   add    $0x10,%rsp
          │  │  0x00007f9698637cd3:   pop    %rbp
   1.23%  │ ↗│  0x00007f9698637cd4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f9698637cdb:   ja     0x00007f9698637ce2
   1.06%  ││││  0x00007f9698637ce1:   ret    
          │↘╰│  0x00007f9698637ce2:   movabs $0x7f9698637cd4,%r10         ;   {internal_word}
          │  │  0x00007f9698637cec:   mov    %r10,0x468(%r15)
          │  │  0x00007f9698637cf3:   jmp    0x00007f96980cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f9698637cf8:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f9698637cfd:   jmp    0x00007f9698637b3a
                0x00007f9698637d02:   hlt    
                0x00007f9698637d03:   hlt    
                0x00007f9698637d04:   hlt    
                0x00007f9698637d05:   hlt    
                0x00007f9698637d06:   hlt    
....................................................................................................
  84.59%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 595 

              0x00007f969863ba24:   mov    0x28(%rsp),%r10
              0x00007f969863ba29:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007f969863baf0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@25 (line 196)
              0x00007f969863ba31:   mov    $0x1,%ebp
              0x00007f969863ba36:   test   %r10d,%r10d
          ╭   0x00007f969863ba39:   jne    0x00007f969863ba74           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
          │   0x00007f969863ba3b:   nopl   0x0(%rax,%rax,1)             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@31 (line 197)
   2.58%  │↗  0x00007f969863ba40:   mov    0x30(%rsp),%rsi
          ││  0x00007f969863ba45:   xchg   %ax,%ax
          ││  0x00007f969863ba47:   call   0x00007f96980c4380           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual load_store_spill_use_fpu {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007f969863ba4c:   nopl   0x100023c(%rax,%rax,1)       ;*invokevirtual load_store_spill_use_fpu {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
          ││                                                            ;   {other}
   1.25%  ││  0x00007f969863ba54:   mov    0x28(%rsp),%r10
   1.14%  ││  0x00007f969863ba59:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
   7.99%  ││  0x00007f969863ba61:   mov    0x458(%r15),%r11
          ││  0x00007f969863ba68:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
          ││  0x00007f969863ba6c:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f969863ba6f:   test   %r10d,%r10d
          │╰  0x00007f969863ba72:   je     0x00007f969863ba40           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@31 (line 197)
          ↘   0x00007f969863ba74:   movabs $0x7f96ae729b90,%r10
              0x00007f969863ba7e:   call   *%r10
....................................................................................................
  12.96%  <total for region 2>

....[Hottest Regions]...............................................................................
  84.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu, version 2, compile id 558 
  12.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 595 
   1.38%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%              kernel  [unknown] 
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
   0.61%  <...other 220 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  84.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu, version 2, compile id 558 
  12.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 595 
   2.17%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.09%  <...other 47 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.55%         c2, level 4
   2.17%              kernel
   0.13%           libjvm.so
   0.06%        libc-2.31.so
   0.05%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:05:27

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
StackSpillingBenchmark.load_store_no_spill           avgt    5  12.961 ± 0.321  ns/op
StackSpillingBenchmark.load_store_no_spill:asm       avgt          NaN            ---
StackSpillingBenchmark.load_store_spill_no_fpu       avgt    5  16.728 ± 0.120  ns/op
StackSpillingBenchmark.load_store_spill_no_fpu:asm   avgt          NaN            ---
StackSpillingBenchmark.load_store_spill_use_fpu      avgt    5  16.642 ± 0.458  ns/op
StackSpillingBenchmark.load_store_spill_use_fpu:asm  avgt          NaN            ---
