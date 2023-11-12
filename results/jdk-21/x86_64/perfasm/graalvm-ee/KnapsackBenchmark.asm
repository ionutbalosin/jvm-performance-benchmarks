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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.dynamic

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 640.831 ms/op
# Warmup Iteration   2: 531.609 ms/op
# Warmup Iteration   3: 520.887 ms/op
# Warmup Iteration   4: 519.105 ms/op
# Warmup Iteration   5: 528.147 ms/op
Iteration   1: 523.475 ms/op
Iteration   2: 520.229 ms/op
Iteration   3: 519.814 ms/op
Iteration   4: 531.523 ms/op
Iteration   5: 521.221 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.dynamic":
  523.252 ±(99.9%) 18.621 ms/op [Average]
  (min, avg, max) = (519.814, 523.252, 531.523), stdev = 4.836
  CI (99.9%): [504.631, 541.874] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.dynamic:asm":
PrintAssembly processed: 271592 total address lines.
Perf output processed (skipped 63.945 seconds):
 Column 1: cycles (60874 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 9, compile id 1049 

                          0x00007faecadb62b4:   jbe    0x00007faecadb7740           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@90 (line 39)
                          0x00007faecadb62ba:   mov    %ecx,0x8c(%rsp)
                          0x00007faecadb62c1:   mov    %r11d,%ecx
                          0x00007faecadb62c4:   add    0x10(%r13,%rax,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@96 (line 39)
                          0x00007faecadb62c9:   cmp    %edi,%ecx
                          0x00007faecadb62cb:   cmovg  %ecx,%edi                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - java.lang.Math::max@2 (line 2020)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@97 (line 39)
   0.00%               ↗  0x00007faecadb62ce:   mov    %edi,0x10(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
   0.00%               │  0x00007faecadb62d6:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@107 (line 41)
                       │  0x00007faecadb62da:   shl    $0x3,%rbp                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - java.util.ArrayList::elementData@5 (line 411)
                       │                                                            ; - java.util.ArrayList::get@11 (line 428)
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@32 (line 36)
                       │  0x00007faecadb62de:   mov    %rbp,0x20(%rsp)
   0.00%               │  0x00007faecadb62e3:   mov    $0x1,%ecx
   0.00%               │  0x00007faecadb62e8:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@45 (line 37)
            ↗↗         │  0x00007faecadb62f0:   cmp    %edx,%ecx
          ╭ ││         │  0x00007faecadb62f2:   jg     0x00007faecadb6356           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │ ││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@48 (line 37)
          │ ││         │  0x00007faecadb62f8:   nopl   0x0(%rax,%rax,1)
   0.00%  │ ││         │  0x00007faecadb6300:   cmp    %ecx,%r14d
          │ ││         │  0x00007faecadb6303:   jbe    0x00007faecadb738d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@118 (line 41)
          │ ││         │  0x00007faecadb6309:   cmp    %ecx,%r8d
          │ ││         │  0x00007faecadb630c:   jbe    0x00007faecadb738d           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
          │ ││         │  0x00007faecadb6312:   mov    0x10(%r13,%rcx,4),%edi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@118 (line 41)
          │ ││         │  0x00007faecadb6317:   mov    %ecx,%eax
   0.01%  │ ││         │  0x00007faecadb6319:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@120 (line 37)
          │ ││         │  0x00007faecadb631b:   nopl   0x0(%rax,%rax,1)
          │ ││         │  0x00007faecadb6320:   cmp    %ecx,%ebx
          │╭││         │  0x00007faecadb6322:   jg     0x00007faecadb634d           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          ││││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@58 (line 38)
          ││││         │  0x00007faecadb6328:   mov    %ecx,%ebp
          ││││         │  0x00007faecadb632a:   sub    %ebx,%ebp                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@89 (line 39)
   0.00%  ││││         │  0x00007faecadb632c:   cmp    %ebp,%r14d
          ││││         │  0x00007faecadb632f:   jbe    0x00007faecadb738d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@90 (line 39)
          ││││         │  0x00007faecadb6335:   mov    %r11d,%r10d
          ││││         │  0x00007faecadb6338:   add    0x10(%r13,%rbp,4),%r10d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@96 (line 39)
          ││││         │  0x00007faecadb633d:   cmp    %edi,%r10d
          ││││         │  0x00007faecadb6340:   cmovg  %r10d,%edi                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││││         │                                                            ; - java.lang.Math::max@2 (line 2020)
          ││││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@97 (line 39)
          ││││         │  0x00007faecadb6344:   mov    %edi,0x10(%r9,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
   0.00%  ││││         │  0x00007faecadb6349:   mov    %eax,%ecx                    ;   {no_reloc}
          ││╰│         │  0x00007faecadb634b:   jmp    0x00007faecadb62f0           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          ││ │         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@58 (line 38)
          │↘ │         │  0x00007faecadb634d:   mov    %edi,0x10(%r9,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@119 (line 41)
   0.01%  │  │         │  0x00007faecadb6352:   mov    %eax,%ecx
          │  ╰         │  0x00007faecadb6354:   jmp    0x00007faecadb62f0
   0.00%  ↘            │  0x00007faecadb6356:   mov    $0x1,%r10d
                       │  0x00007faecadb635c:   sub    %ebx,%r10d
                       │  0x00007faecadb635f:   nop
   2.69%         ↗↗    │  0x00007faecadb6360:   cmp    %esi,%ecx
              ╭  ││    │  0x00007faecadb6362:   jg     0x00007faecadb6411           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
              │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@48 (line 37)
   1.95%      │  ││    │  0x00007faecadb6368:   cmp    %ecx,%r14d
              │  ││    │  0x00007faecadb636b:   jbe    0x00007faecadb7307           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
              │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@118 (line 41)
   1.94%      │  ││    │  0x00007faecadb6371:   cmp    %ecx,%r8d
              │  ││    │  0x00007faecadb6374:   jbe    0x00007faecadb7307           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
              │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
   1.22%      │  ││    │  0x00007faecadb637a:   mov    0x10(%r13,%rcx,4),%edi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
              │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@118 (line 41)
   2.74%      │  ││    │  0x00007faecadb637f:   nop
   1.94%      │  ││    │  0x00007faecadb6380:   cmp    %ecx,%ebx
              │╭ ││    │  0x00007faecadb6382:   jg     0x00007faecadb63a2           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
              ││ ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@58 (line 38)
   1.96%      ││ ││    │  0x00007faecadb6388:   mov    %ecx,%eax
   1.25%      ││ ││    │  0x00007faecadb638a:   sub    %ebx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
              ││ ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@89 (line 39)
   2.71%      ││ ││    │  0x00007faecadb638c:   cmp    %eax,%r14d
              ││ ││    │  0x00007faecadb638f:   jbe    0x00007faecadb7307           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
              ││ ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@90 (line 39)
   1.85%      ││ ││    │  0x00007faecadb6395:   mov    %r11d,%ebp
   1.93%      ││ ││    │  0x00007faecadb6398:   add    0x10(%r13,%rax,4),%ebp       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              ││ ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@96 (line 39)
   1.39%      ││ ││    │  0x00007faecadb639d:   cmp    %edi,%ebp
   2.57%      ││ ││    │  0x00007faecadb639f:   cmovg  %ebp,%edi                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              ││ ││    │                                                            ; - java.lang.Math::max@2 (line 2020)
              ││ ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@97 (line 39)
   1.95%      │↘ ││    │  0x00007faecadb63a2:   mov    %edi,0x10(%r9,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
              │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
   3.67%      │  ││    │  0x00007faecadb63a7:   mov    %ecx,%edi
   1.33%      │  ││    │  0x00007faecadb63a9:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@120 (line 37)
   2.03%      │  ││    │  0x00007faecadb63ab:   cmp    %edi,%r14d
              │  ││    │  0x00007faecadb63ae:   jbe    0x00007faecadb7336           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
              │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@118 (line 41)
   1.35%      │  ││    │  0x00007faecadb63b4:   cmp    %edi,%r8d
              │  ││    │  0x00007faecadb63b7:   jbe    0x00007faecadb7336           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
              │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
   3.25%      │  ││    │  0x00007faecadb63bd:   mov    0x14(%r13,%rcx,4),%eax       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
              │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@118 (line 41)
   2.39%      │  ││    │  0x00007faecadb63c2:   lea    0x2(%rcx),%ebp               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@120 (line 37)
   1.89%      │  ││    │  0x00007faecadb63c5:   cmp    %edi,%ebx
              │ ╭││    │  0x00007faecadb63c7:   jg     0x00007faecadb6405           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
              │ │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@58 (line 38)
   1.31%      │ │││    │  0x00007faecadb63cd:   mov    %edi,0x88(%rsp)
   2.97%      │ │││    │  0x00007faecadb63d4:   mov    %r10d,%edi
   1.61%      │ │││    │  0x00007faecadb63d7:   add    %ecx,%edi
   1.99%      │ │││    │  0x00007faecadb63d9:   nopl   0x0(%rax)
   1.31%      │ │││    │  0x00007faecadb63e0:   cmp    %edi,%r14d
              │ │││    │  0x00007faecadb63e3:   jbe    0x00007faecadb7608           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
              │ │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@90 (line 39)
   2.85%      │ │││    │  0x00007faecadb63e9:   mov    %r11d,%edx
   1.67%      │ │││    │  0x00007faecadb63ec:   add    0x10(%r13,%rdi,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │ │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@96 (line 39)
   2.13%      │ │││    │  0x00007faecadb63f1:   cmp    %eax,%edx
   1.30%      │ │││    │  0x00007faecadb63f3:   cmovg  %edx,%eax                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              │ │││    │                                                            ; - java.lang.Math::max@2 (line 2020)
              │ │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@97 (line 39)
   2.93%      │ │││    │  0x00007faecadb63f6:   mov    %eax,0x14(%r9,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
              │ │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
   3.21%      │ │││    │  0x00007faecadb63fb:   mov    %ebp,%ecx
   1.92%      │ │││    │  0x00007faecadb63fd:   data16 xchg %ax,%ax
   1.23%      │ │╰│    │  0x00007faecadb6400:   jmp    0x00007faecadb6360           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
              │ │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@58 (line 38)
   0.01%      │ ↘ │    │  0x00007faecadb6405:   mov    %eax,0x14(%r9,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
              │   │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@119 (line 41)
   0.05%      │   │    │  0x00007faecadb640a:   mov    %ebp,%ecx
              │   ╰    │  0x00007faecadb640c:   jmp    0x00007faecadb6360
   0.00%      ↘        │  0x00007faecadb6411:   mov    0x94(%rsp),%r10d
   0.04%               │  0x00007faecadb6419:   nopl   0x0(%rax)
                     ↗↗│  0x00007faecadb6420:   cmp    %r10d,%ecx
                   ╭ │││  0x00007faecadb6423:   jg     0x00007faecadb6478           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                   │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@48 (line 37)
   0.00%           │ │││  0x00007faecadb6429:   cmp    %ecx,%r14d
                   │ │││  0x00007faecadb642c:   jbe    0x00007faecadb7365           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                   │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@118 (line 41)
   0.00%           │ │││  0x00007faecadb6432:   cmp    %ecx,%r8d
                   │ │││  0x00007faecadb6435:   jbe    0x00007faecadb7365           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                   │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
                   │ │││  0x00007faecadb643b:   mov    0x10(%r13,%rcx,4),%edx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                   │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@118 (line 41)
   0.00%           │ │││  0x00007faecadb6440:   mov    %ecx,%edi
                   │ │││  0x00007faecadb6442:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                   │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@120 (line 37)
   0.00%           │ │││  0x00007faecadb6444:   cmp    %ecx,%ebx
                   │╭│││  0x00007faecadb6446:   jg     0x00007faecadb646f           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@58 (line 38)
                   │││││                                                            ;   {no_reloc}
                   │││││  0x00007faecadb644c:   mov    %ecx,%eax
                   │││││  0x00007faecadb644e:   sub    %ebx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@89 (line 39)
   0.01%           │││││  0x00007faecadb6450:   cmp    %eax,%r14d
                   │││││  0x00007faecadb6453:   jbe    0x00007faecadb7365           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@90 (line 39)
   0.00%           │││││  0x00007faecadb6459:   mov    %r11d,%ebp
                   │││││  0x00007faecadb645c:   add    0x10(%r13,%rax,4),%ebp       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@96 (line 39)
                   │││││  0x00007faecadb6461:   cmp    %edx,%ebp
   0.00%           │││││  0x00007faecadb6463:   cmovg  %ebp,%edx                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                   │││││                                                            ; - java.lang.Math::max@2 (line 2020)
                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@97 (line 39)
   0.00%           │││││  0x00007faecadb6466:   mov    %edx,0x10(%r9,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
   0.01%           │││││  0x00007faecadb646b:   mov    %edi,%ecx
                   ││╰││  0x00007faecadb646d:   jmp    0x00007faecadb6420           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@58 (line 38)
                   │↘ ││  0x00007faecadb646f:   mov    %edx,0x10(%r9,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@119 (line 41)
                   │  ││  0x00007faecadb6474:   mov    %edi,%ecx
                   │  ╰│  0x00007faecadb6476:   jmp    0x00007faecadb6420
   0.01%           ↘   │  0x00007faecadb6478:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {[40]=Oop [48]=Oop [56]=Oop }
                       │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@126 (line 35)
   0.02%               │  0x00007faecadb647f:   test   %eax,(%rdx)                  ;   {poll}
   0.05%               │  0x00007faecadb6481:   mov    0x8c(%rsp),%ecx
                       │  0x00007faecadb6488:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@126 (line 35)
                       │  0x00007faecadb648a:   mov    0x90(%rsp),%edx
                       │  0x00007faecadb6491:   mov    0x28(%rsp),%rbx
   0.00%               │  0x00007faecadb6496:   mov    0x30(%rsp),%rax
                       │  0x00007faecadb649b:   mov    0xa4(%rsp),%r11d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@21 (line 35)
                       │  0x00007faecadb64a3:   cmp    %r11d,%ecx
                       │  0x00007faecadb64a6:   jle    0x00007faecadb6240
                       │  0x00007faecadb64ac:   jmp    0x00007faecadb64bd           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@24 (line 35)
                       │  0x00007faecadb64b1:   mov    %ecx,0x8c(%rsp)
                       ╰  0x00007faecadb64b8:   jmp    0x00007faecadb62ce           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@120 (line 37)
                          0x00007faecadb64bd:   movabs $0x7faede194000,%r11         ;*aastore {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  70.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
libc-2.31.so, __memmove_sse2_unaligned_erms 

 <no assembly is recorded, native region>
....................................................................................................
  14.85%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 9, compile id 1049 
  14.85%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   8.67%        libc-2.31.so  __memset_avx2_erms 
   0.49%           libjvm.so  MemAllocator::allocate 
   0.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 9, compile id 1049 
   0.30%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.24%              kernel  [unknown] 
   0.19%           libjvm.so  TypeArrayKlass::multi_allocate 
   0.18%           libjvm.so  ObjArrayAllocator::initialize 
   0.17%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.15%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   0.15%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.15%          ld-2.31.so  __tls_get_addr 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 9, compile id 1049 
   0.12%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.11%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.09%              kernel  [unknown] 
   0.07%           libjvm.so  G1Allocator::survivor_attempt_allocation 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   2.69%  <...other 667 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 9, compile id 1049 
  15.03%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   8.67%        libc-2.31.so  __memset_avx2_erms 
   1.67%              kernel  [unknown] 
   0.80%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.55%           libjvm.so  MemAllocator::allocate 
   0.20%           libjvm.so  ObjArrayAllocator::initialize 
   0.19%           libjvm.so  TypeArrayKlass::multi_allocate 
   0.16%                      <unknown> 
   0.15%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   0.15%          ld-2.31.so  __tls_get_addr 
   0.07%           libjvm.so  G1Allocator::survivor_attempt_allocation 
   0.06%           libjvm.so  MemAllocator::Allocation::notify_allocation_jvmti_sampler 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  ObjArrayKlass::multi_allocate 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%           libjvm.so  MemAllocator::Allocation::check_out_of_memory 
   0.03%           libjvm.so  Klass::check_array_allocation_length 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  G1PLABAllocator::allocate_direct_or_new_plab 
   0.81%  <...other 214 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  71.25%      jvmci, level 4
  23.82%        libc-2.31.so
   2.87%           libjvm.so
   1.67%              kernel
   0.16%                    
   0.15%          ld-2.31.so
   0.05%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%      libz.so.1.2.11
   0.00%    perf-2131471.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_fractional

# Run progress: 33.33% complete, ETA 00:04:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.593 ms/op
# Warmup Iteration   2: 0.520 ms/op
# Warmup Iteration   3: 0.510 ms/op
# Warmup Iteration   4: 0.509 ms/op
# Warmup Iteration   5: 0.509 ms/op
Iteration   1: 0.510 ms/op
Iteration   2: 0.509 ms/op
Iteration   3: 0.509 ms/op
Iteration   4: 0.509 ms/op
Iteration   5: 0.509 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_fractional":
  0.509 ±(99.9%) 0.002 ms/op [Average]
  (min, avg, max) = (0.509, 0.509, 0.510), stdev = 0.001
  CI (99.9%): [0.507, 0.511] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_fractional:asm":
PrintAssembly processed: 284701 total address lines.
Perf output processed (skipped 62.450 seconds):
 Column 1: cycles (50629 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.TimSort::sort, version 3, compile id 1078 

                0x00007f82a6dc7c80:   cmp    %r13,%rdi
          ╭     0x00007f82a6dc7c83:   jne    0x00007f82a6dc7d80           ;*invokeinterface applyAsDouble {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │                                                               ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │                                                               ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │                                                               ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │                                                               ; - java.util.TimSort::sort@105 (line 234)
          │     0x00007f82a6dc7c89:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.TimSort::countRunAndMakeAscending@92 (line 360)
          │                                                               ; - java.util.TimSort::sort@105 (line 234)
   0.66%  │ ↗↗  0x00007f82a6dc7c90:   cmp    %r9d,%ebx
          │ ││  0x00007f82a6dc7c93:   jle    0x00007f82a6dc81e7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@95 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.09%  │ ││  0x00007f82a6dc7c99:   nopl   0x0(%rax)
   3.54%  │ ││  0x00007f82a6dc7ca0:   cmp    %r9d,%r14d
          │ ││  0x00007f82a6dc7ca3:   jbe    0x00007f82a6dc84b7           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.00%  │ ││  0x00007f82a6dc7ca9:   mov    %r9d,%esi
   0.07%  │ ││  0x00007f82a6dc7cac:   dec    %esi                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@107 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.08%  │ ││  0x00007f82a6dc7cae:   cmp    %esi,%r14d
          │ ││  0x00007f82a6dc7cb1:   jbe    0x00007f82a6dc82b7
   3.62%  │ ││  0x00007f82a6dc7cb7:   movslq %r9d,%rsi
          │ ││  0x00007f82a6dc7cba:   mov    0xc(%r10,%rsi,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@108 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.38%  │ ││  0x00007f82a6dc7cbf:   nop                                 ; ImmutableOopMap {rsi=NarrowOop r10=Oop [16]=Oop [32]=Oop }
          │ ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) java.util.TimSort::countRunAndMakeAscending@92 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.03%  │ ││  0x00007f82a6dc7cc0:   cmpl   $0x102aca8,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f82a6dc87bc
          │ ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
   4.23%  │ ││  0x00007f82a6dc7ccb:   jne    0x00007f82a6dc82f3           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@1 (line 34)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f822c02b2a8::applyAsDouble@1
          │ ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.09%  │ ││  0x00007f82a6dc7cd1:   mov    0x10(%r10,%r9,4),%edx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.03%  │ ││  0x00007f82a6dc7cd6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r10=Oop [16]=Oop [32]=Oop }
          │ ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) java.util.TimSort::countRunAndMakeAscending@92 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   3.53%  │ ││  0x00007f82a6dc7ce0:   cmpl   $0x102aca8,0x8(,%rdx,8)      ; implicit exception: dispatches to 0x00007f82a6dc87df
          │ ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
   1.43%  │ ││  0x00007f82a6dc7ceb:   jne    0x00007f82a6dc8641           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@1 (line 34)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f822c02b2a8::applyAsDouble@1
          │ ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.22%  │ ││  0x00007f82a6dc7cf1:   vcvtsi2sdl 0xc(,%rsi,8),%xmm0,%xmm0 ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@4 (line 34)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f822c02b2a8::applyAsDouble@1
          │ ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   3.69%  │ ││  0x00007f82a6dc7cfa:   vcvtsi2sdl 0x10(,%rsi,8),%xmm1,%xmm1;*getfield weight {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@12 (line 34)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f822c02b2a8::applyAsDouble@1
          │ ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.35%  │ ││  0x00007f82a6dc7d03:   vcvtsi2sdl 0xc(,%rdx,8),%xmm2,%xmm2 ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@4 (line 34)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f822c02b2a8::applyAsDouble@1
          │ ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   4.49%  │ ││  0x00007f82a6dc7d0c:   vdivsd %xmm1,%xmm0,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@16 (line 34)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f822c02b2a8::applyAsDouble@1
          │ ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
  18.03%  │ ││  0x00007f82a6dc7d10:   vcvtsi2sdl 0x10(,%rdx,8),%xmm1,%xmm1;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@15 (line 34)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f822c02b2a8::applyAsDouble@1
          │ ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.27%  │ ││  0x00007f82a6dc7d19:   vdivsd %xmm1,%xmm2,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@16 (line 34)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007f822c02b2a8::applyAsDouble@1
          │ ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
  19.57%  │ ││  0x00007f82a6dc7d1d:   vucomisd %xmm0,%xmm1
   7.52%  │ ││  0x00007f82a6dc7d21:   ja     0x00007f82a6dc7e59           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.lang.Double::compare@3 (line 1277)
          │ ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   3.76%  │ ││  0x00007f82a6dc7d27:   mov    %r9d,%esi
          │ ││  0x00007f82a6dc7d2a:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@117 (line 361)
          │ ││                                                            ; - java.util.TimSort::sort@105 (line 234)
          │ ││  0x00007f82a6dc7d2c:   vucomisd %xmm1,%xmm0
          │╭││  0x00007f82a6dc7d30:   jbe    0x00007f82a6dc7d3e           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.lang.Double::compare@11 (line 1279)
          ││││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          ││││                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          ││││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││││                                                            ; - java.util.TimSort::sort@105 (line 234)
   1.10%  ││││  0x00007f82a6dc7d36:   mov    %esi,%r9d
   0.13%  ││╰│  0x00007f82a6dc7d39:   jmp    0x00007f82a6dc7c90
   3.66%  │↘ │  0x00007f82a6dc7d3e:   movabs $0x7ff8000000000000,%rdx
   0.03%  │  │  0x00007f82a6dc7d48:   vmovq  %xmm0,%rax
   0.03%  │  │  0x00007f82a6dc7d4d:   vucomisd %xmm0,%xmm0
          │  │  0x00007f82a6dc7d51:   mov    %rdx,%rcx
   3.69%  │  │  0x00007f82a6dc7d54:   cmovnp %rax,%rcx                    ;* unwind (locked if synchronized)
          │  │                                                            ; - java.lang.Double::doubleToLongBits@-3
          │  │                                                            ; - java.lang.Double::compare@17 (line 1283)
          │  │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          │  │                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │  │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │  │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │  │                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.04%  │  │  0x00007f82a6dc7d58:   vmovq  %xmm1,%rax
   0.01%  │  │  0x00007f82a6dc7d5d:   vucomisd %xmm1,%xmm1
          │  │  0x00007f82a6dc7d61:   mov    %rdx,%rdi
   3.38%  │  │  0x00007f82a6dc7d64:   cmovnp %rax,%rdi                    ;* unwind (locked if synchronized)
          │  │                                                            ; - java.lang.Double::doubleToLongBits@-3
          │  │                                                            ; - java.lang.Double::compare@23 (line 1284)
          │  │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          │  │                                                            ; - java.util.Comparator$$Lambda/0x00007f822c03adb0::compare@6
          │  │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │  │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │  │                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.02%  │  │  0x00007f82a6dc7d68:   cmp    %rcx,%rdi
          │  │  0x00007f82a6dc7d6b:   jg     0x00007f82a6dc7e59           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.TimSort::countRunAndMakeAscending@114 (line 360)
          │  │                                                            ; - java.util.TimSort::sort@105 (line 234)
   3.50%  │  │  0x00007f82a6dc7d71:   mov    %esi,%r9d
          │  ╰  0x00007f82a6dc7d74:   jmp    0x00007f82a6dc7c90
          │     0x00007f82a6dc7d79:   nopl   0x0(%rax)
          ↘     0x00007f82a6dc7d80:   cmp    %r9d,%ebx
                0x00007f82a6dc7d83:   jle    0x00007f82a6dc81e7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.TimSort::countRunAndMakeAscending@95 (line 360)
                                                                          ; - java.util.TimSort::sort@105 (line 234)
                0x00007f82a6dc7d89:   cmp    %r9d,%r14d
                0x00007f82a6dc7d8c:   jbe    0x00007f82a6dc849a           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  91.28%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.28%       jvmci, level 4  java.util.TimSort::sort, version 3, compile id 1078 
   5.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_fractional, version 2, compile id 1076 
   0.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_fractional, version 2, compile id 1076 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_fractional, version 2, compile id 1076 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_fractional, version 2, compile id 1076 
   0.10%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_fractional, version 2, compile id 1076 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_fractional, version 2, compile id 1076 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_fractional, version 2, compile id 1076 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.31%  <...other 374 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.31%       jvmci, level 4  java.util.TimSort::sort, version 3, compile id 1078 
   6.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_fractional, version 2, compile id 1076 
   1.41%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%         libc-2.31.so  __memset_avx2_erms 
   0.02%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%  libjvmcicompiler.so  com.oracle.svm.core.jni.JNIJavaCallTrampolineHolder::valistJavaCallTrampoline 
   0.23%  <...other 107 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.15%       jvmci, level 4
   1.41%               kernel
   0.14%            libjvm.so
   0.10%         libc-2.31.so
   0.08%  libjvmcicompiler.so
   0.05%                     
   0.02%           ld-2.31.so
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_zero_one

# Run progress: 66.67% complete, ETA 00:01:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.832 ms/op
# Warmup Iteration   2: 0.704 ms/op
# Warmup Iteration   3: 0.692 ms/op
# Warmup Iteration   4: 0.677 ms/op
# Warmup Iteration   5: 0.676 ms/op
Iteration   1: 0.692 ms/op
Iteration   2: 0.691 ms/op
Iteration   3: 0.691 ms/op
Iteration   4: 0.691 ms/op
Iteration   5: 0.691 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_zero_one":
  0.691 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (0.691, 0.691, 0.692), stdev = 0.001
  CI (99.9%): [0.691, 0.692] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_zero_one:asm":
PrintAssembly processed: 289204 total address lines.
Perf output processed (skipped 62.121 seconds):
 Column 1: cycles (50884 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.TimSort::sort, version 2, compile id 1058 

              0x00007f2cbadb7880:   cmp    %r13,%rdi
          ╭   0x00007f2cbadb7883:   jne    0x00007f2cbadb7940           ;*invokeinterface applyAsDouble {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │                                                             ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          │                                                             ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │                                                             ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │                                                             ; - java.util.TimSort::sort@105 (line 234)
          │   0x00007f2cbadb7889:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.TimSort::countRunAndMakeAscending@92 (line 360)
          │                                                             ; - java.util.TimSort::sort@105 (line 234)
   0.51%  │↗  0x00007f2cbadb7890:   cmp    %r9d,%ebx
          ││  0x00007f2cbadb7893:   jle    0x00007f2cbadb7dd4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@95 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.02%  ││  0x00007f2cbadb7899:   nopl   0x0(%rax)
   2.64%  ││  0x00007f2cbadb78a0:   cmp    %r9d,%r14d
          ││  0x00007f2cbadb78a3:   jbe    0x00007f2cbadb7e9c           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
          ││  0x00007f2cbadb78a9:   mov    %r9d,%esi
   0.05%  ││  0x00007f2cbadb78ac:   dec    %esi                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@107 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.07%  ││  0x00007f2cbadb78ae:   cmp    %esi,%r14d
          ││  0x00007f2cbadb78b1:   jbe    0x00007f2cbadb8110
   2.55%  ││  0x00007f2cbadb78b7:   movslq %r9d,%rsi
          ││  0x00007f2cbadb78ba:   mov    0xc(%r10,%rsi,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@108 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.28%  ││  0x00007f2cbadb78bf:   nop                                 ; ImmutableOopMap {rsi=NarrowOop r10=Oop [24]=Oop [40]=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.TimSort::countRunAndMakeAscending@92 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.03%  ││  0x00007f2cbadb78c0:   cmpl   $0x102aca8,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f2cbadb845c
          ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
   3.09%  ││  0x00007f2cbadb78cb:   jne    0x00007f2cbadb7f0b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@1 (line 34)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f2c4002b6c0::applyAsDouble@1
          ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          ││                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.07%  ││  0x00007f2cbadb78d1:   mov    0x10(%r10,%r9,4),%edx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.02%  ││  0x00007f2cbadb78d6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r10=Oop [24]=Oop [40]=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.TimSort::countRunAndMakeAscending@92 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   2.80%  ││  0x00007f2cbadb78e0:   cmpl   $0x102aca8,0x8(,%rdx,8)      ; implicit exception: dispatches to 0x00007f2cbadb847f
          ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
   1.26%  ││  0x00007f2cbadb78eb:   jne    0x00007f2cbadb8105           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@1 (line 34)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f2c4002b6c0::applyAsDouble@1
          ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          ││                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.21%  ││  0x00007f2cbadb78f1:   vcvtsi2sdl 0xc(,%rsi,8),%xmm0,%xmm0 ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@4 (line 34)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f2c4002b6c0::applyAsDouble@1
          ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          ││                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   2.81%  ││  0x00007f2cbadb78fa:   vcvtsi2sdl 0x10(,%rsi,8),%xmm1,%xmm1;*getfield weight {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@12 (line 34)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f2c4002b6c0::applyAsDouble@1
          ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          ││                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.31%  ││  0x00007f2cbadb7903:   vcvtsi2sdl 0xc(,%rdx,8),%xmm2,%xmm2 ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@4 (line 34)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f2c4002b6c0::applyAsDouble@1
          ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          ││                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   3.46%  ││  0x00007f2cbadb790c:   vdivsd %xmm1,%xmm0,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@16 (line 34)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f2c4002b6c0::applyAsDouble@1
          ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          ││                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
  12.92%  ││  0x00007f2cbadb7910:   vcvtsi2sdl 0x10(,%rdx,8),%xmm1,%xmm1;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@15 (line 34)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f2c4002b6c0::applyAsDouble@1
          ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          ││                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.29%  ││  0x00007f2cbadb7919:   vdivsd %xmm1,%xmm2,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@16 (line 34)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f2c4002b6c0::applyAsDouble@1
          ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          ││                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
  15.58%  ││  0x00007f2cbadb791d:   vucomisd %xmm0,%xmm1
   5.29%  ││  0x00007f2cbadb7921:   ja     0x00007f2cbadb7a54           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.Double::compare@3 (line 1277)
          ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          ││                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   2.77%  ││  0x00007f2cbadb7927:   mov    %r9d,%esi
          ││  0x00007f2cbadb792a:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@117 (line 361)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
          ││  0x00007f2cbadb792c:   vucomisd %xmm1,%xmm0
          ││  0x00007f2cbadb7930:   jbe    0x00007f2cbadb79de           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.Double::compare@11 (line 1279)
          ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          ││                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.81%  ││  0x00007f2cbadb7936:   mov    %esi,%r9d
   0.07%  │╰  0x00007f2cbadb7939:   jmp    0x00007f2cbadb7890
          │   0x00007f2cbadb793e:   xchg   %ax,%ax
          ↘   0x00007f2cbadb7940:   cmp    %r9d,%ebx
              0x00007f2cbadb7943:   jle    0x00007f2cbadb7dd4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.TimSort::countRunAndMakeAscending@95 (line 360)
                                                                        ; - java.util.TimSort::sort@105 (line 234)
              0x00007f2cbadb7949:   cmp    %r9d,%r14d
              0x00007f2cbadb794c:   jbe    0x00007f2cbadb82a5           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
                                                                        ; - java.util.TimSort::sort@105 (line 234)
              0x00007f2cbadb7952:   mov    %r9d,%esi
....................................................................................................
  57.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 6, compile id 1084 

                  0x00007f2cbadcc22d:   mov    0x80(%rsp),%eax
                  0x00007f2cbadcc234:   mov    %eax,0x74(%rsp)
                  0x00007f2cbadcc238:   mov    0xa0(%rsp),%rax
                  0x00007f2cbadcc240:   mov    %r14d,%ebx
                  0x00007f2cbadcc243:   mov    %r11d,%r9d
                  0x00007f2cbadcc246:   mov    %edx,%r14d
                  0x00007f2cbadcc249:   mov    0x30(%rsp),%r11
                  0x00007f2cbadcc24e:   xchg   %ax,%ax                      ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@90 (line 47)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.68%    ↗  ↗  0x00007f2cbadcc250:   mov    %r14d,%esi
   0.09%    │  │  0x00007f2cbadcc253:   sub    %ebp,%esi
   0.43%    │  │  0x00007f2cbadcc255:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.17%    │  │  0x00007f2cbadcc260:   cmp    $0x1ffe,%esi
            │  │  0x00007f2cbadcc266:   jge    0x00007f2cbadcdbc5
   0.63%    │  │  0x00007f2cbadcc26c:   cmp    %r14d,%r9d
            │  │  0x00007f2cbadcc26f:   jle    0x00007f2cbadce1d4           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - java.util.ArrayList$Itr::next@17 (line 1051)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.06%    │  │  0x00007f2cbadcc275:   cmp    %r14d,%r10d
            │  │  0x00007f2cbadcc278:   jle    0x00007f2cbadcf51b           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - java.util.ArrayList$Itr::next@39 (line 1054)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.47%    │  │  0x00007f2cbadcc27e:   xchg   %ax,%ax
   0.21%    │  │  0x00007f2cbadcc280:   cmp    %r14d,%r10d
            │  │  0x00007f2cbadcc283:   jbe    0x00007f2cbadcf5ec           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.78%    │  │  0x00007f2cbadcc289:   mov    0x10(%r8,%r14,4),%ecx        ; ImmutableOopMap {rax=Oop rcx=NarrowOop r11=Oop [48]=Oop [56]=Oop [72]=Oop }
            │  │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
            │  │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@37 (line 40)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.11%    │  │  0x00007f2cbadcc28e:   cmpl   $0x102aca8,0x8(,%rcx,8)      ; implicit exception: dispatches to 0x00007f2cbadcfb10
            │  │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
   2.97%    │  │  0x00007f2cbadcc299:   jne    0x00007f2cbadcf60d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@54 (line 40)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.91%    │  │  0x00007f2cbadcc29f:   mov    %r14d,0x6c(%rsp)
   0.05%    │  │  0x00007f2cbadcc2a4:   mov    %ebx,%esi
   0.30%    │  │  0x00007f2cbadcc2a6:   add    0x10(,%rcx,8),%esi           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@65 (line 41)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.89%    │  │  0x00007f2cbadcc2ad:   cmp    $0x1389,%esi
          ╭ │  │  0x00007f2cbadcc2b3:   jl     0x00007f2cbadcc35d           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@67 (line 41)
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.72%  │ │  │  0x00007f2cbadcc2b9:   mov    %r13,%r11
   0.06%  │ │  │  0x00007f2cbadcc2bc:   mov    %edi,%r8d
   0.24%  │ │  │  0x00007f2cbadcc2bf:   mov    %r9d,%r10d
   0.16%  │ │  │  0x00007f2cbadcc2c2:   mov    %rax,%r9
   0.86%  │ │ ↗│  0x00007f2cbadcc2c5:   mov    0x6c(%rsp),%r14d
   0.07%  │ │ ││  0x00007f2cbadcc2ca:   inc    %r14d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - java.util.ArrayList$Itr::next@53 (line 1056)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.40%  │ │ ││  0x00007f2cbadcc2cd:   cmp    %r14d,%r10d
          │ │ ││  0x00007f2cbadcc2d0:   jle    0x00007f2cbadce256           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - java.util.ArrayList$Itr::next@17 (line 1051)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.14%  │ │ ││  0x00007f2cbadcc2d6:   mov    0x90(%rsp),%ebp
   0.84%  │ │ ││  0x00007f2cbadcc2dd:   data16 xchg %ax,%ax
   0.07%  │ │ ││  0x00007f2cbadcc2e0:   cmp    %r14d,%ebp
          │ │ ││  0x00007f2cbadcc2e3:   jle    0x00007f2cbadcf710           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - java.util.ArrayList$Itr::next@39 (line 1054)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.39%  │ │ ││  0x00007f2cbadcc2e9:   cmp    %r14d,%ebp
          │ │ ││  0x00007f2cbadcc2ec:   jbe    0x00007f2cbadcf359           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.14%  │ │ ││  0x00007f2cbadcc2f2:   mov    0x38(%rsp),%r13
   0.77%  │ │ ││  0x00007f2cbadcc2f7:   movslq 0x6c(%rsp),%rsi
   0.05%  │ │ ││  0x00007f2cbadcc2fc:   mov    0x14(%r13,%rsi,4),%edi       ; ImmutableOopMap {rdi=NarrowOop r9=Oop r13=Oop [48]=Oop [56]=Oop [72]=Oop }
          │ │ ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@37 (line 40)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.42%  │ │ ││  0x00007f2cbadcc301:   cmpl   $0x102aca8,0x8(,%rdi,8)      ; implicit exception: dispatches to 0x00007f2cbadcfb33
          │ │ ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
   5.84%  │ │ ││  0x00007f2cbadcc30c:   jne    0x00007f2cbadcf8d6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@54 (line 40)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.60%  │ │ ││  0x00007f2cbadcc312:   mov    0x6c(%rsp),%ecx
   0.25%  │ │ ││  0x00007f2cbadcc316:   mov    %ebx,%eax
   0.05%  │ │ ││  0x00007f2cbadcc318:   add    0x10(,%rdi,8),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@65 (line 41)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   1.92%  │ │ ││  0x00007f2cbadcc31f:   lea    0x2(%rcx),%edx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - java.util.ArrayList$Itr::next@53 (line 1056)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.17%  │ │ ││  0x00007f2cbadcc322:   cmp    $0x1389,%eax
          │╭│ ││  0x00007f2cbadcc328:   jl     0x00007f2cbadcc3ee
   0.58%  │││ ││  0x00007f2cbadcc32e:   mov    %r9,%rax
   0.08%  │││ ││  0x00007f2cbadcc331:   mov    %r8d,%edi
   0.47%  │││ ││  0x00007f2cbadcc334:   mov    %r14d,0x74(%rsp)
   0.16%  │││ ││  0x00007f2cbadcc339:   mov    %edx,%r14d
   0.58%  │││ ││  0x00007f2cbadcc33c:   vpxor  %xmm0,%xmm0,%xmm0
   0.06%  │││ ││  0x00007f2cbadcc340:   mov    %r13,%r8
   0.43%  │││ ││  0x00007f2cbadcc343:   mov    %r10d,%r9d
   0.15%  │││ ││  0x00007f2cbadcc346:   mov    %ebp,%r10d
   0.61%  │││ ││  0x00007f2cbadcc349:   mov    %r11,%r13
   0.08%  │││ ││  0x00007f2cbadcc34c:   mov    0x84(%rsp),%ebp
   0.37%  │││ ││  0x00007f2cbadcc353:   mov    0x30(%rsp),%r11
   0.19%  ││╰ ││  0x00007f2cbadcc358:   jmp    0x00007f2cbadcc250           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@67 (line 41)
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.10%  ↘│  ││  0x00007f2cbadcc35d:   mov    %ebx,0x70(%rsp)
   0.00%   │  ││  0x00007f2cbadcc361:   mov    0x8(%rax),%ebx               ;* unwind (locked if synchronized)
           │  ││                                                            ; - java.lang.Object::getClass@-3
           │  ││                                                            ; - java.util.Arrays::copyOf@3 (line 3482)
           │  ││                                                            ; - java.util.ArrayList::grow@37 (line 237)
           │  ││                                                            ; - java.util.ArrayList::grow@7 (line 244)
           │  ││                                                            ; - java.util.ArrayList::add@7 (line 483)
           │  ││                                                            ; - java.util.ArrayList::add@20 (line 496)
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
           │  ││  0x00007f2cbadcc364:   mov    0xc(%rax),%ebp               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.ArrayList::add@2 (line 482)
           │  ││                                                            ; - java.util.ArrayList::add@20 (line 496)
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.01%   │  ││  0x00007f2cbadcc367:   mov    %ecx,%r8d
   0.10%   │  ││  0x00007f2cbadcc36a:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
           │  ││  0x00007f2cbadcc36e:   mov    %edi,%r10d
           │  ││  0x00007f2cbadcc371:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.ArrayList::add@6 (line 495)
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.01%   │  ││  0x00007f2cbadcc374:   cmp    %edi,%ebp
           │  ││  0x00007f2cbadcc376:   je     0x00007f2cbadcc6e5           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.ArrayList::add@3 (line 482)
           │  ││                                                            ; - java.util.ArrayList::add@20 (line 496)
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.10%   │  ││  0x00007f2cbadcc37c:   nopl   0x0(%rax)
           │  ││  0x00007f2cbadcc380:   cmp    $0x1258,%ebx                 ;   {metadata(&apos;java/lang/Object&apos;[])}
           │  ││  0x00007f2cbadcc386:   jne    0x00007f2cbadcf8b3
           │  ││  0x00007f2cbadcc38c:   cmp    %edi,%ebp
           │  ││  0x00007f2cbadcc38e:   jbe    0x00007f2cbadcf7be
   0.01%   │  ││  0x00007f2cbadcc394:   cmpb   $0x0,0x40(%r15)
   0.09%   │ ╭││  0x00007f2cbadcc399:   jne    0x00007f2cbadcc4a6
           │ │││  0x00007f2cbadcc39f:   mov    %esi,%ebx
           │ │││  0x00007f2cbadcc3a1:   mov    %ecx,0x10(%rax,%rdi,4)
   0.01%   │ │││  0x00007f2cbadcc3a5:   lea    0x10(%rax,%rdi,4),%rsi
   0.12%   │ │││  0x00007f2cbadcc3aa:   xor    %r8,%rsi
           │ │││  0x00007f2cbadcc3ad:   test   $0xffffffffffe00000,%rsi
           │ │││  0x00007f2cbadcc3b4:   je     0x00007f2cbadcc4e5
           │ │││  0x00007f2cbadcc3ba:   nopw   0x0(%rax,%rax,1)
   0.01%   │ │││  0x00007f2cbadcc3c0:   test   %r8,%r8
           │ │││  0x00007f2cbadcc3c3:   je     0x00007f2cbadcc56a
   0.09%   │ │││  0x00007f2cbadcc3c9:   lea    0x10(%rax,%rdi,4),%rsi
           │ │││  0x00007f2cbadcc3ce:   shr    $0x9,%rsi
           │ │││  0x00007f2cbadcc3d2:   cmpb   $0x2,(%rsi,%r13,1)
   0.11%   │ │││  0x00007f2cbadcc3d7:   jne    0x00007f2cbadcc5b6
           │ │││  0x00007f2cbadcc3dd:   mov    %r10d,%r8d
           │ │││  0x00007f2cbadcc3e0:   mov    %r9d,%r10d
   0.00%   │ │││  0x00007f2cbadcc3e3:   mov    %r13,%r11
   0.10%   │ │││  0x00007f2cbadcc3e6:   mov    %rax,%r9
           │ │╰│  0x00007f2cbadcc3e9:   jmp    0x00007f2cbadcc2c5           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.ArrayList::add@14 (line 484)
           │ │ │                                                            ; - java.util.ArrayList::add@20 (line 496)
           │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
           │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.10%   ↘ │ │  0x00007f2cbadcc3ee:   mov    %ebx,0x5c(%rsp)
   0.00%     │ │  0x00007f2cbadcc3f2:   mov    0x8(%r9),%esi                ;* unwind (locked if synchronized)
             │ │                                                            ; - java.lang.Object::getClass@-3
             │ │                                                            ; - java.util.Arrays::copyOf@3 (line 3482)
             │ │                                                            ; - java.util.ArrayList::grow@37 (line 237)
             │ │                                                            ; - java.util.ArrayList::grow@7 (line 244)
             │ │                                                            ; - java.util.ArrayList::add@7 (line 483)
             │ │                                                            ; - java.util.ArrayList::add@20 (line 496)
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
             │ │  0x00007f2cbadcc3f6:   mov    0xc(%r9),%ebx                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                            ; - java.util.ArrayList::add@2 (line 482)
             │ │                                                            ; - java.util.ArrayList::add@20 (line 496)
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.01%     │ │  0x00007f2cbadcc3fa:   mov    %edi,%ecx
   0.09%     │ │  0x00007f2cbadcc3fc:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
             │ │  0x00007f2cbadcc400:   mov    %r8d,%r10d
             │ │  0x00007f2cbadcc403:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                            ; - java.util.ArrayList::add@6 (line 495)
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one@7 (line 109)
   0.02%     │ │  0x00007f2cbadcc406:   cmp    %r8d,%ebx
             │ │  0x00007f2cbadcc409:   je     0x00007f2cbadcc858
   0.11%     │ │  0x00007f2cbadcc40f:   cmp    $0x1258,%esi                 ;   {metadata(&apos;java/lang/Object&apos;[])}
             │ │  0x00007f2cbadcc415:   jne    0x00007f2cbadcf3c4
             │ │  0x00007f2cbadcc41b:   nopl   0x0(%rax,%rax,1)
             │ │  0x00007f2cbadcc420:   cmp    %r8d,%ebx
             │ │  0x00007f2cbadcc423:   jbe    0x00007f2cbadcf42d
   0.02%     │ │  0x00007f2cbadcc429:   cmpb   $0x0,0x40(%r15)
   0.11%     │ │  0x00007f2cbadcc42e:   jne    0x00007f2cbadcc4f6
             │ │  0x00007f2cbadcc434:   mov    %edi,0x10(%r9,%r8,4)
             │ │  0x00007f2cbadcc439:   lea    0x10(%r9,%r8,4),%rsi
   0.01%     │ │  0x00007f2cbadcc43e:   xor    %rcx,%rsi
   0.10%     │ │  0x00007f2cbadcc441:   test   $0xffffffffffe00000,%rsi
             │ │  0x00007f2cbadcc448:   je     0x00007f2cbadcc52f
             │ │  0x00007f2cbadcc44e:   test   %rcx,%rcx
             │ │  0x00007f2cbadcc451:   je     0x00007f2cbadcc57b
             │ │  0x00007f2cbadcc457:   lea    0x10(%r9,%r8,4),%rsi
   0.03%     │ │  0x00007f2cbadcc45c:   shr    $0x9,%rsi
   0.09%     │ │  0x00007f2cbadcc460:   cmpb   $0x2,(%rsi,%r11,1)
             │ │  0x00007f2cbadcc465:   jne    0x00007f2cbadcc5dc
   0.01%     │ │  0x00007f2cbadcc46b:   mov    %r10d,%edi
   0.11%     │ │  0x00007f2cbadcc46e:   mov    %r14d,0x74(%rsp)
             │ │  0x00007f2cbadcc473:   mov    %edx,%r14d
             │ │  0x00007f2cbadcc476:   mov    %eax,%ebx
   0.02%     │ │  0x00007f2cbadcc478:   mov    0x84(%rsp),%ebp
   0.11%     │ │  0x00007f2cbadcc47f:   vpxor  %xmm0,%xmm0,%xmm0
             │ │  0x00007f2cbadcc483:   mov    %r13,%r8
             │ │  0x00007f2cbadcc486:   mov    0x90(%rsp),%r10d
   0.01%     │ │  0x00007f2cbadcc48e:   mov    %r11,%r13
   0.09%     │ │  0x00007f2cbadcc491:   mov    %r9,%rax
             │ │  0x00007f2cbadcc494:   mov    0x30(%rsp),%r11
             │ │  0x00007f2cbadcc499:   mov    0x8c(%rsp),%r9d
   0.01%     │ ╰  0x00007f2cbadcc4a1:   jmp    0x00007f2cbadcc250
             ↘    0x00007f2cbadcc4a6:   lea    0x10(%rax,%rdi,4),%rdx
                  0x00007f2cbadcc4ab:   mov    (%rdx),%edx
                  0x00007f2cbadcc4ad:   test   %edx,%edx
                  0x00007f2cbadcc4af:   je     0x00007f2cbadcc627
                  0x00007f2cbadcc4b5:   mov    0x28(%r15),%rbx
                  0x00007f2cbadcc4b9:   shl    $0x3,%rdx
                  0x00007f2cbadcc4bd:   data16 xchg %ax,%ax
                  0x00007f2cbadcc4c0:   test   %rbx,%rbx
                  0x00007f2cbadcc4c3:   je     0x00007f2cbadcc62e
                  0x00007f2cbadcc4c9:   mov    0x38(%r15),%rbp
....................................................................................................
  28.58%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.TimSort::sort, version 2, compile id 1058 

             0x00007f2cbadb79cc:   vucomisd %xmm1,%xmm0
          ╭  0x00007f2cbadb79d0:   jbe    0x00007f2cbadb7a19           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Double::compare@11 (line 1279)
          │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          │                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │                                                            ; - java.util.TimSort::sort@105 (line 234)
          │  0x00007f2cbadb79d6:   mov    %esi,%r9d
          │  0x00007f2cbadb79d9:   jmp    0x00007f2cbadb7940
   2.59%  │  0x00007f2cbadb79de:   movabs $0x7ff8000000000000,%rdx
   0.02%  │  0x00007f2cbadb79e8:   vmovq  %xmm0,%rax
   0.01%  │  0x00007f2cbadb79ed:   vucomisd %xmm0,%xmm0
          │  0x00007f2cbadb79f1:   mov    %rdx,%rcx
   2.52%  │  0x00007f2cbadb79f4:   cmovnp %rax,%rcx                    ;* unwind (locked if synchronized)
          │                                                            ; - java.lang.Double::doubleToLongBits@-3
          │                                                            ; - java.lang.Double::compare@17 (line 1283)
          │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          │                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.01%  │  0x00007f2cbadb79f8:   vmovq  %xmm1,%rax
   0.00%  │  0x00007f2cbadb79fd:   vucomisd %xmm1,%xmm1
          │  0x00007f2cbadb7a01:   mov    %rdx,%rdi
   2.54%  │  0x00007f2cbadb7a04:   cmovnp %rax,%rdi                    ;* unwind (locked if synchronized)
          │                                                            ; - java.lang.Double::doubleToLongBits@-3
          │                                                            ; - java.lang.Double::compare@23 (line 1284)
          │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          │                                                            ; - java.util.Comparator$$Lambda/0x00007f2c4003adb0::compare@6
          │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │                                                            ; - java.util.TimSort::sort@105 (line 234)
   0.03%  │  0x00007f2cbadb7a08:   cmp    %rcx,%rdi
          │  0x00007f2cbadb7a0b:   jg     0x00007f2cbadb7a54           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.TimSort::countRunAndMakeAscending@114 (line 360)
          │                                                            ; - java.util.TimSort::sort@105 (line 234)
   2.58%  │  0x00007f2cbadb7a11:   mov    %esi,%r9d
          │  0x00007f2cbadb7a14:   jmp    0x00007f2cbadb7890
          ↘  0x00007f2cbadb7a19:   movabs $0x7ff8000000000000,%rdx
             0x00007f2cbadb7a23:   vmovq  %xmm0,%rax
             0x00007f2cbadb7a28:   vucomisd %xmm0,%xmm0
             0x00007f2cbadb7a2c:   mov    %rdx,%rcx
             0x00007f2cbadb7a2f:   cmovnp %rax,%rcx                    ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Double::doubleToLongBits@-3
                                                                       ; - java.lang.Double::compare@17 (line 1283)
....................................................................................................
  10.30%  <total for region 3>

....[Hottest Regions]...............................................................................
  57.90%      jvmci, level 4  java.util.TimSort::sort, version 2, compile id 1058 
  28.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 6, compile id 1084 
  10.30%      jvmci, level 4  java.util.TimSort::sort, version 2, compile id 1058 
   0.69%              kernel  [unknown] 
   0.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 6, compile id 1084 
   0.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 6, compile id 1084 
   0.12%              kernel  [unknown] 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 6, compile id 1084 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 6, compile id 1084 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 6, compile id 1084 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 6, compile id 1084 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.34%  <...other 382 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.24%      jvmci, level 4  java.util.TimSort::sort, version 2, compile id 1058 
  29.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark::greedy_zero_one, version 6, compile id 1084 
   2.01%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.jmh_generated.KnapsackBenchmark_greedy_zero_one_jmhTest::greedy_zero_one_avgt_jmhStub, version 2, compile id 1098 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.17%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.57%      jvmci, level 4
   2.01%              kernel
   0.16%           libjvm.so
   0.11%                    
   0.09%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.01%         interpreter
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:51

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

Benchmark                                Mode  Cnt    Score    Error  Units
KnapsackBenchmark.dynamic                avgt    5  523.252 ± 18.621  ms/op
KnapsackBenchmark.dynamic:asm            avgt           NaN             ---
KnapsackBenchmark.greedy_fractional      avgt    5    0.509 ±  0.002  ms/op
KnapsackBenchmark.greedy_fractional:asm  avgt           NaN             ---
KnapsackBenchmark.greedy_zero_one        avgt    5    0.691 ±  0.001  ms/op
KnapsackBenchmark.greedy_zero_one:asm    avgt           NaN             ---
