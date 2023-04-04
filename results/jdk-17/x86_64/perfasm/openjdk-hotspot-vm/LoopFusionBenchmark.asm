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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.initial_loops
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 302.486 us/op
# Warmup Iteration   2: 300.445 us/op
# Warmup Iteration   3: 300.230 us/op
# Warmup Iteration   4: 300.235 us/op
# Warmup Iteration   5: 300.004 us/op
Iteration   1: 300.101 us/op
Iteration   2: 300.203 us/op
Iteration   3: 300.095 us/op
Iteration   4: 300.102 us/op
Iteration   5: 300.109 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.initial_loops":
  300.122 ±(99.9%) 0.176 us/op [Average]
  (min, avg, max) = (300.095, 300.122, 300.203), stdev = 0.046
  CI (99.9%): [299.946, 300.298] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.initial_loops:·asm":
PrintAssembly processed: 118677 total address lines.
Perf output processed (skipped 55.734 seconds):
 Column 1: cycles (50604 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 477 

                0x00007f7a90f6405f:   mov    $0x80000000,%r10d
                0x00007f7a90f64065:   cmp    %r8d,%eax
                0x00007f7a90f64068:   cmovl  %r10d,%r8d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@34 (line 85)
                0x00007f7a90f6406c:   mov    $0x1f40,%r14d
                0x00007f7a90f64072:   cmp    $0x2,%r8d
                0x00007f7a90f64076:   jle    0x00007f7a90f6424c
                0x00007f7a90f6407c:   mov    %eax,(%rsp)
                0x00007f7a90f6407f:   mov    $0x2,%eax
           ↗    0x00007f7a90f64084:   mov    %r8d,%r10d
   0.00%   │    0x00007f7a90f64087:   sub    %eax,%r10d
           │    0x00007f7a90f6408a:   xor    %r11d,%r11d
           │    0x00007f7a90f6408d:   cmp    %eax,%r8d
           │    0x00007f7a90f64090:   cmovl  %r11d,%r10d
   0.00%   │    0x00007f7a90f64094:   cmp    $0x1f40,%r10d
           │    0x00007f7a90f6409b:   cmova  %r14d,%r10d
           │    0x00007f7a90f6409f:   add    %eax,%r10d
   0.00%   │    0x00007f7a90f640a2:   data16 nopw 0x0(%rax,%rax,1)
           │    0x00007f7a90f640ac:   data16 data16 xchg %ax,%ax          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@10 (line 86)
   0.08%  ↗│    0x00007f7a90f640b0:   mov    0x10(%rcx,%rax,4),%r11d
   0.01%  ││    0x00007f7a90f640b5:   add    0xc(%rbp,%rax,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
  10.18%  ││    0x00007f7a90f640ba:   mov    %r11d,0x10(%rbp,%rax,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   8.79%  ││    0x00007f7a90f640bf:   add    0x14(%rcx,%rax,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   0.01%  ││    0x00007f7a90f640c4:   mov    %r11d,0x14(%rbp,%rax,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   4.40%  ││    0x00007f7a90f640c9:   add    0x18(%rcx,%rax,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   1.03%  ││    0x00007f7a90f640ce:   mov    %r11d,0x18(%rbp,%rax,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   4.22%  ││    0x00007f7a90f640d3:   add    0x1c(%rcx,%rax,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   0.10%  ││    0x00007f7a90f640d8:   mov    %r11d,0x1c(%rbp,%rax,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   4.42%  ││    0x00007f7a90f640dd:   add    0x20(%rcx,%rax,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   0.01%  ││    0x00007f7a90f640e2:   mov    %r11d,0x20(%rbp,%rax,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   4.23%  ││    0x00007f7a90f640e7:   add    0x24(%rcx,%rax,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   0.01%  ││    0x00007f7a90f640ec:   mov    %r11d,0x24(%rbp,%rax,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   4.28%  ││    0x00007f7a90f640f1:   add    0x28(%rcx,%rax,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   0.01%  ││    0x00007f7a90f640f6:   mov    %r11d,0x28(%rbp,%rax,4)
   4.14%  ││    0x00007f7a90f640fb:   add    0x2c(%rcx,%rax,4),%r11d
   0.01%  ││    0x00007f7a90f64100:   mov    %r11d,0x2c(%rbp,%rax,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   4.16%  ││    0x00007f7a90f64105:   add    $0x8,%eax                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@31 (line 85)
   0.00%  ││    0x00007f7a90f64108:   cmp    %r10d,%eax
          ╰│    0x00007f7a90f6410b:   jl     0x00007f7a90f640b0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@34 (line 85)
           │    0x00007f7a90f6410d:   mov    0x348(%r15),%r10             ; ImmutableOopMap {rcx=Oop rbx=NarrowOop rdi=NarrowOop rbp=Oop xmm0=Oop }
           │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@34 (line 85)
   0.00%   │    0x00007f7a90f64114:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@34 (line 85)
           │                                                              ;   {poll}
   0.04%   │    0x00007f7a90f64117:   cmp    %r8d,%eax
           │    0x00007f7a90f6411a:   nopw   0x0(%rax,%rax,1)
           ╰    0x00007f7a90f64120:   jl     0x00007f7a90f64084
                0x00007f7a90f64126:   cmp    (%rsp),%eax
            ╭   0x00007f7a90f64129:   jge    0x00007f7a90f64145
   0.01%    │   0x00007f7a90f6412b:   nop                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@10 (line 86)
   0.00%    │↗  0x00007f7a90f6412c:   mov    0x10(%rcx,%rax,4),%r10d
   0.01%    ││  0x00007f7a90f64131:   add    0xc(%rbp,%rax,4),%r10d
            ││  0x00007f7a90f64136:   mov    %r10d,0x10(%rbp,%rax,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
            ││  0x00007f7a90f6413b:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@31 (line 85)
            ││  0x00007f7a90f6413d:   data16 xchg %ax,%ax
            ││  0x00007f7a90f64140:   cmp    (%rsp),%eax
            │╰  0x00007f7a90f64143:   jl     0x00007f7a90f6412c           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@47 (line 90)
            ↘   0x00007f7a90f64145:   test   %esi,%esi
                0x00007f7a90f64147:   jbe    0x00007f7a90f64259
....................................................................................................
  50.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 477 

               0x00007f7a90f6415b:   add    0x10(%r12,%rbx,8),%r10d
               0x00007f7a90f64160:   mov    %r10d,0x14(%r12,%rbx,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
               0x00007f7a90f64165:   cmp    $0x2,%r8d
          ╭    0x00007f7a90f64169:   jle    0x00007f7a90f64206
          │ ↗  0x00007f7a90f6416f:   mov    %r8d,%r9d
          │ │  0x00007f7a90f64172:   sub    %edx,%r9d
          │ │  0x00007f7a90f64175:   xor    %r10d,%r10d
          │ │  0x00007f7a90f64178:   cmp    %edx,%r8d
          │ │  0x00007f7a90f6417b:   cmovl  %r10d,%r9d
   0.01%  │ │  0x00007f7a90f6417f:   cmp    $0x1f40,%r9d
          │ │  0x00007f7a90f64186:   cmova  %r14d,%r9d
          │ │  0x00007f7a90f6418a:   add    %edx,%r9d
          │ │  0x00007f7a90f6418d:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@47 (line 90)
   0.09%  │↗│  0x00007f7a90f64190:   mov    0x10(%rbp,%rdx,4),%r10d
   0.00%  │││  0x00007f7a90f64195:   add    0xc(%rcx,%rdx,4),%r10d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   9.49%  │││  0x00007f7a90f6419a:   mov    %r10d,0x10(%rcx,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   8.82%  │││  0x00007f7a90f6419f:   add    0x14(%rbp,%rdx,4),%r10d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   0.01%  │││  0x00007f7a90f641a4:   mov    %r10d,0x14(%rcx,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   4.16%  │││  0x00007f7a90f641a9:   add    0x18(%rbp,%rdx,4),%r10d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   0.95%  │││  0x00007f7a90f641ae:   mov    %r10d,0x18(%rcx,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   4.24%  │││  0x00007f7a90f641b3:   add    0x1c(%rbp,%rdx,4),%r10d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   0.08%  │││  0x00007f7a90f641b8:   mov    %r10d,0x1c(%rcx,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   4.14%  │││  0x00007f7a90f641bd:   add    0x20(%rbp,%rdx,4),%r10d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   0.01%  │││  0x00007f7a90f641c2:   mov    %r10d,0x20(%rcx,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   4.23%  │││  0x00007f7a90f641c7:   add    0x24(%rbp,%rdx,4),%r10d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   0.01%  │││  0x00007f7a90f641cc:   mov    %r10d,0x24(%rcx,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   3.97%  │││  0x00007f7a90f641d1:   add    0x28(%rbp,%rdx,4),%r10d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   0.00%  │││  0x00007f7a90f641d6:   mov    %r10d,0x28(%rcx,%rdx,4)
   4.03%  │││  0x00007f7a90f641db:   add    0x2c(%rbp,%rdx,4),%r10d
   0.01%  │││  0x00007f7a90f641e0:   mov    %r10d,0x2c(%rcx,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   3.83%  │││  0x00007f7a90f641e5:   add    $0x8,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@68 (line 89)
          │││  0x00007f7a90f641e8:   cmp    %r9d,%edx
          │╰│  0x00007f7a90f641eb:   jl     0x00007f7a90f64190           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@71 (line 89)
   0.00%  │ │  0x00007f7a90f641ed:   mov    0x348(%r15),%r10             ; ImmutableOopMap {rcx=Oop rbp=Oop xmm0=Oop }
          │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@71 (line 89)
   0.00%  │ │  0x00007f7a90f641f4:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@71 (line 89)
          │ │                                                            ;   {poll}
   0.03%  │ │  0x00007f7a90f641f7:   cmp    %r8d,%edx
          │ │  0x00007f7a90f641fa:   nopw   0x0(%rax,%rax,1)
          │ ╰  0x00007f7a90f64200:   jl     0x00007f7a90f6416f
          ↘    0x00007f7a90f64206:   cmp    (%rsp),%edx
               0x00007f7a90f64209:   jge    0x00007f7a90f64225
   0.01%       0x00007f7a90f6420b:   nop                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@47 (line 90)
               0x00007f7a90f6420c:   mov    0x10(%rbp,%rdx,4),%r10d
               0x00007f7a90f64211:   add    0xc(%rcx,%rdx,4),%r10d
               0x00007f7a90f64216:   mov    %r10d,0x10(%rcx,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
               0x00007f7a90f6421b:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@68 (line 89)
               0x00007f7a90f6421d:   data16 xchg %ax,%ax
               0x00007f7a90f64220:   cmp    (%rsp),%edx
               0x00007f7a90f64223:   jl     0x00007f7a90f6420c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  48.13%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 477 
  48.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 477 
   0.41%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
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
   0.78%  <...other 268 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 477 
   1.33%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  outputStream::print 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  os::elapsed_counter 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%           libjvm.so  memcpy@plt 
   0.00%        libc-2.31.so  handle_intel.constprop.0 
   0.00%        libc-2.31.so  _nl_parse_alt_digit 
   0.12%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%         c2, level 4
   1.33%              kernel
   0.13%           libjvm.so
   0.07%        libc-2.31.so
   0.05%                    
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.manual_loops_fusion
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 578.868 us/op
# Warmup Iteration   2: 574.550 us/op
# Warmup Iteration   3: 574.538 us/op
# Warmup Iteration   4: 574.216 us/op
# Warmup Iteration   5: 574.010 us/op
Iteration   1: 574.004 us/op
Iteration   2: 574.215 us/op
Iteration   3: 574.126 us/op
Iteration   4: 574.126 us/op
Iteration   5: 574.110 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.manual_loops_fusion":
  574.116 ±(99.9%) 0.290 us/op [Average]
  (min, avg, max) = (574.004, 574.116, 574.215), stdev = 0.075
  CI (99.9%): [573.827, 574.406] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.manual_loops_fusion:·asm":
PrintAssembly processed: 117777 total address lines.
Perf output processed (skipped 55.713 seconds):
 Column 1: cycles (51402 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion, version 4, compile id 475 

             0x00007f880cf64919:   mov    %edi,%ecx
             0x00007f880cf6491b:   sub    %r10d,%ecx
   0.00%     0x00007f880cf6491e:   cmp    %r10d,%edi
             0x00007f880cf64921:   cmovl  %r8d,%ecx
             0x00007f880cf64925:   cmp    $0x1f40,%ecx
             0x00007f880cf6492b:   cmova  %r11d,%ecx
             0x00007f880cf6492f:   add    %r10d,%ecx
             0x00007f880cf64932:   data16 nopw 0x0(%rax,%rax,1)
             0x00007f880cf6493c:   data16 data16 xchg %ax,%ax          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@10 (line 102)
   0.00%  ↗  0x00007f880cf64940:   mov    0x10(%rsi,%r10,4),%edx
          │  0x00007f880cf64945:   add    0xc(%rax,%r10,4),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   3.47%  │  0x00007f880cf6494a:   mov    %edx,0x10(%rax,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   2.49%  │  0x00007f880cf6494f:   add    0xc(%rsi,%r10,4),%edx
   2.03%  │  0x00007f880cf64954:   mov    %edx,0x10(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   3.41%  │  0x00007f880cf64959:   mov    0x10(%rax,%r10,4),%ebx
   2.30%  │  0x00007f880cf6495e:   add    0x14(%rsi,%r10,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   1.23%  │  0x00007f880cf64963:   mov    %ebx,0x14(%rax,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.25%  │  0x00007f880cf64968:   add    0x10(%rsi,%r10,4),%ebx
   2.71%  │  0x00007f880cf6496d:   mov    %ebx,0x14(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   3.52%  │  0x00007f880cf64972:   mov    0x18(%rsi,%r10,4),%edx
          │  0x00007f880cf64977:   add    0x14(%rax,%r10,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   3.01%  │  0x00007f880cf6497c:   mov    %edx,0x18(%rax,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   2.99%  │  0x00007f880cf64981:   add    0x14(%rsi,%r10,4),%edx
   2.13%  │  0x00007f880cf64986:   mov    %edx,0x18(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   3.60%  │  0x00007f880cf6498b:   mov    0x18(%rax,%r10,4),%ebx
   1.95%  │  0x00007f880cf64990:   add    0x1c(%rsi,%r10,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   1.35%  │  0x00007f880cf64995:   mov    %ebx,0x1c(%rax,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.41%  │  0x00007f880cf6499a:   add    0x18(%rsi,%r10,4),%ebx
   2.45%  │  0x00007f880cf6499f:   mov    %ebx,0x1c(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   3.51%  │  0x00007f880cf649a4:   mov    0x20(%rsi,%r10,4),%edx
          │  0x00007f880cf649a9:   add    0x1c(%rax,%r10,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   3.20%  │  0x00007f880cf649ae:   mov    %edx,0x20(%rax,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.33%  │  0x00007f880cf649b3:   add    0x1c(%rsi,%r10,4),%edx
   1.41%  │  0x00007f880cf649b8:   mov    %edx,0x20(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   3.07%  │  0x00007f880cf649bd:   mov    0x20(%rax,%r10,4),%ebx
   2.39%  │  0x00007f880cf649c2:   add    0x24(%rsi,%r10,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   1.55%  │  0x00007f880cf649c7:   mov    %ebx,0x24(%rax,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.59%  │  0x00007f880cf649cc:   add    0x20(%rsi,%r10,4),%ebx
   2.17%  │  0x00007f880cf649d1:   mov    %ebx,0x24(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   3.40%  │  0x00007f880cf649d6:   mov    0x28(%rsi,%r10,4),%edx
          │  0x00007f880cf649db:   add    0x24(%rax,%r10,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   3.23%  │  0x00007f880cf649e0:   mov    %edx,0x28(%rax,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.36%  │  0x00007f880cf649e5:   add    0x24(%rsi,%r10,4),%edx
   1.41%  │  0x00007f880cf649ea:   mov    %edx,0x28(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   3.23%  │  0x00007f880cf649ef:   mov    0x2c(%rsi,%r10,4),%ebx
          │  0x00007f880cf649f4:   add    0x28(%rax,%r10,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   1.64%  │  0x00007f880cf649f9:   mov    %ebx,0x2c(%rax,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.13%  │  0x00007f880cf649fe:   add    0x28(%rsi,%r10,4),%ebx
   3.68%  │  0x00007f880cf64a03:   mov    %ebx,0x2c(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   4.20%  │  0x00007f880cf64a08:   add    $0x8,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@52 (line 101)
          │  0x00007f880cf64a0c:   cmp    %ecx,%r10d
          ╰  0x00007f880cf64a0f:   jl     0x00007f880cf64940           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@55 (line 101)
             0x00007f880cf64a15:   mov    0x348(%r15),%rcx             ; ImmutableOopMap {r9=Oop rsi=Oop rax=Oop }
                                                                       ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@55 (line 101)
             0x00007f880cf64a1c:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@55 (line 101)
....................................................................................................
  96.79%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion, version 4, compile id 475 
   2.00%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
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
   0.69%  <...other 244 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion, version 4, compile id 475 
   2.89%              kernel  [unknown] 
   0.03%        libc-2.31.so  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%           libjvm.so  UTF8::next<unsigned short> 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.14%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.81%         c2, level 4
   2.89%              kernel
   0.16%           libjvm.so
   0.07%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%      perf-20214.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:38

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

Benchmark                                     (size)  Mode  Cnt    Score   Error  Units
LoopFusionBenchmark.initial_loops             262144  avgt    5  300.122 ± 0.176  us/op
LoopFusionBenchmark.initial_loops:·asm        262144  avgt           NaN            ---
LoopFusionBenchmark.manual_loops_fusion       262144  avgt    5  574.116 ± 0.290  us/op
LoopFusionBenchmark.manual_loops_fusion:·asm  262144  avgt           NaN            ---
