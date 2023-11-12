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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 0.00% complete, ETA 00:26:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.908 ns/op
# Warmup Iteration   2: 1.879 ns/op
# Warmup Iteration   3: 1.880 ns/op
# Warmup Iteration   4: 1.880 ns/op
# Warmup Iteration   5: 1.880 ns/op
Iteration   1: 1.880 ns/op
Iteration   2: 2.002 ns/op
Iteration   3: 2.002 ns/op
Iteration   4: 1.881 ns/op
Iteration   5: 1.882 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  1.929 ±(99.9%) 0.255 ns/op [Average]
  (min, avg, max) = (1.880, 1.929, 2.002), stdev = 0.066
  CI (99.9%): [1.674, 2.184] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 229367 total address lines.
Perf output processed (skipped 60.895 seconds):
 Column 1: cycles (50655 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 999 

              0x00007feeaed7e5f4:   jb     0x00007feeaed7e6df           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
              0x00007feeaed7e5fa:   mov    $0x1,%ecx
              0x00007feeaed7e5ff:   nop
          ╭   0x00007feeaed7e600:   jmp    0x00007feeaed7e673
          │   0x00007feeaed7e605:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007feeaed7e610:   data16 data16 xchg %ax,%ax
          │   0x00007feeaed7e614:   nopl   0x0(%rax,%rax,1)
          │   0x00007feeaed7e61c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   1.99%  │↗  0x00007feeaed7e620:   movsbl 0x10(%rcx,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.29%  ││  0x00007feeaed7e626:   test   %ebx,%ebx
          ││  0x00007feeaed7e628:   jne    0x00007feeaed7e765           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   3.32%  ││  0x00007feeaed7e62e:   mov    0x10(%r10,%rcx,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   3.59%  ││  0x00007feeaed7e633:   mov    $0x1,%edx                    ; ImmutableOopMap {rbx=NarrowOop rdi=Oop r8=NarrowOop r10=Oop }
          ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
          ││                                                            ;   {no_reloc}
   2.16%  ││  0x00007feeaed7e638:   add    0xc(,%rbx,8),%edx            ; implicit exception: dispatches to 0x00007feeaed7e873
  33.16%  ││  0x00007feeaed7e63f:   mov    %edx,0xc(,%rbx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   7.52%  ││  0x00007feeaed7e646:   movsbl 0x11(%rcx,%r8,8),%esi        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   2.40%  ││  0x00007feeaed7e64c:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.56%  ││  0x00007feeaed7e650:   test   %esi,%esi
          ││  0x00007feeaed7e652:   jne    0x00007feeaed7e797           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.04%  ││  0x00007feeaed7e658:   mov    0x14(%r10,%rcx,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   5.94%  ││  0x00007feeaed7e65d:   mov    $0x1,%eax                    ; ImmutableOopMap {rbx=Oop rsi=NarrowOop rdi=Oop r8=NarrowOop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   2.39%  ││  0x00007feeaed7e662:   add    0xc(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007feeaed7e896
  22.43%  ││  0x00007feeaed7e669:   mov    %eax,0xc(,%rsi,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   5.71%  ││  0x00007feeaed7e670:   lea    0x2(%rcx),%ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   3.26%  ↘│  0x00007feeaed7e673:   cmp    $0x9d7e,%ecx
           ╰  0x00007feeaed7e679:   jb     0x00007feeaed7e620
              0x00007feeaed7e67b:   jmp    0x00007feeaed7e6c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
              0x00007feeaed7e680:   cmp    %ecx,%r11d
              0x00007feeaed7e683:   jbe    0x00007feeaed7e788           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
              0x00007feeaed7e689:   cmp    %ecx,%r9d
              0x00007feeaed7e68c:   jbe    0x00007feeaed7e756
              0x00007feeaed7e692:   movsbl 0x10(%rcx,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.75%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 999 
   0.54%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 999 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 999 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1022 
   0.02%              kernel  [unknown] 
   1.07%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 999 
   1.78%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1022 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  __libc_write 
   0.12%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%      jvmci, level 4
   1.78%              kernel
   0.11%                    
   0.10%        libc-2.31.so
   0.09%           libjvm.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%           libnio.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = BIMORPHIC)

# Run progress: 6.25% complete, ETA 00:28:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.301 ns/op
# Warmup Iteration   2: 2.276 ns/op
# Warmup Iteration   3: 2.275 ns/op
# Warmup Iteration   4: 2.174 ns/op
# Warmup Iteration   5: 2.272 ns/op
Iteration   1: 2.271 ns/op
Iteration   2: 2.271 ns/op
Iteration   3: 2.271 ns/op
Iteration   4: 2.273 ns/op
Iteration   5: 2.276 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.272 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (2.271, 2.272, 2.276), stdev = 0.002
  CI (99.9%): [2.264, 2.280] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 226988 total address lines.
Perf output processed (skipped 60.719 seconds):
 Column 1: cycles (50685 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1009 

              0x00007f9f76d80434:   jb     0x00007f9f76d80658           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
              0x00007f9f76d8043a:   nopw   0x0(%rax,%rax,1)
              0x00007f9f76d80440:   cmp    $0x9d7e,%r9d
              0x00007f9f76d80447:   jb     0x00007f9f76d80658
              0x00007f9f76d8044d:   cmp    $0x9d7f,%r9d
              0x00007f9f76d80454:   jb     0x00007f9f76d80658           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
              0x00007f9f76d8045a:   mov    $0x1,%ebx
              0x00007f9f76d8045f:   nop
   0.07%      0x00007f9f76d80460:   cmp    $0x9d7e,%ebx
              0x00007f9f76d80466:   jae    0x00007f9f76d80576           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   0.00%      0x00007f9f76d8046c:   mov    0x14(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   7.73%      0x00007f9f76d80471:   test   %edi,%edi
              0x00007f9f76d80473:   je     0x00007f9f76d8055e
   1.77%      0x00007f9f76d80479:   mov    0x8(,%rdi,8),%esi
  21.22%      0x00007f9f76d80480:   movabs $0x7f9efb000000,%rbp
   0.00%      0x00007f9f76d8048a:   lea    0x0(%rbp,%rsi,1),%rsi        ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   9.86%      0x00007f9f76d8048f:   mov    0x10(%r10,%rbx,4),%ebp       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.43%      0x00007f9f76d80494:   test   %ebp,%ebp
              0x00007f9f76d80496:   je     0x00007f9f76d8056a
   0.07%      0x00007f9f76d8049c:   mov    0x8(,%rbp,8),%r13d
   4.91%      0x00007f9f76d804a4:   movabs $0x7f9efb000000,%r14
   6.49%      0x00007f9f76d804ae:   lea    (%r14,%r13,1),%r13           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   2.05%      0x00007f9f76d804b2:   movsbl 0x11(%rbx,%r8,8),%r14d
   0.30%      0x00007f9f76d804b8:   movsbl 0x10(%rbx,%r8,8),%ecx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   0.02%      0x00007f9f76d804be:   lea    0x2(%rbx),%r9d
   6.43%      0x00007f9f76d804c2:   mov    %ebx,%r11d
   1.99%      0x00007f9f76d804c5:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   0.07%      0x00007f9f76d804c8:   cmp    $0x1,%ecx
          ╭   0x00007f9f76d804cb:   je     0x00007f9f76d804df
          │   0x00007f9f76d804d1:   cmp    $0x0,%ecx                    ;   {no_reloc}
          │   0x00007f9f76d804d4:   je     0x00007f9f76d80525
          │   0x00007f9f76d804da:   jmp    0x00007f9f76d80743           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
          ↘   0x00007f9f76d804df:   nop
   6.18%      0x00007f9f76d804e0:   cmp    %r13,%rdx
              0x00007f9f76d804e3:   jne    0x00007f9f76d8071b           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   1.98%      0x00007f9f76d804e9:   incl   0x10(,%rbp,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   7.07%      0x00007f9f76d804f0:   cmp    $0x1,%r14d
           ╭  0x00007f9f76d804f4:   je     0x00007f9f76d8050b
   1.77%   │  0x00007f9f76d804fa:   cmp    $0x0,%r14d
   0.06%   │  0x00007f9f76d804fe:   xchg   %ax,%ax
           │  0x00007f9f76d80500:   je     0x00007f9f76d80546
           │  0x00007f9f76d80506:   jmp    0x00007f9f76d8067b           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
           ↘  0x00007f9f76d8050b:   cmp    %rsi,%rdx
              0x00007f9f76d8050e:   jne    0x00007f9f76d8079b           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
              0x00007f9f76d80514:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
              0x00007f9f76d8051b:   mov    %r9d,%ebx
....................................................................................................
  81.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1009 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
            0x00007f9f76d8052e:   incl   0xc(,%rbp,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
            0x00007f9f76d80535:   cmp    $0x1,%r14d
            0x00007f9f76d80539:   je     0x00007f9f76d8050b
            0x00007f9f76d8053b:   cmp    $0x0,%r14d
            0x00007f9f76d8053f:   nop
            0x00007f9f76d80540:   jne    0x00007f9f76d8067b           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   6.28%    0x00007f9f76d80546:   cmp    %rsi,%rax
            0x00007f9f76d80549:   jne    0x00007f9f76d807d0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.68%    0x00007f9f76d8054f:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   6.86%    0x00007f9f76d80556:   mov    %r9d,%ebx
   1.67%    0x00007f9f76d80559:   jmp    0x00007f9f76d80460
            0x00007f9f76d8055e:   mov    $0x0,%rsi
            0x00007f9f76d80565:   jmp    0x00007f9f76d8048f
            0x00007f9f76d8056a:   mov    $0x0,%r13
            0x00007f9f76d80571:   jmp    0x00007f9f76d804b2           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
            0x00007f9f76d80576:   mov    0x10(%rsp),%r9d
   0.02%    0x00007f9f76d8057b:   mov    0x14(%rsp),%r11d
            0x00007f9f76d80580:   cmp    $0x9d80,%ebx
            0x00007f9f76d80586:   jae    0x00007f9f76d80620           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
....................................................................................................
  16.49%  <total for region 2>

....[Hottest Regions]...............................................................................
  81.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1009 
  16.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1009 
   0.46%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1009 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1034 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1009 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.95%  <...other 283 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1009 
   1.58%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1034 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  outputStream::print 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  xmlStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.16%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%      jvmci, level 4
   1.58%              kernel
   0.14%           libjvm.so
   0.10%        libc-2.31.so
   0.05%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 12.50% complete, ETA 00:26:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.546 ns/op
# Warmup Iteration   2: 2.517 ns/op
# Warmup Iteration   3: 2.517 ns/op
# Warmup Iteration   4: 2.516 ns/op
# Warmup Iteration   5: 2.516 ns/op
Iteration   1: 2.517 ns/op
Iteration   2: 2.516 ns/op
Iteration   3: 2.516 ns/op
Iteration   4: 2.516 ns/op
Iteration   5: 2.473 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.508 ±(99.9%) 0.075 ns/op [Average]
  (min, avg, max) = (2.473, 2.508, 2.517), stdev = 0.019
  CI (99.9%): [2.433, 2.582] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 228177 total address lines.
Perf output processed (skipped 60.874 seconds):
 Column 1: cycles (50735 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 975 

                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                            0x00007fb67ed7f32d:   cmp    $0x9d7e,%r9d
                            0x00007fb67ed7f334:   jb     0x00007fb67ed7f5d6
                            0x00007fb67ed7f33a:   nopw   0x0(%rax,%rax,1)
                            0x00007fb67ed7f340:   cmp    $0x9d7f,%r9d
                            0x00007fb67ed7f347:   jb     0x00007fb67ed7f5d6           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                            0x00007fb67ed7f34d:   mov    $0x1,%ebx
                            0x00007fb67ed7f352:   data16 nopw 0x0(%rax,%rax,1)
                            0x00007fb67ed7f35c:   data16 data16 xchg %ax,%ax
   1.18%           ↗ ↗ ↗    0x00007fb67ed7f360:   cmp    $0x9d7e,%ebx
          ╭        │ │ │    0x00007fb67ed7f366:   jae    0x00007fb67ed7f4c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   2.11%  │        │ │ │    0x00007fb67ed7f36c:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │        │ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   3.08%  │        │ │ │    0x00007fb67ed7f371:   test   %edi,%edi
          │╭       │ │ │    0x00007fb67ed7f373:   je     0x00007fb67ed7f4a9
   1.31%  ││       │ │ │    0x00007fb67ed7f379:   mov    0x8(,%rdi,8),%esi
  12.05%  ││       │ │ │    0x00007fb67ed7f380:   movabs $0x7fb603000000,%r13
   1.81%  ││       │ │ │    0x00007fb67ed7f38a:   lea    0x0(%r13,%rsi,1),%rsi        ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││       │ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   7.22%  ││       │ │ │ ↗  0x00007fb67ed7f38f:   movsbl 0x10(%rbx,%r8,8),%r13d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││       │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.00%  ││       │ │ │ │  0x00007fb67ed7f395:   cmp    $0x0,%r13d
          ││╭      │ │ │ │  0x00007fb67ed7f399:   je     0x00007fb67ed7f3b8
   0.81%  │││      │ │ │ │  0x00007fb67ed7f39f:   cmp    $0x2,%r13d
          │││╭     │ │ │ │  0x00007fb67ed7f3a3:   je     0x00007fb67ed7f438
   0.68%  ││││     │ │ │ │  0x00007fb67ed7f3a9:   cmp    $0x1,%r13d
          ││││╭    │ │ │ │  0x00007fb67ed7f3ad:   je     0x00007fb67ed7f46d
          │││││    │ │ │ │  0x00007fb67ed7f3b3:   jmp    0x00007fb67ed7f705           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││    │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.19%  ││↘││    │ │ │ │  0x00007fb67ed7f3b8:   nopl   0x0(%rax,%rax,1)
   0.26%  ││ ││    │ │ │ │  0x00007fb67ed7f3c0:   cmp    %rsi,%rbp
          ││ ││    │ │ │ │  0x00007fb67ed7f3c3:   jne    0x00007fb67ed7f6de           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ ││    │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.57%  ││ ││    │ │ │ │  0x00007fb67ed7f3c9:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││ ││    │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││ ││    │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
          ││ ││    │ │ │ │                                                            ;   {no_reloc}
   2.75%  ││ ││    │↗│↗│ │  0x00007fb67ed7f3d0:   mov    0x14(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   3.02%  ││ ││    │││││ │  0x00007fb67ed7f3d5:   test   %edi,%edi
          ││ ││╭   │││││ │  0x00007fb67ed7f3d7:   je     0x00007fb67ed7f49d
   2.29%  ││ │││   │││││ │  0x00007fb67ed7f3dd:   mov    0x8(,%rdi,8),%esi
  13.44%  ││ │││   │││││ │  0x00007fb67ed7f3e4:   movabs $0x7fb603000000,%r13
   1.13%  ││ │││   │││││ │  0x00007fb67ed7f3ee:   lea    0x0(%r13,%rsi,1),%rsi        ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││   │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   6.64%  ││ │││   │││││↗│  0x00007fb67ed7f3f3:   movsbl 0x11(%rbx,%r8,8),%r13d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││   │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   2.04%  ││ │││   │││││││  0x00007fb67ed7f3f9:   lea    0x2(%rbx),%r14d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │││   │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   1.38%  ││ │││   │││││││  0x00007fb67ed7f3fd:   cmp    $0x0,%r13d
          ││ │││╭  │││││││  0x00007fb67ed7f401:   je     0x00007fb67ed7f420
   0.91%  ││ ││││  │││││││  0x00007fb67ed7f407:   cmp    $0x2,%r13d
          ││ ││││╭ │││││││  0x00007fb67ed7f40b:   je     0x00007fb67ed7f455
   1.42%  ││ │││││ │││││││  0x00007fb67ed7f411:   cmp    $0x1,%r13d
          ││ │││││╭│││││││  0x00007fb67ed7f415:   je     0x00007fb67ed7f485
          ││ │││││││││││││  0x00007fb67ed7f41b:   jmp    0x00007fb67ed7f684           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.11%  ││ │││↘│││││││││  0x00007fb67ed7f420:   cmp    %rsi,%rbp
          ││ │││ │││││││││  0x00007fb67ed7f423:   jne    0x00007fb67ed7f771           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.98%  ││ │││ │││││││││  0x00007fb67ed7f429:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││ │││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   2.95%  ││ │││ │││││││││  0x00007fb67ed7f430:   mov    %r14d,%ebx
   0.47%  ││ │││ ││╰││││││  0x00007fb67ed7f433:   jmp    0x00007fb67ed7f360           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.75%  ││ ↘││ ││ ││││││  0x00007fb67ed7f438:   nopl   0x0(%rax,%rax,1)
   1.27%  ││  ││ ││ ││││││  0x00007fb67ed7f440:   cmp    %rsi,%rdx
          ││  ││ ││ ││││││  0x00007fb67ed7f443:   jne    0x00007fb67ed7f621           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   0.13%  ││  ││ ││ ││││││  0x00007fb67ed7f449:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││  ││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   3.35%  ││  ││ ││ ╰│││││  0x00007fb67ed7f450:   jmp    0x00007fb67ed7f3d0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.20%  ││  ││ ↘│  │││││  0x00007fb67ed7f455:   cmp    %rsi,%rdx
          ││  ││  │  │││││  0x00007fb67ed7f458:   jne    0x00007fb67ed7f7a9           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   0.77%  ││  ││  │  │││││  0x00007fb67ed7f45e:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││  ││  │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   5.38%  ││  ││  │  │││││  0x00007fb67ed7f465:   mov    %r14d,%ebx
   0.64%  ││  ││  │  ╰││││  0x00007fb67ed7f468:   jmp    0x00007fb67ed7f360           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.13%  ││  ↘│  │   ││││  0x00007fb67ed7f46d:   cmp    %rsi,%rax
          ││   │  │   ││││  0x00007fb67ed7f470:   jne    0x00007fb67ed7f64d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   │  │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.30%  ││   │  │   ││││  0x00007fb67ed7f476:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││   │  │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          ││   │  │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   3.14%  ││   │  │   ││││  0x00007fb67ed7f47d:   data16 xchg %ax,%ax
   0.30%  ││   │  │   ╰│││  0x00007fb67ed7f480:   jmp    0x00007fb67ed7f3d0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││   │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.38%  ││   │  ↘    │││  0x00007fb67ed7f485:   cmp    %rsi,%rax
          ││   │       │││  0x00007fb67ed7f488:   jne    0x00007fb67ed7f785           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   │       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.18%  ││   │       │││  0x00007fb67ed7f48e:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││   │       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          ││   │       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   5.76%  ││   │       │││  0x00007fb67ed7f495:   mov    %r14d,%ebx
   0.14%  ││   │       ╰││  0x00007fb67ed7f498:   jmp    0x00007fb67ed7f360
          ││   ↘        ││  0x00007fb67ed7f49d:   mov    $0x0,%rsi
          ││            ╰│  0x00007fb67ed7f4a4:   jmp    0x00007fb67ed7f3f3
          │↘             │  0x00007fb67ed7f4a9:   mov    $0x0,%rsi
          │              ╰  0x00007fb67ed7f4b0:   jmp    0x00007fb67ed7f38f           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
          │                 0x00007fb67ed7f4b5:   data16 data16 nopw 0x0(%rax,%rax,1)
          ↘                 0x00007fb67ed7f4c0:   cmp    $0x9d80,%ebx
                            0x00007fb67ed7f4c6:   jae    0x00007fb67ed7f589           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
                                                                                      ;   {no_reloc}
....................................................................................................
  97.60%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 975 
   0.38%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 975 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1006 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1006 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.20%  <...other 366 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 975 
   1.91%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1006 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.16%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.72%      jvmci, level 4
   1.91%              kernel
   0.15%           libjvm.so
   0.09%        libc-2.31.so
   0.05%                    
   0.04%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%         interpreter
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 18.75% complete, ETA 00:24:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.635 ns/op
# Warmup Iteration   2: 2.555 ns/op
# Warmup Iteration   3: 2.553 ns/op
# Warmup Iteration   4: 2.554 ns/op
# Warmup Iteration   5: 2.556 ns/op
Iteration   1: 2.555 ns/op
Iteration   2: 2.599 ns/op
Iteration   3: 2.598 ns/op
Iteration   4: 2.599 ns/op
Iteration   5: 2.554 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.581 ±(99.9%) 0.093 ns/op [Average]
  (min, avg, max) = (2.554, 2.581, 2.599), stdev = 0.024
  CI (99.9%): [2.488, 2.674] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 233223 total address lines.
Perf output processed (skipped 60.981 seconds):
 Column 1: cycles (50725 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 996 

                0x00007f5702d29056:   je     0x00007f5702d29165           ;   {no_reloc}
                0x00007f5702d2905c:   nopl   0x0(%rax)
                0x00007f5702d29060:   jmp    0x00007f5702d2930e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
                0x00007f5702d29065:   cmp    %rsi,%rax
                0x00007f5702d29068:   jne    0x00007f5702d2944d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
                0x00007f5702d2906e:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   1.52%     ↗  0x00007f5702d29075:   mov    0x14(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   2.27%     │  0x00007f5702d2907a:   nopw   0x0(%rax,%rax,1)
   1.99%     │  0x00007f5702d29080:   test   %edi,%edi
             │  0x00007f5702d29082:   je     0x00007f5702d2917a
   3.23%     │  0x00007f5702d29088:   mov    0x8(,%rdi,8),%esi
  12.84%     │  0x00007f5702d2908f:   movabs $0x7f5687000000,%r14
   0.72%     │  0x00007f5702d29099:   lea    (%r14,%rsi,1),%rsi           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   3.15%     │  0x00007f5702d2909d:   movsbl 0x11(%rbx,%r8,8),%r14d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   2.62%     │  0x00007f5702d290a3:   lea    0x2(%rbx),%ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   1.28%     │  0x00007f5702d290a6:   cmp    $0x0,%r14d
          ╭  │  0x00007f5702d290aa:   je     0x00007f5702d290ec
   0.38%  │  │  0x00007f5702d290b0:   cmp    $0x1,%r14d
          │╭ │  0x00007f5702d290b4:   je     0x00007f5702d29105
   1.41%  ││ │  0x00007f5702d290ba:   cmp    $0x2,%r14d
   1.24%  ││ │  0x00007f5702d290be:   xchg   %ax,%ax
   0.66%  ││╭│  0x00007f5702d290c0:   je     0x00007f5702d290d5
          ││││  0x00007f5702d290c6:   cmp    $0x3,%r14d
          ││││  0x00007f5702d290ca:   je     0x00007f5702d2914a
          ││││  0x00007f5702d290d0:   jmp    0x00007f5702d293f1           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.35%  ││↘│  0x00007f5702d290d5:   cmp    %rsi,%rax
          ││ │  0x00007f5702d290d8:   jne    0x00007f5702d29505           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   1.92%  ││ │  0x00007f5702d290de:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   6.51%  ││ │  0x00007f5702d290e5:   mov    %ecx,%ebx
   1.14%  ││ │  0x00007f5702d290e7:   jmp    0x00007f5702d29000           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.43%  ↘│ │  0x00007f5702d290ec:   cmp    %rsi,%r13
           │ │  0x00007f5702d290ef:   jne    0x00007f5702d2933a           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.64%   │ │  0x00007f5702d290f5:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   6.98%   │ │  0x00007f5702d290fc:   mov    %ecx,%ebx
   0.60%   │ │  0x00007f5702d290fe:   xchg   %ax,%ax
   0.89%   │ │  0x00007f5702d29100:   jmp    0x00007f5702d29000           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
           ↘ │  0x00007f5702d29105:   cmp    %rsi,%rbp
             │  0x00007f5702d29108:   jne    0x00007f5702d294f1           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
             │  0x00007f5702d2910e:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
             │  0x00007f5702d29115:   mov    %ecx,%ebx
             │  0x00007f5702d29117:   jmp    0x00007f5702d29000           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.40%     │  0x00007f5702d2911c:   nopl   0x0(%rax)
   1.02%     │  0x00007f5702d29120:   cmp    %rsi,%rbp
             │  0x00007f5702d29123:   jne    0x00007f5702d294a9           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.71%     │  0x00007f5702d29129:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   7.35%     ╰  0x00007f5702d29130:   jmp    0x00007f5702d29075           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
                0x00007f5702d29135:   cmp    %rsi,%r13
                0x00007f5702d29138:   jne    0x00007f5702d29471           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
                0x00007f5702d2913e:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
                0x00007f5702d29145:   jmp    0x00007f5702d29075           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  64.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 996 

                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
             0x00007f5702d28fcd:   cmp    $0x9d7e,%r9d
             0x00007f5702d28fd4:   jb     0x00007f5702d292eb
             0x00007f5702d28fda:   nopw   0x0(%rax,%rax,1)
             0x00007f5702d28fe0:   cmp    $0x9d7f,%r9d
             0x00007f5702d28fe7:   jb     0x00007f5702d292eb           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
             0x00007f5702d28fed:   mov    $0x1,%ebx
             0x00007f5702d28ff2:   data16 nopw 0x0(%rax,%rax,1)
             0x00007f5702d28ffc:   data16 data16 xchg %ax,%ax
   1.60%     0x00007f5702d29000:   cmp    $0x9d7e,%ebx
             0x00007f5702d29006:   jae    0x00007f5702d291a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   2.21%     0x00007f5702d2900c:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.71%     0x00007f5702d29011:   test   %edi,%edi
             0x00007f5702d29013:   je     0x00007f5702d29186
   1.94%     0x00007f5702d29019:   mov    0x8(,%rdi,8),%esi
   9.93%     0x00007f5702d29020:   movabs $0x7f5687000000,%r14
   1.93%     0x00007f5702d2902a:   lea    (%r14,%rsi,1),%rsi           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   2.42%     0x00007f5702d2902e:   movsbl 0x10(%rbx,%r8,8),%r14d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.64%     0x00007f5702d29034:   cmp    $0x0,%r14d
             0x00007f5702d29038:   je     0x00007f5702d29135
   1.26%     0x00007f5702d2903e:   cmp    $0x1,%r14d
             0x00007f5702d29042:   je     0x00007f5702d2911c
   0.51%     0x00007f5702d29048:   cmp    $0x2,%r14d
          ╭  0x00007f5702d2904c:   je     0x00007f5702d29065
   1.44%  │  0x00007f5702d29052:   cmp    $0x3,%r14d
          │  0x00007f5702d29056:   je     0x00007f5702d29165           ;   {no_reloc}
          │  0x00007f5702d2905c:   nopl   0x0(%rax)
          │  0x00007f5702d29060:   jmp    0x00007f5702d2930e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
          ↘  0x00007f5702d29065:   cmp    %rsi,%rax
             0x00007f5702d29068:   jne    0x00007f5702d2944d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
             0x00007f5702d2906e:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
....................................................................................................
  26.58%  <total for region 2>

....[Hottest Regions]...............................................................................
  64.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 996 
  26.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 996 
   7.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 996 
   0.55%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 996 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 996 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 996 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1027 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1027 
   0.95%  <...other 295 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 996 
   1.62%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1027 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  os::current_thread_id 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.15%  <...other 68 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.00%      jvmci, level 4
   1.62%              kernel
   0.13%           libjvm.so
   0.12%        libc-2.31.so
   0.08%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 25.00% complete, ETA 00:22:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.521 ns/op
# Warmup Iteration   2: 2.489 ns/op
# Warmup Iteration   3: 2.487 ns/op
# Warmup Iteration   4: 2.488 ns/op
# Warmup Iteration   5: 2.488 ns/op
Iteration   1: 2.487 ns/op
Iteration   2: 2.488 ns/op
Iteration   3: 2.488 ns/op
Iteration   4: 2.487 ns/op
Iteration   5: 2.487 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.488 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (2.487, 2.488, 2.488), stdev = 0.001
  CI (99.9%): [2.485, 2.490] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 229827 total address lines.
Perf output processed (skipped 60.846 seconds):
 Column 1: cycles (50859 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 973 

                                      0x00007f8382d7d5df:   nop
                                      0x00007f8382d7d5e0:   cmp    $0x9d7f,%r11d
                                      0x00007f8382d7d5e7:   jb     0x00007f8382d7d9d6           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                                      0x00007f8382d7d5ed:   cmp    $0x9d7e,%r9d
                                      0x00007f8382d7d5f4:   jb     0x00007f8382d7d9d6
                                      0x00007f8382d7d5fa:   nopw   0x0(%rax,%rax,1)
                                      0x00007f8382d7d600:   cmp    $0x9d7f,%r9d
                                      0x00007f8382d7d607:   jb     0x00007f8382d7d9d6           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   0.00%                              0x00007f8382d7d60d:   mov    $0x1,%ebx
                                      0x00007f8382d7d612:   data16 nopw 0x0(%rax,%rax,1)
                                      0x00007f8382d7d61c:   data16 data16 xchg %ax,%ax
   0.71%                 ↗ ↗  ↗↗↗     0x00007f8382d7d620:   cmp    $0x9d7e,%ebx
          ╭              │ │  │││     0x00007f8382d7d626:   jae    0x00007f8382d7d811           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │              │ │  │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   2.10%  │              │ │  │││     0x00007f8382d7d62c:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │              │ │  │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   4.56%  │              │ │  │││     0x00007f8382d7d631:   test   %edi,%edi
          │╭             │ │  │││     0x00007f8382d7d633:   je     0x00007f8382d7d7f5
   0.34%  ││             │ │  │││     0x00007f8382d7d639:   mov    0x8(,%rdi,8),%esi
   9.88%  ││             │ │  │││     0x00007f8382d7d640:   movabs $0x7f8307000000,%rcx
   1.79%  ││             │ │  │││     0x00007f8382d7d64a:   lea    (%rcx,%rsi,1),%rsi           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││             │ │  │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   4.87%  ││             │ │  │││ ↗   0x00007f8382d7d64e:   movsbl 0x10(%rbx,%r8,8),%ecx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││             │ │  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   0.28%  ││             │ │  │││ │   0x00007f8382d7d654:   cmp    $0x3,%ecx
          ││╭            │ │  │││ │   0x00007f8382d7d657:   jge    0x00007f8382d7d67d
   0.30%  │││            │ │  │││ │   0x00007f8382d7d65d:   cmp    $0x2,%ecx
          │││╭           │ │  │││ │   0x00007f8382d7d660:   jge    0x00007f8382d7d72c           ;   {no_reloc}
   1.25%  ││││           │ │  │││ │   0x00007f8382d7d666:   cmp    $0x0,%ecx
          ││││╭          │ │  │││ │   0x00007f8382d7d669:   je     0x00007f8382d7d75d
   1.11%  │││││          │ │  │││ │   0x00007f8382d7d66f:   cmp    $0x1,%ecx
          │││││╭         │ │  │││ │   0x00007f8382d7d672:   je     0x00007f8382d7d775
          ││││││         │ │  │││ │   0x00007f8382d7d678:   jmp    0x00007f8382d7db65
   0.19%  ││↘│││         │ │  │││ │   0x00007f8382d7d67d:   cmp    $0x3,%ecx
   0.53%  ││ │││╭        │ │  │││ │   0x00007f8382d7d680:   je     0x00007f8382d7d694
   1.38%  ││ ││││        │ │  │││ │   0x00007f8382d7d686:   cmp    $0x4,%ecx
          ││ ││││╭       │ │  │││ │   0x00007f8382d7d689:   je     0x00007f8382d7d7d8
          ││ │││││       │ │  │││ │   0x00007f8382d7d68f:   jmp    0x00007f8382d7db65           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││       │ │  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.13%  ││ │││↘│       │ │  │││ │   0x00007f8382d7d694:   cmp    %rsi,%rax
          ││ │││ │       │ │  │││ │   0x00007f8382d7d697:   jne    0x00007f8382d7db51           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │       │ │  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   0.00%  ││ │││ │       │ │  │││ │   0x00007f8382d7d69d:   incl   0x18(,%rdi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │       │ │  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          ││ │││ │       │ │  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   2.99%  ││ │││ │       │↗│↗↗│││↗│   0x00007f8382d7d6a4:   mov    0x14(%r10,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │       ││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   3.43%  ││ │││ │       ││││││││││   0x00007f8382d7d6a9:   test   %ecx,%ecx
          ││ │││ │╭      ││││││││││   0x00007f8382d7d6ab:   je     0x00007f8382d7d805
   1.51%  ││ │││ ││      ││││││││││   0x00007f8382d7d6b1:   mov    0x8(,%rcx,8),%edi
  10.08%  ││ │││ ││      ││││││││││   0x00007f8382d7d6b8:   movabs $0x7f8307000000,%rsi
   1.47%  ││ │││ ││      ││││││││││   0x00007f8382d7d6c2:   lea    (%rsi,%rdi,1),%rdi           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││      ││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   3.19%  ││ │││ ││      ││││││││││↗  0x00007f8382d7d6c6:   movsbl 0x11(%rbx,%r8,8),%esi        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││      │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.56%  ││ │││ ││      │││││││││││  0x00007f8382d7d6cc:   lea    0x2(%rbx),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││      │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   1.71%  ││ │││ ││      │││││││││││  0x00007f8382d7d6d0:   cmp    $0x3,%esi
          ││ │││ ││╭     │││││││││││  0x00007f8382d7d6d3:   jge    0x00007f8382d7d6fd
   0.27%  ││ │││ │││     │││││││││││  0x00007f8382d7d6d9:   cmp    $0x2,%esi
   2.51%  ││ │││ │││     │││││││││││  0x00007f8382d7d6dc:   nopl   0x0(%rax)
   0.75%  ││ │││ │││╭    │││││││││││  0x00007f8382d7d6e0:   jge    0x00007f8382d7d745
   0.52%  ││ │││ ││││    │││││││││││  0x00007f8382d7d6e6:   cmp    $0x0,%esi
          ││ │││ ││││╭   │││││││││││  0x00007f8382d7d6e9:   je     0x00007f8382d7d78a
          ││ │││ │││││   │││││││││││  0x00007f8382d7d6ef:   cmp    $0x1,%esi
          ││ │││ │││││╭  │││││││││││  0x00007f8382d7d6f2:   je     0x00007f8382d7d7a5
          ││ │││ ││││││  │││││││││││  0x00007f8382d7d6f8:   jmp    0x00007f8382d7dac0
   1.15%  ││ │││ ││↘│││  │││││││││││  0x00007f8382d7d6fd:   cmp    $0x3,%esi
   0.50%  ││ │││ ││ │││╭ │││││││││││  0x00007f8382d7d700:   je     0x00007f8382d7d714
   0.01%  ││ │││ ││ ││││ │││││││││││  0x00007f8382d7d706:   cmp    $0x4,%esi
          ││ │││ ││ ││││╭│││││││││││  0x00007f8382d7d709:   je     0x00007f8382d7d7bd
          ││ │││ ││ ││││││││││││││││  0x00007f8382d7d70f:   jmp    0x00007f8382d7dac0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││ ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.30%  ││ │││ ││ │││↘││││││││││││  0x00007f8382d7d714:   cmp    %rdi,%rax
          ││ │││ ││ │││ ││││││││││││  0x00007f8382d7d717:   jne    0x00007f8382d7db09           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││ │││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
          ││ │││ ││ │││ ││││││││││││  0x00007f8382d7d71d:   incl   0x18(,%rcx,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││ │││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          ││ │││ ││ │││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   3.97%  ││ │││ ││ │││ ││││││││││││  0x00007f8382d7d724:   mov    %r9d,%ebx
          ││ │││ ││ │││ │╰││││││││││  0x00007f8382d7d727:   jmp    0x00007f8382d7d620           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││ │││ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.00%  ││ ↘││ ││ │││ │ ││││││││││  0x00007f8382d7d72c:   cmp    %rsi,%rbp
          ││  ││ ││ │││ │ ││││││││││  0x00007f8382d7d72f:   jne    0x00007f8382d7da21           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ │││ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   1.12%  ││  ││ ││ │││ │ ││││││││││  0x00007f8382d7d735:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ │││ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││  ││ ││ │││ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   1.95%  ││  ││ ││ │││ │ ││││││││││  0x00007f8382d7d73c:   nopl   0x0(%rax)
   0.65%  ││  ││ ││ │││ │ ╰│││││││││  0x00007f8382d7d740:   jmp    0x00007f8382d7d6a4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ │││ │  │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.40%  ││  ││ ││ ↘││ │  │││││││││  0x00007f8382d7d745:   cmp    %rdi,%rbp
          ││  ││ ││  ││ │  │││││││││  0x00007f8382d7d748:   jne    0x00007f8382d7da84           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││  ││ │  │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   0.14%  ││  ││ ││  ││ │  │││││││││  0x00007f8382d7d74e:   incl   0x14(,%rcx,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││  ││ │  │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││  ││ ││  ││ │  │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   4.04%  ││  ││ ││  ││ │  │││││││││  0x00007f8382d7d755:   mov    %r9d,%ebx
   0.09%  ││  ││ ││  ││ │  ╰││││││││  0x00007f8382d7d758:   jmp    0x00007f8382d7d620           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││  ││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.48%  ││  ↘│ ││  ││ │   ││││││││  0x00007f8382d7d75d:   data16 xchg %ax,%ax
   0.03%  ││   │ ││  ││ │   ││││││││  0x00007f8382d7d760:   cmp    %rsi,%r14
          ││   │ ││  ││ │   ││││││││  0x00007f8382d7d763:   jne    0x00007f8382d7dc2d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   │ ││  ││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
          ││   │ ││  ││ │   ││││││││                                                            ;   {no_reloc}
   0.00%  ││   │ ││  ││ │   ││││││││  0x00007f8382d7d769:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││   │ ││  ││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││   │ ││  ││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   2.16%  ││   │ ││  ││ │   ╰│││││││  0x00007f8382d7d770:   jmp    0x00007f8382d7d6a4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││   │ ││  ││ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
          ││   ↘ ││  ││ │    │││││││  0x00007f8382d7d775:   cmp    %rsi,%r13
          ││     ││  ││ │    │││││││  0x00007f8382d7d778:   jne    0x00007f8382d7dbd1           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     ││  ││ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.24%  ││     ││  ││ │    │││││││  0x00007f8382d7d77e:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││     ││  ││ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          ││     ││  ││ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   2.79%  ││     ││  ││ │    ╰││││││  0x00007f8382d7d785:   jmp    0x00007f8382d7d6a4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     ││  ││ │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.11%  ││     ││  ↘│ │     ││││││  0x00007f8382d7d78a:   cmp    %rdi,%r14
          ││     ││   │ │     ││││││  0x00007f8382d7d78d:   jne    0x00007f8382d7db2d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     ││   │ │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.52%  ││     ││   │ │     ││││││  0x00007f8382d7d793:   incl   0xc(,%rcx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││     ││   │ │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││     ││   │ │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.00%  ││     ││   │ │     ││││││  0x00007f8382d7d79a:   mov    %r9d,%ebx
   0.94%  ││     ││   │ │     ││││││  0x00007f8382d7d79d:   data16 xchg %ax,%ax
   0.00%  ││     ││   │ │     ╰│││││  0x00007f8382d7d7a0:   jmp    0x00007f8382d7d620           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     ││   │ │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.23%  ││     ││   ↘ │      │││││  0x00007f8382d7d7a5:   cmp    %rdi,%r13
          ││     ││     │      │││││  0x00007f8382d7d7a8:   jne    0x00007f8382d7dbe5           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     ││     │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.30%  ││     ││     │      │││││  0x00007f8382d7d7ae:   incl   0x10(,%rcx,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││     ││     │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          ││     ││     │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   3.04%  ││     ││     │      │││││  0x00007f8382d7d7b5:   mov    %r9d,%ebx
   0.20%  ││     ││     │      ╰││││  0x00007f8382d7d7b8:   jmp    0x00007f8382d7d620           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     ││     │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.41%  ││     ││     ↘       ││││  0x00007f8382d7d7bd:   data16 xchg %ax,%ax
          ││     ││             ││││  0x00007f8382d7d7c0:   cmp    %rdi,%rdx
          ││     ││             ││││  0x00007f8382d7d7c3:   jne    0x00007f8382d7dbf7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     ││             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   0.34%  ││     ││             ││││  0x00007f8382d7d7c9:   incl   0x1c(,%rcx,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          ││     ││             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          ││     ││             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   3.63%  ││     ││             ││││  0x00007f8382d7d7d0:   mov    %r9d,%ebx
   0.04%  ││     ││             ╰│││  0x00007f8382d7d7d3:   jmp    0x00007f8382d7d620           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     ││              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.00%  ││     ↘│              │││  0x00007f8382d7d7d8:   nopl   0x0(%rax,%rax,1)
          ││      │              │││  0x00007f8382d7d7e0:   cmp    %rsi,%rdx
          ││      │              │││  0x00007f8382d7d7e3:   jne    0x00007f8382d7db3f           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││      │              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   0.18%  ││      │              │││  0x00007f8382d7d7e9:   incl   0x1c(,%rdi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          ││      │              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          ││      │              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   2.23%  ││      │              ╰││  0x00007f8382d7d7f0:   jmp    0x00007f8382d7d6a4
          │↘      │               ││  0x00007f8382d7d7f5:   mov    $0x0,%rsi
          │       │               ││  0x00007f8382d7d7fc:   nopl   0x0(%rax)
          │       │               ╰│  0x00007f8382d7d800:   jmp    0x00007f8382d7d64e
          │       ↘                │  0x00007f8382d7d805:   mov    $0x0,%rdi
          │                        ╰  0x00007f8382d7d80c:   jmp    0x00007f8382d7d6c6           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
          ↘                           0x00007f8382d7d811:   mov    0x14(%rsp),%r9d
   0.02%                              0x00007f8382d7d816:   data16 nopw 0x0(%rax,%rax,1)
....................................................................................................
  97.65%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 973 
   0.82%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1002 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 973 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 973 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.93%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 973 
   1.96%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1002 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  _IO_default_xsputn 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.00%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%         libc-2.31.so  __strcmp_avx2 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%   libpthread-2.31.so  __libc_write 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.74%       jvmci, level 4
   1.96%               kernel
   0.13%            libjvm.so
   0.07%         libc-2.31.so
   0.03%                     
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 31.25% complete, ETA 00:20:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.989 ns/op
# Warmup Iteration   2: 2.955 ns/op
# Warmup Iteration   3: 2.956 ns/op
# Warmup Iteration   4: 2.955 ns/op
# Warmup Iteration   5: 2.958 ns/op
Iteration   1: 2.957 ns/op
Iteration   2: 2.958 ns/op
Iteration   3: 2.957 ns/op
Iteration   4: 2.957 ns/op
Iteration   5: 2.946 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.955 ±(99.9%) 0.020 ns/op [Average]
  (min, avg, max) = (2.946, 2.955, 2.958), stdev = 0.005
  CI (99.9%): [2.935, 2.975] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 228695 total address lines.
Perf output processed (skipped 60.778 seconds):
 Column 1: cycles (50777 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 986 

              0x00007fe736d81eb4:   jb     0x00007fe736d82316           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
              0x00007fe736d81eba:   nopw   0x0(%rax,%rax,1)
              0x00007fe736d81ec0:   cmp    $0x9d7e,%r9d
              0x00007fe736d81ec7:   jb     0x00007fe736d82316
              0x00007fe736d81ecd:   cmp    $0x9d7f,%r9d
              0x00007fe736d81ed4:   jb     0x00007fe736d82316           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
              0x00007fe736d81eda:   mov    $0x1,%ebx
              0x00007fe736d81edf:   nop
   0.94%      0x00007fe736d81ee0:   cmp    $0x9d7e,%ebx
              0x00007fe736d81ee6:   jae    0x00007fe736d82105           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   1.09%      0x00007fe736d81eec:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   3.94%      0x00007fe736d81ef1:   test   %edi,%edi
              0x00007fe736d81ef3:   je     0x00007fe736d820ea
   0.42%      0x00007fe736d81ef9:   mov    0x8(,%rdi,8),%ecx
  14.12%      0x00007fe736d81f00:   movabs $0x7fe6bb000000,%r9
   0.73%      0x00007fe736d81f0a:   lea    (%r9,%rcx,1),%rcx            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   4.61%      0x00007fe736d81f0e:   movsbl 0x10(%rbx,%r8,8),%r9d        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   0.28%      0x00007fe736d81f14:   cmp    $0x4,%r9d
          ╭   0x00007fe736d81f18:   jge    0x00007fe736d81f4b
   0.70%  │   0x00007fe736d81f1e:   cmp    $0x3,%r9d                    ;   {no_reloc}
          │   0x00007fe736d81f22:   jge    0x00007fe736d81fff
   0.35%  │   0x00007fe736d81f28:   cmp    $0x2,%r9d
          │   0x00007fe736d81f2c:   jge    0x00007fe736d820d5
   1.11%  │   0x00007fe736d81f32:   cmp    $0x0,%r9d
          │   0x00007fe736d81f36:   je     0x00007fe736d820c0
          │   0x00007fe736d81f3c:   cmp    $0x1,%r9d
   0.73%  │   0x00007fe736d81f40:   je     0x00007fe736d8205c
          │   0x00007fe736d81f46:   jmp    0x00007fe736d82612
   0.00%  ↘   0x00007fe736d81f4b:   cmp    $0x4,%r9d
              0x00007fe736d81f4f:   je     0x00007fe736d82047
              0x00007fe736d81f55:   cmp    $0x5,%r9d
              0x00007fe736d81f59:   jne    0x00007fe736d82612           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   2.14%      0x00007fe736d81f5f:   nop
              0x00007fe736d81f60:   cmp    %rcx,%rdx
              0x00007fe736d81f63:   jne    0x00007fe736d824c8           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
              0x00007fe736d81f69:   incl   0x20(,%rdi,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   7.25%      0x00007fe736d81f70:   mov    0x14(%r10,%rbx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.85%      0x00007fe736d81f75:   test   %r9d,%r9d
              0x00007fe736d81f78:   je     0x00007fe736d820f6
   0.73%      0x00007fe736d81f7e:   mov    0x8(,%r9,8),%ecx
  12.82%      0x00007fe736d81f86:   movabs $0x7fe6bb000000,%rdi
   1.13%      0x00007fe736d81f90:   lea    (%rdi,%rcx,1),%rcx           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   2.18%      0x00007fe736d81f94:   movsbl 0x11(%rbx,%r8,8),%edi        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   0.73%      0x00007fe736d81f9a:   lea    0x2(%rbx),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   2.57%      0x00007fe736d81f9e:   cmp    $0x4,%edi
           ╭  0x00007fe736d81fa1:   jge    0x00007fe736d81fd4
   0.90%   │  0x00007fe736d81fa7:   cmp    $0x3,%edi
           │  0x00007fe736d81faa:   jge    0x00007fe736d82015
   1.47%   │  0x00007fe736d81fb0:   cmp    $0x2,%edi
           │  0x00007fe736d81fb3:   jge    0x00007fe736d82075
   0.01%   │  0x00007fe736d81fb9:   cmp    $0x0,%edi
   1.11%   │  0x00007fe736d81fbc:   nopl   0x0(%rax)
   0.85%   │  0x00007fe736d81fc0:   je     0x00007fe736d8208e
           │  0x00007fe736d81fc6:   cmp    $0x1,%edi
           │  0x00007fe736d81fc9:   je     0x00007fe736d820a7
           │  0x00007fe736d81fcf:   jmp    0x00007fe736d823bc
   0.20%   ↘  0x00007fe736d81fd4:   cmp    $0x4,%edi
              0x00007fe736d81fd7:   je     0x00007fe736d8202e
              0x00007fe736d81fdd:   cmp    $0x5,%edi
              0x00007fe736d81fe0:   jne    0x00007fe736d823bc           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
              0x00007fe736d81fe6:   cmp    %rcx,%rdx
              0x00007fe736d81fe9:   jne    0x00007fe736d8244e           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
              0x00007fe736d81fef:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
....................................................................................................
  64.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 986 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
            0x00007fe736d81fe6:   cmp    %rcx,%rdx
            0x00007fe736d81fe9:   jne    0x00007fe736d8244e           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
            0x00007fe736d81fef:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
            0x00007fe736d81ff7:   mov    %r11d,%ebx
            0x00007fe736d81ffa:   jmp    0x00007fe736d81ee0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.44%    0x00007fe736d81fff:   nop
   1.44%    0x00007fe736d82000:   cmp    %rcx,%rbp
            0x00007fe736d82003:   jne    0x00007fe736d82569           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   0.33%    0x00007fe736d82009:   incl   0x18(,%rdi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   4.06%    0x00007fe736d82010:   jmp    0x00007fe736d81f70           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
            0x00007fe736d82015:   cmp    %rcx,%rbp
            0x00007fe736d82018:   jne    0x00007fe736d82600           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
                                                                      ;   {no_reloc}
            0x00007fe736d8201e:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
            0x00007fe736d82026:   mov    %r11d,%ebx
            0x00007fe736d82029:   jmp    0x00007fe736d81ee0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   2.31%    0x00007fe736d8202e:   cmp    %rcx,%rax
            0x00007fe736d82031:   jne    0x00007fe736d82460           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
            0x00007fe736d82037:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   6.90%    0x00007fe736d8203f:   mov    %r11d,%ebx
            0x00007fe736d82042:   jmp    0x00007fe736d81ee0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
            0x00007fe736d82047:   cmp    %rcx,%rax
            0x00007fe736d8204a:   jne    0x00007fe736d82528           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
            0x00007fe736d82050:   incl   0x1c(,%rdi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
            0x00007fe736d82057:   jmp    0x00007fe736d81f70           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.35%    0x00007fe736d8205c:   nopl   0x0(%rax)
   1.71%    0x00007fe736d82060:   cmp    %rcx,%r14
            0x00007fe736d82063:   jne    0x00007fe736d8249c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.00%    0x00007fe736d82069:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   3.51%    0x00007fe736d82070:   jmp    0x00007fe736d81f70           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.19%    0x00007fe736d82075:   cmp    %rcx,%r13
            0x00007fe736d82078:   jne    0x00007fe736d825b3           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   1.03%    0x00007fe736d8207e:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   7.16%    0x00007fe736d82086:   mov    %r11d,%ebx
   0.43%    0x00007fe736d82089:   jmp    0x00007fe736d81ee0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.21%    0x00007fe736d8208e:   cmp    %rcx,%rsi
            0x00007fe736d82091:   jne    0x00007fe736d82545           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.00%    0x00007fe736d82097:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   2.76%    0x00007fe736d8209f:   mov    %r11d,%ebx
   0.00%    0x00007fe736d820a2:   jmp    0x00007fe736d81ee0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
            0x00007fe736d820a7:   cmp    %rcx,%r14
            0x00007fe736d820aa:   jne    0x00007fe736d824b6           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
            0x00007fe736d820b0:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
            0x00007fe736d820b8:   mov    %r11d,%ebx
            0x00007fe736d820bb:   jmp    0x00007fe736d81ee0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
....................................................................................................
  32.82%  <total for region 2>

....[Hottest Regions]...............................................................................
  64.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 986 
  32.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 986 
   0.75%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 986 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1008 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 986 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.84%  <...other 292 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 986 
   1.73%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1008 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.00%            libjvm.so  printf_to_env 
   0.20%  <...other 88 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.89%       jvmci, level 4
   1.73%               kernel
   0.14%            libjvm.so
   0.10%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%                     
   0.02%          interpreter
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.00%          c1, level 2
   0.00%     perf-2135990.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 37.50% complete, ETA 00:19:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.210 ns/op
# Warmup Iteration   2: 3.166 ns/op
# Warmup Iteration   3: 3.161 ns/op
# Warmup Iteration   4: 3.162 ns/op
# Warmup Iteration   5: 3.161 ns/op
Iteration   1: 3.161 ns/op
Iteration   2: 3.162 ns/op
Iteration   3: 3.163 ns/op
Iteration   4: 3.161 ns/op
Iteration   5: 3.163 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  3.162 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (3.161, 3.162, 3.163), stdev = 0.001
  CI (99.9%): [3.159, 3.166] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 234650 total address lines.
Perf output processed (skipped 61.044 seconds):
 Column 1: cycles (50736 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 993 

                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                                                0x00007f8372d8174d:   cmpl   $0x9d7e,0x20(%rsp)
                                                0x00007f8372d81755:   jb     0x00007f8372d81c85
                                                0x00007f8372d8175b:   nopl   0x0(%rax,%rax,1)
                                                0x00007f8372d81760:   cmpl   $0x9d7f,0x20(%rsp)
                                                0x00007f8372d81768:   jb     0x00007f8372d81c85           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                                                0x00007f8372d8176e:   mov    $0x1,%ebx
                                                0x00007f8372d81773:   nopw   0x0(%rax,%rax,1)
                                                0x00007f8372d8177c:   data16 data16 xchg %ax,%ax
   1.81%                       ↗↗↗  ↗↗↗↗        0x00007f8372d81780:   cmp    $0x9d7e,%ebx
          ╭                    │││  ││││        0x00007f8372d81786:   jae    0x00007f8372d81a17           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                    │││  ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   3.44%  │                    │││  ││││        0x00007f8372d8178c:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                    │││  ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   0.53%  │                    │││  ││││        0x00007f8372d81791:   test   %edi,%edi
          │╭                   │││  ││││        0x00007f8372d81793:   je     0x00007f8372d81a0b
   0.07%  ││                   │││  ││││        0x00007f8372d81799:   mov    0x8(,%rdi,8),%ecx
  13.42%  ││                   │││  ││││        0x00007f8372d817a0:   movabs $0x7f82f7000000,%r11         ;   {no_reloc}
   2.18%  ││                   │││  ││││        0x00007f8372d817aa:   lea    (%r11,%rcx,1),%rcx           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││                   │││  ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
   2.48%  ││                   │││  ││││     ↗  0x00007f8372d817ae:   movsbl 0x10(%rbx,%r8,8),%r11d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                   │││  ││││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   0.07%  ││                   │││  ││││     │  0x00007f8372d817b4:   cmp    $0x4,%r11d
          ││╭                  │││  ││││     │  0x00007f8372d817b8:   jge    0x00007f8372d817f4
   0.74%  │││                  │││  ││││     │  0x00007f8372d817be:   cmp    $0x2,%r11d
          │││╭                 │││  ││││     │  0x00007f8372d817c2:   jge    0x00007f8372d817e5
   0.88%  ││││                 │││  ││││     │  0x00007f8372d817c8:   cmp    $0x0,%r11d
          ││││╭                │││  ││││     │  0x00007f8372d817cc:   je     0x00007f8372d81905
   0.57%  │││││                │││  ││││     │  0x00007f8372d817d2:   cmp    $0x1,%r11d
          │││││╭               │││  ││││     │  0x00007f8372d817d6:   je     0x00007f8372d81817
          ││││││               │││  ││││     │  0x00007f8372d817dc:   nopl   0x0(%rax)
          ││││││               │││  ││││     │  0x00007f8372d817e0:   jmp    0x00007f8372d81f50
   0.30%  │││↘││               │││  ││││     │  0x00007f8372d817e5:   cmp    $0x2,%r11d
          │││ ││╭              │││  ││││     │  0x00007f8372d817e9:   je     0x00007f8372d8191a
   0.38%  │││ │││╭             │││  ││││     │  0x00007f8372d817ef:   jmp    0x00007f8372d819be
   0.58%  ││↘ ││││             │││  ││││     │  0x00007f8372d817f4:   cmp    $0x6,%r11d
          ││  ││││             │││  ││││     │  0x00007f8372d817f8:   jg     0x00007f8372d81f50
   1.07%  ││  ││││             │││  ││││     │  0x00007f8372d817fe:   cmp    $0x6,%r11d
          ││  ││││╭            │││  ││││     │  0x00007f8372d81802:   jge    0x00007f8372d819a9
   0.62%  ││  │││││            │││  ││││     │  0x00007f8372d81808:   cmp    $0x4,%r11d
          ││  │││││╭           │││  ││││     │  0x00007f8372d8180c:   je     0x00007f8372d819d5
   0.02%  ││  ││││││╭          │││  ││││     │  0x00007f8372d81812:   jmp    0x00007f8372d819ea           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││││          │││  ││││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.00%  ││  │↘│││││          │││  ││││     │  0x00007f8372d81817:   cmp    %rcx,%rsi
          ││  │ │││││          │││  ││││     │  0x00007f8372d8181a:   jne    0x00007f8372d81e6e           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │││││          │││  ││││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.02%  ││  │ │││││          │││  ││││     │  0x00007f8372d81820:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │││││          │││  ││││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          ││  │ │││││          │││  ││││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   3.43%  ││  │ │││││          │││↗↗││││↗↗↗↗ │  0x00007f8372d81827:   mov    0x14(%r10,%rbx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │││││          │││││││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.37%  ││  │ │││││          │││││││││││││ │  0x00007f8372d8182c:   test   %r11d,%r11d
          ││  │ │││││╭         │││││││││││││ │  0x00007f8372d8182f:   je     0x00007f8372d819ff
   1.36%  ││  │ ││││││         │││││││││││││ │  0x00007f8372d81835:   mov    0x8(,%r11,8),%ecx
  14.68%  ││  │ ││││││         │││││││││││││ │  0x00007f8372d8183d:   movabs $0x7f82f7000000,%rdi
   0.54%  ││  │ ││││││         │││││││││││││ │  0x00007f8372d81847:   lea    (%rdi,%rcx,1),%rcx           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││         │││││││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
   2.27%  ││  │ ││││││         │││││││││││││↗│  0x00007f8372d8184b:   movsbl 0x11(%rbx,%r8,8),%edi        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││         │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.31%  ││  │ ││││││         │││││││││││││││  0x00007f8372d81851:   lea    0x2(%rbx),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││         │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   2.17%  ││  │ ││││││         │││││││││││││││  0x00007f8372d81855:   cmp    $0x4,%edi
          ││  │ ││││││╭        │││││││││││││││  0x00007f8372d81858:   jge    0x00007f8372d8188c
   0.40%  ││  │ │││││││        │││││││││││││││  0x00007f8372d8185e:   cmp    $0x2,%edi
          ││  │ │││││││╭       │││││││││││││││  0x00007f8372d81861:   jge    0x00007f8372d8187e
   0.75%  ││  │ ││││││││       │││││││││││││││  0x00007f8372d81867:   cmp    $0x0,%edi
          ││  │ ││││││││╭      │││││││││││││││  0x00007f8372d8186a:   je     0x00007f8372d818c9
   0.31%  ││  │ │││││││││      │││││││││││││││  0x00007f8372d81870:   cmp    $0x1,%edi
          ││  │ │││││││││╭     │││││││││││││││  0x00007f8372d81873:   je     0x00007f8372d818ac
          ││  │ ││││││││││     │││││││││││││││  0x00007f8372d81879:   jmp    0x00007f8372d81eec
   0.37%  ││  │ │││││││↘││     │││││││││││││││  0x00007f8372d8187e:   cmp    $0x2,%edi
          ││  │ │││││││ ││╭    │││││││││││││││  0x00007f8372d81881:   je     0x00007f8372d818e6
   0.32%  ││  │ │││││││ │││╭   │││││││││││││││  0x00007f8372d81887:   jmp    0x00007f8372d8196f
   0.18%  ││  │ ││││││↘ ││││   │││││││││││││││  0x00007f8372d8188c:   cmp    $0x6,%edi
          ││  │ ││││││  ││││   │││││││││││││││  0x00007f8372d8188f:   jg     0x00007f8372d81eec
   1.11%  ││  │ ││││││  ││││   │││││││││││││││  0x00007f8372d81895:   cmp    $0x6,%edi
          ││  │ ││││││  ││││╭  │││││││││││││││  0x00007f8372d81898:   jge    0x00007f8372d81952
   0.27%  ││  │ ││││││  │││││  │││││││││││││││  0x00007f8372d8189e:   cmp    $0x4,%edi
          ││  │ ││││││  │││││╭ │││││││││││││││  0x00007f8372d818a1:   je     0x00007f8372d8198c
   0.54%  ││  │ ││││││  ││││││╭│││││││││││││││  0x00007f8372d818a7:   jmp    0x00007f8372d81935           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││  ││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
          ││  │ ││││││  ││││││││││││││││││││││                                                            ;   {no_reloc}
   0.15%  ││  │ ││││││  │↘││││││││││││││││││││  0x00007f8372d818ac:   cmp    %rcx,%rsi
          ││  │ ││││││  │ ││││││││││││││││││││  0x00007f8372d818af:   jne    0x00007f8372d81f77           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││  │ ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
          ││  │ ││││││  │ ││││││││││││││││││││  0x00007f8372d818b5:   incl   0x10(,%r11,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││  │ ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          ││  │ ││││││  │ ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   2.24%  ││  │ ││││││  │ ││││││││││││││││││││  0x00007f8372d818bd:   mov    %r10d,%ebx
          ││  │ ││││││  │ ││││││││││││││││││││  0x00007f8372d818c0:   mov    (%rsp),%r10
   0.04%  ││  │ ││││││  │ │││││╰││││││││││││││  0x00007f8372d818c4:   jmp    0x00007f8372d81780           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││  │ │││││ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.11%  ││  │ ││││││  ↘ │││││ ││││││││││││││  0x00007f8372d818c9:   cmp    %rcx,%r9
          ││  │ ││││││    │││││ ││││││││││││││  0x00007f8372d818cc:   jne    0x00007f8372d81dde           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││    │││││ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.68%  ││  │ ││││││    │││││ ││││││││││││││  0x00007f8372d818d2:   incl   0xc(,%r11,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││    │││││ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││  │ ││││││    │││││ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.41%  ││  │ ││││││    │││││ ││││││││││││││  0x00007f8372d818da:   mov    %r10d,%ebx
   0.34%  ││  │ ││││││    │││││ ││││││││││││││  0x00007f8372d818dd:   mov    (%rsp),%r10
          ││  │ ││││││    │││││ ╰│││││││││││││  0x00007f8372d818e1:   jmp    0x00007f8372d81780           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││    │││││  │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.95%  ││  │ ││││││    ↘││││  │││││││││││││  0x00007f8372d818e6:   cmp    %rcx,%r14
          ││  │ ││││││     ││││  │││││││││││││  0x00007f8372d818e9:   jne    0x00007f8372d81f9b           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││     ││││  │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
          ││  │ ││││││     ││││  │││││││││││││  0x00007f8372d818ef:   incl   0x14(,%r11,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││     ││││  │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││  │ ││││││     ││││  │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   1.45%  ││  │ ││││││     ││││  │││││││││││││  0x00007f8372d818f7:   mov    %r10d,%ebx
          ││  │ ││││││     ││││  │││││││││││││  0x00007f8372d818fa:   mov    (%rsp),%r10
   0.00%  ││  │ ││││││     ││││  │││││││││││││  0x00007f8372d818fe:   xchg   %ax,%ax
          ││  │ ││││││     ││││  ╰││││││││││││  0x00007f8372d81900:   jmp    0x00007f8372d81780           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││││││     ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.22%  ││  ↘ ││││││     ││││   ││││││││││││  0x00007f8372d81905:   cmp    %rcx,%r9
          ││    ││││││     ││││   ││││││││││││  0x00007f8372d81908:   jne    0x00007f8372d81df0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││     ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
          ││    ││││││     ││││   ││││││││││││  0x00007f8372d8190e:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││     ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││    ││││││     ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.30%  ││    ││││││     ││││   ╰│││││││││││  0x00007f8372d81915:   jmp    0x00007f8372d81827           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││     ││││    │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.99%  ││    ↘│││││     ││││    │││││││││││  0x00007f8372d8191a:   nopw   0x0(%rax,%rax,1)
          ││     │││││     ││││    │││││││││││  0x00007f8372d81920:   cmp    %rcx,%r14
          ││     │││││     ││││    │││││││││││  0x00007f8372d81923:   jne    0x00007f8372d81e1c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││     ││││    │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
          ││     │││││     ││││    │││││││││││  0x00007f8372d81929:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││     ││││    │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││     │││││     ││││    │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   3.15%  ││     │││││     ││││    ╰││││││││││  0x00007f8372d81930:   jmp    0x00007f8372d81827           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││     ││││     ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
          ││     │││││     │││↘     ││││││││││  0x00007f8372d81935:   cmp    %rcx,%rax
          ││     │││││     │││      ││││││││││  0x00007f8372d81938:   jne    0x00007f8372d81f27           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││     │││      ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   0.68%  ││     │││││     │││      ││││││││││  0x00007f8372d8193e:   incl   0x20(,%r11,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││     │││      ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
          ││     │││││     │││      ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   2.05%  ││     │││││     │││      ││││││││││  0x00007f8372d81946:   mov    %r10d,%ebx
   0.16%  ││     │││││     │││      ││││││││││  0x00007f8372d81949:   mov    (%rsp),%r10
   0.01%  ││     │││││     │││      ╰│││││││││  0x00007f8372d8194d:   jmp    0x00007f8372d81780           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││     │││       │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.67%  ││     │││││     │↘│       │││││││││  0x00007f8372d81952:   cmp    %rcx,%rdx
          ││     │││││     │ │       │││││││││  0x00007f8372d81955:   jne    0x00007f8372d81e31           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││     │ │       │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
          ││     │││││     │ │       │││││││││  0x00007f8372d8195b:   incl   0x24(,%r11,8)                ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││     │ │       │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
          ││     │││││     │ │       │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
   2.79%  ││     │││││     │ │       │││││││││  0x00007f8372d81963:   mov    %r10d,%ebx
          ││     │││││     │ │       │││││││││  0x00007f8372d81966:   mov    (%rsp),%r10
          ││     │││││     │ │       ╰││││││││  0x00007f8372d8196a:   jmp    0x00007f8372d81780           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││     │ │        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.72%  ││     │││││     ↘ │        ││││││││  0x00007f8372d8196f:   cmp    %rcx,%r13
          ││     │││││       │        ││││││││  0x00007f8372d81972:   jne    0x00007f8372d81ec8           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││       │        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
          ││     │││││       │        ││││││││  0x00007f8372d81978:   incl   0x18(,%r11,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││       │        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          ││     │││││       │        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   1.45%  ││     │││││       │        ││││││││  0x00007f8372d81980:   mov    %r10d,%ebx
          ││     │││││       │        ││││││││  0x00007f8372d81983:   mov    (%rsp),%r10
          ││     │││││       │        ╰│││││││  0x00007f8372d81987:   jmp    0x00007f8372d81780           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││       │         │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.39%  ││     │││││       ↘         │││││││  0x00007f8372d8198c:   cmp    %rcx,%rbp
          ││     │││││                 │││││││  0x00007f8372d8198f:   jne    0x00007f8372d81d50           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││                 │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
          ││     │││││                 │││││││  0x00007f8372d81995:   incl   0x1c(,%r11,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││                 │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          ││     │││││                 │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   1.99%  ││     │││││                 │││││││  0x00007f8372d8199d:   mov    %r10d,%ebx
          ││     │││││                 │││││││  0x00007f8372d819a0:   mov    (%rsp),%r10
   0.03%  ││     │││││                 ╰││││││  0x00007f8372d819a4:   jmp    0x00007f8372d81780           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││                  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
          ││     │││││                  ││││││                                                            ;   {no_reloc}
   0.62%  ││     │↘│││                  ││││││  0x00007f8372d819a9:   cmp    %rcx,%rdx
          ││     │ │││                  ││││││  0x00007f8372d819ac:   jne    0x00007f8372d81d93           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     │ │││                  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
          ││     │ │││                  ││││││  0x00007f8372d819b2:   incl   0x24(,%rdi,8)                ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          ││     │ │││                  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
          ││     │ │││                  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
   2.57%  ││     │ │││                  ╰│││││  0x00007f8372d819b9:   jmp    0x00007f8372d81827           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     │ │││                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.64%  ││     ↘ │││                   │││││  0x00007f8372d819be:   xchg   %ax,%ax
          ││       │││                   │││││  0x00007f8372d819c0:   cmp    %rcx,%r13
          ││       │││                   │││││  0x00007f8372d819c3:   jne    0x00007f8372d81e85           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││       │││                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
          ││       │││                   │││││  0x00007f8372d819c9:   incl   0x18(,%rdi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          ││       │││                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          ││       │││                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   3.04%  ││       │││                   ╰││││  0x00007f8372d819d0:   jmp    0x00007f8372d81827           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││       │││                    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.18%  ││       ↘││                    ││││  0x00007f8372d819d5:   cmp    %rcx,%rbp
          ││        ││                    ││││  0x00007f8372d819d8:   jne    0x00007f8372d81d7e           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
          ││        ││                    ││││  0x00007f8372d819de:   incl   0x1c(,%rdi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          ││        ││                    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   3.08%  ││        ││                    ╰│││  0x00007f8372d819e5:   jmp    0x00007f8372d81827           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.22%  ││        ↘│                     │││  0x00007f8372d819ea:   cmp    %rcx,%rax
          ││         │                     │││  0x00007f8372d819ed:   jne    0x00007f8372d81cad           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││         │                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   0.52%  ││         │                     │││  0x00007f8372d819f3:   incl   0x20(,%rdi,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          ││         │                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
          ││         │                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   2.50%  ││         │                     ╰││  0x00007f8372d819fa:   jmp    0x00007f8372d81827
          ││         ↘                      ││  0x00007f8372d819ff:   mov    $0x0,%rcx
          ││                                ╰│  0x00007f8372d81a06:   jmp    0x00007f8372d8184b
          │↘                                 │  0x00007f8372d81a0b:   mov    $0x0,%rcx
          │                                  ╰  0x00007f8372d81a12:   jmp    0x00007f8372d817ae           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
   0.00%  ↘                                     0x00007f8372d81a17:   mov    %r10,%rcx
                                                0x00007f8372d81a1a:   mov    0x20(%rsp),%r10d
   0.01%                                        0x00007f8372d81a1f:   nop
                                                0x00007f8372d81a20:   mov    0x24(%rsp),%r11d
   0.00%                                        0x00007f8372d81a25:   cmp    $0x9d80,%ebx
                                                0x00007f8372d81a2b:   jae    0x00007f8372d81bdd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
                                                0x00007f8372d81a31:   cmp    %ebx,%r11d
                                                0x00007f8372d81a34:   jbe    0x00007f8372d81dba           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                                                0x00007f8372d81a3a:   nopw   0x0(%rax,%rax,1)
                                                0x00007f8372d81a40:   cmp    %ebx,%r10d
                                                0x00007f8372d81a43:   jbe    0x00007f8372d81cd8           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                                                0x00007f8372d81a49:   mov    0x10(%rcx,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.90%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 993 
   0.37%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 993 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1018 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   1.05%  <...other 341 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 993 
   1.62%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1018 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%           libjvm.so  defaultStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.18%  <...other 77 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.97%      jvmci, level 4
   1.62%              kernel
   0.15%           libjvm.so
   0.08%        libc-2.31.so
   0.08%                    
   0.04%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 43.75% complete, ETA 00:17:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.116 ns/op
# Warmup Iteration   2: 3.058 ns/op
# Warmup Iteration   3: 3.078 ns/op
# Warmup Iteration   4: 3.076 ns/op
# Warmup Iteration   5: 3.075 ns/op
Iteration   1: 3.076 ns/op
Iteration   2: 3.061 ns/op
Iteration   3: 3.062 ns/op
Iteration   4: 3.062 ns/op
Iteration   5: 3.063 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  3.065 ±(99.9%) 0.024 ns/op [Average]
  (min, avg, max) = (3.061, 3.065, 3.076), stdev = 0.006
  CI (99.9%): [3.041, 3.089] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 223734 total address lines.
Perf output processed (skipped 60.494 seconds):
 Column 1: cycles (51097 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 987 

                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                  0x00007fdf3ed7da2e:   cmpl   $0x9d7e,0x20(%rsp)
                  0x00007fdf3ed7da36:   jb     0x00007fdf3ed7e0e5
                  0x00007fdf3ed7da3c:   nopl   0x0(%rax)
                  0x00007fdf3ed7da40:   cmpl   $0x9d7f,0x20(%rsp)
                  0x00007fdf3ed7da48:   jb     0x00007fdf3ed7e0e5           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                  0x00007fdf3ed7da4e:   mov    $0x1,%ebx
                  0x00007fdf3ed7da53:   nopw   0x0(%rax,%rax,1)
                  0x00007fdf3ed7da5c:   data16 data16 xchg %ax,%ax
   3.09%          0x00007fdf3ed7da60:   cmp    $0x9d7e,%ebx
                  0x00007fdf3ed7da66:   jae    0x00007fdf3ed7ddb7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   0.01%          0x00007fdf3ed7da6c:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.23%          0x00007fdf3ed7da71:   test   %edi,%edi
                  0x00007fdf3ed7da73:   je     0x00007fdf3ed7dd9f           ;   {no_reloc}
   1.81%          0x00007fdf3ed7da79:   mov    0x8(,%rdi,8),%ecx
  11.08%          0x00007fdf3ed7da80:   movabs $0x7fdec3000000,%r10
   0.00%          0x00007fdf3ed7da8a:   lea    (%r10,%rcx,1),%rcx           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 205)
   2.83%          0x00007fdf3ed7da8e:   movsbl 0x10(%rbx,%r8,8),%r10d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.14%          0x00007fdf3ed7da94:   cmp    $0x4,%r10d
          ╭       0x00007fdf3ed7da98:   jge    0x00007fdf3ed7dad4
   1.37%  │       0x00007fdf3ed7da9e:   cmp    $0x2,%r10d
          │╭      0x00007fdf3ed7daa2:   jge    0x00007fdf3ed7dac5
          ││      0x00007fdf3ed7daa8:   cmp    $0x0,%r10d
          ││      0x00007fdf3ed7daac:   je     0x00007fdf3ed7dbd8
   0.61%  ││      0x00007fdf3ed7dab2:   cmp    $0x1,%r10d
          ││      0x00007fdf3ed7dab6:   je     0x00007fdf3ed7dbf5
          ││      0x00007fdf3ed7dabc:   nopl   0x0(%rax)
          ││      0x00007fdf3ed7dac0:   jmp    0x00007fdf3ed7e465
          │↘      0x00007fdf3ed7dac5:   cmp    $0x2,%r10d
          │       0x00007fdf3ed7dac9:   je     0x00007fdf3ed7dc4a
   0.23%  │       0x00007fdf3ed7dacf:   jmp    0x00007fdf3ed7dc5f
   0.79%  ↘       0x00007fdf3ed7dad4:   cmp    $0x6,%r10d
            ╭     0x00007fdf3ed7dad8:   jge    0x00007fdf3ed7daed
            │     0x00007fdf3ed7dade:   cmp    $0x4,%r10d
            │     0x00007fdf3ed7dae2:   je     0x00007fdf3ed7dc0a
   0.64%    │     0x00007fdf3ed7dae8:   jmp    0x00007fdf3ed7dc35
   1.49%    ↘     0x00007fdf3ed7daed:   cmp    $0x6,%r10d
                  0x00007fdf3ed7daf1:   je     0x00007fdf3ed7dc1f
                  0x00007fdf3ed7daf7:   cmp    $0x7,%r10d
                  0x00007fdf3ed7dafb:   nopl   0x0(%rax,%rax,1)
                  0x00007fdf3ed7db00:   jne    0x00007fdf3ed7e465           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.77%          0x00007fdf3ed7db06:   cmp    %rcx,%rdx
                  0x00007fdf3ed7db09:   jne    0x00007fdf3ed7e2fb           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 205)
                  0x00007fdf3ed7db0f:   incl   0x28(,%rdi,8)                ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 313)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 205)
   4.42%          0x00007fdf3ed7db16:   mov    (%rsp),%r10
   0.05%          0x00007fdf3ed7db1a:   mov    0x14(%r10,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   2.11%          0x00007fdf3ed7db1f:   nop
   2.81%          0x00007fdf3ed7db20:   test   %ecx,%ecx
                  0x00007fdf3ed7db22:   je     0x00007fdf3ed7ddab
   2.15%          0x00007fdf3ed7db28:   mov    0x8(,%rcx,8),%edi
   9.40%          0x00007fdf3ed7db2f:   movabs $0x7fdec3000000,%r10
   0.72%          0x00007fdf3ed7db39:   lea    (%r10,%rdi,1),%rdi           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 205)
   3.85%          0x00007fdf3ed7db3d:   movsbl 0x11(%rbx,%r8,8),%r10d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.88%          0x00007fdf3ed7db43:   lea    0x2(%rbx),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   0.02%          0x00007fdf3ed7db47:   cmp    $0x4,%r10d
             ╭    0x00007fdf3ed7db4b:   jge    0x00007fdf3ed7db85
   0.03%     │    0x00007fdf3ed7db51:   cmp    $0x2,%r10d
             │╭   0x00007fdf3ed7db55:   jge    0x00007fdf3ed7db75
   0.39%     ││   0x00007fdf3ed7db5b:   cmp    $0x0,%r10d
   1.09%     ││   0x00007fdf3ed7db5f:   nop
             ││   0x00007fdf3ed7db60:   je     0x00007fdf3ed7dc75
             ││   0x00007fdf3ed7db66:   cmp    $0x1,%r10d
             ││   0x00007fdf3ed7db6a:   je     0x00007fdf3ed7dd48
             ││   0x00007fdf3ed7db70:   jmp    0x00007fdf3ed7e2b2
   0.96%     │↘   0x00007fdf3ed7db75:   cmp    $0x2,%r10d                   ;   {no_reloc}
             │    0x00007fdf3ed7db79:   je     0x00007fdf3ed7dc9f
             │    0x00007fdf3ed7db7f:   nop
             │    0x00007fdf3ed7db80:   jmp    0x00007fdf3ed7dd1f
   0.72%     ↘    0x00007fdf3ed7db85:   cmp    $0x6,%r10d
               ╭  0x00007fdf3ed7db89:   jge    0x00007fdf3ed7db9e
   0.84%       │  0x00007fdf3ed7db8f:   cmp    $0x4,%r10d
               │  0x00007fdf3ed7db93:   je     0x00007fdf3ed7dcc8
               │  0x00007fdf3ed7db99:   jmp    0x00007fdf3ed7dcf1
   1.44%       ↘  0x00007fdf3ed7db9e:   cmp    $0x6,%r10d
                  0x00007fdf3ed7dba2:   je     0x00007fdf3ed7dd71
                  0x00007fdf3ed7dba8:   cmp    $0x7,%r10d
                  0x00007fdf3ed7dbac:   jne    0x00007fdf3ed7e2b2           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
                  0x00007fdf3ed7dbb2:   cmp    %rdi,%rdx
                  0x00007fdf3ed7dbb5:   jne    0x00007fdf3ed7e451           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 205)
                  0x00007fdf3ed7dbbb:   incl   0x28(,%rcx,8)                ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 313)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 205)
....................................................................................................
  60.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 987 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
            0x00007fdf3ed7dc1f:   nop
            0x00007fdf3ed7dc20:   cmp    %rcx,%rax
            0x00007fdf3ed7dc23:   jne    0x00007fdf3ed7e43f           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
            0x00007fdf3ed7dc29:   incl   0x24(,%rdi,8)                ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
            0x00007fdf3ed7dc30:   jmp    0x00007fdf3ed7db16           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.88%    0x00007fdf3ed7dc35:   cmp    %rcx,%rbp
            0x00007fdf3ed7dc38:   jne    0x00007fdf3ed7e225           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
            0x00007fdf3ed7dc3e:   incl   0x20(,%rdi,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   4.38%    0x00007fdf3ed7dc45:   jmp    0x00007fdf3ed7db16           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
            0x00007fdf3ed7dc4a:   cmp    %rcx,%rsi
            0x00007fdf3ed7dc4d:   jne    0x00007fdf3ed7e10d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
            0x00007fdf3ed7dc53:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
            0x00007fdf3ed7dc5a:   jmp    0x00007fdf3ed7db16           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.39%    0x00007fdf3ed7dc5f:   nop
            0x00007fdf3ed7dc60:   cmp    %rcx,%r14
            0x00007fdf3ed7dc63:   jne    0x00007fdf3ed7e277           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
            0x00007fdf3ed7dc69:   incl   0x18(,%rdi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   3.93%    0x00007fdf3ed7dc70:   jmp    0x00007fdf3ed7db16
   0.01%    0x00007fdf3ed7dc75:   movabs $0x7fdec402bad0,%r10         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.45%    0x00007fdf3ed7dc7f:   nop
   1.15%    0x00007fdf3ed7dc80:   cmp    %rdi,%r10
            0x00007fdf3ed7dc83:   jne    0x00007fdf3ed7e39e           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
            0x00007fdf3ed7dc89:   incl   0xc(,%rcx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.81%    0x00007fdf3ed7dc90:   mov    %r11d,%ebx
            0x00007fdf3ed7dc93:   mov    %r10,%r11
   0.00%    0x00007fdf3ed7dc96:   mov    (%rsp),%r10
   0.26%    0x00007fdf3ed7dc9a:   jmp    0x00007fdf3ed7da60
   1.65%    0x00007fdf3ed7dc9f:   movabs $0x7fdec402bad0,%r10         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
            0x00007fdf3ed7dca9:   cmp    %rdi,%rsi
            0x00007fdf3ed7dcac:   jne    0x00007fdf3ed7e13e           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
            0x00007fdf3ed7dcb2:   incl   0x14(,%rcx,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   3.47%    0x00007fdf3ed7dcb9:   mov    %r11d,%ebx
            0x00007fdf3ed7dcbc:   mov    %r10,%r11
            0x00007fdf3ed7dcbf:   mov    (%rsp),%r10
   0.95%    0x00007fdf3ed7dcc3:   jmp    0x00007fdf3ed7da60
   0.67%    0x00007fdf3ed7dcc8:   movabs $0x7fdec402bad0,%r10         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
            0x00007fdf3ed7dcd2:   cmp    %rdi,%r13
            0x00007fdf3ed7dcd5:   jne    0x00007fdf3ed7e42d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   0.01%    0x00007fdf3ed7dcdb:   incl   0x1c(,%rcx,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   3.36%    0x00007fdf3ed7dce2:   mov    %r11d,%ebx
   0.00%    0x00007fdf3ed7dce5:   mov    %r10,%r11
   0.18%    0x00007fdf3ed7dce8:   mov    (%rsp),%r10
   0.51%    0x00007fdf3ed7dcec:   jmp    0x00007fdf3ed7da60
            0x00007fdf3ed7dcf1:   movabs $0x7fdec402bad0,%r10         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
            0x00007fdf3ed7dcfb:   nopl   0x0(%rax,%rax,1)
            0x00007fdf3ed7dd00:   cmp    %rdi,%rbp
            0x00007fdf3ed7dd03:   jne    0x00007fdf3ed7e3c5           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
            0x00007fdf3ed7dd09:   incl   0x20(,%rcx,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
            0x00007fdf3ed7dd10:   mov    %r11d,%ebx
            0x00007fdf3ed7dd13:   mov    %r10,%r11
....................................................................................................
  25.05%  <total for region 2>

....[Hottest Regions]...............................................................................
  60.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 987 
  25.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 987 
   6.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 987 
   4.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 987 
   0.98%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1012 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.08%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 987 
   2.34%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1012 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::flush 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%           libjvm.so  UTF8::next<unsigned short> 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.16%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.29%      jvmci, level 4
   2.34%              kernel
   0.15%           libjvm.so
   0.10%        libc-2.31.so
   0.08%                    
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%    perf-2136117.map
   0.00%              [vdso]
   0.00%          ld-2.31.so
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 50.00% complete, ETA 00:15:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.830 ns/op
# Warmup Iteration   2: 1.819 ns/op
# Warmup Iteration   3: 1.819 ns/op
# Warmup Iteration   4: 1.819 ns/op
# Warmup Iteration   5: 1.925 ns/op
Iteration   1: 1.851 ns/op
Iteration   2: 1.851 ns/op
Iteration   3: 1.852 ns/op
Iteration   4: 1.852 ns/op
Iteration   5: 1.852 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.852 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.851, 1.852, 1.852), stdev = 0.001
  CI (99.9%): [1.851, 1.852] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 229587 total address lines.
Perf output processed (skipped 60.854 seconds):
 Column 1: cycles (50635 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 3, compile id 979 

   0.00%      0x00007f60ded7deb8:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
              0x00007f60ded7debb:   cmp    %r9d,%r8d
              0x00007f60ded7debe:   ja     0x00007f60ded7dea0
              0x00007f60ded7dec0:   lea    -0x8(%r11),%r8d
          ╭   0x00007f60ded7dec4:   jmp    0x00007f60ded7dfd9
          │   0x00007f60ded7dec9:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f60ded7ded4:   data16 data16 xchg %ax,%ax
          │   0x00007f60ded7ded8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   0.35%  │↗  0x00007f60ded7dee0:   mov    0x10(%r10,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   1.26%  ││  0x00007f60ded7dee5:   mov    $0x1,%ebx                    ; ImmutableOopMap {rcx=NarrowOop r10=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   0.14%  ││  0x00007f60ded7deea:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f60ded7e0a6
   8.58%  ││  0x00007f60ded7def1:   mov    %ebx,0xc(,%rcx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.42%  ││  0x00007f60ded7def8:   mov    0x14(%r10,%r9,4),%edi
   0.84%  ││  0x00007f60ded7defd:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.13%  ││  0x00007f60ded7df01:   mov    $0x1,%edx                    ; ImmutableOopMap {rcx=Oop rdi=NarrowOop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.72%  ││  0x00007f60ded7df06:   add    0xc(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007f60ded7e0cd
   6.46%  ││  0x00007f60ded7df0d:   mov    %edx,0xc(,%rdi,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.90%  ││  0x00007f60ded7df14:   mov    0x18(%r10,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.19%  ││  0x00007f60ded7df19:   mov    %r9d,%ebx
   0.58%  ││  0x00007f60ded7df1c:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.60%  ││  0x00007f60ded7df1e:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   1.45%  ││  0x00007f60ded7df22:   mov    $0x1,%esi                    ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.11%  ││  0x00007f60ded7df27:   add    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007f60ded7e0f0
   8.67%  ││  0x00007f60ded7df2e:   mov    %esi,0xc(,%rcx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.66%  ││  0x00007f60ded7df35:   mov    0x1c(%r10,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
          ││                                                            ;   {no_reloc}
   1.44%  ││  0x00007f60ded7df3a:   lea    0x2(%r9),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.07%  ││  0x00007f60ded7df3e:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.39%  ││  0x00007f60ded7df42:   mov    $0x1,%edx                    ; ImmutableOopMap {rcx=Oop rbx=NarrowOop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.99%  ││  0x00007f60ded7df47:   add    0xc(,%rbx,8),%edx            ; implicit exception: dispatches to 0x00007f60ded7e113
   7.96%  ││  0x00007f60ded7df4e:   mov    %edx,0xc(,%rbx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.43%  ││  0x00007f60ded7df55:   mov    0x20(%r10,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.33%  ││  0x00007f60ded7df5a:   lea    0x3(%r9),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.67%  ││  0x00007f60ded7df5e:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.86%  ││  0x00007f60ded7df62:   mov    $0x1,%esi                    ; ImmutableOopMap {rcx=NarrowOop rbx=Oop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.78%  ││  0x00007f60ded7df67:   add    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007f60ded7e136
  10.84%  ││  0x00007f60ded7df6e:   mov    %esi,0xc(,%rcx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.94%  ││  0x00007f60ded7df75:   mov    0x24(%r10,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.55%  ││  0x00007f60ded7df7a:   lea    0x4(%r9),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.51%  ││  0x00007f60ded7df7e:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.27%  ││  0x00007f60ded7df82:   mov    $0x1,%edx                    ; ImmutableOopMap {rcx=Oop rbx=NarrowOop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.16%  ││  0x00007f60ded7df87:   add    0xc(,%rbx,8),%edx            ; implicit exception: dispatches to 0x00007f60ded7e159
   6.75%  ││  0x00007f60ded7df8e:   mov    %edx,0xc(,%rbx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.73%  ││  0x00007f60ded7df95:   mov    0x28(%r10,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.28%  ││  0x00007f60ded7df9a:   lea    0x5(%r9),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.73%  ││  0x00007f60ded7df9e:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.50%  ││  0x00007f60ded7dfa2:   mov    $0x1,%esi                    ; ImmutableOopMap {rcx=NarrowOop rbx=Oop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.08%  ││  0x00007f60ded7dfa7:   add    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007f60ded7e17c
   9.05%  ││  0x00007f60ded7dfae:   mov    %esi,0xc(,%rcx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.81%  ││  0x00007f60ded7dfb5:   mov    0x2c(%r10,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.36%  ││  0x00007f60ded7dfba:   lea    0x6(%r9),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.82%  ││  0x00007f60ded7dfbe:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.14%  ││  0x00007f60ded7dfc2:   mov    $0x1,%edx                    ; ImmutableOopMap {rcx=Oop rbx=NarrowOop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.23%  ││  0x00007f60ded7dfc7:   add    0xc(,%rbx,8),%edx            ; implicit exception: dispatches to 0x00007f60ded7e19f
   5.48%  ││  0x00007f60ded7dfce:   mov    %edx,0xc(,%rbx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.87%  ││  0x00007f60ded7dfd5:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.13%  ↘│  0x00007f60ded7dfd9:   nopl   0x0(%rax)
   0.82%   │  0x00007f60ded7dfe0:   cmp    %r9d,%r8d
           ╰  0x00007f60ded7dfe3:   jg     0x00007f60ded7dee0
              0x00007f60ded7dfe9:   jmp    0x00007f60ded7e020
              0x00007f60ded7dfee:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f60ded7dff9:   data16 data16 xchg %ax,%ax
              0x00007f60ded7dffd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
              0x00007f60ded7e000:   mov    0x10(%r10,%r9,4),%r8d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.00%      0x00007f60ded7e005:   mov    $0x1,%ecx                    ; ImmutableOopMap {r8=NarrowOop r10=Oop }
                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  98.05%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 3, compile id 979 
   0.39%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1002 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 3, compile id 979 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 3, compile id 979 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 3, compile id 979 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.91%  <...other 292 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 3, compile id 979 
   1.43%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1002 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _itoa_word 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.14%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.17%      jvmci, level 4
   1.43%              kernel
   0.16%           libjvm.so
   0.11%        libc-2.31.so
   0.08%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = BIMORPHIC)

# Run progress: 56.25% complete, ETA 00:13:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.070 ns/op
# Warmup Iteration   2: 1.965 ns/op
# Warmup Iteration   3: 1.965 ns/op
# Warmup Iteration   4: 1.965 ns/op
# Warmup Iteration   5: 1.965 ns/op
Iteration   1: 1.965 ns/op
Iteration   2: 1.965 ns/op
Iteration   3: 1.965 ns/op
Iteration   4: 1.965 ns/op
Iteration   5: 1.965 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.965 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.965, 1.965, 1.965), stdev = 0.001
  CI (99.9%): [1.964, 1.966] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 226417 total address lines.
Perf output processed (skipped 60.750 seconds):
 Column 1: cycles (51095 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 979 

                0x00007f992ad7fab3:   mov    %r11d,%ebx
                0x00007f992ad7fab6:   cmp    %r9d,%ecx
                0x00007f992ad7fab9:   jg     0x00007f992ad7fc30           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
                0x00007f992ad7fabf:   nop
                0x00007f992ad7fac0:   cmp    %r9d,%ecx
                0x00007f992ad7fac3:   jg     0x00007f992ad7fc10
                0x00007f992ad7fac9:   movabs $0x7f98b0084208,%r8          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
                0x00007f992ad7fad3:   movabs $0x7f98b0084000,%rbx         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
                0x00007f992ad7fadd:   data16 xchg %ax,%ax
   1.82%    ↗   0x00007f992ad7fae0:   cmp    %r9d,%ecx
            │   0x00007f992ad7fae3:   jle    0x00007f992ad7fba0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   2.81%    │   0x00007f992ad7fae9:   mov    0x14(%r10,%r9,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   4.76%    │   0x00007f992ad7faee:   test   %edi,%edi
            │   0x00007f992ad7faf0:   je     0x00007f992ad7fb78
   1.47%    │   0x00007f992ad7faf6:   mov    0x8(,%rdi,8),%edx
  34.56%    │   0x00007f992ad7fafd:   movabs $0x7f98af000000,%rsi
   2.04%    │   0x00007f992ad7fb07:   lea    (%rsi,%rdx,1),%rdx           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   5.14%    │   0x00007f992ad7fb0b:   mov    0x10(%r10,%r9,4),%esi        ; ImmutableOopMap {rsi=NarrowOop rdi=NarrowOop r10=Oop }
            │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   1.03%    │   0x00007f992ad7fb10:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f992ad7fd7a
   8.21%    │   0x00007f992ad7fb17:   lea    0x2(%r9),%ebp                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   1.84%    │   0x00007f992ad7fb1b:   nopl   0x0(%rax,%rax,1)
   4.36%    │   0x00007f992ad7fb20:   cmp    $0x1084000,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          ╭ │   0x00007f992ad7fb26:   jne    0x00007f992ad7fb48           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │   0x00007f992ad7fb2c:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │   0x00007f992ad7fb33:   cmp    %rdx,%rbx
          │╭│   0x00007f992ad7fb36:   jne    0x00007f992ad7fb60           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.45%  │││↗  0x00007f992ad7fb3c:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  12.24%  ││││  0x00007f992ad7fb43:   mov    %ebp,%r9d
   1.22%  ││╰│  0x00007f992ad7fb46:   jmp    0x00007f992ad7fae0
   2.01%  ↘│ │  0x00007f992ad7fb48:   cmp    $0x1084208,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
           │ │  0x00007f992ad7fb4e:   jne    0x00007f992ad7fced           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.59%   │ │  0x00007f992ad7fb54:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   9.61%   │ │  0x00007f992ad7fb5b:   cmp    %rdx,%rbx
           │ ╰  0x00007f992ad7fb5e:   je     0x00007f992ad7fb3c
           ↘    0x00007f992ad7fb60:   cmp    %rdx,%r8
                0x00007f992ad7fb63:   jne    0x00007f992ad7fc95           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                0x00007f992ad7fb69:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                0x00007f992ad7fb70:   mov    %ebp,%r9d
....................................................................................................
  96.15%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 979 
   1.33%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 979 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 979 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1007 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   1.55%  <...other 405 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 979 
   3.36%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1007 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  _IO_fflush 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.17%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.30%       jvmci, level 4
   3.36%               kernel
   0.12%         libc-2.31.so
   0.10%            libjvm.so
   0.05%  libjvmcicompiler.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 62.50% complete, ETA 00:11:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.079 ns/op
# Warmup Iteration   2: 2.053 ns/op
# Warmup Iteration   3: 2.053 ns/op
# Warmup Iteration   4: 2.053 ns/op
# Warmup Iteration   5: 2.052 ns/op
Iteration   1: 2.053 ns/op
Iteration   2: 2.054 ns/op
Iteration   3: 2.053 ns/op
Iteration   4: 2.053 ns/op
Iteration   5: 1.932 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.029 ±(99.9%) 0.208 ns/op [Average]
  (min, avg, max) = (1.932, 2.029, 2.054), stdev = 0.054
  CI (99.9%): [1.821, 2.236] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 230801 total address lines.
Perf output processed (skipped 60.941 seconds):
 Column 1: cycles (50756 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1004 

                      0x00007f8c56d81bbd:   shl    %rbx
                      0x00007f8c56d81bc0:   add    %rbx,%r8
                      0x00007f8c56d81bc3:   mov    %r11d,%ebx
                      0x00007f8c56d81bc6:   cmp    %r9d,%ecx
                      0x00007f8c56d81bc9:   jg     0x00007f8c56d81d6e
                      0x00007f8c56d81bcf:   cmp    %r9d,%ecx
                      0x00007f8c56d81bd2:   jg     0x00007f8c56d81d4e           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
                      0x00007f8c56d81bd8:   mov    %r9d,%r8d
                      0x00007f8c56d81bdb:   nopl   0x0(%rax,%rax,1)
   2.51%       ↗↗ ↗   0x00007f8c56d81be0:   cmp    %r8d,%ecx
          ╭    ││ │   0x00007f8c56d81be3:   jle    0x00007f8c56d81cc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   2.32%  │    ││ │   0x00007f8c56d81be9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
          │    ││ │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │    ││ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   1.55%  │    ││ │   0x00007f8c56d81bee:   mov    0x8(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f8c56d81eb0
  16.88%  │    ││ │   0x00007f8c56d81bf6:   data16 nopw 0x0(%rax,%rax,1)
   2.29%  │    ││ │   0x00007f8c56d81c00:   cmp    $0x1084000,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │╭   ││ │   0x00007f8c56d81c06:   je     0x00007f8c56d81c72
   2.63%  ││   ││ │   0x00007f8c56d81c0c:   cmp    $0x102bd58,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          ││╭  ││ │   0x00007f8c56d81c12:   jne    0x00007f8c56d81c99           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││  ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.84%  │││  ││ │   0x00007f8c56d81c18:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │││  ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │││  ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   5.30%  │││  ││↗│↗  0x00007f8c56d81c20:   mov    0x14(%r10,%r8,4),%r9d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   2.89%  │││  │││││  0x00007f8c56d81c25:   mov    %r8d,%ebx
   1.95%  │││  │││││  0x00007f8c56d81c28:   inc    %ebx                         ; ImmutableOopMap {r9=NarrowOop r10=Oop }
          │││  │││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││  │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   2.95%  │││  │││││  0x00007f8c56d81c2a:   mov    0x8(,%r9,8),%edi             ; implicit exception: dispatches to 0x00007f8c56d81ed3
  18.53%  │││  │││││  0x00007f8c56d81c32:   lea    0x2(%r8),%r8d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   1.60%  │││  │││││  0x00007f8c56d81c36:   data16 nopw 0x0(%rax,%rax,1)
   1.61%  │││  │││││  0x00007f8c56d81c40:   cmp    $0x1084000,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │││╭ │││││  0x00007f8c56d81c46:   je     0x00007f8c56d81c65
   2.60%  ││││ │││││  0x00007f8c56d81c4c:   cmp    $0x102bd58,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          ││││╭│││││  0x00007f8c56d81c52:   jne    0x00007f8c56d81c7c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.05%  ││││││││││  0x00007f8c56d81c58:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   6.98%  │││││╰││││  0x00007f8c56d81c60:   jmp    0x00007f8c56d81be0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.09%  │││↘│ ││││  0x00007f8c56d81c65:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │││ │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   7.10%  │││ │ ╰│││  0x00007f8c56d81c6d:   jmp    0x00007f8c56d81be0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.01%  │↘│ │  │││  0x00007f8c56d81c72:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │ │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   3.25%  │ │ │  ╰││  0x00007f8c56d81c7a:   jmp    0x00007f8c56d81c20
   0.73%  │ │ ↘   ││  0x00007f8c56d81c7c:   nopl   0x0(%rax)
   0.34%  │ │     ││  0x00007f8c56d81c80:   cmp    $0x102bb50,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │ │     ││  0x00007f8c56d81c86:   jne    0x00007f8c56d81da3           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.19%  │ │     ││  0x00007f8c56d81c8c:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.96%  │ │     ╰│  0x00007f8c56d81c94:   jmp    0x00007f8c56d81be0
   0.53%  │ ↘      │  0x00007f8c56d81c99:   nopl   0x0(%rax)
   0.77%  │        │  0x00007f8c56d81ca0:   cmp    $0x102bb50,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │        │  0x00007f8c56d81ca6:   jne    0x00007f8c56d81e20           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.22%  │        │  0x00007f8c56d81cac:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.84%  │        ╰  0x00007f8c56d81cb4:   jmp    0x00007f8c56d81c20
          │           0x00007f8c56d81cb9:   nopl   0x0(%rax)
          ↘           0x00007f8c56d81cc0:   cmp    %r8d,%r11d
                      0x00007f8c56d81cc3:   jbe    0x00007f8c56d81d2b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
                      0x00007f8c56d81cc9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
                                                                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
                      0x00007f8c56d81cce:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f8c56d81ef6
....................................................................................................
  97.50%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.50%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1004 
   0.65%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1030 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1004 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1004 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1004 
   0.02%              kernel  [unknown] 
   1.13%  <...other 351 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1004 
   2.04%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1030 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  syscall 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.12%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.65%      jvmci, level 4
   2.04%              kernel
   0.11%           libjvm.so
   0.09%        libc-2.31.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 68.75% complete, ETA 00:09:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.001 ns/op
# Warmup Iteration   2: 2.020 ns/op
# Warmup Iteration   3: 2.020 ns/op
# Warmup Iteration   4: 2.021 ns/op
# Warmup Iteration   5: 2.020 ns/op
Iteration   1: 2.020 ns/op
Iteration   2: 2.021 ns/op
Iteration   3: 2.020 ns/op
Iteration   4: 2.020 ns/op
Iteration   5: 1.982 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.013 ±(99.9%) 0.066 ns/op [Average]
  (min, avg, max) = (1.982, 2.013, 2.021), stdev = 0.017
  CI (99.9%): [1.947, 2.079] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 228368 total address lines.
Perf output processed (skipped 60.886 seconds):
 Column 1: cycles (50415 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 997 

                      0x00007f3092d817e3:   mov    %edi,%r9d
                      0x00007f3092d817e6:   jmp    0x00007f3092d81750
                      0x00007f3092d817eb:   mov    %r9d,%r8d
                      0x00007f3092d817ee:   lea    -0x2(%r11),%ecx
                      0x00007f3092d817f2:   mov    %ecx,%ebx
                      0x00007f3092d817f4:   sub    %r9d,%ebx
                      0x00007f3092d817f7:   inc    %ebx
                      0x00007f3092d817f9:   shr    %ebx
                      0x00007f3092d817fb:   mov    %ebx,%ebx
                      0x00007f3092d817fd:   dec    %rbx
   0.00%              0x00007f3092d81800:   shl    %rbx
                      0x00007f3092d81803:   add    %rbx,%r8
                      0x00007f3092d81806:   mov    %r11d,%ebx
                      0x00007f3092d81809:   cmp    %r9d,%ecx
                      0x00007f3092d8180c:   jg     0x00007f3092d81a0e
   0.00%              0x00007f3092d81812:   cmp    %r9d,%ecx
                      0x00007f3092d81815:   jg     0x00007f3092d819ee           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
                      0x00007f3092d8181b:   mov    %r9d,%r8d
                      0x00007f3092d8181e:   xchg   %ax,%ax
   2.53%       ↗  ↗↗  0x00007f3092d81820:   cmp    %r8d,%ecx
               │  ││  0x00007f3092d81823:   jle    0x00007f3092d81940           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   1.90%       │  ││  0x00007f3092d81829:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
               │  ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
               │  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   2.27%       │  ││  0x00007f3092d8182e:   mov    0x8(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f3092d81b50
  15.30%       │  ││  0x00007f3092d81836:   data16 nopw 0x0(%rax,%rax,1)
   2.12%       │  ││  0x00007f3092d81840:   cmp    $0x102bb50,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          ╭    │  ││  0x00007f3092d81846:   je     0x00007f3092d818c5
   2.99%  │    │  ││  0x00007f3092d8184c:   cmp    $0x102bd58,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          │╭   │  ││  0x00007f3092d81852:   je     0x00007f3092d818cf
   1.92%  ││   │  ││  0x00007f3092d81858:   nopl   0x0(%rax,%rax,1)
   0.68%  ││   │  ││  0x00007f3092d81860:   cmp    $0x1084000,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          ││   │  ││  0x00007f3092d81866:   jne    0x00007f3092d8190c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          ││   │  ││  0x00007f3092d8186c:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.20%  ││   │↗↗││  0x00007f3092d81874:   mov    0x14(%r10,%r8,4),%r9d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   4.42%  ││   │││││  0x00007f3092d81879:   mov    %r8d,%ebx
   1.30%  ││   │││││  0x00007f3092d8187c:   inc    %ebx                         ; ImmutableOopMap {r9=NarrowOop r10=Oop }
          ││   │││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││   │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   4.04%  ││   │││││  0x00007f3092d8187e:   mov    0x8(,%r9,8),%edi             ; implicit exception: dispatches to 0x00007f3092d81b73
  15.41%  ││   │││││  0x00007f3092d81886:   lea    0x2(%r8),%r8d
   2.62%  ││   │││││  0x00007f3092d8188a:   cmp    $0x102bb50,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          ││╭  │││││  0x00007f3092d81890:   je     0x00007f3092d818d9
   1.00%  │││  │││││  0x00007f3092d81896:   data16 nopw 0x0(%rax,%rax,1)
   1.85%  │││  │││││  0x00007f3092d818a0:   cmp    $0x102bd58,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          │││╭ │││││  0x00007f3092d818a6:   je     0x00007f3092d818e6
   0.78%  ││││ │││││  0x00007f3092d818ac:   cmp    $0x1084000,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          ││││╭│││││  0x00007f3092d818b2:   jne    0x00007f3092d818f3           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.82%  ││││││││││  0x00007f3092d818b8:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   8.21%  │││││╰││││  0x00007f3092d818c0:   jmp    0x00007f3092d81820           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          ↘││││ ││││  0x00007f3092d818c5:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           ││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           ││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
           ││││ ╰│││  0x00007f3092d818cd:   jmp    0x00007f3092d81874           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.57%   ↘│││  │││  0x00007f3092d818cf:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
            │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
            │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   9.21%    │││  ╰││  0x00007f3092d818d7:   jmp    0x00007f3092d81874           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
            │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.58%    ↘││   ││  0x00007f3092d818d9:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
             ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
             ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   6.87%     ││   ╰│  0x00007f3092d818e1:   jmp    0x00007f3092d81820           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
             ↘│    │  0x00007f3092d818e6:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
              │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
              │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
              │    ╰  0x00007f3092d818ee:   jmp    0x00007f3092d81820
              ↘       0x00007f3092d818f3:   cmp    $0x1084208,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
                      0x00007f3092d818f9:   jne    0x00007f3092d81a43           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
....................................................................................................
  90.60%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 997 
   7.87%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 997 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 997 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 997 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1024 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 997 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1024 
   0.84%  <...other 266 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 997 
   1.06%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1024 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  os::write 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%           libjvm.so  CompileLog::identify 
   0.12%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.60%      jvmci, level 4
   1.06%              kernel
   0.13%           libjvm.so
   0.08%                    
   0.07%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 75.00% complete, ETA 00:07:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.285 ns/op
# Warmup Iteration   2: 3.237 ns/op
# Warmup Iteration   3: 3.217 ns/op
# Warmup Iteration   4: 3.265 ns/op
# Warmup Iteration   5: 3.243 ns/op
Iteration   1: 3.237 ns/op
Iteration   2: 3.222 ns/op
Iteration   3: 3.220 ns/op
Iteration   4: 3.242 ns/op
Iteration   5: 3.215 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  3.227 ±(99.9%) 0.045 ns/op [Average]
  (min, avg, max) = (3.215, 3.227, 3.242), stdev = 0.012
  CI (99.9%): [3.183, 3.272] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 231143 total address lines.
Perf output processed (skipped 60.972 seconds):
 Column 1: cycles (51030 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 996 

                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                                0x00007f1c9ed7e72c:   mov    %ecx,%r11d
                                0x00007f1c9ed7e72f:   jmp    0x00007f1c9ed7e660
                                0x00007f1c9ed7e734:   mov    %r11d,%esi
                                0x00007f1c9ed7e737:   mov    0x14(%rsp),%r11d
                                0x00007f1c9ed7e73c:   lea    -0x2(%r11),%r10d
                                0x00007f1c9ed7e740:   mov    %r10d,0x10(%rsp)
                                0x00007f1c9ed7e745:   mov    (%rsp),%r8
                                0x00007f1c9ed7e749:   mov    %esi,%r11d
                                0x00007f1c9ed7e74c:   nopl   0x0(%rax)
   2.58%             ↗ ↗ ↗↗  ↗  0x00007f1c9ed7e750:   cmp    %r11d,%r10d
          ╭          │ │ ││  │  0x00007f1c9ed7e753:   jle    0x00007f1c9ed7e91d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │          │ │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   1.04%  │          │ │ ││  │  0x00007f1c9ed7e759:   mov    0x10(%r8,%r11,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │          │ │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   1.22%  │          │ │ ││  │  0x00007f1c9ed7e75e:   xchg   %ax,%ax
   0.85%  │          │ │ ││  │  0x00007f1c9ed7e760:   test   %esi,%esi
          │╭         │ │ ││  │  0x00007f1c9ed7e762:   je     0x00007f1c9ed7e7ac
   2.73%  ││         │ │ ││  │  0x00007f1c9ed7e768:   mov    0x8(,%rsi,8),%ecx
   8.95%  ││         │ │ ││  │  0x00007f1c9ed7e76f:   cmp    $0x102bd58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          ││╭        │ │ ││  │  0x00007f1c9ed7e775:   je     0x00007f1c9ed7e885
   1.95%  │││        │ │ ││  │  0x00007f1c9ed7e77b:   nopl   0x0(%rax,%rax,1)
   0.53%  │││        │ │ ││  │  0x00007f1c9ed7e780:   cmp    $0x102bb50,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │││╭       │ │ ││  │  0x00007f1c9ed7e786:   je     0x00007f1c9ed7e8ab
   1.15%  ││││       │ │ ││  │  0x00007f1c9ed7e78c:   cmp    $0x1084000,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          ││││╭      │ │ ││  │  0x00007f1c9ed7e792:   je     0x00007f1c9ed7e8e8
   1.09%  │││││      │ │ ││  │  0x00007f1c9ed7e798:   nopl   0x0(%rax,%rax,1)
   0.52%  │││││      │ │ ││  │  0x00007f1c9ed7e7a0:   cmp    $0x1084410,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
          │││││╭     │ │ ││  │  0x00007f1c9ed7e7a6:   je     0x00007f1c9ed7e8f7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │ │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.17%  │↘││││     │ │ ││  │  0x00007f1c9ed7e7ac:   mov    %r11d,0xc(%rsp)              ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ ││││     │ │ ││  │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   0.34%  │ ││││     │ │ ││  │  0x00007f1c9ed7e7b1:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
          │ ││││     │ │ ││  │                                                            ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
   0.90%  │ ││││     │ │ ││  │  0x00007f1c9ed7e7b8:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││││     │ │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.13%  │ ││││     │ │ ││  │  0x00007f1c9ed7e7bc:   nop
   0.30%  │ ││││     │ │ ││  │  0x00007f1c9ed7e7bd:   movabs $0x7f1c24084208,%rax
   0.20%  │ ││││     │ │ ││  │  0x00007f1c9ed7e7c7:   call   0x00007f1c9ed7d480           ; ImmutableOopMap {[0]=Oop }
          │ ││││     │ │ ││  │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││││     │ │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ ││││     │ │ ││  │                                                            ;   {virtual_call}
   0.34%  │ ││││     │ │ ││  │  0x00007f1c9ed7e7cc:   nopl   0x40003bc(%rax,%rax,1)       ;   {other}
   0.47%  │ ││││     │ │ ││  │  0x00007f1c9ed7e7d4:   mov    0xc(%rsp),%r11d
   0.49%  │ ││││     │ │ ││  │  0x00007f1c9ed7e7d9:   mov    (%rsp),%r10
   0.72%  │ ││││     │↗│↗││↗↗│  0x00007f1c9ed7e7dd:   mov    0x14(%r10,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││││     │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   2.21%  │ ││││     │││││││││  0x00007f1c9ed7e7e2:   lea    0x2(%r11),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││││     │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   2.26%  │ ││││     │││││││││  0x00007f1c9ed7e7e6:   test   %esi,%esi
          │ ││││╭    │││││││││  0x00007f1c9ed7e7e8:   je     0x00007f1c9ed7e83a
   1.86%  │ │││││    │││││││││  0x00007f1c9ed7e7ee:   mov    0x8(,%rsi,8),%r9d
  10.28%  │ │││││    │││││││││  0x00007f1c9ed7e7f6:   data16 nopw 0x0(%rax,%rax,1)
   0.77%  │ │││││    │││││││││  0x00007f1c9ed7e800:   cmp    $0x102bd58,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          │ │││││╭   │││││││││  0x00007f1c9ed7e807:   je     0x00007f1c9ed7e894
   2.71%  │ ││││││   │││││││││  0x00007f1c9ed7e80d:   cmp    $0x102bb50,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │ ││││││╭  │││││││││  0x00007f1c9ed7e814:   je     0x00007f1c9ed7e8ba
   1.33%  │ │││││││  │││││││││  0x00007f1c9ed7e81a:   nopw   0x0(%rax,%rax,1)
   0.35%  │ │││││││  │││││││││  0x00007f1c9ed7e820:   cmp    $0x1084000,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │ │││││││╭ │││││││││  0x00007f1c9ed7e827:   je     0x00007f1c9ed7e8d1
   1.20%  │ ││││││││ │││││││││  0x00007f1c9ed7e82d:   cmp    $0x1084410,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
          │ ││││││││╭│││││││││  0x00007f1c9ed7e834:   je     0x00007f1c9ed7e906           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.58%  │ ││││↘│││││││││││││  0x00007f1c9ed7e83a:   mov    %r8d,0xc(%rsp)
   0.28%  │ ││││ │││││││││││││  0x00007f1c9ed7e83f:   inc    %r11d                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ ││││ │││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   0.23%  │ ││││ │││││││││││││  0x00007f1c9ed7e842:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
          │ ││││ │││││││││││││                                                            ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
   0.72%  │ ││││ │││││││││││││  0x00007f1c9ed7e849:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.27%  │ ││││ │││││││││││││  0x00007f1c9ed7e84d:   mov    %r11d,0x8(%rsp)
   0.19%  │ ││││ │││││││││││││  0x00007f1c9ed7e852:   data16 xchg %ax,%ax
   0.08%  │ ││││ │││││││││││││  0x00007f1c9ed7e855:   nop
   0.62%  │ ││││ │││││││││││││  0x00007f1c9ed7e856:   data16 xchg %ax,%ax
   0.27%  │ ││││ │││││││││││││  0x00007f1c9ed7e859:   movabs $0x7f1c24084208,%rax
   0.24%  │ ││││ │││││││││││││  0x00007f1c9ed7e863:   call   0x00007f1c9ed7d480           ; ImmutableOopMap {[0]=Oop }
          │ ││││ │││││││││││││                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ ││││ │││││││││││││                                                            ;   {virtual_call}
   0.32%  │ ││││ │││││││││││││  0x00007f1c9ed7e868:   nopl   0x6000458(%rax,%rax,1)       ;   {other}
   0.18%  │ ││││ │││││││││││││  0x00007f1c9ed7e870:   mov    0xc(%rsp),%r11d
   0.76%  │ ││││ │││││││││││││  0x00007f1c9ed7e875:   mov    0x10(%rsp),%r10d
   0.21%  │ ││││ │││││││││││││  0x00007f1c9ed7e87a:   mov    (%rsp),%r8
   0.18%  │ ││││ │││││││││││││  0x00007f1c9ed7e87e:   xchg   %ax,%ax
   0.52%  │ ││││ ││││╰││││││││  0x00007f1c9ed7e880:   jmp    0x00007f1c9ed7e750           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ ││││ ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.39%  │ ↘│││ ││││ ││││││││  0x00007f1c9ed7e885:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │  │││ ││││ ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │  │││ ││││ ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   3.06%  │  │││ ││││ ││││││││  0x00007f1c9ed7e88c:   mov    %r8,%r10
   0.17%  │  │││ ││││ ╰│││││││  0x00007f1c9ed7e88f:   jmp    0x00007f1c9ed7e7dd           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │││ ││││  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.55%  │  │││ ↘│││  │││││││  0x00007f1c9ed7e894:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │  │││  │││  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │  │││  │││  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.84%  │  │││  │││  │││││││  0x00007f1c9ed7e89b:   mov    %r8d,%r11d
   0.34%  │  │││  │││  │││││││  0x00007f1c9ed7e89e:   mov    %r10,%r8
   0.37%  │  │││  │││  │││││││  0x00007f1c9ed7e8a1:   mov    0x10(%rsp),%r10d
   0.04%  │  │││  │││  ╰││││││  0x00007f1c9ed7e8a6:   jmp    0x00007f1c9ed7e750           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │││  │││   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.87%  │  ↘││  │││   ││││││  0x00007f1c9ed7e8ab:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │││   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │   ││  │││   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.18%  │   ││  │││   ││││││  0x00007f1c9ed7e8b2:   mov    %r8,%r10
   0.61%  │   ││  │││   ╰│││││  0x00007f1c9ed7e8b5:   jmp    0x00007f1c9ed7e7dd           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │││    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.29%  │   ││  ↘││    │││││  0x00007f1c9ed7e8ba:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │   ││   ││    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │   ││   ││    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.98%  │   ││   ││    │││││  0x00007f1c9ed7e8c1:   mov    %r8d,%r11d
   0.24%  │   ││   ││    │││││  0x00007f1c9ed7e8c4:   mov    %r10,%r8
   0.08%  │   ││   ││    │││││  0x00007f1c9ed7e8c7:   mov    0x10(%rsp),%r10d
   0.07%  │   ││   ││    ╰││││  0x00007f1c9ed7e8cc:   jmp    0x00007f1c9ed7e750           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   ││   ││     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.44%  │   ││   ↘│     ││││  0x00007f1c9ed7e8d1:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │   ││    │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │   ││    │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.37%  │   ││    │     ││││  0x00007f1c9ed7e8d8:   mov    %r8d,%r11d
   0.20%  │   ││    │     ││││  0x00007f1c9ed7e8db:   mov    %r10,%r8
   0.49%  │   ││    │     ││││  0x00007f1c9ed7e8de:   mov    0x10(%rsp),%r10d
   0.20%  │   ││    │     ╰│││  0x00007f1c9ed7e8e3:   jmp    0x00007f1c9ed7e750           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   ││    │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.50%  │   ↘│    │      │││  0x00007f1c9ed7e8e8:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │    │    │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │    │    │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.65%  │    │    │      │││  0x00007f1c9ed7e8ef:   mov    %r8,%r10
   0.26%  │    │    │      ╰││  0x00007f1c9ed7e8f2:   jmp    0x00007f1c9ed7e7dd           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │    │    │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.49%  │    ↘    │       ││  0x00007f1c9ed7e8f7:   incl   0x1c(,%rsi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │         │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          │         │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.30%  │         │       ││  0x00007f1c9ed7e8fe:   mov    %r8,%r10
   0.41%  │         │       ╰│  0x00007f1c9ed7e901:   jmp    0x00007f1c9ed7e7dd           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │         │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.15%  │         ↘        │  0x00007f1c9ed7e906:   incl   0x1c(,%rsi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   5.78%  │                  │  0x00007f1c9ed7e90d:   mov    %r8d,%r11d
   0.09%  │                  │  0x00007f1c9ed7e910:   mov    %r10,%r8
   0.11%  │                  │  0x00007f1c9ed7e913:   mov    0x10(%rsp),%r10d
   0.05%  │                  ╰  0x00007f1c9ed7e918:   jmp    0x00007f1c9ed7e750
          ↘                     0x00007f1c9ed7e91d:   mov    %r11d,%r10d
                                0x00007f1c9ed7e920:   mov    0x14(%rsp),%r11d
                                0x00007f1c9ed7e925:   data16 data16 nopw 0x0(%rax,%rax,1)
                                0x00007f1c9ed7e930:   cmp    %r10d,%r11d
                                0x00007f1c9ed7e933:   jbe    0x00007f1c9ed7ea07           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
                                0x00007f1c9ed7e939:   mov    0x10(%r8,%r10,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.00%                        0x00007f1c9ed7e93e:   mov    %r10d,%r9d
                                0x00007f1c9ed7e941:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  84.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 991 

               scopes pcs     [0x00007f1c9ed7d530,0x00007f1c9ed7d570] = 64
               dependencies   [0x00007f1c9ed7d570,0x00007f1c9ed7d578] = 8
               JVMCI data     [0x00007f1c9ed7d578,0x00007f1c9ed7d590] = 24
              [Disassembly]
              --------------------------------------------------------------------------------
              [Constant Pool (empty)]
              --------------------------------------------------------------------------------
              [Entry Point]
                # {method} {0x00007f1c184e6738} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;
                #           [sp+0x20]  (sp of caller)
   1.47%        0x00007f1c9ed7d480:   mov    0x8(%rsi),%r10d
   0.63%        0x00007f1c9ed7d484:   movabs $0x7f1c23000000,%r12
   0.38%        0x00007f1c9ed7d48e:   add    %r12,%r10
   0.53%        0x00007f1c9ed7d491:   xor    %r12,%r12
   0.74%        0x00007f1c9ed7d494:   cmp    %r10,%rax
                0x00007f1c9ed7d497:   jne    0x00007f1c9e764080           ;   {runtime_call ic_miss_stub}
   0.59%        0x00007f1c9ed7d49d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.45%        0x00007f1c9ed7d4a0:   mov    %eax,-0x14000(%rsp)
   1.38%        0x00007f1c9ed7d4a7:   sub    $0x18,%rsp
   0.54%        0x00007f1c9ed7d4ab:   nop
   0.39%        0x00007f1c9ed7d4ac:   cmpl   $0x0,0x20(%r15)
   0.61%  ╭     0x00007f1c9ed7d4b4:   jne    0x00007f1c9ed7d4d7
   0.80%  │ ↗   0x00007f1c9ed7d4ba:   mov    $0x1,%eax
   0.57%  │ │   0x00007f1c9ed7d4bf:   add    0x18(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 289)
   1.17%  │ │   0x00007f1c9ed7d4c2:   mov    %eax,0x18(%rsi)              ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
   0.78%  │ │   0x00007f1c9ed7d4c5:   add    $0x18,%rsp
   0.68%  │ │↗  0x00007f1c9ed7d4c9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f1c9ed7d4d0:   ja     0x00007f1c9ed7d4e4
   0.52%  ││││  0x00007f1c9ed7d4d6:   ret    
          ↘│││  0x00007f1c9ed7d4d7:   mov    %rbp,0x10(%rsp)
           │││  0x00007f1c9ed7d4dc:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f1c9ed7d4e1:   jmp    0x00007f1c9ed7d4ba
           │ │  0x00007f1c9ed7d4e3:   hlt    
           ↘ ╰  0x00007f1c9ed7d4e4:   lea    -0x22(%rip),%rcx        # 0x00007f1c9ed7d4c9
                0x00007f1c9ed7d4eb:   mov    %rcx,0x468(%r15)
                0x00007f1c9ed7d4f2:   jmp    0x00007f1c9e76b000           ;   {runtime_call SafepointBlob}
                0x00007f1c9ed7d4f7:   hlt    
              [Exception Handler]
                0x00007f1c9ed7d4f8:   call   0x00007f1c9e8e9300           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  12.24%  <total for region 2>

....[Hottest Regions]...............................................................................
  84.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 996 
  12.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 991 
   1.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1025 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 996 
   1.24%  <...other 376 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  84.87%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 996 
  12.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 991 
   2.45%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1025 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  os::current_thread_id 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.18%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.15%      jvmci, level 4
   2.45%              kernel
   0.15%           libjvm.so
   0.10%        libc-2.31.so
   0.08%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%         interpreter
   0.00%    perf-2136445.map
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 81.25% complete, ETA 00:05:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.985 ns/op
# Warmup Iteration   2: 10.930 ns/op
# Warmup Iteration   3: 10.950 ns/op
# Warmup Iteration   4: 10.937 ns/op
# Warmup Iteration   5: 10.920 ns/op
Iteration   1: 10.955 ns/op
Iteration   2: 10.930 ns/op
Iteration   3: 10.915 ns/op
Iteration   4: 10.922 ns/op
Iteration   5: 10.886 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  10.922 ±(99.9%) 0.097 ns/op [Average]
  (min, avg, max) = (10.886, 10.922, 10.955), stdev = 0.025
  CI (99.9%): [10.825, 11.018] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 225507 total address lines.
Perf output processed (skipped 60.793 seconds):
 Column 1: cycles (50799 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1001 

                        0x00007f6d5ed7e3c0:   mov    %eax,-0x14000(%rsp)
                        0x00007f6d5ed7e3c7:   sub    $0x28,%rsp
                        0x00007f6d5ed7e3cb:   nop
                        0x00007f6d5ed7e3cc:   cmpl   $0x0,0x20(%r15)
          ╭             0x00007f6d5ed7e3d4:   jne    0x00007f6d5ed7e4fc
          │             0x00007f6d5ed7e3da:   mov    %rbp,0x20(%rsp)
          │             0x00007f6d5ed7e3df:   mov    0x10(%rsi),%ebx              ; ImmutableOopMap {rbx=NarrowOop rsi=Oop }
          │                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@0 (line 166)
          │             0x00007f6d5ed7e3e2:   mov    0xc(,%rbx,8),%r10d           ; implicit exception: dispatches to 0x00007f6d5ed7e520
   0.00%  │             0x00007f6d5ed7e3ea:   mov    %r10d,0x14(%rsp)
          │             0x00007f6d5ed7e3ef:   shl    $0x3,%rbx                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
          │             0x00007f6d5ed7e3f3:   mov    %rbx,(%rsp)
          │             0x00007f6d5ed7e3f7:   mov    $0x0,%r11d
          │             0x00007f6d5ed7e3fd:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   0.01%  │      ↗↗↗↗↗  0x00007f6d5ed7e400:   cmp    %r11d,%r10d
          │╭     │││││  0x00007f6d5ed7e403:   jbe    0x00007f6d5ed7e4e5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   1.20%  ││     │││││  0x00007f6d5ed7e409:   mov    0x10(%rbx,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   6.03%  ││     │││││  0x00007f6d5ed7e40e:   mov    %r11d,%r8d
   0.57%  ││     │││││  0x00007f6d5ed7e411:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.01%  ││     │││││  0x00007f6d5ed7e414:   test   %esi,%esi
          ││╭    │││││  0x00007f6d5ed7e416:   je     0x00007f6d5ed7e458
   1.13%  │││    │││││  0x00007f6d5ed7e41c:   mov    0x8(,%rsi,8),%eax
  14.33%  │││    │││││  0x00007f6d5ed7e423:   cmp    $0x1084000,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │││╭   │││││  0x00007f6d5ed7e429:   je     0x00007f6d5ed7e4a9
   2.04%  ││││   │││││  0x00007f6d5ed7e42f:   cmp    $0x102bd58,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          ││││╭  │││││  0x00007f6d5ed7e435:   je     0x00007f6d5ed7e4b8
   3.72%  │││││  │││││  0x00007f6d5ed7e43b:   nopl   0x0(%rax,%rax,1)
          │││││  │││││  0x00007f6d5ed7e440:   cmp    $0x102bb50,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │││││╭ │││││  0x00007f6d5ed7e446:   je     0x00007f6d5ed7e4c7
   0.58%  ││││││ │││││  0x00007f6d5ed7e44c:   cmp    $0x1084618,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
          ││││││╭│││││  0x00007f6d5ed7e452:   je     0x00007f6d5ed7e4d6           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.20%  ││↘│││││││││  0x00007f6d5ed7e458:   mov    %r8d,0x10(%rsp)
   0.62%  ││ │││││││││  0x00007f6d5ed7e45d:   mov    %r11d,0xc(%rsp)              ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
          ││ │││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││ │││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
          ││ │││││││││  0x00007f6d5ed7e462:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f6d5ed7e543
   1.31%  ││ │││││││││  0x00007f6d5ed7e469:   movabs $0x7f6ce3000000,%r9
   0.16%  ││ │││││││││  0x00007f6d5ed7e473:   lea    (%r9,%rax,1),%rax
   0.57%  ││ │││││││││  0x00007f6d5ed7e477:   mov    0x1f0(%rax),%rax
   2.32%  ││ │││││││││  0x00007f6d5ed7e47e:   mov    0x40(%rax),%r9               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   4.50%  ││ │││││││││  0x00007f6d5ed7e482:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.01%  ││ │││││││││  0x00007f6d5ed7e486:   mov    %rax,%rbx                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.00%  ││ │││││││││  0x00007f6d5ed7e489:   mov    %r9,%rax
          ││ │││││││││  0x00007f6d5ed7e48c:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
          ││ │││││││││                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   6.21%  ││ │││││││││  0x00007f6d5ed7e48e:   nopl   0x0(%rax,%rax,1)
   0.31%  ││ │││││││││  0x00007f6d5ed7e496:   mov    0x10(%rsp),%r11d
   1.99%  ││ │││││││││  0x00007f6d5ed7e49b:   mov    (%rsp),%rbx
   0.01%  ││ │││││││││  0x00007f6d5ed7e49f:   mov    0x14(%rsp),%r10d
   1.09%  ││ ││││╰││││  0x00007f6d5ed7e4a4:   jmp    0x00007f6d5ed7e400           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.09%  ││ ↘│││ ││││  0x00007f6d5ed7e4a9:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││  │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││  │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.01%  ││  │││ ││││  0x00007f6d5ed7e4b0:   mov    %r8d,%r11d
   0.02%  ││  │││ ╰│││  0x00007f6d5ed7e4b3:   jmp    0x00007f6d5ed7e400           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.38%  ││  ↘││  │││  0x00007f6d5ed7e4b8:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││   ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          ││   ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   3.31%  ││   ││  │││  0x00007f6d5ed7e4bf:   mov    %r8d,%r11d
   0.01%  ││   ││  ╰││  0x00007f6d5ed7e4c2:   jmp    0x00007f6d5ed7e400           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.62%  ││   ↘│   ││  0x00007f6d5ed7e4c7:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.08%  ││    │   ││  0x00007f6d5ed7e4ce:   mov    %r8d,%r11d
   0.53%  ││    │   ╰│  0x00007f6d5ed7e4d1:   jmp    0x00007f6d5ed7e400           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.02%  ││    ↘    │  0x00007f6d5ed7e4d6:   incl   0x20(,%rsi,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
          ││         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   3.86%  ││         │  0x00007f6d5ed7e4dd:   mov    %r8d,%r11d
          ││         ╰  0x00007f6d5ed7e4e0:   jmp    0x00007f6d5ed7e400
          │↘            0x00007f6d5ed7e4e5:   mov    0x20(%rsp),%rbp
          │             0x00007f6d5ed7e4ea:   add    $0x28,%rsp
          │             0x00007f6d5ed7e4ee:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │             0x00007f6d5ed7e4f5:   ja     0x00007f6d5ed7e50c
          │             0x00007f6d5ed7e4fb:   ret    
          ↘             0x00007f6d5ed7e4fc:   mov    %rbp,0x20(%rsp)
                        0x00007f6d5ed7e501:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  59.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 996 

                # {method} {0x00007f6cd84e6708} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f6d5ed7d200:   mov    0x8(%rsi),%r10d
                0x00007f6d5ed7d204:   movabs $0x7f6ce3000000,%r12
                0x00007f6d5ed7d20e:   add    %r12,%r10
                0x00007f6d5ed7d211:   xor    %r12,%r12
                0x00007f6d5ed7d214:   cmp    %r10,%rax
                0x00007f6d5ed7d217:   jne    0x00007f6d5e764080           ;   {runtime_call ic_miss_stub}
                0x00007f6d5ed7d21d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   8.73%        0x00007f6d5ed7d220:   mov    %eax,-0x14000(%rsp)
   7.54%        0x00007f6d5ed7d227:   sub    $0x18,%rsp
                0x00007f6d5ed7d22b:   nop
                0x00007f6d5ed7d22c:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭     0x00007f6d5ed7d234:   jne    0x00007f6d5ed7d257
   0.59%  │ ↗   0x00007f6d5ed7d23a:   mov    $0x1,%eax
          │ │   0x00007f6d5ed7d23f:   add    0x1c(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@6 (line 295)
   2.44%  │ │   0x00007f6d5ed7d242:   mov    %eax,0x1c(%rsi)              ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
   1.13%  │ │   0x00007f6d5ed7d245:   add    $0x18,%rsp
          │ │↗  0x00007f6d5ed7d249:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f6d5ed7d250:   ja     0x00007f6d5ed7d264
   0.00%  ││││  0x00007f6d5ed7d256:   ret    
          ↘│││  0x00007f6d5ed7d257:   mov    %rbp,0x10(%rsp)
           │││  0x00007f6d5ed7d25c:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f6d5ed7d261:   jmp    0x00007f6d5ed7d23a
           │ │  0x00007f6d5ed7d263:   hlt    
           ↘ ╰  0x00007f6d5ed7d264:   lea    -0x22(%rip),%rcx        # 0x00007f6d5ed7d249
                0x00007f6d5ed7d26b:   mov    %rcx,0x468(%r15)
                0x00007f6d5ed7d272:   jmp    0x00007f6d5e76b000           ;   {runtime_call SafepointBlob}
                0x00007f6d5ed7d277:   hlt    
              [Exception Handler]
                0x00007f6d5ed7d278:   call   0x00007f6d5e8e8900           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  20.43%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 995 

                # {method} {0x00007f6cd84e6340} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f6d5ed7c900:   mov    0x8(%rsi),%r10d
                0x00007f6d5ed7c904:   movabs $0x7f6ce3000000,%r12
                0x00007f6d5ed7c90e:   add    %r12,%r10
                0x00007f6d5ed7c911:   xor    %r12,%r12
                0x00007f6d5ed7c914:   cmp    %r10,%rax
                0x00007f6d5ed7c917:   jne    0x00007f6d5e764080           ;   {runtime_call ic_miss_stub}
                0x00007f6d5ed7c91d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   8.15%        0x00007f6d5ed7c920:   mov    %eax,-0x14000(%rsp)
   7.66%        0x00007f6d5ed7c927:   sub    $0x18,%rsp
                0x00007f6d5ed7c92b:   nop
                0x00007f6d5ed7c92c:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭     0x00007f6d5ed7c934:   jne    0x00007f6d5ed7c957
   0.58%  │ ↗   0x00007f6d5ed7c93a:   mov    $0x1,%eax
          │ │   0x00007f6d5ed7c93f:   add    0x18(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 289)
   0.05%  │ │   0x00007f6d5ed7c942:   mov    %eax,0x18(%rsi)              ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
   1.14%  │ │   0x00007f6d5ed7c945:   add    $0x18,%rsp
          │ │↗  0x00007f6d5ed7c949:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f6d5ed7c950:   ja     0x00007f6d5ed7c964
          ││││  0x00007f6d5ed7c956:   ret    
          ↘│││  0x00007f6d5ed7c957:   mov    %rbp,0x10(%rsp)
           │││  0x00007f6d5ed7c95c:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f6d5ed7c961:   jmp    0x00007f6d5ed7c93a
           │ │  0x00007f6d5ed7c963:   hlt    
           ↘ ╰  0x00007f6d5ed7c964:   lea    -0x22(%rip),%rcx        # 0x00007f6d5ed7c949
                0x00007f6d5ed7c96b:   mov    %rcx,0x468(%r15)
....................................................................................................
  17.58%  <total for region 3>

....[Hottest Regions]...............................................................................
  59.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1001 
  20.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 996 
  17.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 995 
   0.40%               kernel  [unknown] 
   0.28%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
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
   0.02%         libc-2.31.so  _IO_fwrite 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.94%  <...other 286 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1001 
  20.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 996 
  17.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 995 
   1.80%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  HighResTimeSampler::take_sample 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%         libc-2.31.so  __GI___libc_write 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%         libc-2.31.so  _itoa_word 
   0.18%  <...other 77 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%       jvmci, level 4
   1.80%               kernel
   0.13%            libjvm.so
   0.10%         libc-2.31.so
   0.03%                     
   0.03%   libpthread-2.31.so
   0.02%               [vdso]
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 87.50% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.834 ns/op
# Warmup Iteration   2: 12.795 ns/op
# Warmup Iteration   3: 12.705 ns/op
# Warmup Iteration   4: 12.746 ns/op
# Warmup Iteration   5: 12.791 ns/op
Iteration   1: 12.743 ns/op
Iteration   2: 12.705 ns/op
Iteration   3: 12.757 ns/op
Iteration   4: 12.721 ns/op
Iteration   5: 12.741 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  12.733 ±(99.9%) 0.079 ns/op [Average]
  (min, avg, max) = (12.705, 12.733, 12.757), stdev = 0.020
  CI (99.9%): [12.655, 12.812] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 224901 total address lines.
Perf output processed (skipped 60.682 seconds):
 Column 1: cycles (50802 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 995 

                            0x00007fcba6d7d5ae:   add    %r12,%r10
                            0x00007fcba6d7d5b1:   xor    %r12,%r12
                            0x00007fcba6d7d5b4:   cmp    %r10,%rax
                            0x00007fcba6d7d5b7:   jne    0x00007fcba6764080           ;   {runtime_call ic_miss_stub}
                            0x00007fcba6d7d5bd:   data16 xchg %ax,%ax
                          [Verified Entry Point]
                            0x00007fcba6d7d5c0:   mov    %eax,-0x14000(%rsp)
                            0x00007fcba6d7d5c7:   sub    $0x28,%rsp
                            0x00007fcba6d7d5cb:   nop
                            0x00007fcba6d7d5cc:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭                 0x00007fcba6d7d5d4:   jne    0x00007fcba6d7d6fc
          │             ↗   0x00007fcba6d7d5da:   mov    %rbp,0x20(%rsp)
          │             │   0x00007fcba6d7d5df:   mov    0x10(%rsi),%ebx              ; ImmutableOopMap {rbx=NarrowOop rsi=Oop }
          │             │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │             │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@0 (line 166)
          │╭            │   0x00007fcba6d7d5e2:   mov    0xc(,%rbx,8),%r10d           ; implicit exception: dispatches to 0x00007fcba6d7d720
   0.00%  ││            │   0x00007fcba6d7d5ea:   mov    %r10d,0x14(%rsp)
          ││            │   0x00007fcba6d7d5ef:   shl    $0x3,%rbx                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          ││            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
          ││            │   0x00007fcba6d7d5f3:   mov    %rbx,(%rsp)
          ││            │   0x00007fcba6d7d5f7:   mov    $0x0,%r11d
          ││            │   0x00007fcba6d7d5fd:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   0.04%  ││      ↗↗↗↗↗ │   0x00007fcba6d7d600:   cmp    %r11d,%r10d
          ││╭     │││││ │   0x00007fcba6d7d603:   jbe    0x00007fcba6d7d6e5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││     │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   1.32%  │││     │││││ │   0x00007fcba6d7d609:   mov    0x10(%rbx,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││     │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   5.79%  │││     │││││ │   0x00007fcba6d7d60e:   mov    %r11d,%r8d
   0.29%  │││     │││││ │   0x00007fcba6d7d611:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││     │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.05%  │││     │││││ │   0x00007fcba6d7d614:   test   %esi,%esi
          │││╭    │││││ │   0x00007fcba6d7d616:   je     0x00007fcba6d7d658
   1.40%  ││││    │││││ │   0x00007fcba6d7d61c:   mov    0x8(,%rsi,8),%eax
  13.27%  ││││    │││││ │   0x00007fcba6d7d623:   cmp    $0x102bb50,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          ││││╭   │││││ │   0x00007fcba6d7d629:   je     0x00007fcba6d7d6a9
   1.51%  │││││   │││││ │   0x00007fcba6d7d62f:   cmp    $0x102bd58,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          │││││╭  │││││ │   0x00007fcba6d7d635:   je     0x00007fcba6d7d6d6
   2.60%  ││││││  │││││ │   0x00007fcba6d7d63b:   nopl   0x0(%rax,%rax,1)
   0.11%  ││││││  │││││ │   0x00007fcba6d7d640:   cmp    $0x1084000,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          ││││││╭ │││││ │   0x00007fcba6d7d646:   je     0x00007fcba6d7d6c7
   0.55%  │││││││ │││││ │   0x00007fcba6d7d64c:   cmp    $0x1084208,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
          │││││││╭│││││ │   0x00007fcba6d7d652:   je     0x00007fcba6d7d6b8           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.20%  │││↘│││││││││ │   0x00007fcba6d7d658:   mov    %r8d,0x10(%rsp)
   0.82%  │││ │││││││││ │   0x00007fcba6d7d65d:   mov    %r11d,0xc(%rsp)              ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
          │││ │││││││││ │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││ │││││││││ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
          │││ │││││││││ │   0x00007fcba6d7d662:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007fcba6d7d743
   1.31%  │││ │││││││││ │   0x00007fcba6d7d669:   movabs $0x7fcb2b000000,%r9
   0.16%  │││ │││││││││ │   0x00007fcba6d7d673:   lea    (%r9,%rax,1),%rax
   0.95%  │││ │││││││││ │   0x00007fcba6d7d677:   mov    0x1f0(%rax),%rax
   2.29%  │││ │││││││││ │   0x00007fcba6d7d67e:   mov    0x40(%rax),%r9               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   4.79%  │││ │││││││││ │   0x00007fcba6d7d682:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.01%  │││ │││││││││ │   0x00007fcba6d7d686:   mov    %rax,%rbx                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.01%  │││ │││││││││ │   0x00007fcba6d7d689:   mov    %r9,%rax
          │││ │││││││││ │   0x00007fcba6d7d68c:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
          │││ │││││││││ │                                                             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   5.66%  │││ │││││││││ │   0x00007fcba6d7d68e:   nopl   0x0(%rax,%rax,1)
   0.44%  │││ │││││││││ │   0x00007fcba6d7d696:   mov    0x10(%rsp),%r11d
   2.12%  │││ │││││││││ │   0x00007fcba6d7d69b:   mov    (%rsp),%rbx
   0.03%  │││ │││││││││ │   0x00007fcba6d7d69f:   mov    0x14(%rsp),%r10d
   1.27%  │││ ││││╰││││ │   0x00007fcba6d7d6a4:   jmp    0x00007fcba6d7d600           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││ ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.48%  │││ ↘│││ ││││ │   0x00007fcba6d7d6a9:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │││  │││ ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.79%  │││  │││ ││││ │   0x00007fcba6d7d6b0:   mov    %r8d,%r11d
   0.00%  │││  │││ ╰│││ │   0x00007fcba6d7d6b3:   jmp    0x00007fcba6d7d600           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││  │││  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.17%  │││  ││↘  │││ │   0x00007fcba6d7d6b8:   incl   0x18(,%rsi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │││  ││   │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          │││  ││   │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.56%  │││  ││   │││ │   0x00007fcba6d7d6bf:   mov    %r8d,%r11d
   0.11%  │││  ││   ╰││ │   0x00007fcba6d7d6c2:   jmp    0x00007fcba6d7d600           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││  ││    ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.27%  │││  │↘    ││ │   0x00007fcba6d7d6c7:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │││  │     ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │││  │     ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.04%  │││  │     ││ │   0x00007fcba6d7d6ce:   mov    %r8d,%r11d
   0.09%  │││  │     ╰│ │   0x00007fcba6d7d6d1:   jmp    0x00007fcba6d7d600           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││  │      │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.31%  │││  ↘      │ │   0x00007fcba6d7d6d6:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │││         │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │││         │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.14%  │││         │ │   0x00007fcba6d7d6dd:   mov    %r8d,%r11d
   0.04%  │││         ╰ │   0x00007fcba6d7d6e0:   jmp    0x00007fcba6d7d600
          ││↘           │   0x00007fcba6d7d6e5:   mov    0x20(%rsp),%rbp
          ││            │   0x00007fcba6d7d6ea:   add    $0x28,%rsp
          ││            │↗  0x00007fcba6d7d6ee:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││           ╭││  0x00007fcba6d7d6f5:   ja     0x00007fcba6d7d70c
   0.00%  ││           │││  0x00007fcba6d7d6fb:   ret    
          ↘│           │││  0x00007fcba6d7d6fc:   mov    %rbp,0x20(%rsp)
           │           │││  0x00007fcba6d7d701:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │           │╰│  0x00007fcba6d7d706:   jmp    0x00007fcba6d7d5da
           │           │ │  0x00007fcba6d7d70b:   hlt    
           │           ↘ ╰  0x00007fcba6d7d70c:   lea    -0x25(%rip),%rcx        # 0x00007fcba6d7d6ee
           │                0x00007fcba6d7d713:   mov    %rcx,0x468(%r15)
           │                0x00007fcba6d7d71a:   jmp    0x00007fcba676b000           ;   {runtime_call SafepointBlob}
           │                0x00007fcba6d7d71f:   hlt    
           ↘                0x00007fcba6d7d720:   movl   $0xfffffff5,0x484(%r15)
                            0x00007fcba6d7d72b:   movq   $0x0,0x490(%r15)
....................................................................................................
  54.00%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 990 

                # {method} {0x00007fcb274e6ec8} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fcba6d7c400:   mov    0x8(%rsi),%r10d
                0x00007fcba6d7c404:   movabs $0x7fcb2b000000,%r12
                0x00007fcba6d7c40e:   add    %r12,%r10
                0x00007fcba6d7c411:   xor    %r12,%r12
                0x00007fcba6d7c414:   cmp    %r10,%rax
                0x00007fcba6d7c417:   jne    0x00007fcba6764080           ;   {runtime_call ic_miss_stub}
                0x00007fcba6d7c41d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   6.43%        0x00007fcba6d7c420:   mov    %eax,-0x14000(%rsp)
   5.80%        0x00007fcba6d7c427:   sub    $0x18,%rsp
                0x00007fcba6d7c42b:   nop
                0x00007fcba6d7c42c:   cmpl   $0x0,0x20(%r15)
   0.00%  ╭     0x00007fcba6d7c434:   jne    0x00007fcba6d7c457
   0.44%  │ ↗   0x00007fcba6d7c43a:   mov    $0x1,%eax
          │ │   0x00007fcba6d7c43f:   add    0x20(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@6 (line 301)
   1.59%  │ │   0x00007fcba6d7c442:   mov    %eax,0x20(%rsi)              ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
   0.91%  │ │   0x00007fcba6d7c445:   add    $0x18,%rsp
          │ │↗  0x00007fcba6d7c449:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fcba6d7c450:   ja     0x00007fcba6d7c464
   0.02%  ││││  0x00007fcba6d7c456:   ret    
          ↘│││  0x00007fcba6d7c457:   mov    %rbp,0x10(%rsp)
           │││  0x00007fcba6d7c45c:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fcba6d7c461:   jmp    0x00007fcba6d7c43a
           │ │  0x00007fcba6d7c463:   hlt    
           ↘ ╰  0x00007fcba6d7c464:   lea    -0x22(%rip),%rcx        # 0x00007fcba6d7c449
                0x00007fcba6d7c46b:   mov    %rcx,0x468(%r15)
                0x00007fcba6d7c472:   jmp    0x00007fcba676b000           ;   {runtime_call SafepointBlob}
                0x00007fcba6d7c477:   hlt    
              [Exception Handler]
                0x00007fcba6d7c478:   call   0x00007fcba68e8900           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  15.20%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 991 

                # {method} {0x00007fcb274e7290} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg7&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fcba6d7c700:   mov    0x8(%rsi),%r10d
                0x00007fcba6d7c704:   movabs $0x7fcb2b000000,%r12
                0x00007fcba6d7c70e:   add    %r12,%r10
                0x00007fcba6d7c711:   xor    %r12,%r12
                0x00007fcba6d7c714:   cmp    %r10,%rax
                0x00007fcba6d7c717:   jne    0x00007fcba6764080           ;   {runtime_call ic_miss_stub}
                0x00007fcba6d7c71d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   6.33%        0x00007fcba6d7c720:   mov    %eax,-0x14000(%rsp)
   5.72%        0x00007fcba6d7c727:   sub    $0x18,%rsp
                0x00007fcba6d7c72b:   nop
                0x00007fcba6d7c72c:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭     0x00007fcba6d7c734:   jne    0x00007fcba6d7c757
   0.42%  │ ↗   0x00007fcba6d7c73a:   mov    $0x1,%eax
          │ │   0x00007fcba6d7c73f:   add    0x24(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@6 (line 307)
   1.58%  │ │   0x00007fcba6d7c742:   mov    %eax,0x24(%rsi)              ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
   0.87%  │ │   0x00007fcba6d7c745:   add    $0x18,%rsp
          │ │↗  0x00007fcba6d7c749:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fcba6d7c750:   ja     0x00007fcba6d7c764
   0.03%  ││││  0x00007fcba6d7c756:   ret    
          ↘│││  0x00007fcba6d7c757:   mov    %rbp,0x10(%rsp)
           │││  0x00007fcba6d7c75c:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fcba6d7c761:   jmp    0x00007fcba6d7c73a
           │ │  0x00007fcba6d7c763:   hlt    
           ↘ ╰  0x00007fcba6d7c764:   lea    -0x22(%rip),%rcx        # 0x00007fcba6d7c749
                0x00007fcba6d7c76b:   mov    %rcx,0x468(%r15)
                0x00007fcba6d7c772:   jmp    0x00007fcba676b000           ;   {runtime_call SafepointBlob}
                0x00007fcba6d7c777:   hlt    
              [Exception Handler]
                0x00007fcba6d7c778:   call   0x00007fcba68e8900           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  14.95%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 989 

                # {method} {0x00007fcb274e6b00} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fcba6d7c100:   mov    0x8(%rsi),%r10d
                0x00007fcba6d7c104:   movabs $0x7fcb2b000000,%r12
                0x00007fcba6d7c10e:   add    %r12,%r10
                0x00007fcba6d7c111:   xor    %r12,%r12
                0x00007fcba6d7c114:   cmp    %r10,%rax
                0x00007fcba6d7c117:   jne    0x00007fcba6764080           ;   {runtime_call ic_miss_stub}
                0x00007fcba6d7c11d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   6.05%        0x00007fcba6d7c120:   mov    %eax,-0x14000(%rsp)
   5.41%        0x00007fcba6d7c127:   sub    $0x18,%rsp
                0x00007fcba6d7c12b:   nop
                0x00007fcba6d7c12c:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭     0x00007fcba6d7c134:   jne    0x00007fcba6d7c157
   0.45%  │ ↗   0x00007fcba6d7c13a:   mov    $0x1,%eax
          │ │   0x00007fcba6d7c13f:   add    0x1c(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@6 (line 295)
   0.99%  │ │   0x00007fcba6d7c142:   mov    %eax,0x1c(%rsi)              ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
   0.80%  │ │   0x00007fcba6d7c145:   add    $0x18,%rsp
          │ │↗  0x00007fcba6d7c149:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fcba6d7c150:   ja     0x00007fcba6d7c164
   0.00%  ││││  0x00007fcba6d7c156:   ret    
          ↘│││  0x00007fcba6d7c157:   mov    %rbp,0x10(%rsp)
           │││  0x00007fcba6d7c15c:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fcba6d7c161:   jmp    0x00007fcba6d7c13a
           │ │  0x00007fcba6d7c163:   hlt    
           ↘ ╰  0x00007fcba6d7c164:   lea    -0x22(%rip),%rcx        # 0x00007fcba6d7c149
                0x00007fcba6d7c16b:   mov    %rcx,0x468(%r15)
                0x00007fcba6d7c172:   jmp    0x00007fcba676b000           ;   {runtime_call SafepointBlob}
                0x00007fcba6d7c177:   hlt    
              [Exception Handler]
                0x00007fcba6d7c178:   call   0x00007fcba68e8900           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  13.70%  <total for region 4>

....[Hottest Regions]...............................................................................
  54.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 995 
  15.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 990 
  14.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 991 
  13.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 989 
   0.61%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.98%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 995 
  15.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 990 
  14.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 991 
  13.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 989 
   1.72%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __stpcpy_avx2 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.code.IsolateEnterStub::JNIFunctions_ExceptionCheck_58d6e5b3e7f9e77fa71a316c155f7e7a40618b7f 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  ___vsnprintf 
   0.01%            libjvm.so  fileStream::write 
   0.24%  <...other 106 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%       jvmci, level 4
   1.72%               kernel
   0.13%            libjvm.so
   0.10%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.05%                     
   0.03%   libpthread-2.31.so
   0.03%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 93.75% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.611 ns/op
# Warmup Iteration   2: 14.473 ns/op
# Warmup Iteration   3: 14.459 ns/op
# Warmup Iteration   4: 14.513 ns/op
# Warmup Iteration   5: 14.474 ns/op
Iteration   1: 14.534 ns/op
Iteration   2: 14.602 ns/op
Iteration   3: 14.470 ns/op
Iteration   4: 14.513 ns/op
Iteration   5: 14.469 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  14.517 ±(99.9%) 0.211 ns/op [Average]
  (min, avg, max) = (14.469, 14.517, 14.602), stdev = 0.055
  CI (99.9%): [14.306, 14.728] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 229581 total address lines.
Perf output processed (skipped 60.760 seconds):
 Column 1: cycles (51036 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1013 

                         [Verified Entry Point]
                           0x00007f0b5ad7fac0:   mov    %eax,-0x14000(%rsp)
                           0x00007f0b5ad7fac7:   sub    $0x28,%rsp
                           0x00007f0b5ad7facb:   nop
                           0x00007f0b5ad7facc:   cmpl   $0x1,0x20(%r15)
          ╭                0x00007f0b5ad7fad4:   jne    0x00007f0b5ad7fbfc
          │            ↗   0x00007f0b5ad7fada:   mov    %rbp,0x20(%rsp)
          │            │   0x00007f0b5ad7fadf:   mov    0x10(%rsi),%ebx              ; ImmutableOopMap {rbx=NarrowOop rsi=Oop }
          │            │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │            │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@0 (line 166)
   0.00%  │            │   0x00007f0b5ad7fae2:   mov    0xc(,%rbx,8),%r10d           ; implicit exception: dispatches to 0x00007f0b5ad7fc20
   0.00%  │            │   0x00007f0b5ad7faea:   mov    %r10d,0x14(%rsp)
          │            │   0x00007f0b5ad7faef:   shl    $0x3,%rbx                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
          │            │   0x00007f0b5ad7faf3:   mov    %rbx,(%rsp)
          │            │   0x00007f0b5ad7faf7:   mov    $0x0,%r11d
          │            │   0x00007f0b5ad7fafd:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   0.24%  │      ↗↗↗↗↗ │   0x00007f0b5ad7fb00:   cmp    %r11d,%r10d
          │╭     │││││ │   0x00007f0b5ad7fb03:   jbe    0x00007f0b5ad7fbe5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   1.44%  ││     │││││ │   0x00007f0b5ad7fb09:   mov    0x10(%rbx,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   4.78%  ││     │││││ │   0x00007f0b5ad7fb0e:   mov    %r11d,%r8d
   0.11%  ││     │││││ │   0x00007f0b5ad7fb11:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││     │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.28%  ││     │││││ │   0x00007f0b5ad7fb14:   test   %esi,%esi
          ││╭    │││││ │   0x00007f0b5ad7fb16:   je     0x00007f0b5ad7fb58
   1.47%  │││    │││││ │   0x00007f0b5ad7fb1c:   mov    0x8(,%rsi,8),%eax
  12.36%  │││    │││││ │   0x00007f0b5ad7fb23:   cmp    $0x1084000,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │││╭   │││││ │   0x00007f0b5ad7fb29:   je     0x00007f0b5ad7fba9
   1.51%  ││││   │││││ │   0x00007f0b5ad7fb2f:   cmp    $0x1084208,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
          ││││╭  │││││ │   0x00007f0b5ad7fb35:   je     0x00007f0b5ad7fbb8
   3.85%  │││││  │││││ │   0x00007f0b5ad7fb3b:   nopl   0x0(%rax,%rax,1)
   0.14%  │││││  │││││ │   0x00007f0b5ad7fb40:   cmp    $0x1084410,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
          │││││╭ │││││ │   0x00007f0b5ad7fb46:   je     0x00007f0b5ad7fbc7
   0.33%  ││││││ │││││ │   0x00007f0b5ad7fb4c:   cmp    $0x102bb50,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          ││││││╭│││││ │   0x00007f0b5ad7fb52:   je     0x00007f0b5ad7fbd6           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.17%  ││↘│││││││││ │   0x00007f0b5ad7fb58:   mov    %r8d,0x10(%rsp)
   0.98%  ││ │││││││││ │   0x00007f0b5ad7fb5d:   mov    %r11d,0xc(%rsp)              ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
          ││ │││││││││ │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││ │││││││││ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
          ││ │││││││││ │   0x00007f0b5ad7fb62:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f0b5ad7fc43
   1.01%  ││ │││││││││ │   0x00007f0b5ad7fb69:   movabs $0x7f0adf000000,%r9
   0.12%  ││ │││││││││ │   0x00007f0b5ad7fb73:   lea    (%r9,%rax,1),%rax
   0.98%  ││ │││││││││ │   0x00007f0b5ad7fb77:   mov    0x1f0(%rax),%rax
   2.64%  ││ │││││││││ │   0x00007f0b5ad7fb7e:   mov    0x40(%rax),%r9               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   5.26%  ││ │││││││││ │   0x00007f0b5ad7fb82:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.01%  ││ │││││││││ │   0x00007f0b5ad7fb86:   mov    %rax,%rbx                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          ││ │││││││││ │   0x00007f0b5ad7fb89:   mov    %r9,%rax
          ││ │││││││││ │   0x00007f0b5ad7fb8c:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
          ││ │││││││││ │                                                             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   5.59%  ││ │││││││││ │   0x00007f0b5ad7fb8e:   nopl   0x0(%rax,%rax,1)
   0.48%  ││ │││││││││ │   0x00007f0b5ad7fb96:   mov    0x10(%rsp),%r11d
   2.07%  ││ │││││││││ │   0x00007f0b5ad7fb9b:   mov    (%rsp),%rbx
   0.01%  ││ │││││││││ │   0x00007f0b5ad7fb9f:   mov    0x14(%rsp),%r10d
   1.27%  ││ ││││╰││││ │   0x00007f0b5ad7fba4:   jmp    0x00007f0b5ad7fb00           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.34%  ││ ↘│││ ││││ │   0x00007f0b5ad7fba9:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││  │││ ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││  │││ ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.48%  ││  │││ ││││ │   0x00007f0b5ad7fbb0:   mov    %r8d,%r11d
          ││  │││ ╰│││ │   0x00007f0b5ad7fbb3:   jmp    0x00007f0b5ad7fb00           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  │││  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.11%  ││  ↘││  │││ │   0x00007f0b5ad7fbb8:   incl   0x18(,%rsi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          ││   ││  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          ││   ││  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.84%  ││   ││  │││ │   0x00007f0b5ad7fbbf:   mov    %r8d,%r11d
   0.02%  ││   ││  ╰││ │   0x00007f0b5ad7fbc2:   jmp    0x00007f0b5ad7fb00           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   ││   ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.12%  ││   ↘│   ││ │   0x00007f0b5ad7fbc7:   incl   0x1c(,%rsi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          ││    │   ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          ││    │   ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.85%  ││    │   ││ │   0x00007f0b5ad7fbce:   mov    %r8d,%r11d
   0.04%  ││    │   ╰│ │   0x00007f0b5ad7fbd1:   jmp    0x00007f0b5ad7fb00           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    │    │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.02%  ││    ↘    │ │   0x00007f0b5ad7fbd6:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││         │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││         │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.56%  ││         │ │   0x00007f0b5ad7fbdd:   mov    %r8d,%r11d
   0.02%  ││         ╰ │   0x00007f0b5ad7fbe0:   jmp    0x00007f0b5ad7fb00
   0.00%  │↘           │   0x00007f0b5ad7fbe5:   mov    0x20(%rsp),%rbp
          │            │   0x00007f0b5ad7fbea:   add    $0x28,%rsp
          │            │↗  0x00007f0b5ad7fbee:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │           ╭││  0x00007f0b5ad7fbf5:   ja     0x00007f0b5ad7fc0c
          │           │││  0x00007f0b5ad7fbfb:   ret    
          ↘           │││  0x00007f0b5ad7fbfc:   mov    %rbp,0x20(%rsp)
                      │││  0x00007f0b5ad7fc01:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                      │╰│  0x00007f0b5ad7fc06:   jmp    0x00007f0b5ad7fada
                      │ │  0x00007f0b5ad7fc0b:   hlt    
                      ↘ ╰  0x00007f0b5ad7fc0c:   lea    -0x25(%rip),%rcx        # 0x00007f0b5ad7fbee
                           0x00007f0b5ad7fc13:   mov    %rcx,0x468(%r15)
....................................................................................................
  52.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute, version 2, compile id 1009 

                # {method} {0x00007f0adb4e7658} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg8&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f0b5ad80080:   mov    0x8(%rsi),%r10d
                0x00007f0b5ad80084:   movabs $0x7f0adf000000,%r12
                0x00007f0b5ad8008e:   add    %r12,%r10
                0x00007f0b5ad80091:   xor    %r12,%r12
                0x00007f0b5ad80094:   cmp    %r10,%rax
                0x00007f0b5ad80097:   jne    0x00007f0b5a764080           ;   {runtime_call ic_miss_stub}
                0x00007f0b5ad8009d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   4.91%        0x00007f0b5ad800a0:   mov    %eax,-0x14000(%rsp)
   4.29%        0x00007f0b5ad800a7:   sub    $0x18,%rsp
                0x00007f0b5ad800ab:   nop
                0x00007f0b5ad800ac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f0b5ad800b4:   jne    0x00007f0b5ad800d7
   0.33%  │ ↗   0x00007f0b5ad800ba:   mov    $0x1,%eax
          │ │   0x00007f0b5ad800bf:   add    0x28(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@6 (line 313)
   2.35%  │ │   0x00007f0b5ad800c2:   mov    %eax,0x28(%rsi)              ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 313)
   0.66%  │ │   0x00007f0b5ad800c5:   add    $0x18,%rsp
          │ │↗  0x00007f0b5ad800c9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f0b5ad800d0:   ja     0x00007f0b5ad800e4
          ││││  0x00007f0b5ad800d6:   ret    
          ↘│││  0x00007f0b5ad800d7:   mov    %rbp,0x10(%rsp)
           │││  0x00007f0b5ad800dc:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f0b5ad800e1:   jmp    0x00007f0b5ad800ba
           │ │  0x00007f0b5ad800e3:   hlt    
           ↘ ╰  0x00007f0b5ad800e4:   lea    -0x22(%rip),%rcx        # 0x00007f0b5ad800c9
                0x00007f0b5ad800eb:   mov    %rcx,0x468(%r15)
....................................................................................................
  12.53%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 1008 

                # {method} {0x00007f0adb4e7290} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg7&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f0b5ad7f780:   mov    0x8(%rsi),%r10d
                0x00007f0b5ad7f784:   movabs $0x7f0adf000000,%r12
                0x00007f0b5ad7f78e:   add    %r12,%r10
                0x00007f0b5ad7f791:   xor    %r12,%r12
                0x00007f0b5ad7f794:   cmp    %r10,%rax
                0x00007f0b5ad7f797:   jne    0x00007f0b5a764080           ;   {runtime_call ic_miss_stub}
                0x00007f0b5ad7f79d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   4.95%        0x00007f0b5ad7f7a0:   mov    %eax,-0x14000(%rsp)
   3.99%        0x00007f0b5ad7f7a7:   sub    $0x18,%rsp
                0x00007f0b5ad7f7ab:   nop
                0x00007f0b5ad7f7ac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f0b5ad7f7b4:   jne    0x00007f0b5ad7f7d7
   0.33%  │ ↗   0x00007f0b5ad7f7ba:   mov    $0x1,%eax
          │ │   0x00007f0b5ad7f7bf:   add    0x24(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@6 (line 307)
   1.30%  │ │   0x00007f0b5ad7f7c2:   mov    %eax,0x24(%rsi)              ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
   0.66%  │ │   0x00007f0b5ad7f7c5:   add    $0x18,%rsp
          │ │↗  0x00007f0b5ad7f7c9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f0b5ad7f7d0:   ja     0x00007f0b5ad7f7e4
   0.00%  ││││  0x00007f0b5ad7f7d6:   ret    
          ↘│││  0x00007f0b5ad7f7d7:   mov    %rbp,0x10(%rsp)
           │││  0x00007f0b5ad7f7dc:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f0b5ad7f7e1:   jmp    0x00007f0b5ad7f7ba
           │ │  0x00007f0b5ad7f7e3:   hlt    
           ↘ ╰  0x00007f0b5ad7f7e4:   lea    -0x22(%rip),%rcx        # 0x00007f0b5ad7f7c9
                0x00007f0b5ad7f7eb:   mov    %rcx,0x468(%r15)
                0x00007f0b5ad7f7f2:   jmp    0x00007f0b5a76b000           ;   {runtime_call SafepointBlob}
                0x00007f0b5ad7f7f7:   hlt    
              [Exception Handler]
                0x00007f0b5ad7f7f8:   call   0x00007f0b5a8e9780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  11.24%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 1002 

                # {method} {0x00007f0adb4e5fa8} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f0b5ad7da00:   mov    0x8(%rsi),%r10d
                0x00007f0b5ad7da04:   movabs $0x7f0adf000000,%r12
                0x00007f0b5ad7da0e:   add    %r12,%r10
                0x00007f0b5ad7da11:   xor    %r12,%r12
                0x00007f0b5ad7da14:   cmp    %r10,%rax
                0x00007f0b5ad7da17:   jne    0x00007f0b5a764080           ;   {runtime_call ic_miss_stub}
                0x00007f0b5ad7da1d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   4.87%        0x00007f0b5ad7da20:   mov    %eax,-0x14000(%rsp)
   4.34%        0x00007f0b5ad7da27:   sub    $0x18,%rsp
                0x00007f0b5ad7da2b:   nop
                0x00007f0b5ad7da2c:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f0b5ad7da34:   jne    0x00007f0b5ad7da57
   0.35%  │ ↗   0x00007f0b5ad7da3a:   mov    $0x1,%eax
          │ │   0x00007f0b5ad7da3f:   add    0x10(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 277)
   0.61%  │ │   0x00007f0b5ad7da42:   mov    %eax,0x10(%rsi)              ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
   0.59%  │ │   0x00007f0b5ad7da45:   add    $0x18,%rsp
          │ │↗  0x00007f0b5ad7da49:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f0b5ad7da50:   ja     0x00007f0b5ad7da64
   0.00%  ││││  0x00007f0b5ad7da56:   ret    
          ↘│││  0x00007f0b5ad7da57:   mov    %rbp,0x10(%rsp)
           │││  0x00007f0b5ad7da5c:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f0b5ad7da61:   jmp    0x00007f0b5ad7da3a
           │ │  0x00007f0b5ad7da63:   hlt    
           ↘ ╰  0x00007f0b5ad7da64:   lea    -0x22(%rip),%rcx        # 0x00007f0b5ad7da49
                0x00007f0b5ad7da6b:   mov    %rcx,0x468(%r15)
                0x00007f0b5ad7da72:   jmp    0x00007f0b5a76b000           ;   {runtime_call SafepointBlob}
                0x00007f0b5ad7da77:   hlt    
              [Exception Handler]
                0x00007f0b5ad7da78:   call   0x00007f0b5a8e9780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  10.76%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 1007 

                # {method} {0x00007f0adb4e6ec8} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f0b5ad7e900:   mov    0x8(%rsi),%r10d
                0x00007f0b5ad7e904:   movabs $0x7f0adf000000,%r12
                0x00007f0b5ad7e90e:   add    %r12,%r10
                0x00007f0b5ad7e911:   xor    %r12,%r12
                0x00007f0b5ad7e914:   cmp    %r10,%rax
                0x00007f0b5ad7e917:   jne    0x00007f0b5a764080           ;   {runtime_call ic_miss_stub}
                0x00007f0b5ad7e91d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   4.58%        0x00007f0b5ad7e920:   mov    %eax,-0x14000(%rsp)
   4.31%        0x00007f0b5ad7e927:   sub    $0x18,%rsp
                0x00007f0b5ad7e92b:   nop
                0x00007f0b5ad7e92c:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭     0x00007f0b5ad7e934:   jne    0x00007f0b5ad7e957
   0.30%  │ ↗   0x00007f0b5ad7e93a:   mov    $0x1,%eax
          │ │   0x00007f0b5ad7e93f:   add    0x20(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@6 (line 301)
   0.52%  │ │   0x00007f0b5ad7e942:   mov    %eax,0x20(%rsi)              ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
   0.63%  │ │   0x00007f0b5ad7e945:   add    $0x18,%rsp
          │ │↗  0x00007f0b5ad7e949:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f0b5ad7e950:   ja     0x00007f0b5ad7e964
   0.00%  ││││  0x00007f0b5ad7e956:   ret    
          ↘│││  0x00007f0b5ad7e957:   mov    %rbp,0x10(%rsp)
           │││  0x00007f0b5ad7e95c:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f0b5ad7e961:   jmp    0x00007f0b5ad7e93a
           │ │  0x00007f0b5ad7e963:   hlt    
           ↘ ╰  0x00007f0b5ad7e964:   lea    -0x22(%rip),%rcx        # 0x00007f0b5ad7e949
                0x00007f0b5ad7e96b:   mov    %rcx,0x468(%r15)
                0x00007f0b5ad7e972:   jmp    0x00007f0b5a76b000           ;   {runtime_call SafepointBlob}
                0x00007f0b5ad7e977:   hlt    
              [Exception Handler]
                0x00007f0b5ad7e978:   call   0x00007f0b5a8e9780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  10.34%  <total for region 5>

....[Hottest Regions]...............................................................................
  52.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1013 
  12.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute, version 2, compile id 1009 
  11.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 1008 
  10.76%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 1002 
  10.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 1007 
   1.01%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   1.04%  <...other 350 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1013 
  12.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute, version 2, compile id 1009 
  11.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 1008 
  10.76%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 1002 
  10.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 1007 
   2.14%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_no_init 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.20%  <...other 80 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.40%      jvmci, level 4
   2.14%              kernel
   0.16%           libjvm.so
   0.10%                    
   0.10%        libc-2.31.so
   0.04%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:30:21

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

Benchmark                                                        (targetType)  Mode  Cnt   Score    Error  Units
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic        MONOMORPHIC  avgt    5   1.929 ±  0.255  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm    MONOMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic          BIMORPHIC  avgt    5   2.272 ±  0.008  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm      BIMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_3  avgt    5   2.508 ±  0.075  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_3  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_4  avgt    5   2.581 ±  0.093  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_4  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_5  avgt    5   2.488 ±  0.002  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_5  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_6  avgt    5   2.955 ±  0.020  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_6  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_7  avgt    5   3.162 ±  0.004  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_7  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_8  avgt    5   3.065 ±  0.024  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_8  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                       MONOMORPHIC  avgt    5   1.852 ±  0.001  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                   MONOMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                         BIMORPHIC  avgt    5   1.965 ±  0.001  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                     BIMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_3  avgt    5   2.029 ±  0.208  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_3  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_4  avgt    5   2.013 ±  0.066  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_4  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_5  avgt    5   3.227 ±  0.045  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_5  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_6  avgt    5  10.922 ±  0.097  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_6  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_7  avgt    5  12.733 ±  0.079  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_7  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_8  avgt    5  14.517 ±  0.211  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_8  avgt          NaN             ---
