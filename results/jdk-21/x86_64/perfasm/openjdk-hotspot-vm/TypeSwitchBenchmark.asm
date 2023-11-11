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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.078 ns/op
# Warmup Iteration   2: 1.136 ns/op
# Warmup Iteration   3: 1.060 ns/op
# Warmup Iteration   4: 1.058 ns/op
# Warmup Iteration   5: 1.058 ns/op
Iteration   1: 1.058 ns/op
Iteration   2: 1.057 ns/op
Iteration   3: 1.057 ns/op
Iteration   4: 1.057 ns/op
Iteration   5: 1.057 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array":
  1.057 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (1.057, 1.057, 1.058), stdev = 0.001
  CI (99.9%): [1.055, 1.059] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array:asm":
PrintAssembly processed: 133357 total address lines.
Perf output processed (skipped 56.600 seconds):
 Column 1: cycles (50504 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 4, compile id 604 

   0.02%           0x00007f875c63f508:   lea    (%r12,%rbp,8),%r9            ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@3 (line 89)
                   0x00007f875c63f50c:   lea    -0x3(%rbx),%edi
                   0x00007f875c63f50f:   mov    $0x1,%edx
                   0x00007f875c63f514:   cmp    $0x1,%edi
                   0x00007f875c63f517:   jle    0x00007f875c63f5e8
                   0x00007f875c63f51d:   mov    $0xfa0,%r13d                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@36 (line 89)
          ╭        0x00007f875c63f523:   jmp    0x00007f875c63f59d
          │        0x00007f875c63f528:   nopl   0x0(%rax,%rax,1)
   1.16%  │    ↗   0x00007f875c63f530:   mov    %ecx,%r10d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@19 (line 89)
   2.19%  │    │↗  0x00007f875c63f533:   mov    0x10(%r9,%rdx,4),%r8d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   4.93%  │    ││  0x00007f875c63f538:   mov    %r10d,%ecx
   0.71%  │    ││  0x00007f875c63f53b:   nopl   0x0(%rax,%rax,1)
   1.13%  │╭   ││  0x00007f875c63f540:   add    0xc(%r12,%r8,8),%ecx         ; implicit exception: dispatches to 0x00007f875c63f5c2
          ││   ││                                                            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
  17.31%  ││   ││  0x00007f875c63f545:   mov    0x14(%r9,%rdx,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   3.90%  ││   ││  0x00007f875c63f54a:   test   %r11d,%r11d
          ││╭  ││  0x00007f875c63f54d:   je     0x00007f875c63f5bd           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@1 (line 267)
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
   0.55%  │││  ││  0x00007f875c63f553:   mov    0x18(%r9,%rdx,4),%r8d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   1.03%  │││  ││  0x00007f875c63f558:   add    0xc(%r12,%r11,8),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
  17.79%  │││  ││  0x00007f875c63f55d:   data16 xchg %ax,%ax
   3.11%  │││  ││  0x00007f875c63f560:   test   %r8d,%r8d
          │││╭ ││  0x00007f875c63f563:   je     0x00007f875c63f5c7           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@1 (line 267)
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
   0.49%  ││││ ││  0x00007f875c63f569:   mov    0x1c(%r9,%rdx,4),%r10d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   1.79%  ││││ ││  0x00007f875c63f56e:   add    0xc(%r12,%r8,8),%ecx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
  16.61%  ││││ ││  0x00007f875c63f573:   test   %r10d,%r10d
          ││││╭││  0x00007f875c63f576:   je     0x00007f875c63f5ba           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@1 (line 267)
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
   2.85%  │││││││  0x00007f875c63f57c:   add    0xc(%r12,%r10,8),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
  21.73%  │││││││  0x00007f875c63f581:   add    $0x4,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
   0.60%  │││││││  0x00007f875c63f584:   cmp    %esi,%edx
          │││││╰│  0x00007f875c63f586:   jl     0x00007f875c63f530           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
          │││││ │  0x00007f875c63f588:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r9=Oop rbp=NarrowOop }
          │││││ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@36 (line 89)
   0.03%  │││││ │  0x00007f875c63f58f:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@36 (line 89)
          │││││ │                                                            ;   {poll}
   0.11%  │││││ │  0x00007f875c63f592:   cmp    %edi,%edx
          │││││ │  0x00007f875c63f594:   jge    0x00007f875c63f5eb
          │││││ │  0x00007f875c63f59a:   mov    %ecx,%r10d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@19 (line 89)
   0.00%  ↘││││ │  0x00007f875c63f59d:   mov    %ebx,%esi
   0.00%   ││││ │  0x00007f875c63f59f:   sub    %edx,%esi
   0.01%   ││││ │  0x00007f875c63f5a1:   add    $0xfffffffd,%esi
           ││││ │  0x00007f875c63f5a4:   cmp    %edx,%edi
           ││││ │  0x00007f875c63f5a6:   cmovl  %eax,%esi
           ││││ │  0x00007f875c63f5a9:   cmp    $0xfa0,%esi
   0.00%   ││││ │  0x00007f875c63f5af:   cmova  %r13d,%esi
   0.00%   ││││ │  0x00007f875c63f5b3:   add    %edx,%esi
           ││││ ╰  0x00007f875c63f5b5:   jmp    0x00007f875c63f533
           │││↘    0x00007f875c63f5ba:   add    $0x2,%edx
           │↘│     0x00007f875c63f5bd:   inc    %edx
           │ │     0x00007f875c63f5bf:   nop
           │ │     0x00007f875c63f5c0:   jmp    0x00007f875c63f5ca
           ↘ │     0x00007f875c63f5c2:   mov    %r10d,%ecx
             │     0x00007f875c63f5c5:   jmp    0x00007f875c63f5ca
             ↘     0x00007f875c63f5c7:   add    $0x2,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
                   0x00007f875c63f5ca:   mov    $0xfffffff4,%esi
....................................................................................................
  98.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 4, compile id 604 
   0.47%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 4, compile id 604 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_if_instanceof_concrete_array_jmhTest::if_instanceof_concrete_array_avgt_jmhStub, version 4, compile id 641 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.84%  <...other 273 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 4, compile id 604 
   1.64%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_if_instanceof_concrete_array_jmhTest::if_instanceof_concrete_array_avgt_jmhStub, version 4, compile id 641 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%         interpreter  invokestatic  184 invokestatic  
   0.00%         interpreter  return entry points  
   0.00%           libjvm.so  VMError::is_error_reported 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%           libjvm.so  os::current_thread_id 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  stringStream::write 
   0.00%         interpreter  ifne  154 ifne  
   0.09%  <...other 43 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.16%         c2, level 4
   1.64%              kernel
   0.09%           libjvm.so
   0.03%        libc-2.31.so
   0.03%         interpreter
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array

# Run progress: 12.50% complete, ETA 00:12:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.805 ns/op
# Warmup Iteration   2: 14.564 ns/op
# Warmup Iteration   3: 14.563 ns/op
# Warmup Iteration   4: 14.569 ns/op
# Warmup Iteration   5: 14.566 ns/op
Iteration   1: 14.569 ns/op
Iteration   2: 14.569 ns/op
Iteration   3: 14.568 ns/op
Iteration   4: 14.570 ns/op
Iteration   5: 14.565 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array":
  14.568 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (14.565, 14.568, 14.570), stdev = 0.002
  CI (99.9%): [14.560, 14.576] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array:asm":
PrintAssembly processed: 129376 total address lines.
Perf output processed (skipped 56.441 seconds):
 Column 1: cycles (50492 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 611 

                               0x00007fe13463fc93:   dec    %r10d
                               0x00007fe13463fc96:   cmp    %r9d,%r10d
          ╭                    0x00007fe13463fc99:   jae    0x00007fe13463fe0f
          │                    0x00007fe13463fc9f:   lea    (%r12,%rbp,8),%rsi           ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@3 (line 78)
          │                    0x00007fe13463fca3:   mov    $0x3e8,%ebx                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@36 (line 78)
          │                    0x00007fe13463fca8:   xor    %r8d,%r8d
          │                    0x00007fe13463fcab:   xor    %eax,%eax
          │╭                   0x00007fe13463fcad:   jmp    0x00007fe13463fcc6
   0.02%  ││  ↗                0x00007fe13463fcaf:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop rbp=NarrowOop }
          ││  │                                                                          ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@36 (line 78)
   0.05%  ││  │                0x00007fe13463fcb6:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@36 (line 78)
          ││  │                                                                          ;   {poll}
   0.04%  ││  │                0x00007fe13463fcb9:   cmp    %r9d,%r8d
          ││  │                0x00007fe13463fcbc:   nopl   0x0(%rax)
          ││╭ │                0x00007fe13463fcc0:   jge    0x00007fe13463fdfc           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@19 (line 78)
          │↘│ │                0x00007fe13463fcc6:   mov    %r9d,%edi
   0.01%  │ │ │                0x00007fe13463fcc9:   sub    %r8d,%edi
          │ │ │                0x00007fe13463fccc:   cmp    %r8d,%r9d
          │ │ │                0x00007fe13463fccf:   cmovl  %edx,%edi
          │ │ │                0x00007fe13463fcd2:   cmp    $0x3e8,%edi
   0.01%  │ │ │                0x00007fe13463fcd8:   cmova  %ebx,%edi
          │ │ │                0x00007fe13463fcdb:   add    %r8d,%edi
          │ │ │                0x00007fe13463fcde:   xchg   %ax,%ax
   0.00%  │ │╭│                0x00007fe13463fce0:   jmp    0x00007fe13463fcf1           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@8 (line 268)
          │ │││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.50%  │ │││↗               0x00007fe13463fce2:   mov    0xc(%r10),%r10d              ;*invokestatic if_instanceof {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.27%  │ ││││ ↗ ↗ ↗ ↗ ↗ ↗↗  0x00007fe13463fce6:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   2.17%  │ ││││ │ │ │ │ │ ││  0x00007fe13463fce9:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@33 (line 78)
   0.65%  │ ││││ │ │ │ │ │ ││  0x00007fe13463fcec:   cmp    %edi,%r8d
          │ ││╰│ │ │ │ │ │ ││  0x00007fe13463fcef:   jge    0x00007fe13463fcaf           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@19 (line 78)
   0.04%  │ │↘ │ │ │ │ │ │ ││  0x00007fe13463fcf1:   mov    0x10(%rsi,%r8,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@22 (line 78)
   2.61%  │ │  │ │ │ │ │ │ ││  0x00007fe13463fcf6:   data16 nopw 0x0(%rax,%rax,1)
   0.61%  │ │  │ │ │ │ │ │ ││  0x00007fe13463fd00:   mov    0x8(%r12,%rcx,8),%r11d       ; implicit exception: dispatches to 0x00007fe13463fe4c
          │ │  │ │ │ │ │ │ ││                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@8 (line 268)
          │ │  │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
  16.37%  │ │  │ │ │ │ │ │ ││  0x00007fe13463fd05:   lea    (%r12,%rcx,8),%r10
   0.03%  │ │  │ │ │ │ │ │ ││  0x00007fe13463fd09:   cmp    $0x102a470,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          │ │  ╰ │ │ │ │ │ ││  0x00007fe13463fd10:   je     0x00007fe13463fce2
   2.68%  │ │    │ │ │ │ │ ││  0x00007fe13463fd12:   data16 nopw 0x0(%rax,%rax,1)
   0.30%  │ │    │ │ │ │ │ ││  0x00007fe13463fd1c:   data16 data16 xchg %ax,%ax
   0.05%  │ │    │ │ │ │ │ ││  0x00007fe13463fd20:   cmp    $0x102b468,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │ │   ╭│ │ │ │ │ ││  0x00007fe13463fd27:   jne    0x00007fe13463fd32           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@23 (line 270)
          │ │   ││ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.62%  │ │   ││ │ │ │ │ ││  0x00007fe13463fd29:   mov    0x10(%r10),%r10
   3.38%  │ │   ││ │ │ │ │ ││  0x00007fe13463fd2d:   mov    %r10d,%r10d                  ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@29 (line 270)
          │ │   ││ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.30%  │ │   │╰ │ │ │ │ ││  0x00007fe13463fd30:   jmp    0x00007fe13463fce6
   3.65%  │ │   ↘  │ │ │ │ ││  0x00007fe13463fd32:   data16 nopw 0x0(%rax,%rax,1)
   0.41%  │ │      │ │ │ │ ││  0x00007fe13463fd3c:   data16 data16 xchg %ax,%ax
   0.26%  │ │      │ │ │ │ ││  0x00007fe13463fd40:   cmp    $0x102a860,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │ │     ╭│ │ │ │ ││  0x00007fe13463fd47:   jne    0x00007fe13463fd50           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@39 (line 272)
          │ │     ││ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.37%  │ │     ││ │ │ │ ││  0x00007fe13463fd49:   movswl 0xc(%r10),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@42 (line 272)
          │ │     ││ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.18%  │ │     │╰ │ │ │ ││  0x00007fe13463fd4e:   jmp    0x00007fe13463fce6
   2.07%  │ │     ↘  │ │ │ ││  0x00007fe13463fd50:   cmp    $0x102b068,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │ │       ╭│ │ │ ││  0x00007fe13463fd57:   jne    0x00007fe13463fd62           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │       ││ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@54 (line 274)
          │ │       ││ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.28%  │ │       ││ │ │ ││  0x00007fe13463fd59:   movsbl 0xc(%r10),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │       ││ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@57 (line 274)
          │ │       ││ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.15%  │ │       ││ │ │ ││  0x00007fe13463fd5e:   xchg   %ax,%ax
   0.00%  │ │       │╰ │ │ ││  0x00007fe13463fd60:   jmp    0x00007fe13463fce6
   3.38%  │ │       ↘  │ │ ││  0x00007fe13463fd62:   cmp    $0x102b268,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │ │         ╭│ │ ││  0x00007fe13463fd69:   jne    0x00007fe13463fd75           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │         ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@69 (line 276)
          │ │         ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.14%  │ │         ││ │ ││  0x00007fe13463fd6b:   movzwl 0xc(%r10),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │         ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@72 (line 276)
          │ │         ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.98%  │ │         │╰ │ ││  0x00007fe13463fd70:   jmp    0x00007fe13463fce6
   2.13%  │ │         ↘  │ ││  0x00007fe13463fd75:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.10%  │ │            │ ││  0x00007fe13463fd80:   cmp    $0x102ae68,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │ │           ╭│ ││  0x00007fe13463fd87:   jne    0x00007fe13463fda5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │           ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@84 (line 278)
          │ │           ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   4.03%  │ │           ││ ││  0x00007fe13463fd89:   vmovsd 0x10(%r10),%xmm0
   3.19%  │ │           ││ ││  0x00007fe13463fd8f:   vcvttsd2si %xmm0,%r10d
   2.58%  │ │           ││ ││  0x00007fe13463fd93:   cmp    $0x80000000,%r10d
          │ │           ││ ││  0x00007fe13463fd9a:   je     0x00007fe13463fed3           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │ │           ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
          │ │           ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.01%  │ │           │╰ ││  0x00007fe13463fda0:   jmp    0x00007fe13463fce6
   2.24%  │ │           ↘  ││  0x00007fe13463fda5:   cmp    $0x102ac68,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │ │             ╭││  0x00007fe13463fdac:   jne    0x00007fe13463fdca           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@100 (line 280)
          │ │             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.58%  │ │             │││  0x00007fe13463fdae:   vmovss 0xc(%r10),%xmm1
   1.83%  │ │             │││  0x00007fe13463fdb4:   vcvttss2si %xmm1,%r10d
   2.33%  │ │             │││  0x00007fe13463fdb8:   cmp    $0x80000000,%r10d
          │ │             │││  0x00007fe13463fdbf:   je     0x00007fe13463febe           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │ │             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          │ │             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.00%  │ │             │╰│  0x00007fe13463fdc5:   jmp    0x00007fe13463fce6
   1.95%  │ │             ↘ │  0x00007fe13463fdca:   cmp    $0x102aa60,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          │ │               │  0x00007fe13463fdd1:   jne    0x00007fe13463fe28           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@109 (line 281)
          │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.00%  │ │               │  0x00007fe13463fdd7:   mov    0xc(%r10),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@119 (line 282)
          │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.06%  │ │               │  0x00007fe13463fddb:   nopl   0x0(%rax,%rax,1)
          │ │               │  0x00007fe13463fde0:   mov    0x14(%r12,%r10,8),%ecx       ; implicit exception: dispatches to 0x00007fe13463fe80
          │ │               │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │               │                                                            ; - java.lang.String::length@1 (line 1519)
          │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@122 (line 282)
          │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.83%  │ │               │  0x00007fe13463fde5:   mov    0xc(%r12,%rcx,8),%r11d       ; implicit exception: dispatches to 0x00007fe13463fe94
   1.66%  │ │               │  0x00007fe13463fdea:   movsbl 0x10(%r12,%r10,8),%ecx
          │ │               │  0x00007fe13463fdf0:   sarx   %ecx,%r11d,%r10d             ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │               │                                                            ; - java.lang.String::length@9 (line 1519)
          │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@122 (line 282)
          │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.32%  │ │               ╰  0x00007fe13463fdf5:   jmp    0x00007fe13463fce6
          │ │                  0x00007fe13463fdfa:   xor    %eax,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
          │ ↘                  0x00007fe13463fdfc:   add    $0x30,%rsp
          │                    0x00007fe13463fe00:   pop    %rbp
   0.00%  │                    0x00007fe13463fe01:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │                    0x00007fe13463fe08:   ja     0x00007fe13463fea8
          │                    0x00007fe13463fe0e:   ret    
          ↘                    0x00007fe13463fe0f:   mov    $0xffffff76,%esi
                               0x00007fe13463fe14:   mov    %r9d,0x4(%rsp)
                               0x00007fe13463fe19:   xchg   %ax,%ax
                               0x00007fe13463fe1b:   call   0x00007fe1340c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
                                                                                         ;   {runtime_call UncommonTrapBlob}
                               0x00007fe13463fe20:   nopl   0x1000390(%rax,%rax,1)       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.44%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 611 
   0.47%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.63%  <...other 211 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 611 
   1.29%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%         interpreter  return entry points  
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%    perf-1960290.map  [unknown] 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  defaultStream::write 
   0.09%  <...other 41 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.44%         c2, level 4
   1.29%              kernel
   0.11%           libjvm.so
   0.04%        libc-2.31.so
   0.04%                    
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.01%    perf-1960290.map
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array

# Run progress: 25.00% complete, ETA 00:10:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.197 ns/op
# Warmup Iteration   2: 1.137 ns/op
# Warmup Iteration   3: 1.297 ns/op
# Warmup Iteration   4: 1.321 ns/op
# Warmup Iteration   5: 1.297 ns/op
Iteration   1: 1.297 ns/op
Iteration   2: 1.297 ns/op
Iteration   3: 1.321 ns/op
Iteration   4: 1.321 ns/op
Iteration   5: 1.297 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array":
  1.307 ±(99.9%) 0.052 ns/op [Average]
  (min, avg, max) = (1.297, 1.307, 1.321), stdev = 0.013
  CI (99.9%): [1.255, 1.358] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array:asm":
PrintAssembly processed: 144780 total address lines.
Perf output processed (skipped 56.270 seconds):
 Column 1: cycles (50631 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 3, compile id 688 

                     #           [sp+0x40]  (sp of caller)
                     0x00007f100c6463a0:   mov    0x8(%rsi),%r10d
                     0x00007f100c6463a4:   movabs $0x7f0f93000000,%r11
                     0x00007f100c6463ae:   add    %r11,%r10
                     0x00007f100c6463b1:   cmp    %r10,%rax
                     0x00007f100c6463b4:   jne    0x00007f100c0c4080           ;   {runtime_call ic_miss_stub}
                     0x00007f100c6463ba:   xchg   %ax,%ax
                     0x00007f100c6463bc:   nopl   0x0(%rax)
                   [Verified Entry Point]
                     0x00007f100c6463c0:   mov    %eax,-0x14000(%rsp)
   0.00%             0x00007f100c6463c7:   push   %rbp
                     0x00007f100c6463c8:   sub    $0x30,%rsp
                     0x00007f100c6463cc:   cmpl   $0x1,0x20(%r15)
   0.00%             0x00007f100c6463d4:   jne    0x00007f100c646584           ;*synchronization entry
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@-1 (line 110)
   0.00%             0x00007f100c6463da:   mov    0x14(%rsi),%ebp              ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@3 (line 111)
   0.00%             0x00007f100c6463dd:   data16 xchg %ax,%ax
                     0x00007f100c6463e0:   mov    0xc(%r12,%rbp,8),%ebx        ; implicit exception: dispatches to 0x00007f100c646550
                                                                               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@8 (line 111)
   0.01%             0x00007f100c6463e5:   xor    %eax,%eax
                     0x00007f100c6463e7:   test   %ebx,%ebx
                     0x00007f100c6463e9:   jbe    0x00007f100c646524           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
                     0x00007f100c6463ef:   mov    %ebx,%r11d
                     0x00007f100c6463f2:   dec    %r11d
                     0x00007f100c6463f5:   cmp    %ebx,%r11d
                     0x00007f100c6463f8:   jae    0x00007f100c646537
   0.00%             0x00007f100c6463fe:   mov    0x10(%r12,%rbp,8),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
                     0x00007f100c646403:   mov    0xc(%r12,%rcx,8),%r11d       ; implicit exception: dispatches to 0x00007f100c646564
                                                                               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@80 (line 181)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
   0.02%             0x00007f100c646408:   lea    (%r12,%rbp,8),%rdi           ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@3 (line 111)
                     0x00007f100c64640c:   lea    -0x3(%rbx),%esi
                     0x00007f100c64640f:   mov    $0x1,%r10d
                     0x00007f100c646415:   cmp    $0x1,%esi
                     0x00007f100c646418:   jle    0x00007f100c646500
   0.00%             0x00007f100c64641e:   mov    $0xfa0,%r14d                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@36 (line 111)
          ╭          0x00007f100c646424:   jmp    0x00007f100c64649f
          │          0x00007f100c646429:   nopl   0x0(%rax)
   1.12%  │    ↗     0x00007f100c646430:   mov    %edx,%r11d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@19 (line 111)
   1.71%  │    │↗    0x00007f100c646433:   mov    0x10(%rdi,%r10,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   3.75%  │    ││    0x00007f100c646438:   mov    %r11d,%edx
   0.75%  │    ││    0x00007f100c64643b:   nopl   0x0(%rax,%rax,1)
   1.11%  │╭   ││    0x00007f100c646440:   add    0xc(%r12,%r9,8),%edx         ; implicit exception: dispatches to 0x00007f100c6464c5
          ││   ││                                                              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
  19.00%  ││   ││    0x00007f100c646445:   mov    0x14(%rdi,%r10,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   2.71%  ││   ││    0x00007f100c64644a:   test   %ecx,%ecx
          ││╭  ││    0x00007f100c64644c:   je     0x00007f100c6464d7           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - java.util.Objects::requireNonNull@1 (line 232)
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
   0.86%  │││  ││    0x00007f100c646452:   mov    0x18(%rdi,%r10,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   1.06%  │││  ││    0x00007f100c646457:   add    0xc(%r12,%rcx,8),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
  19.19%  │││  ││    0x00007f100c64645c:   nopl   0x0(%rax)
   2.45%  │││  ││    0x00007f100c646460:   test   %r9d,%r9d
          │││╭ ││    0x00007f100c646463:   je     0x00007f100c6464ca           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - java.util.Objects::requireNonNull@1 (line 232)
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
   0.71%  ││││ ││    0x00007f100c646469:   mov    0x1c(%rdi,%r10,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   1.90%  ││││ ││    0x00007f100c64646e:   add    0xc(%r12,%r9,8),%edx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
  17.53%  ││││ ││    0x00007f100c646473:   test   %ecx,%ecx
          ││││╭││    0x00007f100c646475:   je     0x00007f100c6464d3           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - java.util.Objects::requireNonNull@1 (line 232)
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
   2.02%  │││││││    0x00007f100c64647b:   add    0xc(%r12,%rcx,8),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
  21.12%  │││││││    0x00007f100c646480:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
   0.73%  │││││││    0x00007f100c646484:   cmp    %r8d,%r10d
          │││││╰│    0x00007f100c646487:   jl     0x00007f100c646430           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
   0.00%  │││││ │    0x00007f100c646489:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rdi=Oop rbp=NarrowOop }
          │││││ │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@36 (line 111)
   0.01%  │││││ │    0x00007f100c646490:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@36 (line 111)
          │││││ │                                                              ;   {poll}
   0.06%  │││││ │    0x00007f100c646493:   cmp    %esi,%r10d
          │││││ │    0x00007f100c646496:   jge    0x00007f100c646503
          │││││ │    0x00007f100c64649c:   mov    %edx,%r11d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@19 (line 111)
          ↘││││ │    0x00007f100c64649f:   mov    %ebx,%r8d
           ││││ │    0x00007f100c6464a2:   sub    %r10d,%r8d
   0.01%   ││││ │    0x00007f100c6464a5:   add    $0xfffffffd,%r8d
   0.00%   ││││ │    0x00007f100c6464a9:   cmp    %r10d,%esi
           ││││ │    0x00007f100c6464ac:   cmovl  %eax,%r8d
   0.00%   ││││ │    0x00007f100c6464b0:   cmp    $0xfa0,%r8d
   0.01%   ││││ │    0x00007f100c6464b7:   cmova  %r14d,%r8d
   0.00%   ││││ │    0x00007f100c6464bb:   add    %r10d,%r8d
           ││││ │    0x00007f100c6464be:   xchg   %ax,%ax
   0.01%   ││││ ╰    0x00007f100c6464c0:   jmp    0x00007f100c646433
           ↘│││      0x00007f100c6464c5:   mov    %r11d,%edx
            │││  ╭   0x00007f100c6464c8:   jmp    0x00007f100c6464ce
            │↘│  │   0x00007f100c6464ca:   add    $0x2,%r10d
            │ │  ↘   0x00007f100c6464ce:   mov    %r9d,%ecx
            │ │   ╭  0x00007f100c6464d1:   jmp    0x00007f100c6464da
            │ ↘   │  0x00007f100c6464d3:   add    $0x2,%r10d
            ↘     │  0x00007f100c6464d7:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
                  ↘  0x00007f100c6464da:   mov    $0xffffff45,%esi
                     0x00007f100c6464df:   mov    %ebx,(%rsp)
....................................................................................................
  97.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 3, compile id 688 
   0.51%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_concrete_array_jmhTest::switch_concrete_array_avgt_jmhStub, version 4, compile id 728 
   0.02%              kernel  [unknown] 
   0.85%  <...other 288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 3, compile id 688 
   1.88%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_concrete_array_jmhTest::switch_concrete_array_avgt_jmhStub, version 4, compile id 728 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  fileStream::write 
   0.09%  <...other 41 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.90%         c2, level 4
   1.88%              kernel
   0.11%           libjvm.so
   0.04%        libc-2.31.so
   0.03%                    
   0.01%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         interpreter
   0.00%        libjimage.so
   0.00%         c1, level 1
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array

# Run progress: 37.50% complete, ETA 00:09:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.827 ns/op
# Warmup Iteration   2: 7.044 ns/op
# Warmup Iteration   3: 7.024 ns/op
# Warmup Iteration   4: 7.003 ns/op
# Warmup Iteration   5: 6.929 ns/op
Iteration   1: 6.822 ns/op
Iteration   2: 6.847 ns/op
Iteration   3: 6.897 ns/op
Iteration   4: 7.216 ns/op
Iteration   5: 7.180 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array":
  6.993 ±(99.9%) 0.732 ns/op [Average]
  (min, avg, max) = (6.822, 6.993, 7.216), stdev = 0.190
  CI (99.9%): [6.261, 7.724] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array:asm":
PrintAssembly processed: 148747 total address lines.
Perf output processed (skipped 56.470 seconds):
 Column 1: cycles (50624 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 682 

            dependencies   [0x00007fe2a8646bc8,0x00007fe2a8646bd0] = 8
            nul chk table  [0x00007fe2a8646bd0,0x00007fe2a8646be0] = 16
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Verified Entry Point]
             # {method} {0x00007fe22447dc78} &apos;switchIfMethod&apos; &apos;(Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I;)I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
             # parm0:    rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I&apos;
             #           [sp+0x30]  (sp of caller)
   0.57%     0x00007fe2a86468a0:   mov    %eax,-0x14000(%rsp)
   6.30%     0x00007fe2a86468a7:   push   %rbp
   1.85%     0x00007fe2a86468a8:   sub    $0x20,%rsp
   3.32%     0x00007fe2a86468ac:   cmpl   $0x1,0x20(%r15)
   1.08%     0x00007fe2a86468b4:   jne    0x00007fe2a864693e           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@-1 (line 193)
   1.13%     0x00007fe2a86468ba:   nopw   0x0(%rax,%rax,1)
   0.28%     0x00007fe2a86468c0:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007fe2a864690c
  25.10%     0x00007fe2a86468c4:   cmp    $0x102a660,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ╭  0x00007fe2a86468cb:   jne    0x00007fe2a86468f0           ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007fe230008c00::invokeSpecial@11
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fe230082800::invoke@21
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fe230084400::invoke@33
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fe230086c00::tableSwitch@103
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fe23008a400::delegate@14
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fe230089800::invoke@114
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fe23008a000::linkToTargetMethod@6
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
   2.95%  │  0x00007fe2a86468cd:   mov    0xc(%rsi),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@80 (line 195)
  19.13%  │  0x00007fe2a86468d1:   lea    (%r11,%r11,1),%eax
   3.28%  │  0x00007fe2a86468d5:   test   $0x1,%r11b
   2.03%  │  0x00007fe2a86468d9:   cmovne %r11d,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@101 (line 198)
   3.23%  │  0x00007fe2a86468dd:   add    $0x20,%rsp
   0.10%  │  0x00007fe2a86468e1:   pop    %rbp
   0.15%  │  0x00007fe2a86468e2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fe2a86468e9:   ja     0x00007fe2a8646928
   5.32%  │  0x00007fe2a86468ef:   ret    
          ↘  0x00007fe2a86468f0:   mov    %rsi,(%rsp)
             0x00007fe2a86468f4:   mov    %rsi,0x8(%rsp)
             0x00007fe2a86468f9:   mov    $0xffffff66,%esi
             0x00007fe2a86468fe:   nop
             0x00007fe2a86468ff:   call   0x00007fe2a80c9f00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                                                                       ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.invoke.LambdaForm$DMH/0x00007fe230008c00::invokeSpecial@11
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fe230082800::invoke@21
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fe230084400::invoke@33
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007fe230086c00::tableSwitch@103
....................................................................................................
  75.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 4, compile id 685 

                0x00007fe2a8647371:   dec    %r11d
                0x00007fe2a8647374:   cmp    %r10d,%r11d
          ╭     0x00007fe2a8647377:   jae    0x00007fe2a86473e2
          │     0x00007fe2a864737d:   lea    (%r12,%r9,8),%r8             ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@3 (line 144)
          │     0x00007fe2a8647381:   xor    %ebp,%ebp
          │     0x00007fe2a8647383:   xor    %r9d,%r9d
          │     0x00007fe2a8647386:   mov    %r10d,0x8(%rsp)
          │     0x00007fe2a864738b:   mov    %r9d,0xc(%rsp)
          │╭    0x00007fe2a8647390:   jmp    0x00007fe2a864739b
   1.57%  ││↗   0x00007fe2a8647392:   mov    (%rsp),%r8
   3.10%  │││   0x00007fe2a8647396:   mov    %r10d,0xc(%rsp)              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@19 (line 144)
   2.56%  │↘│   0x00007fe2a864739b:   mov    0x10(%r8,%rbp,4),%r11d
   2.72%  │ │   0x00007fe2a86473a0:   mov    %r8,(%rsp)
   0.47%  │ │   0x00007fe2a86473a4:   mov    %r11,%rsi
   3.10%  │ │   0x00007fe2a86473a7:   shl    $0x3,%rsi
   1.79%  │ │   0x00007fe2a86473ab:   call   0x00007fe2a86468a0           ; ImmutableOopMap {[0]=Oop }
          │ │                                                             ;*invokestatic switchIfMethod {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          │ │                                                             ;   {static_call}
   1.43%  │ │   0x00007fe2a86473b0:   nopl   0x220(%rax,%rax,1)           ;*invokestatic switchIfMethod {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          │ │                                                             ;   {other}
   0.14%  │ │   0x00007fe2a86473b8:   mov    0xc(%rsp),%r10d
   4.79%  │ │   0x00007fe2a86473bd:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
   0.55%  │ │   0x00007fe2a86473c0:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@33 (line 144)
   0.15%  │ │   0x00007fe2a86473c2:   cmp    0x8(%rsp),%ebp
          │ ╰   0x00007fe2a86473c6:   jl     0x00007fe2a8647392
          │     0x00007fe2a86473c8:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
          │  ↗  0x00007fe2a86473cb:   add    $0x20,%rsp
          │  │  0x00007fe2a86473cf:   pop    %rbp
   0.00%  │  │  0x00007fe2a86473d0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  0x00007fe2a86473d7:   ja     0x00007fe2a8647420
          │  │  0x00007fe2a86473dd:   ret    
          │  │  0x00007fe2a86473de:   xor    %eax,%eax
          │  ╰  0x00007fe2a86473e0:   jmp    0x00007fe2a86473cb
          ↘     0x00007fe2a86473e2:   mov    $0xffffff76,%esi
                0x00007fe2a86473e7:   mov    %r10d,(%rsp)
                0x00007fe2a86473eb:   mov    %r9d,0x4(%rsp)
                0x00007fe2a86473f0:   data16 xchg %ax,%ax
                0x00007fe2a86473f3:   call   0x00007fe2a80c9f00           ; ImmutableOopMap {[4]=NarrowOop }
                                                                          ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  22.35%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 682 
  22.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 4, compile id 685 
   0.51%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
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
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.69%  <...other 244 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 682 
  22.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 4, compile id 685 
   1.52%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TypeSwitchBenchmark_switch_if_concrete_array_jmhTest::switch_if_concrete_array_avgt_jmhStub, version 2, compile id 737 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  stringStream::write 
   0.00%      hsdis-amd64.so  oappend 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.13%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.19%         c2, level 4
   1.52%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.00%    perf-1960419.map
   0.00%              [vdso]
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array

# Run progress: 50.00% complete, ETA 00:07:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 29.920 ns/op
# Warmup Iteration   2: 26.635 ns/op
# Warmup Iteration   3: 26.650 ns/op
# Warmup Iteration   4: 26.785 ns/op
# Warmup Iteration   5: 26.768 ns/op
Iteration   1: 26.631 ns/op
Iteration   2: 26.619 ns/op
Iteration   3: 26.621 ns/op
Iteration   4: 26.654 ns/op
Iteration   5: 26.647 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array":
  26.634 ±(99.9%) 0.060 ns/op [Average]
  (min, avg, max) = (26.619, 26.634, 26.654), stdev = 0.016
  CI (99.9%): [26.575, 26.694] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array:asm":
PrintAssembly processed: 148136 total address lines.
Perf output processed (skipped 56.513 seconds):
 Column 1: cycles (50523 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 702 

                                                 dependencies   [0x00007f9b4c645c10,0x00007f9b4c645c18] = 8
                                                 nul chk table  [0x00007f9b4c645c18,0x00007f9b4c645c38] = 32
                                                [Disassembly]
                                                --------------------------------------------------------------------------------
                                                [Constant Pool (empty)]
                                                --------------------------------------------------------------------------------
                                                [Verified Entry Point]
                                                  # {method} {0x00007f9ac847dc78} &apos;switchIfMethod&apos; &apos;(Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I;)I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
                                                  # parm0:    rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I&apos;
                                                  #           [sp+0x30]  (sp of caller)
   0.48%                                          0x00007f9b4c644f80:   mov    %eax,-0x14000(%rsp)
   2.53%                                          0x00007f9b4c644f87:   push   %rbp
   2.09%                                          0x00007f9b4c644f88:   sub    $0x20,%rsp
   0.03%                                          0x00007f9b4c644f8c:   cmpl   $0x1,0x20(%r15)
   0.24%                                          0x00007f9b4c644f94:   jne    0x00007f9b4c64536e           ;*synchronization entry
                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@-1 (line 193)
   1.24%                                          0x00007f9b4c644f9a:   nopw   0x0(%rax,%rax,1)
   0.00%                                          0x00007f9b4c644fa0:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007f9b4c6452ec
                                                                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@319 (line 236)
   6.18%                                          0x00007f9b4c644fa4:   cmp    $0x102a660,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ╭                                       0x00007f9b4c644fab:   jne    0x00007f9b4c645148
   2.06%  │                                       0x00007f9b4c644fb1:   xor    %r8d,%r8d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007f9ad4084400::invoke@94
          │                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007f9ad4086c00::tableSwitch@103
          │                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007f9ad408a400::delegate@14
          │                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007f9ad4089800::invoke@114
          │                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007f9ad408a000::linkToTargetMethod@6
          │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
   2.12%  │                       ↗  ↗ ↗ ↗ ↗ ↗ ↗  0x00007f9b4c644fb4:   cmp    $0x4,%r8d
          │╭                      │  │ │ │ │ │ │  0x00007f9b4c644fb8:   je     0x00007f9b4c64512b
   2.30%  ││                      │  │ │ │ │ │ │  0x00007f9b4c644fbe:   xchg   %ax,%ax
   0.16%  ││                      │  │ │ │ │ │ │  0x00007f9b4c644fc0:   cmp    $0x4,%r8d
          ││╭                     │  │ │ │ │ │ │  0x00007f9b4c644fc4:   jge    0x00007f9b4c645066
   0.32%  │││                     │  │ │ │ │ │ │  0x00007f9b4c644fca:   cmp    $0x1,%r8d
          │││╭                    │  │ │ │ │ │ │  0x00007f9b4c644fce:   jne    0x00007f9b4c644ff5           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││                    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
   0.17%  ││││                    │  │ │ │ │ │ │  0x00007f9b4c644fd0:   cmp    $0x102b658,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          ││││                    │  │ │ │ │ │ │  0x00007f9b4c644fd7:   jne    0x00007f9b4c6452d4           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││                    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@105 (line 200)
   0.21%  ││││                    │  │ │ │ │ │ │  0x00007f9b4c644fdd:   mov    0x10(%rsi),%r10              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││                    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@112 (line 201)
   1.02%  ││││                    │  │ │ │ │ │ │  0x00007f9b4c644fe1:   mov    %r10d,%eax                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││││                    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@128 (line 202)
          ││││                    │  │ │ │ │ │ │  0x00007f9b4c644fe4:   test   $0x1,%r10b
          ││││╭                   │  │ │ │ │ │ │  0x00007f9b4c644fe8:   jne    0x00007f9b4c645118           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││                   │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@119 (line 201)
   0.23%  │││││                   │  │ │ │ │ │ │  0x00007f9b4c644fee:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││││                   │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@129 (line 202)
   0.05%  │││││╭                  │  │ │ │ │ │ │  0x00007f9b4c644ff0:   jmp    0x00007f9b4c645118
   0.47%  │││↘││                  │  │ │ │ │ │ │  0x00007f9b4c644ff5:   cmp    $0x1,%r8d
          │││ ││╭                 │  │ │ │ │ │ │  0x00007f9b4c644ff9:   jge    0x00007f9b4c64501f           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││ │││                 │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
   0.35%  │││ │││                 │  │ │ │ │ │ │  0x00007f9b4c644ffb:   nopl   0x0(%rax,%rax,1)
          │││ │││                 │  │ │ │ │ │ │  0x00007f9b4c645000:   cmp    $0x102a660,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          │││ │││                 │  │ │ │ │ │ │  0x00007f9b4c645007:   jne    0x00007f9b4c6452bc           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││ │││                 │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@75 (line 194)
   0.34%  │││ │││                 │  │ │ │ │ │ │  0x00007f9b4c64500d:   mov    0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││ │││                 │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@80 (line 195)
   0.94%  │││ │││                 │  │ │ │ │ │ │  0x00007f9b4c645010:   test   $0x1,%al
          │││ │││╭                │  │ │ │ │ │ │  0x00007f9b4c645012:   jne    0x00007f9b4c645118           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││                │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
   0.21%  │││ ││││                │  │ │ │ │ │ │  0x00007f9b4c645018:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││                │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
   0.04%  │││ ││││╭               │  │ │ │ │ │ │  0x00007f9b4c64501a:   jmp    0x00007f9b4c645118
   0.48%  │││ ││↘││               │  │ │ │ │ │ │  0x00007f9b4c64501f:   nop
   0.03%  │││ ││ ││               │  │ │ │ │ │ │  0x00007f9b4c645020:   cmp    $0x2,%r8d
          │││ ││ ││╭              │  │ │ │ │ │ │  0x00007f9b4c645024:   je     0x00007f9b4c645046           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │││              │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
   0.88%  │││ ││ │││              │  │ │ │ │ │ │  0x00007f9b4c645026:   cmp    $0x102b258,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │││ ││ │││              │  │ │ │ │ │ │  0x00007f9b4c64502d:   jne    0x00007f9b4c6452a4           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │││              │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@177 (line 212)
   0.38%  │││ ││ │││              │  │ │ │ │ │ │  0x00007f9b4c645033:   movsbl 0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │││              │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@184 (line 213)
   0.88%  │││ ││ │││              │  │ │ │ │ │ │  0x00007f9b4c645037:   test   $0x1,%al
          │││ ││ │││╭             │  │ │ │ │ │ │  0x00007f9b4c645039:   jne    0x00007f9b4c645118           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││││             │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@189 (line 213)
   0.34%  │││ ││ ││││             │  │ │ │ │ │ │  0x00007f9b4c64503f:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││││             │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@198 (line 214)
   0.14%  │││ ││ ││││╭            │  │ │ │ │ │ │  0x00007f9b4c645041:   jmp    0x00007f9b4c645118
   0.21%  │││ ││ ││↘││            │  │ │ │ │ │ │  0x00007f9b4c645046:   cmp    $0x102aa50,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │││ ││ ││ ││            │  │ │ │ │ │ │  0x00007f9b4c64504d:   jne    0x00007f9b4c64528c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││ ││            │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@143 (line 206)
   0.93%  │││ ││ ││ ││            │  │ │ │ │ │ │  0x00007f9b4c645053:   movswl 0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││ ││            │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@150 (line 207)
   0.90%  │││ ││ ││ ││            │  │ │ │ │ │ │  0x00007f9b4c645057:   test   $0x1,%al
          │││ ││ ││ ││╭           │  │ │ │ │ │ │  0x00007f9b4c645059:   jne    0x00007f9b4c645118           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││ │││           │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@155 (line 207)
   0.43%  │││ ││ ││ │││           │  │ │ │ │ │ │  0x00007f9b4c64505f:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││ │││           │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@164 (line 208)
   0.16%  │││ ││ ││ │││╭          │  │ │ │ │ │ │  0x00007f9b4c645061:   jmp    0x00007f9b4c645118
   0.45%  ││↘ ││ ││ ││││          │  │ │ │ │ │ │  0x00007f9b4c645066:   cmp    $0x6,%r8d
          ││  ││ ││ ││││╭         │  │ │ │ │ │ │  0x00007f9b4c64506a:   jne    0x00007f9b4c64509c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ │││││         │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
   0.43%  ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f9b4c64506c:   cmp    $0x102ae58,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f9b4c645073:   jne    0x00007f9b4c645274           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ │││││         │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@282 (line 230)
   0.11%  ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f9b4c645079:   vmovss 0xc(%rsi),%xmm1
   0.59%  ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f9b4c64507e:   vcvttss2si %xmm1,%eax
   1.32%  ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f9b4c645082:   cmp    $0x80000000,%eax
          ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f9b4c645087:   je     0x00007f9b4c64535a           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ │││││         │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
   0.00%  ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f9b4c64508d:   test   $0x1,%al
          ││  ││ ││ │││││╭        │  │ │ │ │ │ │  0x00007f9b4c64508f:   jne    0x00007f9b4c645118           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││││        │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@295 (line 231)
   0.34%  ││  ││ ││ ││││││        │  │ │ │ │ │ │  0x00007f9b4c645095:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││││        │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@305 (line 232)
   0.21%  ││  ││ ││ ││││││╭       │  │ │ │ │ │ │  0x00007f9b4c645097:   jmp    0x00007f9b4c645118
   0.44%  ││  ││ ││ ││││↘││       │  │ │ │ │ │ │  0x00007f9b4c64509c:   nopl   0x0(%rax)
   0.02%  ││  ││ ││ ││││ ││       │  │ │ │ │ │ │  0x00007f9b4c6450a0:   cmp    $0x6,%r8d
          ││  ││ ││ ││││ ││╭      │  │ │ │ │ │ │  0x00007f9b4c6450a4:   jge    0x00007f9b4c6450d3           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ │││      │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
   0.83%  ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f9b4c6450a6:   cmp    $0x102b058,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f9b4c6450ad:   jne    0x00007f9b4c64525c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ │││      │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@245 (line 224)
   0.32%  ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f9b4c6450b3:   vmovsd 0x10(%rsi),%xmm0
   1.00%  ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f9b4c6450b8:   vcvttsd2si %xmm0,%eax
   1.62%  ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f9b4c6450bc:   cmp    $0x80000000,%eax
          ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f9b4c6450c1:   je     0x00007f9b4c645346           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ │││      │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
   0.00%  ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f9b4c6450c7:   test   $0x1,%al
          ││  ││ ││ ││││ │││╭     │  │ │ │ │ │ │  0x00007f9b4c6450c9:   jne    0x00007f9b4c645118           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││││     │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@258 (line 225)
   0.11%  ││  ││ ││ ││││ ││││     │  │ │ │ │ │ │  0x00007f9b4c6450cf:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││││     │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@268 (line 226)
   0.10%  ││  ││ ││ ││││ ││││╭    │  │ │ │ │ │ │  0x00007f9b4c6450d1:   jmp    0x00007f9b4c645118
   0.23%  ││  ││ ││ ││││ ││↘││    │  │ │ │ │ │ │  0x00007f9b4c6450d3:   nopw   0x0(%rax,%rax,1)
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f9b4c6450dc:   data16 data16 xchg %ax,%ax
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f9b4c6450e0:   cmp    $0x102ac50,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f9b4c6450e7:   jne    0x00007f9b4c64522c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@319 (line 236)
   0.01%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f9b4c6450ed:   mov    0xc(%rsi),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@326 (line 237)
   0.50%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f9b4c6450f1:   mov    0x14(%r12,%r11,8),%r10d      ; implicit exception: dispatches to 0x00007f9b4c645308
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - java.lang.String::length@1 (line 1519)
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@329 (line 237)
   1.45%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f9b4c6450f6:   data16 nopw 0x0(%rax,%rax,1)
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f9b4c645100:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f9b4c64531c
   0.90%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f9b4c645105:   movsbl 0x10(%r12,%r11,8),%r10d
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f9b4c64510b:   sarx   %r10d,%r8d,%eax              ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - java.lang.String::length@9 (line 1519)
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@329 (line 237)
   0.17%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f9b4c645110:   test   $0x1,%al
          ││  ││ ││ ││││ ││ ││╭   │  │ │ │ │ │ │  0x00007f9b4c645112:   je     0x00007f9b4c64515c           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││ │││   │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
   1.71%  ││  ↘↘ ↘↘ ↘↘↘↘ ↘↘ ↘↘│↗↗ │↗ │ │ │ │ │ │  0x00007f9b4c645118:   add    $0x20,%rsp
   0.73%  ││                  │││ ││ │ │ │ │ │ │  0x00007f9b4c64511c:   pop    %rbp
   3.98%  ││                  │││ ││ │ │ │ │ │ │  0x00007f9b4c64511d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││                  │││ ││ │ │ │ │ │ │  0x00007f9b4c645124:   ja     0x00007f9b4c645330
   0.90%  ││                  │││ ││ │ │ │ │ │ │  0x00007f9b4c64512a:   ret    
   0.21%  │↘                  │││ ││ │ │ │ │ │ │  0x00007f9b4c64512b:   cmp    $0x102b458,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │                   │││ ││ │ │ │ │ │ │  0x00007f9b4c645132:   jne    0x00007f9b4c645244           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                   │││ ││ │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@211 (line 218)
   0.80%  │                   │││ ││ │ │ │ │ │ │  0x00007f9b4c645138:   movzwl 0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                   │││ ││ │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@218 (line 219)
   0.82%  │                   │││ ││ │ │ │ │ │ │  0x00007f9b4c64513c:   nopl   0x0(%rax)
          │                   │││ ││ │ │ │ │ │ │  0x00007f9b4c645140:   test   $0x1,%al
          │                   │╰│ ││ │ │ │ │ │ │  0x00007f9b4c645142:   jne    0x00007f9b4c645118           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                   │ │ ││ │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@223 (line 219)
   0.38%  │                   │ │ ││ │ │ │ │ │ │  0x00007f9b4c645144:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                   │ │ ││ │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@232 (line 220)
   0.19%  │                   │ ╰ ││ │ │ │ │ │ │  0x00007f9b4c645146:   jmp    0x00007f9b4c645118
   1.14%  ↘                   │   ││ │ │ │ │ │ │  0x00007f9b4c645148:   cmp    $0x102b658,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
                              │  ╭││ │ │ │ │ │ │  0x00007f9b4c64514f:   jne    0x00007f9b4c645162
   2.07%                      │  │││ │ │ │ │ │ │  0x00007f9b4c645151:   mov    $0x1,%r8d
   1.05%                      │  │╰│ │ │ │ │ │ │  0x00007f9b4c645157:   jmp    0x00007f9b4c644fb4
   0.01%                      ↘  │ │ │ │ │ │ │ │  0x00007f9b4c64515c:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                 │ │ │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@346 (line 238)
                                 │ │ │ │ │ │ │ │  0x00007f9b4c64515e:   xchg   %ax,%ax
                                 │ ╰ │ │ │ │ │ │  0x00007f9b4c645160:   jmp    0x00007f9b4c645118
   2.89%                         ↘   │ │ │ │ │ │  0x00007f9b4c645162:   cmp    $0x102aa50,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
                                    ╭│ │ │ │ │ │  0x00007f9b4c645169:   jne    0x00007f9b4c645176
   1.73%                            ││ │ │ │ │ │  0x00007f9b4c64516b:   mov    $0x2,%r8d
   1.09%                            │╰ │ │ │ │ │  0x00007f9b4c645171:   jmp    0x00007f9b4c644fb4
   1.23%                            ↘  │ │ │ │ │  0x00007f9b4c645176:   data16 nopw 0x0(%rax,%rax,1)
   0.01%                               │ │ │ │ │  0x00007f9b4c645180:   cmp    $0x102b258,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                                      ╭│ │ │ │ │  0x00007f9b4c645187:   jne    0x00007f9b4c645194
   1.79%                              ││ │ │ │ │  0x00007f9b4c645189:   mov    $0x3,%r8d
   1.06%                              │╰ │ │ │ │  0x00007f9b4c64518f:   jmp    0x00007f9b4c644fb4
   1.23%                              ↘  │ │ │ │  0x00007f9b4c645194:   nopl   0x0(%rax,%rax,1)
   0.02%                                 │ │ │ │  0x00007f9b4c64519c:   data16 data16 xchg %ax,%ax
                                         │ │ │ │  0x00007f9b4c6451a0:   cmp    $0x102b458,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
                                        ╭│ │ │ │  0x00007f9b4c6451a7:   jne    0x00007f9b4c6451b4
   1.79%                                ││ │ │ │  0x00007f9b4c6451a9:   mov    $0x4,%r8d
   1.17%                                │╰ │ │ │  0x00007f9b4c6451af:   jmp    0x00007f9b4c644fb4
   0.99%                                ↘  │ │ │  0x00007f9b4c6451b4:   nopl   0x0(%rax,%rax,1)
   0.03%                                   │ │ │  0x00007f9b4c6451bc:   data16 data16 xchg %ax,%ax
                                           │ │ │  0x00007f9b4c6451c0:   cmp    $0x102b058,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
                                          ╭│ │ │  0x00007f9b4c6451c7:   jne    0x00007f9b4c6451d4
   1.64%                                  ││ │ │  0x00007f9b4c6451c9:   mov    $0x5,%r8d
   0.99%                                  │╰ │ │  0x00007f9b4c6451cf:   jmp    0x00007f9b4c644fb4
   0.89%                                  ↘  │ │  0x00007f9b4c6451d4:   nopl   0x0(%rax,%rax,1)
   0.04%                                     │ │  0x00007f9b4c6451dc:   data16 data16 xchg %ax,%ax
                                             │ │  0x00007f9b4c6451e0:   cmp    $0x102ae58,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                                            ╭│ │  0x00007f9b4c6451e7:   jne    0x00007f9b4c6451f4
   1.05%                                    ││ │  0x00007f9b4c6451e9:   mov    $0x6,%r8d
   0.63%                                    │╰ │  0x00007f9b4c6451ef:   jmp    0x00007f9b4c644fb4
   1.02%                                    ↘  │  0x00007f9b4c6451f4:   nopl   0x0(%rax,%rax,1)
   0.08%                                       │  0x00007f9b4c6451fc:   data16 data16 xchg %ax,%ax
                                               │  0x00007f9b4c645200:   cmp    $0x102ac50,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                                              ╭│  0x00007f9b4c645207:   jne    0x00007f9b4c645214
   0.75%                                      ││  0x00007f9b4c645209:   mov    $0x7,%r8d
   0.07%                                      │╰  0x00007f9b4c64520f:   jmp    0x00007f9b4c644fb4
                                              ↘   0x00007f9b4c645214:   mov    %rsi,(%rsp)
                                                  0x00007f9b4c645218:   mov    $0xffffffcd,%esi
                                                  0x00007f9b4c64521d:   xchg   %ax,%ax
                                                  0x00007f9b4c64521f:   call   0x00007f9b4c0c9f00           ; ImmutableOopMap {[0]=Oop }
                                                                                                            ;*invokestatic profileBoolean {reexecute=1 rethrow=0 return_oop=0}
                                                                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007f9ad4083c00::guard@46
                                                                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f9ad4083c00::guard@89
                                                                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f9ad4083c00::guard@89
....................................................................................................
  76.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 2, compile id 707 

                0x00007f9b4c647171:   dec    %r11d
                0x00007f9b4c647174:   cmp    %r10d,%r11d
          ╭     0x00007f9b4c647177:   jae    0x00007f9b4c6471e2
          │     0x00007f9b4c64717d:   lea    (%r12,%r9,8),%r8             ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@3 (line 122)
          │     0x00007f9b4c647181:   xor    %ebp,%ebp
          │     0x00007f9b4c647183:   xor    %r9d,%r9d
          │     0x00007f9b4c647186:   mov    %r10d,0x8(%rsp)
          │     0x00007f9b4c64718b:   mov    %r9d,0xc(%rsp)
          │╭    0x00007f9b4c647190:   jmp    0x00007f9b4c64719b
   1.27%  ││↗   0x00007f9b4c647192:   mov    (%rsp),%r8
   0.20%  │││   0x00007f9b4c647196:   mov    %r10d,0xc(%rsp)              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@19 (line 122)
   4.28%  │↘│   0x00007f9b4c64719b:   mov    0x10(%r8,%rbp,4),%r11d
   2.73%  │ │   0x00007f9b4c6471a0:   mov    %r8,(%rsp)
   0.51%  │ │   0x00007f9b4c6471a4:   mov    %r11,%rsi
   0.02%  │ │   0x00007f9b4c6471a7:   shl    $0x3,%rsi
   0.91%  │ │   0x00007f9b4c6471ab:   call   0x00007f9b4c644f80           ; ImmutableOopMap {[0]=Oop }
          │ │                                                             ;*invokestatic switchIfMethod {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
          │ │                                                             ;   {static_call}
   1.46%  │ │   0x00007f9b4c6471b0:   nopl   0x220(%rax,%rax,1)           ;*invokestatic switchIfMethod {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
          │ │                                                             ;   {other}
   0.03%  │ │   0x00007f9b4c6471b8:   mov    0xc(%rsp),%r10d
   8.83%  │ │   0x00007f9b4c6471bd:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   1.26%  │ │   0x00007f9b4c6471c0:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@33 (line 122)
   0.00%  │ │   0x00007f9b4c6471c2:   cmp    0x8(%rsp),%ebp
          │ ╰   0x00007f9b4c6471c6:   jl     0x00007f9b4c647192
          │     0x00007f9b4c6471c8:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@16 (line 122)
          │  ↗  0x00007f9b4c6471cb:   add    $0x20,%rsp
   0.00%  │  │  0x00007f9b4c6471cf:   pop    %rbp
          │  │  0x00007f9b4c6471d0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  0x00007f9b4c6471d7:   ja     0x00007f9b4c647220
          │  │  0x00007f9b4c6471dd:   ret    
          │  │  0x00007f9b4c6471de:   xor    %eax,%eax
          │  ╰  0x00007f9b4c6471e0:   jmp    0x00007f9b4c6471cb
          ↘     0x00007f9b4c6471e2:   mov    $0xffffff76,%esi
                0x00007f9b4c6471e7:   mov    %r10d,(%rsp)
                0x00007f9b4c6471eb:   mov    %r9d,0x4(%rsp)
                0x00007f9b4c6471f0:   data16 xchg %ax,%ax
                0x00007f9b4c6471f3:   call   0x00007f9b4c0c9f00           ; ImmutableOopMap {[4]=NarrowOop }
....................................................................................................
  21.49%  <total for region 2>

....[Hottest Regions]...............................................................................
  76.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 702 
  21.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 2, compile id 707 
   0.59%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   0.58%  <...other 206 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  76.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 702 
  21.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 2, compile id 707 
   1.41%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  fileStream::write 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  PcDescContainer::find_pc_desc_internal 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%    perf-1960486.map  [unknown] 
   0.00%           libjvm.so  BlockBegin::iterate_preorder 
   0.09%  <...other 46 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.37%         c2, level 4
   1.41%              kernel
   0.08%           libjvm.so
   0.05%        libc-2.31.so
   0.04%                    
   0.03%         interpreter
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%  libpthread-2.31.so
   0.00%    perf-1960486.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array

# Run progress: 62.50% complete, ETA 00:05:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 19.112 ns/op
# Warmup Iteration   2: 16.796 ns/op
# Warmup Iteration   3: 16.798 ns/op
# Warmup Iteration   4: 16.782 ns/op
# Warmup Iteration   5: 16.784 ns/op
Iteration   1: 16.779 ns/op
Iteration   2: 16.777 ns/op
Iteration   3: 16.776 ns/op
Iteration   4: 16.783 ns/op
Iteration   5: 16.810 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array":
  16.785 ±(99.9%) 0.056 ns/op [Average]
  (min, avg, max) = (16.776, 16.785, 16.810), stdev = 0.014
  CI (99.9%): [16.729, 16.841] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array:asm":
PrintAssembly processed: 147663 total address lines.
Perf output processed (skipped 56.311 seconds):
 Column 1: cycles (50679 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 3, compile id 694 

                          0x00007f767c64740c:   cmp    %r10d,%r11d
                          0x00007f767c64740f:   cmovl  %edi,%r13d
                          0x00007f767c647413:   cmp    $0x3e8,%r13d
                          0x00007f767c64741a:   cmova  %edx,%r13d
                          0x00007f767c64741e:   add    %r10d,%r13d
          ╭               0x00007f767c647421:   jmp    0x00007f767c64745b
          │               0x00007f767c647423:   nopw   0x0(%rax,%rax,1)
          │               0x00007f767c64742c:   data16 data16 xchg %ax,%ax          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.28%  │            ↗  0x00007f767c647430:   mov    0xc(%rcx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@181 (line 188)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.29%  │            │  0x00007f767c647434:   mov    0x14(%r12,%r8,8),%ecx        ; implicit exception: dispatches to 0x00007f767c64782c
          │            │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - java.lang.String::length@1 (line 1519)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@184 (line 188)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.35%  │            │  0x00007f767c647439:   nopl   0x0(%rax)
          │            │  0x00007f767c647440:   mov    0xc(%r12,%rcx,8),%r9d        ; implicit exception: dispatches to 0x00007f767c647840
   1.32%  │            │  0x00007f767c647445:   movsbl 0x10(%r12,%r8,8),%ecx
          │            │  0x00007f767c64744b:   sarx   %ecx,%r9d,%r8d               ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@170 (line 187)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.27%  │  ↗ ↗ ↗↗ ↗ ↗│  0x00007f767c647450:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   1.97%  │  │ │ ││ │ ││  0x00007f767c647453:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@33 (line 100)
   1.05%  │  │ │ ││ │ ││  0x00007f767c647456:   cmp    %r13d,%r10d
          │  │ │ ││ │ ││  0x00007f767c647459:   jge    0x00007f767c6473ef           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │  │ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@19 (line 100)
   0.03%  ↘  │ │ ││ │ ││  0x00007f767c64745b:   mov    0x10(%rsi,%r10,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@22 (line 100)
   3.00%     │ │ ││ │ ││  0x00007f767c647460:   mov    0x8(%r12,%r8,8),%r9d         ; implicit exception: dispatches to 0x00007f767c647800
             │ │ ││ │ ││                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
             │ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
  15.18%     │ │ ││ │ ││  0x00007f767c647465:   cmp    $0x102a660,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
             │ │ ││ │ ││  0x00007f767c64746c:   jne    0x00007f767c6475d7
   3.24%     │ │ ││ │ ││  0x00007f767c647472:   xor    %ebx,%ebx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │ │ ││ │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f7604084400::invoke@94
             │ │ ││ │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f7604086c00::tableSwitch@103
             │ │ ││ │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f760408a400::delegate@14
             │ │ ││ │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f7604089800::invoke@114
             │ │ ││ │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f760408a000::linkToTargetMethod@6
             │ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
             │ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.24%     │ │ ││ │ ││  0x00007f767c647474:   lea    (%r12,%r8,8),%rcx
   2.07%     │ │ ││ │ ││  0x00007f767c647478:   cmp    $0x4,%ebx
   0.09%     │ │ ││ │ ││  0x00007f767c64747b:   nopl   0x0(%rax,%rax,1)
   3.80%     │ │ ││ │ ││  0x00007f767c647480:   je     0x00007f767c6475b4
   0.30%     │ │ ││ │ ││  0x00007f767c647486:   cmp    $0x4,%ebx
           ╭ │ │ ││ │ ││  0x00007f767c647489:   jge    0x00007f767c647517
   0.37%   │ │ │ ││ │ ││  0x00007f767c64748f:   cmp    $0x1,%ebx
           │╭│ │ ││ │ ││  0x00007f767c647492:   jne    0x00007f767c6474b6           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
           │││ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
           │││ │ ││ │ ││  0x00007f767c647494:   nopl   0x0(%rax,%rax,1)
   0.50%   │││ │ ││ │ ││  0x00007f767c64749c:   data16 data16 xchg %ax,%ax
           │││ │ ││ │ ││  0x00007f767c6474a0:   cmp    $0x102b658,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
           │││ │ ││ │ ││  0x00007f767c6474a7:   jne    0x00007f767c6477dc           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │││ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@87 (line 182)
           │││ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.02%   │││ │ ││ │ ││  0x00007f767c6474ad:   mov    0x10(%rcx),%r8
   0.63%   │││ │ ││ │ ││  0x00007f767c6474b1:   mov    %r8d,%r8d                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
           │││ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@97 (line 182)
           │││ │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.27%   ││╰ │ ││ │ ││  0x00007f767c6474b4:   jmp    0x00007f767c647450
   0.54%   │↘  │ ││ │ ││  0x00007f767c6474b6:   cmp    $0x1,%ebx
           │  ╭│ ││ │ ││  0x00007f767c6474b9:   jge    0x00007f767c6474d6           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │  ││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
           │  ││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.11%   │  ││ ││ │ ││  0x00007f767c6474bb:   nopl   0x0(%rax,%rax,1)
           │  ││ ││ │ ││  0x00007f767c6474c0:   cmp    $0x102a660,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
           │  ││ ││ │ ││  0x00007f767c6474c7:   jne    0x00007f767c6477b8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │  ││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@75 (line 181)
           │  ││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.05%   │  ││ ││ │ ││  0x00007f767c6474cd:   mov    0xc(%rcx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │  ││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@80 (line 181)
           │  ││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.87%   │  │╰ ││ │ ││  0x00007f767c6474d1:   jmp    0x00007f767c647450
   2.01%   │  ↘  ││ │ ││  0x00007f767c6474d6:   cmp    $0x2,%ebx
           │    ╭││ │ ││  0x00007f767c6474d9:   je     0x00007f767c6474f7           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │    │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
           │    │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.26%   │    │││ │ ││  0x00007f767c6474db:   nopl   0x0(%rax,%rax,1)
           │    │││ │ ││  0x00007f767c6474e0:   cmp    $0x102b258,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
           │    │││ │ ││  0x00007f767c6474e7:   jne    0x00007f767c647794           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │    │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@116 (line 184)
           │    │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
           │    │││ │ ││  0x00007f767c6474ed:   movsbl 0xc(%rcx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │    │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@123 (line 184)
           │    │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.85%   │    │╰│ │ ││  0x00007f767c6474f2:   jmp    0x00007f767c647450
   0.38%   │    ↘ │ │ ││  0x00007f767c6474f7:   nopw   0x0(%rax,%rax,1)
           │      │ │ ││  0x00007f767c647500:   cmp    $0x102aa50,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
           │      │ │ ││  0x00007f767c647507:   jne    0x00007f767c647770           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │      │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@102 (line 183)
           │      │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%   │      │ │ ││  0x00007f767c64750d:   movswl 0xc(%rcx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │      │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@109 (line 183)
           │      │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.12%   │      ╰ │ ││  0x00007f767c647512:   jmp    0x00007f767c647450
   0.02%   ↘        │ ││  0x00007f767c647517:   cmp    $0x6,%ebx
                   ╭│ ││  0x00007f767c64751a:   jne    0x00007f767c647548           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.13%           ││ ││  0x00007f767c64751c:   nopl   0x0(%rax)
   0.32%           ││ ││  0x00007f767c647520:   cmp    $0x102ae58,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                   ││ ││  0x00007f767c647527:   jne    0x00007f767c64774c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@159 (line 187)
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.23%           ││ ││  0x00007f767c64752d:   vmovss 0xc(%rcx),%xmm0
   1.00%           ││ ││  0x00007f767c647532:   vcvttss2si %xmm0,%r8d
   2.01%           ││ ││  0x00007f767c647536:   cmp    $0x80000000,%r8d
                   ││ ││  0x00007f767c64753d:   je     0x00007f767c647893           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%           │╰ ││  0x00007f767c647543:   jmp    0x00007f767c647450
   1.08%           ↘  ││  0x00007f767c647548:   cmp    $0x6,%ebx
                     ╭││  0x00007f767c64754b:   jge    0x00007f767c647575           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.00%             │││  0x00007f767c64754d:   cmp    $0x102b058,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
                     │││  0x00007f767c647554:   jne    0x00007f767c647728           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@144 (line 186)
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.00%             │││  0x00007f767c64755a:   vmovsd 0x10(%rcx),%xmm0
   1.09%             │││  0x00007f767c64755f:   vcvttsd2si %xmm0,%r8d
   2.22%             │││  0x00007f767c647563:   cmp    $0x80000000,%r8d
                     │││  0x00007f767c64756a:   je     0x00007f767c64787e           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.00%             │╰│  0x00007f767c647570:   jmp    0x00007f767c647450
   0.49%             ↘ │  0x00007f767c647575:   data16 data16 nopw 0x0(%rax,%rax,1)
                       │  0x00007f767c647580:   cmp    $0x102ac50,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                       ╰  0x00007f767c647587:   je     0x00007f767c647430
                          0x00007f767c64758d:   mov    $0xffffffde,%esi
                          0x00007f767c647592:   mov    %r11d,(%rsp)
                          0x00007f767c647596:   mov    %r10d,0x4(%rsp)
                          0x00007f767c64759b:   mov    %eax,0x8(%rsp)
                          0x00007f767c64759f:   mov    %r8d,0xc(%rsp)
                          0x00007f767c6475a4:   data16 xchg %ax,%ax
                          0x00007f767c6475a7:   call   0x00007f767c0c9f00           ; ImmutableOopMap {rbp=NarrowOop [12]=NarrowOop }
                                                                                    ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  52.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 3, compile id 694 

                  0x00007f767c6475a4:   data16 xchg %ax,%ax
                  0x00007f767c6475a7:   call   0x00007f767c0c9f00           ; ImmutableOopMap {rbp=NarrowOop [12]=NarrowOop }
                                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                                                                            ;   {runtime_call UncommonTrapBlob}
                  0x00007f767c6475ac:   nopl   0x100041c(%rax,%rax,1)       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                                                                            ;   {other}
   0.01%          0x00007f767c6475b4:   nopl   0x0(%rax,%rax,1)
                  0x00007f767c6475bc:   data16 data16 xchg %ax,%ax
                  0x00007f767c6475c0:   cmp    $0x102b458,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
                  0x00007f767c6475c7:   jne    0x00007f767c647704           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@130 (line 185)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.62%          0x00007f767c6475cd:   movzwl 0xc(%rcx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@137 (line 185)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.32%          0x00007f767c6475d2:   jmp    0x00007f767c647450
   1.91%          0x00007f767c6475d7:   nopw   0x0(%rax,%rax,1)
   0.04%          0x00007f767c6475e0:   cmp    $0x102b658,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          ╭       0x00007f767c6475e7:   jne    0x00007f767c6475f3
   3.09%  │       0x00007f767c6475e9:   mov    $0x1,%ebx
   2.21%  │       0x00007f767c6475ee:   jmp    0x00007f767c647474
   3.50%  ↘       0x00007f767c6475f3:   nopw   0x0(%rax,%rax,1)
   0.03%          0x00007f767c6475fc:   data16 data16 xchg %ax,%ax
                  0x00007f767c647600:   cmp    $0x102aa50,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
           ╭      0x00007f767c647607:   jne    0x00007f767c647613
   3.02%   │      0x00007f767c647609:   mov    $0x2,%ebx
   2.25%   │      0x00007f767c64760e:   jmp    0x00007f767c647474
   1.89%   ↘      0x00007f767c647613:   nopw   0x0(%rax,%rax,1)
   0.03%          0x00007f767c64761c:   data16 data16 xchg %ax,%ax
                  0x00007f767c647620:   cmp    $0x102b258,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
            ╭     0x00007f767c647627:   jne    0x00007f767c647633
   2.96%    │     0x00007f767c647629:   mov    $0x3,%ebx
   2.08%    │     0x00007f767c64762e:   jmp    0x00007f767c647474
   1.70%    ↘     0x00007f767c647633:   nopw   0x0(%rax,%rax,1)
   0.04%          0x00007f767c64763c:   data16 data16 xchg %ax,%ax
                  0x00007f767c647640:   cmp    $0x102b458,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
             ╭    0x00007f767c647647:   jne    0x00007f767c647653
   2.76%     │    0x00007f767c647649:   mov    $0x4,%ebx
   2.07%     │    0x00007f767c64764e:   jmp    0x00007f767c647474
   1.54%     ↘    0x00007f767c647653:   nopw   0x0(%rax,%rax,1)
   0.05%          0x00007f767c64765c:   data16 data16 xchg %ax,%ax
                  0x00007f767c647660:   cmp    $0x102b058,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
              ╭   0x00007f767c647667:   jne    0x00007f767c647673
   2.93%      │   0x00007f767c647669:   mov    $0x5,%ebx
   2.22%      │   0x00007f767c64766e:   jmp    0x00007f767c647474
   1.30%      ↘   0x00007f767c647673:   nopw   0x0(%rax,%rax,1)
   0.04%          0x00007f767c64767c:   data16 data16 xchg %ax,%ax
                  0x00007f767c647680:   cmp    $0x102ae58,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
               ╭  0x00007f767c647687:   jne    0x00007f767c647693
   1.68%       │  0x00007f767c647689:   mov    $0x6,%ebx
   1.21%       │  0x00007f767c64768e:   jmp    0x00007f767c647474
   1.84%       ↘  0x00007f767c647693:   nopw   0x0(%rax,%rax,1)
   0.14%          0x00007f767c64769c:   data16 data16 xchg %ax,%ax
                  0x00007f767c6476a0:   cmp    $0x102ac50,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                  0x00007f767c6476a7:   jne    0x00007f767c6476e0
   0.95%          0x00007f767c6476a9:   mov    $0x7,%ebx
   0.29%          0x00007f767c6476ae:   jmp    0x00007f767c647474
                  0x00007f767c6476b3:   xor    %eax,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@16 (line 100)
                  0x00007f767c6476b5:   add    $0x30,%rsp
                  0x00007f767c6476b9:   pop    %rbp
                  0x00007f767c6476ba:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007f767c6476c1:   ja     0x00007f767c647868
                  0x00007f767c6476c7:   ret    
                  0x00007f767c6476c8:   mov    $0xffffff76,%esi
                  0x00007f767c6476cd:   mov    %r11d,0x4(%rsp)
                  0x00007f767c6476d2:   nop
....................................................................................................
  45.69%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 3, compile id 694 
  45.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 3, compile id 694 
   0.93%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 3, compile id 694 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.82%  <...other 265 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 3, compile id 694 
   1.88%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%         interpreter  return entry points  
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%    perf-1960550.map  [unknown] 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%         interpreter  lstore  55 lstore  
   0.00%         interpreter  ladd  97 ladd  
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.12%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%         c2, level 4
   1.88%              kernel
   0.11%           libjvm.so
   0.05%        libc-2.31.so
   0.04%         interpreter
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%    perf-1960550.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array

# Run progress: 75.00% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.889 ns/op
# Warmup Iteration   2: 6.849 ns/op
# Warmup Iteration   3: 6.840 ns/op
# Warmup Iteration   4: 6.840 ns/op
# Warmup Iteration   5: 6.852 ns/op
Iteration   1: 6.993 ns/op
Iteration   2: 6.974 ns/op
Iteration   3: 7.011 ns/op
Iteration   4: 7.192 ns/op
Iteration   5: 7.240 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array":
  7.082 ±(99.9%) 0.479 ns/op [Average]
  (min, avg, max) = (6.974, 7.082, 7.240), stdev = 0.124
  CI (99.9%): [6.603, 7.561] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array:asm":
PrintAssembly processed: 147368 total address lines.
Perf output processed (skipped 56.228 seconds):
 Column 1: cycles (50571 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 693 

            dependencies   [0x00007f79a4646fb8,0x00007f79a4646fc0] = 8
            nul chk table  [0x00007f79a4646fc0,0x00007f79a4646fd0] = 16
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Verified Entry Point]
             # {method} {0x00007f792047e0d0} &apos;switchWhenMethod&apos; &apos;(Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I;)I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
             # parm0:    rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I&apos;
             #           [sp+0x30]  (sp of caller)
   0.55%     0x00007f79a4646da0:   mov    %eax,-0x14000(%rsp)
   6.35%     0x00007f79a4646da7:   push   %rbp
   1.80%     0x00007f79a4646da8:   sub    $0x20,%rsp
   3.32%     0x00007f79a4646dac:   cmpl   $0x1,0x20(%r15)
   1.10%     0x00007f79a4646db4:   jne    0x00007f79a4646e3a           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@-1 (line 246)
   1.03%     0x00007f79a4646dba:   nopw   0x0(%rax,%rax,1)
   0.30%     0x00007f79a4646dc0:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007f79a4646e08
  24.98%     0x00007f79a4646dc4:   cmp    $0x102a660,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ╭  0x00007f79a4646dcb:   jne    0x00007f79a4646df0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@107 (line 247)
   3.08%  │  0x00007f79a4646dcd:   mov    0xc(%rsi),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@112 (line 247)
  18.80%  │  0x00007f79a4646dd1:   lea    (%r11,%r11,1),%eax
   3.16%  │  0x00007f79a4646dd5:   test   $0x1,%r11b
   1.94%  │  0x00007f79a4646dd9:   cmovne %r11d,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@131 (line 247)
   3.24%  │  0x00007f79a4646ddd:   add    $0x20,%rsp
   0.10%  │  0x00007f79a4646de1:   pop    %rbp
   0.13%  │  0x00007f79a4646de2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f79a4646de9:   ja     0x00007f79a4646e24
   5.27%  │  0x00007f79a4646def:   ret    
          ↘  0x00007f79a4646df0:   mov    %rsi,%rbp
             0x00007f79a4646df3:   mov    $0xffffffbe,%esi
             0x00007f79a4646df8:   data16 xchg %ax,%ax
             0x00007f79a4646dfb:   call   0x00007f79a40c9f00           ; ImmutableOopMap {rbp=Oop }
                                                                       ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007f79a4646e00:   nopl   0x1f0(%rax,%rax,1)           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                                                                       ;   {other}
....................................................................................................
  75.15%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 4, compile id 696 

              0x00007f79a4647771:   dec    %r11d
              0x00007f79a4647774:   cmp    %r10d,%r11d
              0x00007f79a4647777:   jae    0x00007f79a46477e2
              0x00007f79a464777d:   lea    (%r12,%r9,8),%r8             ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@3 (line 155)
              0x00007f79a4647781:   xor    %ebp,%ebp
              0x00007f79a4647783:   xor    %r9d,%r9d
              0x00007f79a4647786:   mov    %r10d,0x8(%rsp)
              0x00007f79a464778b:   mov    %r9d,0xc(%rsp)
          ╭   0x00007f79a4647790:   jmp    0x00007f79a464779b
   1.55%  │↗  0x00007f79a4647792:   mov    (%rsp),%r8
   3.14%  ││  0x00007f79a4647796:   mov    %r10d,0xc(%rsp)              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@19 (line 155)
   2.60%  ↘│  0x00007f79a464779b:   mov    0x10(%r8,%rbp,4),%r11d
   3.04%   │  0x00007f79a46477a0:   mov    %r8,(%rsp)
   0.34%   │  0x00007f79a46477a4:   mov    %r11,%rsi
   2.82%   │  0x00007f79a46477a7:   shl    $0x3,%rsi
   1.81%   │  0x00007f79a46477ab:   call   0x00007f79a4646da0           ; ImmutableOopMap {[0]=Oop }
           │                                                            ;*invokestatic switchWhenMethod {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
           │                                                            ;   {static_call}
   1.86%   │  0x00007f79a46477b0:   nopl   0x220(%rax,%rax,1)           ;*invokestatic switchWhenMethod {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
           │                                                            ;   {other}
   0.12%   │  0x00007f79a46477b8:   mov    0xc(%rsp),%r10d
   4.71%   │  0x00007f79a46477bd:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@31 (line 156)
   0.59%   │  0x00007f79a46477c0:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@33 (line 155)
   0.12%   │  0x00007f79a46477c2:   cmp    0x8(%rsp),%ebp
           ╰  0x00007f79a46477c6:   jl     0x00007f79a4647792
              0x00007f79a46477c8:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@16 (line 155)
              0x00007f79a46477cb:   add    $0x20,%rsp
              0x00007f79a46477cf:   pop    %rbp
              0x00007f79a46477d0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f79a46477d7:   ja     0x00007f79a4647820
              0x00007f79a46477dd:   ret    
              0x00007f79a46477de:   xor    %eax,%eax
....................................................................................................
  22.70%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 693 
  22.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 4, compile id 696 
   0.58%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.01%  <...other 309 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 693 
  22.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 4, compile id 696 
   1.91%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%           libjvm.so  PlatformMonitor::wait 
   0.00%           libjvm.so  PcDescContainer::find_pc_desc_internal 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  DeoptimizationScope::DeoptimizationScope 
   0.10%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%         c2, level 4
   1.91%              kernel
   0.10%           libjvm.so
   0.05%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%                    
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-1960616.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array

# Run progress: 87.50% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 56.679 ns/op
# Warmup Iteration   2: 49.097 ns/op
# Warmup Iteration   3: 49.110 ns/op
# Warmup Iteration   4: 49.111 ns/op
# Warmup Iteration   5: 49.120 ns/op
Iteration   1: 49.047 ns/op
Iteration   2: 49.051 ns/op
Iteration   3: 49.020 ns/op
Iteration   4: 48.990 ns/op
Iteration   5: 49.056 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array":
  49.033 ±(99.9%) 0.105 ns/op [Average]
  (min, avg, max) = (48.990, 49.033, 49.056), stdev = 0.027
  CI (99.9%): [48.927, 49.138] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array:asm":
PrintAssembly processed: 154086 total address lines.
Perf output processed (skipped 56.743 seconds):
 Column 1: cycles (50856 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 

                                                            0x00007fa104646d0c:   0xf4f4f4f4                              
                                                            0x00007fa104646d10:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
                                                            0x00007fa104646d14:   0xf4f4f4f4                              
                                                            0x00007fa104646d18:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
                                                            0x00007fa104646d1c:   0xf4f4f4f4                              
                                                          --------------------------------------------------------------------------------
                                                          [Verified Entry Point]
                                                            # {method} {0x00007fa08347e0d0} &apos;switchWhenMethod&apos; &apos;(Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I;)I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
                                                            # parm0:    rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I&apos;
                                                            #           [sp+0x40]  (sp of caller)
   0.02%                                                    0x00007fa104646d20:   mov    %eax,-0x14000(%rsp)          ;   {no_reloc}
   1.64%                                                    0x00007fa104646d27:   push   %rbp
   0.87%                                                    0x00007fa104646d28:   sub    $0x30,%rsp
   0.00%                                                    0x00007fa104646d2c:   cmpl   $0x1,0x20(%r15)
   0.25%                                                    0x00007fa104646d34:   jne    0x00007fa10464764e           ;*synchronization entry
                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@-1 (line 246)
   0.54%                                                    0x00007fa104646d3a:   mov    %rsi,%r10
   0.00%                                                    0x00007fa104646d3d:   data16 xchg %ax,%ax
   0.00%                                                    0x00007fa104646d40:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007fa104647480
                                                                                                                      ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@454 (line 261)
   3.63%                                                    0x00007fa104646d44:   xor    %r9d,%r9d                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
   0.38%                    ↗    ↗  ↗   ↗    ↗  ↗    ↗  ↗   0x00007fa104646d47:   test   %r9d,%r9d
          ╭                 │    │  │   │    │  │    │  │   0x00007fa104646d4a:   je     0x00007fa104646d5e
   0.07%  │                 │    │  │   │    │  │    │  │   0x00007fa104646d4c:   movslq %r9d,%r8
   0.25%  │                 │    │  │   │    │  │    │  │   0x00007fa104646d4f:   movabs $0x7fa104646c00,%rcx         ;   {section_word}
          │                 │    │  │   │    │  │    │  │   0x00007fa104646d59:   jmp    *-0x8(%rcx,%r8,8)            ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                 │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088086c00::tableSwitch@39
          │                 │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa08808a400::delegate@14
          │                 │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088089800::invoke@114
          │                 │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa08808a000::linkToTargetMethod@6
          │                 │    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ↘                 │    │  │   │    │  │    │  │   0x00007fa104646d5e:   xchg   %ax,%ax
                            │    │  │   │    │  │    │  │   0x00007fa104646d60:   cmp    $0x102a660,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
           ╭                │    │  │   │    │  │    │  │   0x00007fa104646d67:   jne    0x00007fa104646d81
   1.38%   │                │    │  │   │    │  │    │  │   0x00007fa104646d69:   xor    %r8d,%r8d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088086c00::tableSwitch@302
           │                │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa08808a400::delegate@14
           │                │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088089800::invoke@114
           │                │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa08808a000::linkToTargetMethod@6
           │                │    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.47%   │ ↗ ↗ ↗ ↗ ↗ ↗ ↗  │    │  │   │    │  │    │  │   0x00007fa104646d6c:   movslq %r8d,%r8
   1.90%   │ │ │ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646d6f:   shl    $0x3,%r8
   1.39%   │ │ │ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646d73:   movabs $0x7fa104646c88,%r9          ;   {section_word}
   0.42%   │ │ │ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646d7d:   jmp    *(%r9,%r8,1)                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ │ │ │ │ │  │    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@16 (line 246)
   0.73%   ↘ │ │ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646d81:   cmp    $0x102b658,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
            ╭│ │ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646d88:   jne    0x00007fa104646d92
   1.36%    ││ │ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646d8a:   mov    $0x2,%r8d
   0.85%    │╰ │ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646d90:   jmp    0x00007fa104646d6c
   1.01%    ↘  │ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646d92:   data16 nopw 0x0(%rax,%rax,1)
   0.00%       │ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646d9c:   data16 data16 xchg %ax,%ax
               │ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646da0:   cmp    $0x102aa50,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
              ╭│ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646da7:   jne    0x00007fa104646db1
   1.23%      ││ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646da9:   mov    $0x4,%r8d
   0.94%      │╰ │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646daf:   jmp    0x00007fa104646d6c
   0.62%      ↘  │ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646db1:   cmp    $0x102b258,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                ╭│ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646db8:   jne    0x00007fa104646dc2
   1.03%        ││ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646dba:   mov    $0x6,%r8d
   0.57%        │╰ │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646dc0:   jmp    0x00007fa104646d6c
   0.53%        ↘  │ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646dc2:   cmp    $0x102b458,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
                  ╭│ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646dc9:   jne    0x00007fa104646dd3
   1.15%          ││ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646dcb:   mov    $0x8,%r8d
   0.70%          │╰ │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646dd1:   jmp    0x00007fa104646d6c
   0.53%          ↘  │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646dd3:   nopw   0x0(%rax,%rax,1)
   0.02%             │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646ddc:   data16 data16 xchg %ax,%ax
                     │ │ │  │    │  │   │    │  │    │  │   0x00007fa104646de0:   cmp    $0x102b058,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
                    ╭│ │ │  │    │  │   │    │  │    │  │   0x00007fa104646de7:   jne    0x00007fa104646df4
   1.21%            ││ │ │  │    │  │   │    │  │    │  │   0x00007fa104646de9:   mov    $0xa,%r8d
   0.73%            │╰ │ │  │    │  │   │    │  │    │  │   0x00007fa104646def:   jmp    0x00007fa104646d6c
   0.56%            ↘  │ │  │    │  │   │    │  │    │  │   0x00007fa104646df4:   nopl   0x0(%rax,%rax,1)
   0.03%               │ │  │    │  │   │    │  │    │  │   0x00007fa104646dfc:   data16 data16 xchg %ax,%ax
   0.00%               │ │  │    │  │   │    │  │    │  │   0x00007fa104646e00:   cmp    $0x102ae58,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                      ╭│ │  │    │  │   │    │  │    │  │   0x00007fa104646e07:   jne    0x00007fa104646e14
   0.47%              ││ │  │    │  │   │    │  │    │  │   0x00007fa104646e09:   mov    $0xc,%r8d
   0.37%              │╰ │  │    │  │   │    │  │    │  │   0x00007fa104646e0f:   jmp    0x00007fa104646d6c
   0.89%              ↘  │  │    │  │   │    │  │    │  │   0x00007fa104646e14:   nopl   0x0(%rax,%rax,1)
   0.08%                 │  │    │  │   │    │  │    │  │   0x00007fa104646e1c:   data16 data16 xchg %ax,%ax
                         │  │    │  │   │    │  │    │  │   0x00007fa104646e20:   cmp    $0x102ac50,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                        ╭│  │    │  │   │    │  │    │  │   0x00007fa104646e27:   jne    0x00007fa104646e34
   0.44%                ││  │    │  │   │    │  │    │  │   0x00007fa104646e29:   mov    $0xe,%r8d
   0.08%                │╰  │    │  │   │    │  │    │  │   0x00007fa104646e2f:   jmp    0x00007fa104646d6c
                        ↘   │    │  │   │    │  │    │  │   0x00007fa104646e34:   mov    $0xffffffcd,%esi
                            │    │  │   │    │  │    │  │   0x00007fa104646e39:   mov    %r10,(%rsp)
                            │    │  │   │    │  │    │  │   0x00007fa104646e3d:   xchg   %ax,%ax
                            │    │  │   │    │  │    │  │   0x00007fa104646e3f:   call   0x00007fa1040c9f00           ; ImmutableOopMap {[0]=Oop }
                            │    │  │   │    │  │    │  │                                                             ;*invokestatic profileBoolean {reexecute=1 rethrow=0 return_oop=0}
                            │    │  │   │    │  │    │  │                                                             ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@46
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088084400::invoke@91
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088086c00::tableSwitch@135
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa08808a400::delegate@14
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088089800::invoke@114
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa08808a000::linkToTargetMethod@6
                            │    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                            │    │  │   │    │  │    │  │                                                             ;   {runtime_call UncommonTrapBlob}
                            │    │  │   │    │  │    │  │   0x00007fa104646e44:   nopl   0x534(%rax,%rax,1)           ;*invokestatic profileBoolean {reexecute=0 rethrow=0 return_oop=0}
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@46
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088083c00::guard@89
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088084400::invoke@91
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088086c00::tableSwitch@135
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa08808a400::delegate@14
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa088089800::invoke@114
                            │    │  │   │    │  │    │  │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007fa08808a000::linkToTargetMethod@6
                            │    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                            │    │  │   │    │  │    │  │                                                             ;   {other}
   1.69%                    │    │  │   │    │  │    │  │   0x00007fa104646e4c:   cmp    $0x102ac50,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                          ╭ │    │  │   │    │  │    │  │   0x00007fa104646e53:   jne    0x00007fa104647177
   0.56%                  │ │    │  │   │    │  │    │  │   0x00007fa104646e59:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │ │    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@433 (line 261)
   0.01%                  │ │    │  │   │    │  │    │  │   0x00007fa104646e5c:   mov    0xc(%r8),%r9d                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │ │    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@440 (line 261)
   0.57%                  │ │    │  │   │    │  │    │  │   0x00007fa104646e60:   mov    0x14(%r12,%r9,8),%ebx        ; implicit exception: dispatches to 0x00007fa10464749c
                          │ │    │  │   │    │  │    │  │                                                             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │ │    │  │   │    │  │    │  │                                                             ; - java.lang.String::length@1 (line 1519)
                          │ │    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@443 (line 261)
   1.26%                  │ │    │  │   │    │  │    │  │   0x00007fa104646e65:   mov    0xc(%r12,%rbx,8),%ecx        ; implicit exception: dispatches to 0x00007fa1046474b0
   0.44%                  │ │    │  │   │    │  │    │  │   0x00007fa104646e6a:   movsbl 0x10(%r12,%r9,8),%ebx
                          │ │    │  │   │    │  │    │  │   0x00007fa104646e70:   sarx   %ebx,%ecx,%eax               ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                          │ │    │  │   │    │  │    │  │                                                             ; - java.lang.String::length@9 (line 1519)
                          │ │    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@443 (line 261)
   0.07%                  │ │    │  │   │    │  │    │  │   0x00007fa104646e75:   test   $0x1,%al
                          │╭│    │  │   │    │  │    │  │   0x00007fa104646e77:   je     0x00007fa104646e8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                          │││    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@448 (line 261)
   0.09%                  │││    │  │   │    │  │    │  │   0x00007fa104646e79:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                          │││    │  │   │    │  │    │  │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          │││    │  │   │    │  │    │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@454 (line 261)
                          │││    │  │   │    │  │    │  │   0x00007fa104646e80:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          │││    │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@454 (line 261)
                          │││    │  │   │    │  │    │  │                                                             ;   {poll}
                          │││    │  │   │    │  │    │  │   0x00007fa104646e83:   mov    $0xf,%r9d
                          ││╰    │  │   │    │  │    │  │   0x00007fa104646e89:   jmp    0x00007fa104646d47
   0.00%                  │↘     │  │   │    │  │    │  │   0x00007fa104646e8e:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                          │      │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@466 (line 261)
                          │  ╭   │  │   │    │  │    │  │   0x00007fa104646e90:   jmp    0x00007fa104647164
   0.96%                  │  │   │  │   │    │  │    │  │   0x00007fa104646e95:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.05%                  │  │   │  │   │    │  │    │  │   0x00007fa104646ea0:   cmp    $0x102a660,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
                          │  │   │  │   │    │  │    │  │   0x00007fa104646ea7:   jne    0x00007fa1046472b0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  │   │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@135 (line 248)
   0.29%                  │  │   │  │   │    │  │    │  │   0x00007fa104646ead:   mov    0xc(%r10),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  │   │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@142 (line 248)
   0.27%                  │  │╭  │  │   │    │  │    │  │   0x00007fa104646eb1:   jmp    0x00007fa104647164
   1.59%                  │  ││  │  │   │    │  │    │  │   0x00007fa104646eb6:   data16 nopw 0x0(%rax,%rax,1)
   0.34%                  │  ││  │  │   │    │  │    │  │   0x00007fa104646ec0:   cmp    $0x102b258,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                          │  ││  │  │   │    │  │    │  │   0x00007fa104646ec7:   jne    0x00007fa104647238
   0.49%                  │  ││  │  │   │    │  │    │  │   0x00007fa104646ecd:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││  │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@243 (line 253)
   0.01%                  │  ││  │  │   │    │  │    │  │   0x00007fa104646ed0:   movsbl 0xc(%r8),%eax                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  ││  │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@250 (line 253)
   0.53%                  │  ││  │  │   │    │  │    │  │   0x00007fa104646ed5:   test   $0x1,%al
                          │  ││╭ │  │   │    │  │    │  │   0x00007fa104646ed7:   jne    0x00007fa104646ee5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                          │  │││ │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@255 (line 253)
   0.07%                  │  │││ │  │   │    │  │    │  │   0x00007fa104646ed9:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                          │  │││ │  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@270 (line 253)
   0.01%                  │  │││ │  │   │    │  │    │  │   0x00007fa104646edb:   nopl   0x0(%rax,%rax,1)
                          │  │││╭│  │   │    │  │    │  │   0x00007fa104646ee0:   jmp    0x00007fa104647164
   0.08%                  │  ││↘││  │   │    │  │    │  │   0x00007fa104646ee5:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                          │  ││ ││  │   │    │  │    │  │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          │  ││ ││  │   │    │  │    │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@261 (line 253)
   0.16%                  │  ││ ││  │   │    │  │    │  │   0x00007fa104646eec:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ ││  │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@261 (line 253)
                          │  ││ ││  │   │    │  │    │  │                                                             ;   {poll}
   0.23%                  │  ││ ││  │   │    │  │    │  │   0x00007fa104646eef:   mov    $0x7,%r9d
                          │  ││ │╰  │   │    │  │    │  │   0x00007fa104646ef5:   jmp    0x00007fa104646d47
   1.48%                  │  ││ │   │   │    │  │    │  │   0x00007fa104646efa:   nopw   0x0(%rax,%rax,1)
   0.29%                  │  ││ │   │   │    │  │    │  │   0x00007fa104646f00:   cmp    $0x102b658,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
                          │  ││ │   │   │    │  │    │  │   0x00007fa104646f07:   jne    0x00007fa1046471c0
   0.46%                  │  ││ │   │   │    │  │    │  │   0x00007fa104646f0d:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │   │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@149 (line 249)
   0.01%                  │  ││ │   │   │    │  │    │  │   0x00007fa104646f10:   mov    0x10(%r8),%r9                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │   │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@156 (line 249)
   0.65%                  │  ││ │   │   │    │  │    │  │   0x00007fa104646f14:   test   $0x1,%r9b
                          │  ││ │ ╭ │   │    │  │    │  │   0x00007fa104646f18:   jne    0x00007fa104646f25           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │ │ │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@163 (line 249)
   0.05%                  │  ││ │ │ │   │    │  │    │  │   0x00007fa104646f1a:   mov    %r9d,%eax
   0.00%                  │  ││ │ │ │   │    │  │    │  │   0x00007fa104646f1d:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │ │ │   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@178 (line 249)
   0.04%                  │  ││ │ │ │   │    │  │    │  │   0x00007fa104646f1f:   nop
                          │  ││ │ │╭│   │    │  │    │  │   0x00007fa104646f20:   jmp    0x00007fa104647164
   0.06%                  │  ││ │ ↘││   │    │  │    │  │   0x00007fa104646f25:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                          │  ││ │  ││   │    │  │    │  │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          │  ││ │  ││   │    │  │    │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@168 (line 249)
   0.09%                  │  ││ │  ││   │    │  │    │  │   0x00007fa104646f2c:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  ││   │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@168 (line 249)
                          │  ││ │  ││   │    │  │    │  │                                                             ;   {poll}
   0.21%                  │  ││ │  ││   │    │  │    │  │   0x00007fa104646f2f:   mov    $0x3,%r9d
                          │  ││ │  │╰   │    │  │    │  │   0x00007fa104646f35:   jmp    0x00007fa104646d47
   0.80%                  │  ││ │  │    │    │  │    │  │   0x00007fa104646f3a:   nopw   0x0(%rax,%rax,1)
   0.23%                  │  ││ │  │    │    │  │    │  │   0x00007fa104646f40:   cmp    $0x102b258,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                          │  ││ │  │    │    │  │    │  │   0x00007fa104646f47:   jne    0x00007fa104647268           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │    │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@275 (line 254)
   0.25%                  │  ││ │  │    │    │  │    │  │   0x00007fa104646f4d:   movsbl 0xc(%r10),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │    │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@282 (line 254)
   0.26%                  │  ││ │  │ ╭  │    │  │    │  │   0x00007fa104646f52:   jmp    0x00007fa104647164
   0.94%                  │  ││ │  │ │  │    │  │    │  │   0x00007fa104646f57:   nopw   0x0(%rax,%rax,1)
   0.15%                  │  ││ │  │ │  │    │  │    │  │   0x00007fa104646f60:   cmp    $0x102ae58,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                          │  ││ │  │ │  │    │  │    │  │   0x00007fa104646f67:   jne    0x00007fa1046472e0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ │  │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@418 (line 260)
   0.16%                  │  ││ │  │ │  │    │  │    │  │   0x00007fa104646f6d:   vmovss 0xc(%r10),%xmm1
   0.24%                  │  ││ │  │ │  │    │  │    │  │   0x00007fa104646f73:   vcvttss2si %xmm1,%eax
   0.34%                  │  ││ │  │ │  │    │  │    │  │   0x00007fa104646f77:   cmp    $0x80000000,%eax
                          │  ││ │  │ │  │    │  │    │  │   0x00007fa104646f7c:   je     0x00007fa10464763a           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ │  │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
   0.05%                  │  ││ │  │ │╭ │    │  │    │  │   0x00007fa104646f82:   jmp    0x00007fa104647164
   1.59%                  │  ││ │  │ ││ │    │  │    │  │   0x00007fa104646f87:   cmp    $0x102ae58,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                          │  ││ │  │ ││ │    │  │    │  │   0x00007fa104646f8e:   jne    0x00007fa1046471f0
   0.60%                  │  ││ │  │ ││ │    │  │    │  │   0x00007fa104646f94:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││ │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@384 (line 259)
   0.01%                  │  ││ │  │ ││ │    │  │    │  │   0x00007fa104646f97:   vmovss 0xc(%r8),%xmm0
   0.59%                  │  ││ │  │ ││ │    │  │    │  │   0x00007fa104646f9d:   vcvttss2si %xmm0,%eax
   0.89%                  │  ││ │  │ ││ │    │  │    │  │   0x00007fa104646fa1:   cmp    $0x80000000,%eax
                          │  ││ │  │ ││ │    │  │    │  │   0x00007fa104646fa6:   je     0x00007fa104647626           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││ │    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
   0.00%                  │  ││ │  │ ││ │    │  │    │  │   0x00007fa104646fac:   test   $0x1,%al
                          │  ││ │  │ ││╭│    │  │    │  │   0x00007fa104646fae:   je     0x00007fa104646fc5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││││    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@397 (line 259)
   0.06%                  │  ││ │  │ ││││    │  │    │  │   0x00007fa104646fb0:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                          │  ││ │  │ ││││    │  │    │  │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          │  ││ │  │ ││││    │  │    │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@403 (line 259)
   0.09%                  │  ││ │  │ ││││    │  │    │  │   0x00007fa104646fb7:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││││    │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@403 (line 259)
                          │  ││ │  │ ││││    │  │    │  │                                                             ;   {poll}
   0.02%                  │  ││ │  │ ││││    │  │    │  │   0x00007fa104646fba:   mov    $0xd,%r9d
                          │  ││ │  │ │││╰    │  │    │  │   0x00007fa104646fc0:   jmp    0x00007fa104646d47
   0.03%                  │  ││ │  │ ││↘     │  │    │  │   0x00007fa104646fc5:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││      │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@413 (line 259)
   0.06%                  │  ││ │  │ ││  ╭   │  │    │  │   0x00007fa104646fc7:   jmp    0x00007fa104647164
   0.98%                  │  ││ │  │ ││  │   │  │    │  │   0x00007fa104646fcc:   cmp    $0x102b458,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
                          │  ││ │  │ ││  │   │  │    │  │   0x00007fa104646fd3:   jne    0x00007fa104647250           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │   │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@321 (line 256)
   0.32%                  │  ││ │  │ ││  │   │  │    │  │   0x00007fa104646fd9:   movzwl 0xc(%r10),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │   │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@328 (line 256)
   0.23%                  │  ││ │  │ ││  │   │  │    │  │   0x00007fa104646fde:   xchg   %ax,%ax
                          │  ││ │  │ ││  │╭  │  │    │  │   0x00007fa104646fe0:   jmp    0x00007fa104647164
   1.01%                  │  ││ │  │ ││  ││  │  │    │  │   0x00007fa104646fe5:   cmp    $0x102aa50,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
                          │  ││ │  │ ││  ││  │  │    │  │   0x00007fa104646fec:   jne    0x00007fa104647280           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  ││  │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@229 (line 252)
   0.25%                  │  ││ │  │ ││  ││  │  │    │  │   0x00007fa104646ff2:   movswl 0xc(%r10),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  ││  │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@236 (line 252)
   0.22%                  │  ││ │  │ ││  ││╭ │  │    │  │   0x00007fa104646ff7:   jmp    0x00007fa104647164
   1.42%                  │  ││ │  │ ││  │││ │  │    │  │   0x00007fa104646ffc:   nopl   0x0(%rax)
   0.24%                  │  ││ │  │ ││  │││ │  │    │  │   0x00007fa104647000:   cmp    $0x102aa50,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
                          │  ││ │  │ ││  │││ │  │    │  │   0x00007fa104647007:   jne    0x00007fa1046471a8
   0.56%                  │  ││ │  │ ││  │││ │  │    │  │   0x00007fa10464700d:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││ │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@198 (line 251)
   0.01%                  │  ││ │  │ ││  │││ │  │    │  │   0x00007fa104647010:   movswl 0xc(%r8),%eax                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││ │  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@205 (line 251)
   0.59%                  │  ││ │  │ ││  │││ │  │    │  │   0x00007fa104647015:   test   $0x1,%al
                          │  ││ │  │ ││  │││╭│  │    │  │   0x00007fa104647017:   je     0x00007fa10464702e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││││  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@210 (line 251)
   0.06%                  │  ││ │  │ ││  │││││  │    │  │   0x00007fa104647019:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                          │  ││ │  │ ││  │││││  │    │  │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││││  │    │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@215 (line 251)
   0.01%                  │  ││ │  │ ││  │││││  │    │  │   0x00007fa104647020:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││││  │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@215 (line 251)
                          │  ││ │  │ ││  │││││  │    │  │                                                             ;   {poll}
   0.21%                  │  ││ │  │ ││  │││││  │    │  │   0x00007fa104647023:   mov    $0x5,%r9d
                          │  ││ │  │ ││  ││││╰  │    │  │   0x00007fa104647029:   jmp    0x00007fa104646d47
   0.06%                  │  ││ │  │ ││  │││↘   │    │  │   0x00007fa10464702e:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││    │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@224 (line 251)
   0.05%                  │  ││ │  │ ││  │││  ╭ │    │  │   0x00007fa104647030:   jmp    0x00007fa104647164
   1.58%                  │  ││ │  │ ││  │││  │ │    │  │   0x00007fa104647035:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.39%                  │  ││ │  │ ││  │││  │ │    │  │   0x00007fa104647040:   cmp    $0x102b458,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
                          │  ││ │  │ ││  │││  │ │    │  │   0x00007fa104647047:   jne    0x00007fa104647220
   0.47%                  │  ││ │  │ ││  │││  │ │    │  │   0x00007fa10464704d:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │ │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@289 (line 255)
   0.01%                  │  ││ │  │ ││  │││  │ │    │  │   0x00007fa104647050:   movzwl 0xc(%r8),%eax                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │ │    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@296 (line 255)
   0.56%                  │  ││ │  │ ││  │││  │ │    │  │   0x00007fa104647055:   test   $0x1,%al
                          │  ││ │  │ ││  │││  │╭│    │  │   0x00007fa104647057:   je     0x00007fa10464706e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │││    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@301 (line 255)
   0.08%                  │  ││ │  │ ││  │││  │││    │  │   0x00007fa104647059:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                          │  ││ │  │ ││  │││  │││    │  │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │││    │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@307 (line 255)
   0.05%                  │  ││ │  │ ││  │││  │││    │  │   0x00007fa104647060:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │││    │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@307 (line 255)
                          │  ││ │  │ ││  │││  │││    │  │                                                             ;   {poll}
   0.23%                  │  ││ │  │ ││  │││  │││    │  │   0x00007fa104647063:   mov    $0x9,%r9d
                          │  ││ │  │ ││  │││  ││╰    │  │   0x00007fa104647069:   jmp    0x00007fa104646d47
   0.10%                  │  ││ │  │ ││  │││  │↘     │  │   0x00007fa10464706e:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │      │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@316 (line 255)
   0.06%                  │  ││ │  │ ││  │││  │  ╭   │  │   0x00007fa104647070:   jmp    0x00007fa104647164
   0.79%                  │  ││ │  │ ││  │││  │  │   │  │   0x00007fa104647075:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.24%                  │  ││ │  │ ││  │││  │  │   │  │   0x00007fa104647080:   cmp    $0x102b658,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
                          │  ││ │  │ ││  │││  │  │   │  │   0x00007fa104647087:   jne    0x00007fa104647298           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │   │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@183 (line 250)
   0.32%                  │  ││ │  │ ││  │││  │  │   │  │   0x00007fa10464708d:   mov    0x10(%r10),%r10
   0.23%                  │  ││ │  │ ││  │││  │  │   │  │   0x00007fa104647091:   mov    %r10d,%eax                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │   │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@193 (line 250)
   0.00%                  │  ││ │  │ ││  │││  │  │╭  │  │   0x00007fa104647094:   jmp    0x00007fa104647164
   1.01%                  │  ││ │  │ ││  │││  │  ││  │  │   0x00007fa104647099:   nopl   0x0(%rax)
   0.23%                  │  ││ │  │ ││  │││  │  ││  │  │   0x00007fa1046470a0:   cmp    $0x102b058,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
                          │  ││ │  │ ││  │││  │  ││  │  │   0x00007fa1046470a7:   jne    0x00007fa1046472c8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  ││  │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@369 (line 258)
   0.15%                  │  ││ │  │ ││  │││  │  ││  │  │   0x00007fa1046470ad:   vmovsd 0x10(%r10),%xmm0
   0.23%                  │  ││ │  │ ││  │││  │  ││  │  │   0x00007fa1046470b3:   vcvttsd2si %xmm0,%eax
   0.37%                  │  ││ │  │ ││  │││  │  ││  │  │   0x00007fa1046470b7:   cmp    $0x80000000,%eax
                          │  ││ │  │ ││  │││  │  ││  │  │   0x00007fa1046470bc:   je     0x00007fa104647612           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  ││  │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@379 (line 258)
   0.07%                  │  ││ │  │ ││  │││  │  ││╭ │  │   0x00007fa1046470c2:   jmp    0x00007fa104647164
   2.04%                  │  ││ │  │ ││  │││  │  │││ │  │   0x00007fa1046470c7:   cmp    $0x102a660,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
                          │  ││ │  │ ││  │││  │  │││ │  │   0x00007fa1046470ce:   jne    0x00007fa1046471d8
   0.56%                  │  ││ │  │ ││  │││  │  │││ │  │   0x00007fa1046470d4:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││ │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@107 (line 247)
   0.01%                  │  ││ │  │ ││  │││  │  │││ │  │   0x00007fa1046470d7:   mov    0xc(%r8),%eax                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││ │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@112 (line 247)
   0.61%                  │  ││ │  │ ││  │││  │  │││ │  │   0x00007fa1046470db:   test   $0x1,%al
                          │  ││ │  │ ││  │││  │  │││╭│  │   0x00007fa1046470dd:   je     0x00007fa1046470f4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@117 (line 247)
   0.06%                  │  ││ │  │ ││  │││  │  │││││  │   0x00007fa1046470df:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                          │  ││ │  │ ││  │││  │  │││││  │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││││  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@122 (line 247)
   0.01%                  │  ││ │  │ ││  │││  │  │││││  │   0x00007fa1046470e6:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@122 (line 247)
                          │  ││ │  │ ││  │││  │  │││││  │                                                             ;   {poll}
   0.18%                  │  ││ │  │ ││  │││  │  │││││  │   0x00007fa1046470e9:   mov    $0x1,%r9d
                          │  ││ │  │ ││  │││  │  ││││╰  │   0x00007fa1046470ef:   jmp    0x00007fa104646d47
   0.05%                  │  ││ │  │ ││  │││  │  │││↘   │   0x00007fa1046470f4:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@130 (line 247)
   0.00%                  │  ││ │  │ ││  │││  │  │││  ╭ │   0x00007fa1046470f6:   jmp    0x00007fa104647164
   1.49%                  │  ││ │  │ ││  │││  │  │││  │ │   0x00007fa1046470fb:   nopl   0x0(%rax,%rax,1)
   0.46%                  │  ││ │  │ ││  │││  │  │││  │ │   0x00007fa104647100:   cmp    $0x102b058,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
                          │  ││ │  │ ││  │││  │  │││  │ │   0x00007fa104647107:   jne    0x00007fa104647208
   0.52%                  │  ││ │  │ ││  │││  │  │││  │ │   0x00007fa10464710d:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││  │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@335 (line 257)
   0.02%                  │  ││ │  │ ││  │││  │  │││  │ │   0x00007fa104647110:   vmovsd 0x10(%r8),%xmm0
   0.70%                  │  ││ │  │ ││  │││  │  │││  │ │   0x00007fa104647116:   vcvttsd2si %xmm0,%eax
   0.88%                  │  ││ │  │ ││  │││  │  │││  │ │   0x00007fa10464711a:   cmp    $0x80000000,%eax
                          │  ││ │  │ ││  │││  │  │││  │ │   0x00007fa10464711f:   je     0x00007fa1046475fe           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││  │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
   0.00%                  │  ││ │  │ ││  │││  │  │││  │ │   0x00007fa104647125:   test   $0x1,%al
                          │  ││ │  │ ││  │││  │  │││  │╭│   0x00007fa104647127:   je     0x00007fa10464713e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││  │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@348 (line 257)
   0.05%                  │  ││ │  │ ││  │││  │  │││  │││   0x00007fa104647129:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                          │  ││ │  │ ││  │││  │  │││  │││                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││  │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@354 (line 257)
   0.06%                  │  ││ │  │ ││  │││  │  │││  │││   0x00007fa104647130:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││  │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@354 (line 257)
                          │  ││ │  │ ││  │││  │  │││  │││                                                             ;   {poll}
   0.03%                  │  ││ │  │ ││  │││  │  │││  │││   0x00007fa104647133:   mov    $0xb,%r9d
                          │  ││ │  │ ││  │││  │  │││  ││╰   0x00007fa104647139:   jmp    0x00007fa104646d47
   0.05%                  │  ││ │  │ ││  │││  │  │││  │↘    0x00007fa10464713e:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@364 (line 257)
   0.07%                  │  ││ │  │ ││  │││  │  │││  │  ╭  0x00007fa104647140:   jmp    0x00007fa104647164
   1.65%                  │  ││ │  │ ││  │││  │  │││  │  │  0x00007fa104647142:   cmp    $0x102ac50,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                          │  ││ │  │ ││  │││  │  │││  │  │  0x00007fa104647149:   jne    0x00007fa104647190           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@471 (line 262)
   0.52%                  │  ││ │  │ ││  │││  │  │││  │  │  0x00007fa10464714b:   mov    0xc(%r10),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@478 (line 262)
   0.39%                  │  ││ │  │ ││  │││  │  │││  │  │  0x00007fa10464714f:   mov    0x14(%r12,%r11,8),%r10d      ; implicit exception: dispatches to 0x00007fa1046474c4
                          │  ││ │  │ ││  │││  │  │││  │  │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││  │  │                                                            ; - java.lang.String::length@1 (line 1519)
                          │  ││ │  │ ││  │││  │  │││  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
   0.47%                  │  ││ │  │ ││  │││  │  │││  │  │  0x00007fa104647154:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fa1046474d8
   0.43%                  │  ││ │  │ ││  │││  │  │││  │  │  0x00007fa104647159:   movsbl 0x10(%r12,%r11,8),%r10d
                          │  ││ │  │ ││  │││  │  │││  │  │  0x00007fa10464715f:   sarx   %r10d,%r8d,%eax              ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          │  ││ │  │ ││  │││  │  │││  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@467 (line 261)
   0.25%                  │  ↘↘ ↘  ↘ ↘↘  ↘↘↘  ↘  ↘↘↘  ↘  ↘  0x00007fa104647164:   add    $0x30,%rsp
   0.09%                  │                                 0x00007fa104647168:   pop    %rbp
   1.81%                  │                                 0x00007fa104647169:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                          │                                 0x00007fa104647170:   ja     0x00007fa1046475e8
   0.92%                  │                                 0x00007fa104647176:   ret    
                          ↘                                 0x00007fa104647177:   mov    $0xffffffde,%esi
                                                            0x00007fa10464717c:   mov    %r10,(%rsp)
                                                            0x00007fa104647180:   data16 xchg %ax,%ax
                                                            0x00007fa104647183:   call   0x00007fa1040c9f00           ; ImmutableOopMap {[0]=Oop }
                                                                                                                      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@433 (line 261)
                                                                                                                      ;   {runtime_call UncommonTrapBlob}
                                                            0x00007fa104647188:   nopl   0x9000878(%rax,%rax,1)       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@433 (line 261)
                                                                                                                      ;   {other}
....................................................................................................
  77.55%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 2, compile id 717 

              0x00007fa104649371:   dec    %r11d
              0x00007fa104649374:   cmp    %r10d,%r11d
              0x00007fa104649377:   jae    0x00007fa1046493e2
              0x00007fa10464937d:   lea    (%r12,%r9,8),%r8             ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@3 (line 133)
              0x00007fa104649381:   xor    %ebp,%ebp
              0x00007fa104649383:   xor    %r9d,%r9d
              0x00007fa104649386:   mov    %r10d,0x8(%rsp)
              0x00007fa10464938b:   mov    %r9d,0xc(%rsp)
          ╭   0x00007fa104649390:   jmp    0x00007fa10464939b
   0.75%  │↗  0x00007fa104649392:   mov    (%rsp),%r8
   0.03%  ││  0x00007fa104649396:   mov    %r10d,0xc(%rsp)              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@19 (line 133)
   3.27%  ↘│  0x00007fa10464939b:   mov    0x10(%r8,%rbp,4),%r11d
   1.00%   │  0x00007fa1046493a0:   mov    %r8,(%rsp)
   0.02%   │  0x00007fa1046493a4:   mov    %r11,%rsi
   0.01%   │  0x00007fa1046493a7:   shl    $0x3,%rsi
   0.73%   │  0x00007fa1046493ab:   call   0x00007fa104646d20           ; ImmutableOopMap {[0]=Oop }
           │                                                            ;*invokestatic switchWhenMethod {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
           │                                                            ;   {static_call}
   0.49%   │  0x00007fa1046493b0:   nopl   0x220(%rax,%rax,1)           ;*invokestatic switchWhenMethod {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
           │                                                            ;   {other}
   0.01%   │  0x00007fa1046493b8:   mov    0xc(%rsp),%r10d
   4.60%   │  0x00007fa1046493bd:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.77%   │  0x00007fa1046493c0:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
           │  0x00007fa1046493c2:   cmp    0x8(%rsp),%ebp
           ╰  0x00007fa1046493c6:   jl     0x00007fa104649392
              0x00007fa1046493c8:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@16 (line 133)
              0x00007fa1046493cb:   add    $0x20,%rsp
              0x00007fa1046493cf:   pop    %rbp
              0x00007fa1046493d0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007fa1046493d7:   ja     0x00007fa104649420
....................................................................................................
  11.67%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 
  11.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 2, compile id 717 
   1.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 
   1.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 
   1.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 
   1.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 
   1.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 
   1.03%              kernel  [unknown] 
   1.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 
   0.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 
   0.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.09%  <...other 292 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 716 
  11.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 2, compile id 717 
   2.31%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __GI___libc_write 
   0.00%      hsdis-amd64.so  hsdis_read_memory_func 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%  libpthread-2.31.so  __condvar_cancel_waiting 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%      hsdis-amd64.so  print_insn 
   0.12%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.45%         c2, level 4
   2.31%              kernel
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:31

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

Benchmark                                              Mode  Cnt   Score   Error  Units
TypeSwitchBenchmark.if_instanceof_concrete_array       avgt    5   1.057 ± 0.002  ns/op
TypeSwitchBenchmark.if_instanceof_concrete_array:asm   avgt          NaN            ---
TypeSwitchBenchmark.if_instanceof_interface_array      avgt    5  14.568 ± 0.008  ns/op
TypeSwitchBenchmark.if_instanceof_interface_array:asm  avgt          NaN            ---
TypeSwitchBenchmark.switch_concrete_array              avgt    5   1.307 ± 0.052  ns/op
TypeSwitchBenchmark.switch_concrete_array:asm          avgt          NaN            ---
TypeSwitchBenchmark.switch_if_concrete_array           avgt    5   6.993 ± 0.732  ns/op
TypeSwitchBenchmark.switch_if_concrete_array:asm       avgt          NaN            ---
TypeSwitchBenchmark.switch_if_interface_array          avgt    5  26.634 ± 0.060  ns/op
TypeSwitchBenchmark.switch_if_interface_array:asm      avgt          NaN            ---
TypeSwitchBenchmark.switch_interface_array             avgt    5  16.785 ± 0.056  ns/op
TypeSwitchBenchmark.switch_interface_array:asm         avgt          NaN            ---
TypeSwitchBenchmark.switch_when_concrete_array         avgt    5   7.082 ± 0.479  ns/op
TypeSwitchBenchmark.switch_when_concrete_array:asm     avgt          NaN            ---
TypeSwitchBenchmark.switch_when_interface_array        avgt    5  49.033 ± 0.105  ns/op
TypeSwitchBenchmark.switch_when_interface_array:asm    avgt          NaN            ---
