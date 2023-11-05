# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 1.967 ns/op
# Warmup Iteration   2: 2.031 ns/op
# Warmup Iteration   3: 2.031 ns/op
# Warmup Iteration   4: 2.031 ns/op
# Warmup Iteration   5: 1.903 ns/op
Iteration   1: 1.903 ns/op
Iteration   2: 2.031 ns/op
Iteration   3: 2.031 ns/op
Iteration   4: 1.941 ns/op
Iteration   5: 1.941 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  1.969 ±(99.9%) 0.226 ns/op [Average]
  (min, avg, max) = (1.903, 1.969, 2.031), stdev = 0.059
  CI (99.9%): [1.744, 2.195] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 195508 total address lines.
Perf output processed (skipped 58.657 seconds):
 Column 1: cycles (51353 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 748 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 181)
              0x00007f7c0affe556:   mov    $0x1,%r9d
              0x00007f7c0affe55c:   nopl   0x0(%rax)
          ╭   0x00007f7c0affe560:   jmp    0x00007f7c0affe5a9           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
          │   0x00007f7c0affe565:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f7c0affe570:   data16 data16 xchg %ax,%ax
          │   0x00007f7c0affe574:   nopl   0x0(%rax,%rax,1)
          │   0x00007f7c0affe57c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   0.00%  │↗  0x00007f7c0affe580:   movsbl 0x10(%r9,%r8,8),%ecx         ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   0.73%  ││  0x00007f7c0affe586:   test   %ecx,%ecx
          ││  0x00007f7c0affe588:   jne    0x00007f7c0affe5f5           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
  19.28%  ││  0x00007f7c0affe58e:   mov    0x10(%r10,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.39%  ││  0x00007f7c0affe593:   mov    $0x1,%ebx                    ; ImmutableOopMap {rcx=NarrowOop r8=NarrowOop r10=Oop r11=Oop }
          ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.01%  ││  0x00007f7c0affe598:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f7c0affe692
  51.58%  ││  0x00007f7c0affe59f:   mov    %ebx,0xc(,%rcx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
  23.77%  ││  0x00007f7c0affe5a6:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
          ↘│  0x00007f7c0affe5a9:   cmp    $0x9d80,%r9d
           ╰  0x00007f7c0affe5b0:   jl     0x00007f7c0affe580           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
              0x00007f7c0affe5b2:   mov    0x10(%rsp),%rbp
   0.01%      0x00007f7c0affe5b7:   add    $0x18,%rsp
              0x00007f7c0affe5bb:   mov    0x348(%r15),%rcx
              0x00007f7c0affe5c2:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%      0x00007f7c0affe5c4:   ret    
              0x00007f7c0affe5c5:   mov    $0x0,%r11
              0x00007f7c0affe5cc:   mov    $0xffffffe5,%r10d
              0x00007f7c0affe5d2:   mov    %r10d,0x370(%r15)            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
              0x00007f7c0affe5d9:   mov    %r11,0x378(%r15)
              0x00007f7c0affe5e0:   call   0x00007f7c0350527a           ; ImmutableOopMap {rsi=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
                                                                        ;   {runtime_call DeoptimizationBlob}
              0x00007f7c0affe5e5:   nop                                 ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  96.79%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 748 
   1.92%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 748 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 748 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 773 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.68%  <...other 247 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 748 
   2.81%               kernel  [unknown] 
   0.04%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 773 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%          interpreter  invokeinterface  185 invokeinterface  
   0.00%            libjvm.so  decode_env::print_hook_comments 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.12%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.89%       jvmci, level 4
   2.81%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.02%          interpreter
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = BIMORPHIC)

# Run progress: 6.25% complete, ETA 00:28:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.365 ns/op
# Warmup Iteration   2: 2.393 ns/op
# Warmup Iteration   3: 2.393 ns/op
# Warmup Iteration   4: 2.393 ns/op
# Warmup Iteration   5: 2.344 ns/op
Iteration   1: 2.393 ns/op
Iteration   2: 2.334 ns/op
Iteration   3: 2.334 ns/op
Iteration   4: 2.334 ns/op
Iteration   5: 2.334 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.346 ±(99.9%) 0.102 ns/op [Average]
  (min, avg, max) = (2.334, 2.346, 2.393), stdev = 0.027
  CI (99.9%): [2.244, 2.448] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 194562 total address lines.
Perf output processed (skipped 58.631 seconds):
 Column 1: cycles (51334 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 756 

                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                 0x00007f5ee70006ed:   mov    $0x1,%r11d
                 0x00007f5ee70006f3:   nopw   0x0(%rax,%rax,1)
                 0x00007f5ee70006fc:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
             ↗↗  0x00007f5ee7000700:   cmp    $0x9d80,%r11d
          ╭  ││  0x00007f5ee7000707:   jge    0x00007f5ee700077f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
          │  ││  0x00007f5ee700070d:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
  12.39%  │  ││  0x00007f5ee7000712:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   5.34%  │  ││  0x00007f5ee7000718:   mov    %r11d,%edi
          │  ││  0x00007f5ee700071b:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
          │  ││  0x00007f5ee700071d:   cmp    $0x1,%ebx
          │╭ ││  0x00007f5ee7000720:   je     0x00007f5ee7000734
   5.63%  ││ ││  0x00007f5ee7000726:   cmp    $0x0,%ebx
          ││╭││  0x00007f5ee7000729:   je     0x00007f5ee700075f
          │││││  0x00007f5ee700072f:   jmp    0x00007f5ee70007fa           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   5.74%  │↘│││  0x00007f5ee7000734:   nopl   0x0(%rax,%rax,1)
   2.36%  │ │││  0x00007f5ee700073c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
          │ │││  0x00007f5ee7000740:   cmpl   $0xc27240,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f5ee70008c9
          │ │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
  16.96%  │ │││  0x00007f5ee700074c:   jne    0x00007f5ee7000848           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   3.32%  │ │││  0x00007f5ee7000752:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
  11.83%  │ │││  0x00007f5ee700075a:   mov    %edi,%r11d
   2.41%  │ │╰│  0x00007f5ee700075d:   jmp    0x00007f5ee7000700           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   2.40%  │ ↘ │  0x00007f5ee700075f:   nop                                 ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │   │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │   │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
          │   │  0x00007f5ee7000760:   cmpl   $0xc27030,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f5ee70008e6
          │   │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
  14.69%  │   │  0x00007f5ee700076c:   jne    0x00007f5ee70007d9           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   3.15%  │   │  0x00007f5ee7000772:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   8.12%  │   │  0x00007f5ee700077a:   mov    %edi,%r11d
   2.46%  │   ╰  0x00007f5ee700077d:   jmp    0x00007f5ee7000700           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   0.00%  ↘      0x00007f5ee700077f:   mov    0x10(%rsp),%rbp
   0.02%         0x00007f5ee7000784:   add    $0x18,%rsp
                 0x00007f5ee7000788:   mov    0x348(%r15),%rcx
   0.00%         0x00007f5ee700078f:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%         0x00007f5ee7000791:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.00%         0x00007f5ee7000792:   data16 nopw 0x0(%rax,%rax,1)
                 0x00007f5ee700079c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
                 0x00007f5ee70007a0:   cmpl   $0xc27030,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f5ee7000906
                                                                           ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.04%         0x00007f5ee70007ab:   jne    0x00007f5ee7000809           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
                 0x00007f5ee70007b1:   incl   0xc(,%rbx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
                 0x00007f5ee70007b8:   jmp    0x00007f5ee70006c3           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
                 0x00007f5ee70007bd:   movl   $0xffffffe5,0x370(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                 0x00007f5ee70007c8:   movq   $0x1314,0x378(%r15)
....................................................................................................
  96.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 756 
   1.75%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 756 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 769 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.75%  <...other 273 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 756 
   2.77%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 769 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  os::current_thread_id 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%          interpreter  invokestatic  184 invokestatic  
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  _int_malloc 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.12%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.93%       jvmci, level 4
   2.77%               kernel
   0.10%         libc-2.31.so
   0.10%            libjvm.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 12.50% complete, ETA 00:26:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.234 ns/op
# Warmup Iteration   2: 2.303 ns/op
# Warmup Iteration   3: 2.303 ns/op
# Warmup Iteration   4: 2.303 ns/op
# Warmup Iteration   5: 2.303 ns/op
Iteration   1: 2.303 ns/op
Iteration   2: 2.168 ns/op
Iteration   3: 2.167 ns/op
Iteration   4: 2.167 ns/op
Iteration   5: 2.167 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.194 ±(99.9%) 0.234 ns/op [Average]
  (min, avg, max) = (2.167, 2.194, 2.303), stdev = 0.061
  CI (99.9%): [1.961, 2.428] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 195299 total address lines.
Perf output processed (skipped 58.645 seconds):
 Column 1: cycles (50790 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 759 

                   0x00007f44eb000a83:   cmp    $0x9d80,%r11d
                   0x00007f44eb000a8a:   jb     0x00007f44eb000b9d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                   0x00007f44eb000a90:   cmp    $0x9d80,%r9d
                   0x00007f44eb000a97:   jb     0x00007f44eb000b9d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                   0x00007f44eb000a9d:   mov    $0x1,%r11d
                   0x00007f44eb000aa3:   nopw   0x0(%rax,%rax,1)
                   0x00007f44eb000aac:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   3.69%      ↗↗↗  0x00007f44eb000ab0:   cmp    $0x9d80,%r11d
          ╭   │││  0x00007f44eb000ab7:   jge    0x00007f44eb000b4d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   3.73%  │   │││  0x00007f44eb000abd:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   6.71%  │   │││  0x00007f44eb000ac2:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   4.72%  │   │││  0x00007f44eb000ac8:   mov    %r11d,%edi
   3.60%  │   │││  0x00007f44eb000acb:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   3.86%  │   │││  0x00007f44eb000acd:   cmp    $0x0,%ebx
          │╭  │││  0x00007f44eb000ad0:   je     0x00007f44eb000aed
   3.34%  ││  │││  0x00007f44eb000ad6:   cmp    $0x1,%ebx
          ││╭ │││  0x00007f44eb000ad9:   je     0x00007f44eb000b0c
   1.45%  │││ │││  0x00007f44eb000adf:   cmp    $0x2,%ebx
          │││╭│││  0x00007f44eb000ae2:   je     0x00007f44eb000b2b
          │││││││  0x00007f44eb000ae8:   jmp    0x00007f44eb000c58           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   2.02%  │↘│││││  0x00007f44eb000aed:   cmpl   $0xc27030,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f44eb000cca
          │ │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   9.76%  │ │││││  0x00007f44eb000af9:   jne    0x00007f44eb000bf8           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   1.88%  │ │││││  0x00007f44eb000aff:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   6.07%  │ │││││  0x00007f44eb000b07:   mov    %edi,%r11d
   1.30%  │ ││╰││  0x00007f44eb000b0a:   jmp    0x00007f44eb000ab0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ ││ ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   1.33%  │ ↘│ ││  0x00007f44eb000b0c:   cmpl   $0xc27240,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f44eb000ce6
          │  │ ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
  11.76%  │  │ ││  0x00007f44eb000b18:   jne    0x00007f44eb000c67           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   2.07%  │  │ ││  0x00007f44eb000b1e:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   7.75%  │  │ ││  0x00007f44eb000b26:   mov    %edi,%r11d
   1.59%  │  │ ╰│  0x00007f44eb000b29:   jmp    0x00007f44eb000ab0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │  │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │  │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   1.14%  │  ↘  │  0x00007f44eb000b2b:   cmpl   $0xc27450,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f44eb000d06
          │     │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   9.19%  │     │  0x00007f44eb000b37:   jne    0x00007f44eb000c19           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   2.17%  │     │  0x00007f44eb000b3d:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   7.14%  │     │  0x00007f44eb000b45:   mov    %edi,%r11d
   1.58%  │     ╰  0x00007f44eb000b48:   jmp    0x00007f44eb000ab0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
          ↘        0x00007f44eb000b4d:   mov    0x10(%rsp),%rbp
   0.03%           0x00007f44eb000b52:   add    $0x18,%rsp
                   0x00007f44eb000b56:   mov    0x348(%r15),%rcx
   0.00%           0x00007f44eb000b5d:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%           0x00007f44eb000b5f:   ret                                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
                   0x00007f44eb000b60:   cmpl   $0xc27240,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f44eb000d26
                                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
                   0x00007f44eb000b6b:   jne    0x00007f44eb000bda           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
                   0x00007f44eb000b71:   incl   0x10(,%rbx,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
                   0x00007f44eb000b78:   jmp    0x00007f44eb000a78           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.90%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 759 
   0.49%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 759 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 759 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.96%  <...other 333 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.96%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 759 
   1.64%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 778 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.19%  <...other 86 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.97%       jvmci, level 4
   1.64%               kernel
   0.17%            libjvm.so
   0.11%         libc-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%          c1, level 3
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 18.75% complete, ETA 00:24:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.684 ns/op
# Warmup Iteration   2: 2.668 ns/op
# Warmup Iteration   3: 2.666 ns/op
# Warmup Iteration   4: 2.666 ns/op
# Warmup Iteration   5: 2.669 ns/op
Iteration   1: 2.669 ns/op
Iteration   2: 2.667 ns/op
Iteration   3: 2.667 ns/op
Iteration   4: 2.667 ns/op
Iteration   5: 2.667 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.667 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (2.667, 2.667, 2.669), stdev = 0.001
  CI (99.9%): [2.664, 2.671] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 196699 total address lines.
Perf output processed (skipped 58.736 seconds):
 Column 1: cycles (51125 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 752 

                     0x00007fc7b6fff403:   cmp    $0x9d80,%r11d
                     0x00007fc7b6fff40a:   jb     0x00007fc7b6fff57d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                     0x00007fc7b6fff410:   cmp    $0x9d80,%r9d
                     0x00007fc7b6fff417:   jb     0x00007fc7b6fff57d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                     0x00007fc7b6fff41d:   mov    $0x1,%r11d
                     0x00007fc7b6fff423:   nopw   0x0(%rax,%rax,1)
                     0x00007fc7b6fff42c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   1.47%       ↗↗↗↗  0x00007fc7b6fff430:   cmp    $0x9d80,%r11d
          ╭    ││││  0x00007fc7b6fff437:   jge    0x00007fc7b6fff509           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   4.54%  │    ││││  0x00007fc7b6fff43d:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   8.13%  │    ││││  0x00007fc7b6fff442:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.94%  │    ││││  0x00007fc7b6fff448:   mov    %r11d,%edi
   1.56%  │    ││││  0x00007fc7b6fff44b:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   4.45%  │    ││││  0x00007fc7b6fff44d:   cmp    $0x0,%ebx
          │╭   ││││  0x00007fc7b6fff450:   je     0x00007fc7b6fff49f
   5.24%  ││   ││││  0x00007fc7b6fff456:   cmp    $0x1,%ebx
          ││╭  ││││  0x00007fc7b6fff459:   je     0x00007fc7b6fff476
   0.97%  │││  ││││  0x00007fc7b6fff45f:   cmp    $0x2,%ebx
          │││╭ ││││  0x00007fc7b6fff462:   je     0x00007fc7b6fff4e7
   0.27%  ││││ ││││  0x00007fc7b6fff468:   cmp    $0x3,%ebx
          ││││╭││││  0x00007fc7b6fff46b:   je     0x00007fc7b6fff4c5
          │││││││││  0x00007fc7b6fff471:   jmp    0x00007fc7b6fff66e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.24%  ││↘││││││  0x00007fc7b6fff476:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          ││ ││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││ ││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.50%  ││ ││││││  0x00007fc7b6fff480:   cmpl   $0xc27240,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fc7b6fff6d4
          ││ ││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
  13.00%  ││ ││││││  0x00007fc7b6fff48c:   jne    0x00007fc7b6fff5ba           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   1.49%  ││ ││││││  0x00007fc7b6fff492:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   7.98%  ││ ││││││  0x00007fc7b6fff49a:   mov    %edi,%r11d
   0.51%  ││ ││╰│││  0x00007fc7b6fff49d:   jmp    0x00007fc7b6fff430           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   1.34%  │↘ ││ │││  0x00007fc7b6fff49f:   nop                                 ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  ││ │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││ │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.36%  │  ││ │││  0x00007fc7b6fff4a0:   cmpl   $0xc27030,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fc7b6fff6f0
          │  ││ │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   4.98%  │  ││ │││  0x00007fc7b6fff4ac:   jne    0x00007fc7b6fff65c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   1.54%  │  ││ │││  0x00007fc7b6fff4b2:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │  ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   2.86%  │  ││ │││  0x00007fc7b6fff4ba:   mov    %edi,%r11d
   1.33%  │  ││ │││  0x00007fc7b6fff4bd:   data16 xchg %ax,%ax
   0.31%  │  ││ ╰││  0x00007fc7b6fff4c0:   jmp    0x00007fc7b6fff430           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  ││  ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.76%  │  │↘  ││  0x00007fc7b6fff4c5:   cmpl   $0xc27660,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fc7b6fff70c
          │  │   ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
   8.32%  │  │   ││  0x00007fc7b6fff4d1:   jne    0x00007fc7b6fff608           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   0.79%  │  │   ││  0x00007fc7b6fff4d7:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │  │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          │  │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   5.53%  │  │   ││  0x00007fc7b6fff4df:   mov    %edi,%r11d
   0.33%  │  │   ╰│  0x00007fc7b6fff4e2:   jmp    0x00007fc7b6fff430           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │    │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.39%  │  ↘    │  0x00007fc7b6fff4e7:   cmpl   $0xc27450,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fc7b6fff728
          │       │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   7.69%  │       │  0x00007fc7b6fff4f3:   jne    0x00007fc7b6fff64a           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.95%  │       │  0x00007fc7b6fff4f9:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   6.99%  │       │  0x00007fc7b6fff501:   mov    %edi,%r11d
   0.47%  │       ╰  0x00007fc7b6fff504:   jmp    0x00007fc7b6fff430           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   0.00%  ↘          0x00007fc7b6fff509:   mov    0x10(%rsp),%rbp
   0.03%             0x00007fc7b6fff50e:   add    $0x18,%rsp
                     0x00007fc7b6fff512:   mov    0x348(%r15),%rcx
   0.01%             0x00007fc7b6fff519:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%             0x00007fc7b6fff51b:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                     0x00007fc7b6fff51c:   nopl   0x0(%rax)                    ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
                     0x00007fc7b6fff520:   cmpl   $0xc27030,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007fc7b6fff746
                                                                               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.02%             0x00007fc7b6fff52b:   jne    0x00007fc7b6fff617           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
                     0x00007fc7b6fff531:   incl   0xc(,%rbx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
                     0x00007fc7b6fff538:   jmp    0x00007fc7b6fff3f8           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
                     0x00007fc7b6fff53d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
....................................................................................................
  97.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 752 
   1.36%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 752 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  os::PlatformMonitor::wait 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.82%  <...other 293 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 752 
   2.26%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  os::PlatformMonitor::wait 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%         libc-2.31.so  _nl_cleanup_time 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  xmlStream::write_text 
   0.18%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.33%       jvmci, level 4
   2.26%               kernel
   0.15%            libjvm.so
   0.09%         libc-2.31.so
   0.07%                     
   0.04%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%          c1, level 3
   0.00%          interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 25.00% complete, ETA 00:22:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.532 ns/op
# Warmup Iteration   2: 2.498 ns/op
# Warmup Iteration   3: 2.498 ns/op
# Warmup Iteration   4: 2.500 ns/op
# Warmup Iteration   5: 2.499 ns/op
Iteration   1: 2.499 ns/op
Iteration   2: 2.499 ns/op
Iteration   3: 2.499 ns/op
Iteration   4: 2.499 ns/op
Iteration   5: 2.499 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.499 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (2.499, 2.499, 2.499), stdev = 0.001
  CI (99.9%): [2.498, 2.500] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 194381 total address lines.
Perf output processed (skipped 58.809 seconds):
 Column 1: cycles (50801 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 757 

                        0x00007fc9f6ffeaa3:   cmp    $0x9d80,%r11d
                        0x00007fc9f6ffeaaa:   jb     0x00007fc9f6ffec7d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                        0x00007fc9f6ffeab0:   cmp    $0x9d80,%r9d
                        0x00007fc9f6ffeab7:   jb     0x00007fc9f6ffec7d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                        0x00007fc9f6ffeabd:   mov    $0x1,%r11d
                        0x00007fc9f6ffeac3:   nopw   0x0(%rax,%rax,1)
                        0x00007fc9f6ffeacc:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   7.30%         ↗↗↗↗↗  0x00007fc9f6ffead0:   cmp    $0x9d80,%r11d
          ╭      │││││  0x00007fc9f6ffead7:   jge    0x00007fc9f6ffebe7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   1.15%  │      │││││  0x00007fc9f6ffeadd:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   5.06%  │      │││││  0x00007fc9f6ffeae2:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   3.24%  │      │││││  0x00007fc9f6ffeae8:   mov    %r11d,%edi
   7.19%  │      │││││  0x00007fc9f6ffeaeb:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   1.08%  │      │││││  0x00007fc9f6ffeaed:   cmp    $0x3,%ebx
          │╭     │││││  0x00007fc9f6ffeaf0:   jge    0x00007fc9f6ffeb16
   2.55%  ││     │││││  0x00007fc9f6ffeaf6:   cmp    $0x2,%ebx
          ││╭    │││││  0x00007fc9f6ffeaf9:   jge    0x00007fc9f6ffeb90
   0.50%  │││    │││││  0x00007fc9f6ffeaff:   cmp    $0x0,%ebx
          │││╭   │││││  0x00007fc9f6ffeb02:   je     0x00007fc9f6ffeb4c
   2.07%  ││││   │││││  0x00007fc9f6ffeb08:   cmp    $0x1,%ebx
          ││││╭  │││││  0x00007fc9f6ffeb0b:   je     0x00007fc9f6ffeb6e
          │││││  │││││  0x00007fc9f6ffeb11:   jmp    0x00007fc9f6ffec99
   1.41%  │↘│││  │││││  0x00007fc9f6ffeb16:   cmp    $0x3,%ebx
          │ │││╭ │││││  0x00007fc9f6ffeb19:   je     0x00007fc9f6ffeb2d
   0.17%  │ ││││ │││││  0x00007fc9f6ffeb1f:   cmp    $0x4,%ebx
          │ ││││╭│││││  0x00007fc9f6ffeb22:   je     0x00007fc9f6ffebc5
          │ ││││││││││  0x00007fc9f6ffeb28:   jmp    0x00007fc9f6ffec99           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ ││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   3.26%  │ │││↘││││││  0x00007fc9f6ffeb2d:   cmpl   $0xc27660,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fc9f6ffedf9
          │ │││ ││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
   3.49%  │ │││ ││││││  0x00007fc9f6ffeb39:   jne    0x00007fc9f6ffed47           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   0.42%  │ │││ ││││││  0x00007fc9f6ffeb3f:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          │ │││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   6.01%  │ │││ ││││││  0x00007fc9f6ffeb47:   mov    %edi,%r11d
   0.14%  │ │││ │╰││││  0x00007fc9f6ffeb4a:   jmp    0x00007fc9f6ffead0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ │││ │ ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │││ │ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   2.48%  │ │↘│ │ ││││  0x00007fc9f6ffeb4c:   cmpl   $0xc27030,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fc9f6ffee15
          │ │ │ │ ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   3.80%  │ │ │ │ ││││  0x00007fc9f6ffeb58:   jne    0x00007fc9f6ffed6b           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.62%  │ │ │ │ ││││  0x00007fc9f6ffeb5e:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │ │ │ │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   4.54%  │ │ │ │ ││││  0x00007fc9f6ffeb66:   mov    %edi,%r11d
   0.29%  │ │ │ │ ╰│││  0x00007fc9f6ffeb69:   jmp    0x00007fc9f6ffead0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ │ │ │  │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │ │ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.01%  │ │ ↘ │  │││  0x00007fc9f6ffeb6e:   cmpl   $0xc27240,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fc9f6ffee31
          │ │   │  │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
   5.69%  │ │   │  │││  0x00007fc9f6ffeb7a:   jne    0x00007fc9f6ffecf9           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │   │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   2.07%  │ │   │  │││  0x00007fc9f6ffeb80:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │ │   │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │ │   │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   4.79%  │ │   │  │││  0x00007fc9f6ffeb88:   mov    %edi,%r11d
   1.37%  │ │   │  ╰││  0x00007fc9f6ffeb8b:   jmp    0x00007fc9f6ffead0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │   │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   1.39%  │ ↘   │   ││  0x00007fc9f6ffeb90:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.01%  │     │   ││  0x00007fc9f6ffeb9b:   data16 data16 xchg %ax,%ax
   0.54%  │     │   ││  0x00007fc9f6ffeb9f:   nop                                 ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │     │   ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   1.36%  │     │   ││  0x00007fc9f6ffeba0:   cmpl   $0xc27450,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fc9f6ffee4d
          │     │   ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   4.83%  │     │   ││  0x00007fc9f6ffebac:   jne    0x00007fc9f6ffed7d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.94%  │     │   ││  0x00007fc9f6ffebb2:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   4.72%  │     │   ││  0x00007fc9f6ffebba:   mov    %edi,%r11d
   0.58%  │     │   ││  0x00007fc9f6ffebbd:   data16 xchg %ax,%ax
   0.75%  │     │   ╰│  0x00007fc9f6ffebc0:   jmp    0x00007fc9f6ffead0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │     │    │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   3.16%  │     ↘    │  0x00007fc9f6ffebc5:   cmpl   $0xc27870,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fc9f6ffee69
          │          │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
   2.72%  │          │  0x00007fc9f6ffebd1:   jne    0x00007fc9f6ffed26           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   0.51%  │          │  0x00007fc9f6ffebd7:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   5.25%  │          │  0x00007fc9f6ffebdf:   mov    %edi,%r11d
   0.21%  │          ╰  0x00007fc9f6ffebe2:   jmp    0x00007fc9f6ffead0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.00%  ↘             0x00007fc9f6ffebe7:   mov    0x10(%rsp),%rbp
   0.02%                0x00007fc9f6ffebec:   add    $0x18,%rsp
                        0x00007fc9f6ffebf0:   mov    0x348(%r15),%rcx
                        0x00007fc9f6ffebf7:   test   %eax,(%rcx)                  ;   {poll_return}
   0.03%                0x00007fc9f6ffebf9:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                        0x00007fc9f6ffebfa:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
   0.00%                0x00007fc9f6ffec00:   cmpl   $0xc27030,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007fc9f6ffee86
                                                                                  ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.01%                0x00007fc9f6ffec0b:   jne    0x00007fc9f6ffed38           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
                        0x00007fc9f6ffec11:   incl   0xc(,%rbx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
                        0x00007fc9f6ffec18:   jmp    0x00007fc9f6ffea98           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
                        0x00007fc9f6ffec1d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
....................................................................................................
  97.69%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 757 
   0.62%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 757 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.02%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 757 
   1.99%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 776 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  LIR_Assembler::emit_lir_list 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  outputStream::update_position 
   0.00%            libjvm.so  event_to_env 
   0.13%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.73%       jvmci, level 4
   1.99%               kernel
   0.11%            libjvm.so
   0.08%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.03%                     
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 31.25% complete, ETA 00:20:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.734 ns/op
# Warmup Iteration   2: 2.687 ns/op
# Warmup Iteration   3: 2.695 ns/op
# Warmup Iteration   4: 2.691 ns/op
# Warmup Iteration   5: 2.679 ns/op
Iteration   1: 2.678 ns/op
Iteration   2: 2.674 ns/op
Iteration   3: 2.687 ns/op
Iteration   4: 2.683 ns/op
Iteration   5: 2.709 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.686 ±(99.9%) 0.053 ns/op [Average]
  (min, avg, max) = (2.674, 2.686, 2.709), stdev = 0.014
  CI (99.9%): [2.633, 2.739] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 196422 total address lines.
Perf output processed (skipped 58.781 seconds):
 Column 1: cycles (50749 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 758 

                          0x00007fd60b0000c3:   cmp    $0x9d80,%r11d
                          0x00007fd60b0000ca:   jb     0x00007fd60b0002dd           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                          0x00007fd60b0000d0:   cmp    $0x9d80,%r9d
                          0x00007fd60b0000d7:   jb     0x00007fd60b0002dd           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                          0x00007fd60b0000dd:   mov    $0x1,%r11d
                          0x00007fd60b0000e3:   nopw   0x0(%rax,%rax,1)
                          0x00007fd60b0000ec:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   4.67%          ↗↗↗↗↗↗  0x00007fd60b0000f0:   cmp    $0x9d80,%r11d
          ╭       ││││││  0x00007fd60b0000f7:   jge    0x00007fd60b00022f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   2.12%  │       ││││││  0x00007fd60b0000fd:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   7.64%  │       ││││││  0x00007fd60b000102:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.16%  │       ││││││  0x00007fd60b000108:   mov    %r11d,%edi
   4.65%  │       ││││││  0x00007fd60b00010b:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   2.19%  │       ││││││  0x00007fd60b00010d:   cmp    $0x4,%ebx
          │╭      ││││││  0x00007fd60b000110:   jge    0x00007fd60b000145
   4.35%  ││      ││││││  0x00007fd60b000116:   cmp    $0x2,%ebx
          ││╭     ││││││  0x00007fd60b000119:   jge    0x00007fd60b000136
   0.09%  │││     ││││││  0x00007fd60b00011f:   cmp    $0x0,%ebx
          │││╭    ││││││  0x00007fd60b000122:   je     0x00007fd60b000185
   0.50%  ││││    ││││││  0x00007fd60b000128:   cmp    $0x1,%ebx
          ││││╭   ││││││  0x00007fd60b00012b:   je     0x00007fd60b0001a7
          │││││   ││││││  0x00007fd60b000131:   jmp    0x00007fd60b000329
   0.38%  ││↘││   ││││││  0x00007fd60b000136:   cmp    $0x2,%ebx
          ││ ││╭  ││││││  0x00007fd60b000139:   je     0x00007fd60b0001c9
   1.62%  ││ │││  ││││││  0x00007fd60b00013f:   nop
          ││ │││╭ ││││││  0x00007fd60b000140:   jmp    0x00007fd60b0001eb
   2.29%  │↘ ││││ ││││││  0x00007fd60b000145:   cmp    $0x4,%ebx
          │  ││││╭││││││  0x00007fd60b000148:   je     0x00007fd60b00020d
   0.22%  │  │││││││││││  0x00007fd60b00014e:   cmp    $0x5,%ebx
          │  │││││││││││  0x00007fd60b000151:   jne    0x00007fd60b000329           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.81%  │  │││││││││││  0x00007fd60b000157:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
          │  │││││││││││  0x00007fd60b000160:   cmpl   $0xc27a80,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fd60b000470
          │  │││││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
   3.07%  │  │││││││││││  0x00007fd60b00016c:   jne    0x00007fd60b0002f9           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   1.72%  │  │││││││││││  0x00007fd60b000172:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
          │  │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   4.58%  │  │││││││││││  0x00007fd60b00017a:   mov    %edi,%r11d
   1.23%  │  │││││││││││  0x00007fd60b00017d:   data16 xchg %ax,%ax
          │  │││││╰│││││  0x00007fd60b000180:   jmp    0x00007fd60b0000f0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │││││ │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │││││ │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.38%  │  ↘││││ │││││  0x00007fd60b000185:   cmpl   $0xc27030,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fd60b00048c
          │   ││││ │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   4.60%  │   ││││ │││││  0x00007fd60b000191:   jne    0x00007fd60b000359           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.39%  │   ││││ │││││  0x00007fd60b000197:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │   ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │   ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   3.77%  │   ││││ │││││  0x00007fd60b00019f:   mov    %edi,%r11d
   0.07%  │   ││││ ╰││││  0x00007fd60b0001a2:   jmp    0x00007fd60b0000f0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │   ││││  ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │   ││││  ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.51%  │   ↘│││  ││││  0x00007fd60b0001a7:   cmpl   $0xc27240,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fd60b0004a8
          │    │││  ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
   4.86%  │    │││  ││││  0x00007fd60b0001b3:   jne    0x00007fd60b0003c2           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.61%  │    │││  ││││  0x00007fd60b0001b9:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   6.90%  │    │││  ││││  0x00007fd60b0001c1:   mov    %edi,%r11d
   0.19%  │    │││  ╰│││  0x00007fd60b0001c4:   jmp    0x00007fd60b0000f0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │    │││   │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││   │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   2.48%  │    ↘││   │││  0x00007fd60b0001c9:   cmpl   $0xc27450,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fd60b0004c6
          │     ││   │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   3.03%  │     ││   │││  0x00007fd60b0001d5:   jne    0x00007fd60b0003f8           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │     ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.55%  │     ││   │││  0x00007fd60b0001db:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │     ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │     ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   4.11%  │     ││   │││  0x00007fd60b0001e3:   mov    %edi,%r11d
   0.20%  │     ││   ╰││  0x00007fd60b0001e6:   jmp    0x00007fd60b0000f0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │     ││    ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     ││    ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   1.08%  │     ↘│    ││  0x00007fd60b0001eb:   cmpl   $0xc27660,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fd60b0004e6
          │      │    ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
   3.79%  │      │    ││  0x00007fd60b0001f7:   jne    0x00007fd60b00031a           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │      │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   0.35%  │      │    ││  0x00007fd60b0001fd:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │      │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          │      │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   6.31%  │      │    ││  0x00007fd60b000205:   mov    %edi,%r11d
   0.09%  │      │    ╰│  0x00007fd60b000208:   jmp    0x00007fd60b0000f0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │      │     │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │      │     │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   2.42%  │      ↘     │  0x00007fd60b00020d:   cmpl   $0xc27870,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fd60b000506
          │            │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
   2.75%  │            │  0x00007fd60b000219:   jne    0x00007fd60b000377           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   0.50%  │            │  0x00007fd60b00021f:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   3.45%  │            │  0x00007fd60b000227:   mov    %edi,%r11d
   0.23%  │            ╰  0x00007fd60b00022a:   jmp    0x00007fd60b0000f0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
          ↘               0x00007fd60b00022f:   mov    0x10(%rsp),%rbp
   0.02%                  0x00007fd60b000234:   add    $0x18,%rsp
                          0x00007fd60b000238:   mov    0x348(%r15),%rcx
                          0x00007fd60b00023f:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%                  0x00007fd60b000241:   ret                                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
                          0x00007fd60b000242:   cmpl   $0xc27870,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007fd60b000526
                                                                                    ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
                          0x00007fd60b00024d:   jne    0x00007fd60b0003a4           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
                          0x00007fd60b000253:   incl   0x1c(,%rbx,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
                          0x00007fd60b00025a:   jmp    0x00007fd60b0000b8           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.98%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 758 
   0.61%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 758 
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
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.83%  <...other 278 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 758 
   1.67%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 781 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.00%            libjvm.so  printf_to_env 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.04%       jvmci, level 4
   1.67%               kernel
   0.12%            libjvm.so
   0.07%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 37.50% complete, ETA 00:18:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.881 ns/op
# Warmup Iteration   2: 2.811 ns/op
# Warmup Iteration   3: 2.791 ns/op
# Warmup Iteration   4: 2.797 ns/op
# Warmup Iteration   5: 2.818 ns/op
Iteration   1: 2.801 ns/op
Iteration   2: 2.850 ns/op
Iteration   3: 2.810 ns/op
Iteration   4: 2.830 ns/op
Iteration   5: 2.845 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.827 ±(99.9%) 0.082 ns/op [Average]
  (min, avg, max) = (2.801, 2.827, 2.850), stdev = 0.021
  CI (99.9%): [2.746, 2.909] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 197429 total address lines.
Perf output processed (skipped 58.663 seconds):
 Column 1: cycles (50687 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 764 

                             0x00007f7a72fff155:   jb     0x00007f7a72fff3dd           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                             0x00007f7a72fff15b:   nopl   0x0(%rax,%rax,1)
                             0x00007f7a72fff160:   cmp    $0x9d80,%r9d
                             0x00007f7a72fff167:   jb     0x00007f7a72fff3dd           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                             0x00007f7a72fff16d:   mov    $0x1,%r11d
                             0x00007f7a72fff173:   nopw   0x0(%rax,%rax,1)
                             0x00007f7a72fff17c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   3.82%            ↗↗↗↗↗↗↗  0x00007f7a72fff180:   cmp    $0x9d80,%r11d
          ╭         │││││││  0x00007f7a72fff187:   jge    0x00007f7a72fff305           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   2.95%  │         │││││││  0x00007f7a72fff18d:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │         │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   5.01%  │         │││││││  0x00007f7a72fff192:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │         │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   2.76%  │         │││││││  0x00007f7a72fff198:   mov    %r11d,%edi
   3.64%  │         │││││││  0x00007f7a72fff19b:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │         │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   3.01%  │         │││││││  0x00007f7a72fff19d:   cmp    $0x4,%ebx
          │╭        │││││││  0x00007f7a72fff1a0:   jge    0x00007f7a72fff1d9
   2.65%  ││        │││││││  0x00007f7a72fff1a6:   cmp    $0x2,%ebx
          ││╭       │││││││  0x00007f7a72fff1a9:   jge    0x00007f7a72fff1cb
   0.43%  │││       │││││││  0x00007f7a72fff1af:   cmp    $0x0,%ebx
          │││╭      │││││││  0x00007f7a72fff1b2:   je     0x00007f7a72fff225
   0.41%  ││││      │││││││  0x00007f7a72fff1b8:   cmp    $0x1,%ebx
   0.86%  ││││      │││││││  0x00007f7a72fff1bb:   nopl   0x0(%rax,%rax,1)
   0.79%  ││││╭     │││││││  0x00007f7a72fff1c0:   je     0x00007f7a72fff247
          │││││     │││││││  0x00007f7a72fff1c6:   jmp    0x00007f7a72fff537
   0.47%  ││↘││     │││││││  0x00007f7a72fff1cb:   cmp    $0x2,%ebx
          ││ ││╭    │││││││  0x00007f7a72fff1ce:   je     0x00007f7a72fff269
   1.39%  ││ │││╭   │││││││  0x00007f7a72fff1d4:   jmp    0x00007f7a72fff28b
   1.70%  │↘ ││││   │││││││  0x00007f7a72fff1d9:   cmp    $0x6,%ebx
   1.47%  │  ││││   │││││││  0x00007f7a72fff1dc:   nopl   0x0(%rax)
   1.59%  │  ││││   │││││││  0x00007f7a72fff1e0:   jg     0x00007f7a72fff537
   1.04%  │  ││││   │││││││  0x00007f7a72fff1e6:   cmp    $0x6,%ebx
          │  ││││╭  │││││││  0x00007f7a72fff1e9:   jge    0x00007f7a72fff1fd
   1.32%  │  │││││  │││││││  0x00007f7a72fff1ef:   cmp    $0x4,%ebx
          │  │││││╭ │││││││  0x00007f7a72fff1f2:   je     0x00007f7a72fff2ad
   0.37%  │  ││││││╭│││││││  0x00007f7a72fff1f8:   jmp    0x00007f7a72fff2cf           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.39%  │  ││││↘│││││││││  0x00007f7a72fff1fd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  ││││ │││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││││ │││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.25%  │  ││││ │││││││││  0x00007f7a72fff200:   cmpl   $0xc27c90,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f7a72fff5a6
          │  ││││ │││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg7&apos;)}
   2.43%  │  ││││ │││││││││  0x00007f7a72fff20c:   jne    0x00007f7a72fff3f9           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  ││││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   0.48%  │  ││││ │││││││││  0x00007f7a72fff212:   incl   0x24(,%r9,8)                 ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          │  ││││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
          │  ││││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   4.14%  │  ││││ │││││││││  0x00007f7a72fff21a:   mov    %edi,%r11d
   0.34%  │  ││││ │││││││││  0x00007f7a72fff21d:   data16 xchg %ax,%ax
   0.17%  │  ││││ ││╰││││││  0x00007f7a72fff220:   jmp    0x00007f7a72fff180           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  ││││ ││ ││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││││ ││ ││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.53%  │  ↘│││ ││ ││││││  0x00007f7a72fff225:   cmpl   $0xc27030,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f7a72fff5c6
          │   │││ ││ ││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   2.82%  │   │││ ││ ││││││  0x00007f7a72fff231:   jne    0x00007f7a72fff477           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   │││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.43%  │   │││ ││ ││││││  0x00007f7a72fff237:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │   │││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │   │││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   2.74%  │   │││ ││ ││││││  0x00007f7a72fff23f:   mov    %edi,%r11d
   0.19%  │   │││ ││ ╰│││││  0x00007f7a72fff242:   jmp    0x00007f7a72fff180           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │   │││ ││  │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │   │││ ││  │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.24%  │   ↘││ ││  │││││  0x00007f7a72fff247:   cmpl   $0xc27240,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f7a72fff5e6
          │    ││ ││  │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
   4.04%  │    ││ ││  │││││  0x00007f7a72fff253:   jne    0x00007f7a72fff41a           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.89%  │    ││ ││  │││││  0x00007f7a72fff259:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │    ││ ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   4.61%  │    ││ ││  │││││  0x00007f7a72fff261:   mov    %edi,%r11d
   0.42%  │    ││ ││  ╰││││  0x00007f7a72fff264:   jmp    0x00007f7a72fff180           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │    ││ ││   ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    ││ ││   ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   1.93%  │    ↘│ ││   ││││  0x00007f7a72fff269:   cmpl   $0xc27450,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f7a72fff606
          │     │ ││   ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   2.17%  │     │ ││   ││││  0x00007f7a72fff275:   jne    0x00007f7a72fff4fe           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.35%  │     │ ││   ││││  0x00007f7a72fff27b:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │     │ ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   4.31%  │     │ ││   ││││  0x00007f7a72fff283:   mov    %edi,%r11d
   0.12%  │     │ ││   ╰│││  0x00007f7a72fff286:   jmp    0x00007f7a72fff180           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │     │ ││    │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │ ││    │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.91%  │     ↘ ││    │││  0x00007f7a72fff28b:   cmpl   $0xc27660,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f7a72fff626
          │       ││    │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
   2.22%  │       ││    │││  0x00007f7a72fff297:   jne    0x00007f7a72fff525           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │       ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   1.38%  │       ││    │││  0x00007f7a72fff29d:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │       ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          │       ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   3.58%  │       ││    │││  0x00007f7a72fff2a5:   mov    %edi,%r11d
   0.89%  │       ││    ╰││  0x00007f7a72fff2a8:   jmp    0x00007f7a72fff180           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │       ││     ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │       ││     ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.94%  │       ↘│     ││  0x00007f7a72fff2ad:   cmpl   $0xc27870,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f7a72fff646
          │        │     ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
   2.33%  │        │     ││  0x00007f7a72fff2b9:   jne    0x00007f7a72fff4ec           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │        │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   0.74%  │        │     ││  0x00007f7a72fff2bf:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │        │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
          │        │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   4.14%  │        │     ││  0x00007f7a72fff2c7:   mov    %edi,%r11d
   0.38%  │        │     ╰│  0x00007f7a72fff2ca:   jmp    0x00007f7a72fff180           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │        │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   0.60%  │        ↘      │  0x00007f7a72fff2cf:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.34%  │               │  0x00007f7a72fff2da:   data16 data16 xchg %ax,%ax
   0.72%  │               │  0x00007f7a72fff2de:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │               │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │               │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.36%  │               │  0x00007f7a72fff2e0:   cmpl   $0xc27a80,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f7a72fff666
          │               │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
   2.84%  │               │  0x00007f7a72fff2ec:   jne    0x00007f7a72fff495           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   0.73%  │               │  0x00007f7a72fff2f2:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
          │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   4.61%  │               │  0x00007f7a72fff2fa:   mov    %edi,%r11d
   0.36%  │               │  0x00007f7a72fff2fd:   data16 xchg %ax,%ax
   0.27%  │               ╰  0x00007f7a72fff300:   jmp    0x00007f7a72fff180           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   0.00%  ↘                  0x00007f7a72fff305:   mov    0x10(%rsp),%rbp
   0.02%                     0x00007f7a72fff30a:   add    $0x18,%rsp
                             0x00007f7a72fff30e:   mov    0x348(%r15),%rcx
                             0x00007f7a72fff315:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%                     0x00007f7a72fff317:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                             0x00007f7a72fff318:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
                             0x00007f7a72fff320:   cmpl   $0xc27030,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f7a72fff686
                                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.02%                     0x00007f7a72fff32b:   jne    0x00007f7a72fff468           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.00%                     0x00007f7a72fff331:   incl   0xc(,%rbx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
                             0x00007f7a72fff338:   jmp    0x00007f7a72fff143           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
                             0x00007f7a72fff33d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
                             0x00007f7a72fff340:   cmpl   $0xc27660,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f7a72fff6a6
                                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
....................................................................................................
  98.08%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 764 
   0.52%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 764 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.83%  <...other 283 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 764 
   1.53%               kernel  [unknown] 
   0.04%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  stringStream::write 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%         libc-2.31.so  __vfwprintf_internal 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 787 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%         libc-2.31.so  _nl_parse_alt_digit 
   0.16%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.11%       jvmci, level 4
   1.53%               kernel
   0.17%            libjvm.so
   0.11%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 43.75% complete, ETA 00:16:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.064 ns/op
# Warmup Iteration   2: 3.023 ns/op
# Warmup Iteration   3: 3.027 ns/op
# Warmup Iteration   4: 3.029 ns/op
# Warmup Iteration   5: 3.019 ns/op
Iteration   1: 3.019 ns/op
Iteration   2: 3.019 ns/op
Iteration   3: 3.014 ns/op
Iteration   4: 3.017 ns/op
Iteration   5: 3.024 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  3.019 ±(99.9%) 0.014 ns/op [Average]
  (min, avg, max) = (3.014, 3.019, 3.024), stdev = 0.004
  CI (99.9%): [3.005, 3.033] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 197987 total address lines.
Perf output processed (skipped 58.622 seconds):
 Column 1: cycles (50849 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 762 

                               0x00007f1de7001283:   cmp    $0x9d80,%r11d
                               0x00007f1de700128a:   jb     0x00007f1de700155d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                               0x00007f1de7001290:   cmp    $0x9d80,%r9d
                               0x00007f1de7001297:   jb     0x00007f1de700155d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                               0x00007f1de700129d:   mov    $0x1,%r11d
                               0x00007f1de70012a3:   nopw   0x0(%rax,%rax,1)
                               0x00007f1de70012ac:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   3.28%             ↗↗↗↗↗↗↗↗  0x00007f1de70012b0:   cmp    $0x9d80,%r11d
          ╭          ││││││││  0x00007f1de70012b7:   jge    0x00007f1de7001465           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   1.68%  │          ││││││││  0x00007f1de70012bd:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   6.17%  │          ││││││││  0x00007f1de70012c2:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   2.99%  │          ││││││││  0x00007f1de70012c8:   mov    %r11d,%edi
   3.19%  │          ││││││││  0x00007f1de70012cb:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   1.64%  │          ││││││││  0x00007f1de70012cd:   cmp    $0x4,%ebx
          │╭         ││││││││  0x00007f1de70012d0:   jge    0x00007f1de70012ff
   1.87%  ││         ││││││││  0x00007f1de70012d6:   cmp    $0x3,%ebx
          ││╭        ││││││││  0x00007f1de70012d9:   jge    0x00007f1de70013a7
   1.11%  │││        ││││││││  0x00007f1de70012df:   cmp    $0x2,%ebx
          │││╭       ││││││││  0x00007f1de70012e2:   jge    0x00007f1de7001385
   1.37%  ││││       ││││││││  0x00007f1de70012e8:   cmp    $0x0,%ebx
          ││││╭      ││││││││  0x00007f1de70012eb:   je     0x00007f1de700134f
   0.85%  │││││      ││││││││  0x00007f1de70012f1:   cmp    $0x1,%ebx
          │││││╭     ││││││││  0x00007f1de70012f4:   je     0x00007f1de700140d
          ││││││     ││││││││  0x00007f1de70012fa:   jmp    0x00007f1de7001672
   3.23%  │↘││││     ││││││││  0x00007f1de70012ff:   cmp    $0x6,%ebx
          │ ││││╭    ││││││││  0x00007f1de7001302:   jge    0x00007f1de7001316
   0.82%  │ │││││    ││││││││  0x00007f1de7001308:   cmp    $0x4,%ebx
          │ │││││╭   ││││││││  0x00007f1de700130b:   je     0x00007f1de70013c9
   0.62%  │ ││││││╭  ││││││││  0x00007f1de7001311:   jmp    0x00007f1de70013eb
   3.07%  │ ││││↘││  ││││││││  0x00007f1de7001316:   cmp    $0x6,%ebx
          │ ││││ ││╭ ││││││││  0x00007f1de7001319:   je     0x00007f1de700132d
          │ ││││ │││ ││││││││  0x00007f1de700131f:   cmp    $0x7,%ebx
          │ ││││ │││╭││││││││  0x00007f1de7001322:   je     0x00007f1de700142f
          │ ││││ ││││││││││││  0x00007f1de7001328:   jmp    0x00007f1de7001672           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ ││││ ││││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││ ││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   1.66%  │ ││││ ││↘│││││││││  0x00007f1de700132d:   cmpl   $0xc27c90,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f1de7001746
          │ ││││ ││ │││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg7&apos;)}
   0.40%  │ ││││ ││ │││││││││  0x00007f1de7001339:   jne    0x00007f1de70016df           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   0.12%  │ ││││ ││ │││││││││  0x00007f1de700133f:   incl   0x24(,%r9,8)                 ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
          │ ││││ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   5.11%  │ ││││ ││ │││││││││  0x00007f1de7001347:   mov    %edi,%r11d
   0.02%  │ ││││ ││ │╰│││││││  0x00007f1de700134a:   jmp    0x00007f1de70012b0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ ││ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   0.38%  │ ││↘│ ││ │ │││││││  0x00007f1de700134f:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.22%  │ ││ │ ││ │ │││││││  0x00007f1de700135a:   data16 data16 xchg %ax,%ax
   0.00%  │ ││ │ ││ │ │││││││  0x00007f1de700135e:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ ││ │ ││ │ │││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││ │ ││ │ │││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   1.58%  │ ││ │ ││ │ │││││││  0x00007f1de7001360:   cmpl   $0xc27030,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f1de7001766
          │ ││ │ ││ │ │││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   4.48%  │ ││ │ ││ │ │││││││  0x00007f1de700136c:   jne    0x00007f1de70015f7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │ ││ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.70%  │ ││ │ ││ │ │││││││  0x00007f1de7001372:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │ ││ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │ ││ │ ││ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   4.55%  │ ││ │ ││ │ │││││││  0x00007f1de700137a:   mov    %edi,%r11d
   0.14%  │ ││ │ ││ │ │││││││  0x00007f1de700137d:   data16 xchg %ax,%ax
   0.62%  │ ││ │ ││ │ ╰││││││  0x00007f1de7001380:   jmp    0x00007f1de70012b0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ ││ │ ││ │  ││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││ │ ││ │  ││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.07%  │ │↘ │ ││ │  ││││││  0x00007f1de7001385:   cmpl   $0xc27450,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f1de7001786
          │ │  │ ││ │  ││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   1.52%  │ │  │ ││ │  ││││││  0x00007f1de7001391:   jne    0x00007f1de70016a9           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ ││ │  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.67%  │ │  │ ││ │  ││││││  0x00007f1de7001397:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ ││ │  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │ │  │ ││ │  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   2.52%  │ │  │ ││ │  ││││││  0x00007f1de700139f:   mov    %edi,%r11d
   0.31%  │ │  │ ││ │  ╰│││││  0x00007f1de70013a2:   jmp    0x00007f1de70012b0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ │  │ ││ │   │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │  │ ││ │   │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.40%  │ ↘  │ ││ │   │││││  0x00007f1de70013a7:   cmpl   $0xc27660,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f1de70017a6
          │    │ ││ │   │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
   2.58%  │    │ ││ │   │││││  0x00007f1de70013b3:   jne    0x00007f1de7001697           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││ │   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   1.05%  │    │ ││ │   │││││  0x00007f1de70013b9:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││ │   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          │    │ ││ │   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   3.47%  │    │ ││ │   │││││  0x00007f1de70013c1:   mov    %edi,%r11d
   0.46%  │    │ ││ │   ╰││││  0x00007f1de70013c4:   jmp    0x00007f1de70012b0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │    │ ││ │    ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │ ││ │    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   1.08%  │    │ ↘│ │    ││││  0x00007f1de70013c9:   cmpl   $0xc27870,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f1de70017c6
          │    │  │ │    ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
   2.39%  │    │  │ │    ││││  0x00007f1de70013d5:   jne    0x00007f1de7001579           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │    │  │ │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   0.74%  │    │  │ │    ││││  0x00007f1de70013db:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │    │  │ │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
          │    │  │ │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   3.19%  │    │  │ │    ││││  0x00007f1de70013e3:   mov    %edi,%r11d
   0.30%  │    │  │ │    ╰│││  0x00007f1de70013e6:   jmp    0x00007f1de70012b0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │    │  │ │     │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │  │ │     │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.85%  │    │  ↘ │     │││  0x00007f1de70013eb:   cmpl   $0xc27a80,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f1de70017e6
          │    │    │     │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
   1.54%  │    │    │     │││  0x00007f1de70013f7:   jne    0x00007f1de7001606           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │    │    │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   0.72%  │    │    │     │││  0x00007f1de70013fd:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │    │    │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
          │    │    │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   4.99%  │    │    │     │││  0x00007f1de7001405:   mov    %edi,%r11d
   0.32%  │    │    │     ╰││  0x00007f1de7001408:   jmp    0x00007f1de70012b0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │    │    │      ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │    │      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   0.18%  │    ↘    │      ││  0x00007f1de700140d:   cmpl   $0xc27240,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f1de7001806
          │         │      ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
   3.65%  │         │      ││  0x00007f1de7001419:   jne    0x00007f1de7001618           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │         │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   1.07%  │         │      ││  0x00007f1de700141f:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │         │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │         │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   4.67%  │         │      ││  0x00007f1de7001427:   mov    %edi,%r11d
   0.41%  │         │      ╰│  0x00007f1de700142a:   jmp    0x00007f1de70012b0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │         │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   1.49%  │         ↘       │  0x00007f1de700142f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                 │  0x00007f1de700143a:   data16 data16 xchg %ax,%ax
          │                 │  0x00007f1de700143e:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │                 │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │                 │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
          │                 │  0x00007f1de7001440:   cmpl   $0xc2c000,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007f1de7001826
          │                 │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg8&apos;)}
   1.75%  │                 │  0x00007f1de700144c:   jne    0x00007f1de700159a           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 207)
   0.21%  │                 │  0x00007f1de7001452:   incl   0x28(,%r9,8)                 ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
          │                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 315)
          │                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 207)
   2.97%  │                 │  0x00007f1de700145a:   mov    %edi,%r11d
   0.01%  │                 │  0x00007f1de700145d:   data16 xchg %ax,%ax
          │                 ╰  0x00007f1de7001460:   jmp    0x00007f1de70012b0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
          ↘                    0x00007f1de7001465:   mov    0x10(%rsp),%rbp
   0.03%                       0x00007f1de700146a:   add    $0x18,%rsp
                               0x00007f1de700146e:   mov    0x348(%r15),%rcx
                               0x00007f1de7001475:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%                       0x00007f1de7001477:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                               0x00007f1de7001478:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
                               0x00007f1de7001480:   cmpl   $0xc27030,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f1de7001846
                                                                                         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.03%                       0x00007f1de700148b:   jne    0x00007f1de700163c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.00%                       0x00007f1de7001491:   incl   0xc(,%rbx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
                               0x00007f1de7001498:   jmp    0x00007f1de7001278           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
                               0x00007f1de700149d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 180)
                               0x00007f1de70014a0:   cmpl   $0xc27870,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f1de7001866
                                                                                         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
....................................................................................................
  97.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 762 
   0.73%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 762 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.04%  <...other 349 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 762 
   2.09%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  stringStream::write 
   0.00%            libjvm.so  os::javaTimeNanos 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.16%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.55%       jvmci, level 4
   2.09%               kernel
   0.16%            libjvm.so
   0.08%         libc-2.31.so
   0.06%                     
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 50.00% complete, ETA 00:14:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.881 ns/op
# Warmup Iteration   2: 1.949 ns/op
# Warmup Iteration   3: 1.949 ns/op
# Warmup Iteration   4: 1.949 ns/op
# Warmup Iteration   5: 1.949 ns/op
Iteration   1: 1.949 ns/op
Iteration   2: 1.874 ns/op
Iteration   3: 1.874 ns/op
Iteration   4: 1.874 ns/op
Iteration   5: 1.875 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.889 ±(99.9%) 0.128 ns/op [Average]
  (min, avg, max) = (1.874, 1.889, 1.949), stdev = 0.033
  CI (99.9%): [1.761, 2.018] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 196609 total address lines.
Perf output processed (skipped 58.761 seconds):
 Column 1: cycles (50854 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 3, compile id 747 

               0x00007fde9effdb58:   ja     0x00007fde9effdb6a
               0x00007fde9effdb5e:   xchg   %ax,%ax
               0x00007fde9effdb60:   cmp    $0x2,%r11d
          ╭    0x00007fde9effdb64:   jae    0x00007fde9effdbd8
          │    0x00007fde9effdb6a:   mov    0x10(,%r10,8),%r8d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
          │    0x00007fde9effdb72:   mov    $0x1,%r9d                    ; ImmutableOopMap {rsi=Oop r8=NarrowOop r10=NarrowOop }
          │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@0 (line 168)
          │    0x00007fde9effdb78:   add    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007fde9effdc10
   0.02%  │    0x00007fde9effdb80:   mov    %r9d,0xc(,%r8,8)             ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.00%  │    0x00007fde9effdb88:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
          │    0x00007fde9effdb8c:   mov    $0x1,%r8d
          │╭   0x00007fde9effdb92:   jmp    0x00007fde9effdbbd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
          ││   0x00007fde9effdb97:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   3.35%  ││↗  0x00007fde9effdba0:   mov    0x10(%r10,%r8,4),%r9d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   8.37%  │││  0x00007fde9effdba5:   mov    $0x1,%ecx                    ; ImmutableOopMap {r9=NarrowOop r10=Oop }
          │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   4.91%  │││  0x00007fde9effdbaa:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007fde9effdc2c
  59.35%  │││  0x00007fde9effdbb2:   mov    %ecx,0xc(,%r9,8)             ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  12.48%  │││  0x00007fde9effdbba:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   5.08%  │↘│  0x00007fde9effdbbd:   data16 xchg %ax,%ax
   4.17%  │ │  0x00007fde9effdbc0:   cmp    %r8d,%r11d
          │ ╰  0x00007fde9effdbc3:   jg     0x00007fde9effdba0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
          │    0x00007fde9effdbc5:   mov    0x10(%rsp),%rbp
          │    0x00007fde9effdbca:   add    $0x18,%rsp
          │    0x00007fde9effdbce:   mov    0x348(%r15),%rcx
   0.00%  │    0x00007fde9effdbd5:   test   %eax,(%rcx)                  ;   {poll_return}
   0.03%  │    0x00007fde9effdbd7:   ret                                 ;*return {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@37 (line 172)
          ↘    0x00007fde9effdbd8:   movl   $0xffffffe5,0x370(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@8 (line 169)
               0x00007fde9effdbe3:   movq   $0x14,0x378(%r15)
               0x00007fde9effdbee:   call   0x00007fde9750527a           ; ImmutableOopMap {rsi=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@0 (line 168)
                                                                         ;   {runtime_call DeoptimizationBlob}
               0x00007fde9effdbf3:   nop
               0x00007fde9effdbf4:   movl   $0xfffffff5,0x370(%r15)
....................................................................................................
  97.77%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 3, compile id 747 
   0.98%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 3, compile id 747 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 774 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  defaultStream::write 
   0.72%  <...other 256 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 3, compile id 747 
   1.87%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 774 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  os::current_thread_id 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%       hsdis-amd64.so  putop 
   0.00%         libc-2.31.so  __vfwprintf_internal 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%       jvmci, level 4
   1.87%               kernel
   0.11%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%       perf-32486.map
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = BIMORPHIC)

# Run progress: 56.25% complete, ETA 00:13:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.527 ns/op
# Warmup Iteration   2: 2.508 ns/op
# Warmup Iteration   3: 2.508 ns/op
# Warmup Iteration   4: 2.507 ns/op
# Warmup Iteration   5: 2.508 ns/op
Iteration   1: 2.508 ns/op
Iteration   2: 2.508 ns/op
Iteration   3: 2.496 ns/op
Iteration   4: 2.496 ns/op
Iteration   5: 2.495 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.500 ±(99.9%) 0.026 ns/op [Average]
  (min, avg, max) = (2.495, 2.500, 2.508), stdev = 0.007
  CI (99.9%): [2.474, 2.526] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 191662 total address lines.
Perf output processed (skipped 58.630 seconds):
 Column 1: cycles (50725 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 742 

                  0x00007f45ceffd16d:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
                  0x00007f45ceffd171:   cmp    %r8,%rcx
          ╭       0x00007f45ceffd174:   ja     0x00007f45ceffd18a
          │       0x00007f45ceffd17a:   nopw   0x0(%rax,%rax,1)
          │       0x00007f45ceffd180:   cmp    $0x2,%r11d
          │       0x00007f45ceffd184:   jae    0x00007f45ceffd258           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
          ↘       0x00007f45ceffd18a:   mov    $0x1,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   3.82%      ↗↗  0x00007f45ceffd190:   cmp    %r8d,%r11d
           ╭  ││  0x00007f45ceffd193:   jle    0x00007f45ceffd1f2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   2.39%   │  ││  0x00007f45ceffd199:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │  ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   8.08%   │  ││  0x00007f45ceffd19e:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f45ceffd2ac
  22.83%   │  ││  0x00007f45ceffd1a6:   movabs $0x800000000,%rbx
   3.02%   │  ││  0x00007f45ceffd1b0:   lea    (%rbx,%rcx,1),%rcx
   4.84%   │  ││  0x00007f45ceffd1b4:   mov    %r8d,%ebx
   5.28%   │  ││  0x00007f45ceffd1b7:   inc    %ebx
   2.01%   │  ││  0x00007f45ceffd1b9:   cmp    -0x120(%rip),%rcx        # 0x00007f45ceffd0a0
           │  ││                                                            ;   {section_word}
   6.45%   │╭ ││  0x00007f45ceffd1c0:   je     0x00007f45ceffd1d8
   2.80%   ││ ││  0x00007f45ceffd1c6:   cmp    -0x125(%rip),%rcx        # 0x00007f45ceffd0a8
           ││ ││                                                            ;   {section_word}
   2.26%   ││╭││  0x00007f45ceffd1cd:   je     0x00007f45ceffd1e5
           │││││  0x00007f45ceffd1d3:   jmp    0x00007f45ceffd23c
   2.59%   │↘│││  0x00007f45ceffd1d8:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
           │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  18.37%   │ │││  0x00007f45ceffd1e0:   mov    %ebx,%r8d
   0.92%   │ │╰│  0x00007f45ceffd1e3:   jmp    0x00007f45ceffd190           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   1.89%   │ ↘ │  0x00007f45ceffd1e5:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   8.67%   │   │  0x00007f45ceffd1ed:   mov    %ebx,%r8d
   1.41%   │   ╰  0x00007f45ceffd1f0:   jmp    0x00007f45ceffd190
           ↘      0x00007f45ceffd1f2:   mov    0x10(%rsp),%rbp
   0.01%          0x00007f45ceffd1f7:   add    $0x18,%rsp
                  0x00007f45ceffd1fb:   mov    0x348(%r15),%rcx
   0.00%          0x00007f45ceffd202:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%          0x00007f45ceffd204:   ret    
   0.00%          0x00007f45ceffd205:   mov    $0x1,%r9d
   0.00%          0x00007f45ceffd20b:   add    0xc(,%r8,8),%r9d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 273)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                  0x00007f45ceffd213:   mov    %r9d,0xc(,%r8,8)             ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                  0x00007f45ceffd21b:   jmp    0x00007f45ceffd161           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
                  0x00007f45ceffd220:   movl   $0xffffffcd,0x370(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@8 (line 169)
                  0x00007f45ceffd22b:   movq   $0x14,0x378(%r15)
....................................................................................................
  97.67%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 742 
   0.69%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 742 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.01%  <...other 351 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 742 
   1.93%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  event_to_env 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  ciBytecodeStream::reset_to_bci 
   0.00%            libjvm.so  os::current_thread_id 
   0.00%            libjvm.so  defaultStream::write 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.73%       jvmci, level 4
   1.93%               kernel
   0.13%            libjvm.so
   0.11%         libc-2.31.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.00%          interpreter
   0.00%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%       libz.so.1.2.11
   0.00%       perf-32541.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 62.50% complete, ETA 00:11:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.333 ns/op
# Warmup Iteration   2: 2.394 ns/op
# Warmup Iteration   3: 2.389 ns/op
# Warmup Iteration   4: 2.392 ns/op
# Warmup Iteration   5: 2.392 ns/op
Iteration   1: 2.393 ns/op
Iteration   2: 2.308 ns/op
Iteration   3: 2.339 ns/op
Iteration   4: 2.333 ns/op
Iteration   5: 2.332 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.341 ±(99.9%) 0.122 ns/op [Average]
  (min, avg, max) = (2.308, 2.341, 2.393), stdev = 0.032
  CI (99.9%): [2.219, 2.463] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 196117 total address lines.
Perf output processed (skipped 58.751 seconds):
 Column 1: cycles (51061 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 751 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
                    0x00007fcf76ffc31e:   xchg   %ax,%ax
                    0x00007fcf76ffc320:   cmp    %r8,%rcx
          ╭         0x00007fcf76ffc323:   ja     0x00007fcf76ffc333
          │         0x00007fcf76ffc329:   cmp    $0x2,%r11d
          │         0x00007fcf76ffc32d:   jae    0x00007fcf76ffc408           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
          ↘         0x00007fcf76ffc333:   mov    $0x1,%r8d
                    0x00007fcf76ffc339:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   3.40%       ↗↗↗  0x00007fcf76ffc340:   cmp    %r8d,%r11d
           ╭   │││  0x00007fcf76ffc343:   jle    0x00007fcf76ffc3bf           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   3.34%   │   │││  0x00007fcf76ffc349:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │   │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │   │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   6.60%   │   │││  0x00007fcf76ffc34e:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007fcf76ffc4a6
  22.53%   │   │││  0x00007fcf76ffc356:   movabs $0x800000000,%rbx
   3.06%   │   │││  0x00007fcf76ffc360:   lea    (%rbx,%rcx,1),%rcx
   5.19%   │   │││  0x00007fcf76ffc364:   mov    %r8d,%ebx
   4.53%   │   │││  0x00007fcf76ffc367:   inc    %ebx
   3.36%   │   │││  0x00007fcf76ffc369:   cmp    -0x130(%rip),%rcx        # 0x00007fcf76ffc240
           │   │││                                                            ;   {section_word}
   5.73%   │╭  │││  0x00007fcf76ffc370:   je     0x00007fcf76ffc398
   3.92%   ││  │││  0x00007fcf76ffc376:   cmp    -0x135(%rip),%rcx        # 0x00007fcf76ffc248
           ││  │││                                                            ;   {section_word}
   2.90%   ││  │││  0x00007fcf76ffc37d:   data16 xchg %ax,%ax
   2.20%   ││╭ │││  0x00007fcf76ffc380:   je     0x00007fcf76ffc3a5
   1.82%   │││ │││  0x00007fcf76ffc386:   cmp    -0x13d(%rip),%rcx        # 0x00007fcf76ffc250
           │││ │││                                                            ;   {section_word}
   1.19%   │││╭│││  0x00007fcf76ffc38d:   je     0x00007fcf76ffc3b2
           │││││││  0x00007fcf76ffc393:   jmp    0x00007fcf76ffc426
   1.87%   │↘│││││  0x00007fcf76ffc398:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
           │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   5.90%   │ │││││  0x00007fcf76ffc3a0:   mov    %ebx,%r8d
   1.15%   │ ││╰││  0x00007fcf76ffc3a3:   jmp    0x00007fcf76ffc340           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   1.40%   │ ↘│ ││  0x00007fcf76ffc3a5:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
           │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   6.33%   │  │ ││  0x00007fcf76ffc3ad:   mov    %ebx,%r8d
   1.13%   │  │ ╰│  0x00007fcf76ffc3b0:   jmp    0x00007fcf76ffc340
   1.78%   │  ↘  │  0x00007fcf76ffc3b2:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   6.43%   │     │  0x00007fcf76ffc3ba:   mov    %ebx,%r8d
   1.47%   │     ╰  0x00007fcf76ffc3bd:   jmp    0x00007fcf76ffc340
           ↘        0x00007fcf76ffc3bf:   mov    0x10(%rsp),%rbp
   0.01%            0x00007fcf76ffc3c4:   add    $0x18,%rsp
                    0x00007fcf76ffc3c8:   mov    0x348(%r15),%rcx
   0.00%            0x00007fcf76ffc3cf:   test   %eax,(%rcx)                  ;   {poll_return}
   0.03%            0x00007fcf76ffc3d1:   ret    
                    0x00007fcf76ffc3d2:   mov    $0x1,%r9d
                    0x00007fcf76ffc3d8:   add    0x14(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 285)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                    0x00007fcf76ffc3e0:   mov    %r9d,0x14(,%r8,8)            ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                    0x00007fcf76ffc3e8:   jmp    0x00007fcf76ffc30e
                    0x00007fcf76ffc3ed:   mov    $0x1,%r9d
                    0x00007fcf76ffc3f3:   add    0x10(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.26%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 751 
   1.30%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 751 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  RelocIterator::initialize 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 767 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.84%  <...other 288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 751 
   2.33%               kernel  [unknown] 
   0.03%         libc-2.31.so  __strxfrm_l 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  fileStream::write 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 767 
   0.02%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  event_to_env 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  jio_print 
   0.00%            libjvm.so  Method::line_number_from_bci 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%  libjvmcicompiler.so  AbstractStringBuilder_append_a8c950f4c131c6b18791121d2ff67fda7a026847 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.35%       jvmci, level 4
   2.33%               kernel
   0.15%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.02%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 68.75% complete, ETA 00:09:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.481 ns/op
# Warmup Iteration   2: 2.475 ns/op
# Warmup Iteration   3: 2.472 ns/op
# Warmup Iteration   4: 2.485 ns/op
# Warmup Iteration   5: 2.471 ns/op
Iteration   1: 2.478 ns/op
Iteration   2: 2.451 ns/op
Iteration   3: 2.465 ns/op
Iteration   4: 2.482 ns/op
Iteration   5: 2.482 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.472 ±(99.9%) 0.053 ns/op [Average]
  (min, avg, max) = (2.451, 2.472, 2.482), stdev = 0.014
  CI (99.9%): [2.419, 2.525] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 192474 total address lines.
Perf output processed (skipped 58.620 seconds):
 Column 1: cycles (50987 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 757 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
                      0x00007f83b2ffc92b:   cmp    %r8,%rcx
          ╭           0x00007f83b2ffc92e:   ja     0x00007f83b2ffc93e
          │           0x00007f83b2ffc934:   cmp    $0x2,%r11d
          │           0x00007f83b2ffc938:   jae    0x00007f83b2ffca6c           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
          ↘           0x00007f83b2ffc93e:   mov    $0x1,%r8d
                      0x00007f83b2ffc944:   nopl   0x0(%rax,%rax,1)
                      0x00007f83b2ffc94c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   2.55%        ↗↗↗↗  0x00007f83b2ffc950:   cmp    %r8d,%r11d
           ╭    ││││  0x00007f83b2ffc953:   jle    0x00007f83b2ffc9ec           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   3.18%   │    ││││  0x00007f83b2ffc959:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │    ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   7.59%   │    ││││  0x00007f83b2ffc95e:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f83b2ffcae6
  22.58%   │    ││││  0x00007f83b2ffc966:   movabs $0x800000000,%rbx
   2.35%   │    ││││  0x00007f83b2ffc970:   lea    (%rbx,%rcx,1),%rcx
   5.26%   │    ││││  0x00007f83b2ffc974:   mov    %r8d,%ebx
   5.05%   │    ││││  0x00007f83b2ffc977:   inc    %ebx
   2.60%   │    ││││  0x00007f83b2ffc979:   cmp    -0x140(%rip),%rcx        # 0x00007f83b2ffc840
           │    ││││                                                            ;   {section_word}
   5.29%   │╭   ││││  0x00007f83b2ffc980:   je     0x00007f83b2ffc9b2
   4.91%   ││   ││││  0x00007f83b2ffc986:   cmp    -0x145(%rip),%rcx        # 0x00007f83b2ffc848
           ││   ││││                                                            ;   {section_word}
   4.67%   ││╭  ││││  0x00007f83b2ffc98d:   je     0x00007f83b2ffc9bf
   2.83%   │││  ││││  0x00007f83b2ffc993:   cmp    -0x14a(%rip),%rcx        # 0x00007f83b2ffc850
           │││  ││││                                                            ;   {section_word}
   0.56%   │││╭ ││││  0x00007f83b2ffc99a:   je     0x00007f83b2ffc9cc
   1.57%   ││││ ││││  0x00007f83b2ffc9a0:   cmp    -0x14f(%rip),%rcx        # 0x00007f83b2ffc858
           ││││ ││││                                                            ;   {section_word}
   1.22%   ││││╭││││  0x00007f83b2ffc9a7:   je     0x00007f83b2ffc9dc
           │││││││││  0x00007f83b2ffc9ad:   jmp    0x00007f83b2ffca50
   1.01%   │↘│││││││  0x00007f83b2ffc9b2:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
           │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.94%   │ │││││││  0x00007f83b2ffc9ba:   mov    %ebx,%r8d
   0.68%   │ │││╰│││  0x00007f83b2ffc9bd:   jmp    0x00007f83b2ffc950           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   1.17%   │ ↘││ │││  0x00007f83b2ffc9bf:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │  ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
           │  ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   6.42%   │  ││ │││  0x00007f83b2ffc9c7:   mov    %ebx,%r8d
   0.74%   │  ││ ╰││  0x00007f83b2ffc9ca:   jmp    0x00007f83b2ffc950
   1.08%   │  ↘│  ││  0x00007f83b2ffc9cc:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
           │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.48%   │   │  ││  0x00007f83b2ffc9d4:   mov    %ebx,%r8d
   0.69%   │   │  ╰│  0x00007f83b2ffc9d7:   jmp    0x00007f83b2ffc950
   1.14%   │   ↘   │  0x00007f83b2ffc9dc:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.67%   │       │  0x00007f83b2ffc9e4:   mov    %ebx,%r8d
   0.95%   │       ╰  0x00007f83b2ffc9e7:   jmp    0x00007f83b2ffc950
           ↘          0x00007f83b2ffc9ec:   mov    0x10(%rsp),%rbp
   0.03%              0x00007f83b2ffc9f1:   add    $0x18,%rsp
                      0x00007f83b2ffc9f5:   mov    0x348(%r15),%rcx
   0.00%              0x00007f83b2ffc9fc:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%              0x00007f83b2ffc9fe:   ret    
                      0x00007f83b2ffc9ff:   mov    $0x1,%r9d
                      0x00007f83b2ffca05:   add    0x18(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 291)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                      0x00007f83b2ffca0d:   mov    %r9d,0x18(,%r8,8)            ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                      0x00007f83b2ffca15:   jmp    0x00007f83b2ffc91b
                      0x00007f83b2ffca1a:   mov    $0x1,%r9d
                      0x00007f83b2ffca20:   add    0x14(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.24%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 757 
   1.07%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 757 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.07%  <...other 352 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 757 
   2.37%               kernel  [unknown] 
   0.04%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%       hsdis-amd64.so  print_insn 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  printf_to_env 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 776 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  xmlStream::write_text 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.30%       jvmci, level 4
   2.37%               kernel
   0.11%            libjvm.so
   0.10%         libc-2.31.so
   0.03%                     
   0.03%       hsdis-amd64.so
   0.02%          interpreter
   0.02%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%       perf-32653.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 75.00% complete, ETA 00:07:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.659 ns/op
# Warmup Iteration   2: 2.620 ns/op
# Warmup Iteration   3: 2.677 ns/op
# Warmup Iteration   4: 2.683 ns/op
# Warmup Iteration   5: 2.672 ns/op
Iteration   1: 2.678 ns/op
Iteration   2: 2.673 ns/op
Iteration   3: 2.684 ns/op
Iteration   4: 2.678 ns/op
Iteration   5: 2.683 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.679 ±(99.9%) 0.017 ns/op [Average]
  (min, avg, max) = (2.673, 2.679, 2.684), stdev = 0.005
  CI (99.9%): [2.662, 2.696] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 189805 total address lines.
Perf output processed (skipped 58.526 seconds):
 Column 1: cycles (50698 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 743 

                        0x00007f3fe6ffd56e:   movslq %r8d,%r8
                        0x00007f3fe6ffd571:   mov    %r11d,%ecx
                        0x00007f3fe6ffd574:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
                        0x00007f3fe6ffd578:   nopl   0x0(%rax,%rax,1)
                        0x00007f3fe6ffd580:   cmp    %r8,%rcx
          ╭             0x00007f3fe6ffd583:   ja     0x00007f3fe6ffd593
          │             0x00007f3fe6ffd589:   cmp    $0x2,%r11d
          │             0x00007f3fe6ffd58d:   jae    0x00007f3fe6ffd6fc           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.00%  ↘             0x00007f3fe6ffd593:   mov    $0x1,%r8d
                        0x00007f3fe6ffd599:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   2.91%         ↗↗↗↗↗  0x00007f3fe6ffd5a0:   cmp    %r8d,%r11d
           ╭     │││││  0x00007f3fe6ffd5a3:   jle    0x00007f3fe6ffd65f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   3.22%   │     │││││  0x00007f3fe6ffd5a9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │     │││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │     │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   5.74%   │     │││││  0x00007f3fe6ffd5ae:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f3fe6ffd76c
  21.95%   │     │││││  0x00007f3fe6ffd5b6:   movabs $0x800000000,%rbx
   2.38%   │     │││││  0x00007f3fe6ffd5c0:   lea    (%rbx,%rcx,1),%rcx
   4.80%   │     │││││  0x00007f3fe6ffd5c4:   mov    %r8d,%ebx
   3.81%   │     │││││  0x00007f3fe6ffd5c7:   inc    %ebx
   2.92%   │     │││││  0x00007f3fe6ffd5c9:   cmp    -0x170(%rip),%rcx        # 0x00007f3fe6ffd460
           │     │││││                                                            ;   {section_word}
   5.22%   │╭    │││││  0x00007f3fe6ffd5d0:   je     0x00007f3fe6ffd612
   4.34%   ││    │││││  0x00007f3fe6ffd5d6:   cmp    -0x175(%rip),%rcx        # 0x00007f3fe6ffd468
           ││    │││││                                                            ;   {section_word}
   2.97%   ││    │││││  0x00007f3fe6ffd5dd:   data16 xchg %ax,%ax
   2.39%   ││╭   │││││  0x00007f3fe6ffd5e0:   je     0x00007f3fe6ffd61f
   2.74%   │││   │││││  0x00007f3fe6ffd5e6:   cmp    -0x17d(%rip),%rcx        # 0x00007f3fe6ffd470
           │││   │││││                                                            ;   {section_word}
   2.08%   │││╭  │││││  0x00007f3fe6ffd5ed:   je     0x00007f3fe6ffd62f
   1.82%   ││││  │││││  0x00007f3fe6ffd5f3:   cmp    -0x182(%rip),%rcx        # 0x00007f3fe6ffd478
           ││││  │││││                                                            ;   {section_word}
   1.30%   ││││╭ │││││  0x00007f3fe6ffd5fa:   je     0x00007f3fe6ffd63f
   1.06%   │││││ │││││  0x00007f3fe6ffd600:   cmp    -0x187(%rip),%rcx        # 0x00007f3fe6ffd480
           │││││ │││││                                                            ;   {section_word}
   0.36%   │││││╭│││││  0x00007f3fe6ffd607:   je     0x00007f3fe6ffd64f
           │││││││││││  0x00007f3fe6ffd60d:   jmp    0x00007f3fe6ffd6e0
   1.05%   │↘│││││││││  0x00007f3fe6ffd612:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
           │ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   4.60%   │ │││││││││  0x00007f3fe6ffd61a:   mov    %ebx,%r8d
   0.59%   │ ││││╰││││  0x00007f3fe6ffd61d:   jmp    0x00007f3fe6ffd5a0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.80%   │ ↘│││ ││││  0x00007f3fe6ffd61f:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │  │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
           │  │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.95%   │  │││ ││││  0x00007f3fe6ffd627:   mov    %ebx,%r8d
   0.57%   │  │││ ╰│││  0x00007f3fe6ffd62a:   jmp    0x00007f3fe6ffd5a0
   0.87%   │  ↘││  │││  0x00007f3fe6ffd62f:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │   ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
           │   ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.54%   │   ││  │││  0x00007f3fe6ffd637:   mov    %ebx,%r8d
   0.67%   │   ││  ╰││  0x00007f3fe6ffd63a:   jmp    0x00007f3fe6ffd5a0
   0.72%   │   ↘│   ││  0x00007f3fe6ffd63f:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
           │    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.31%   │    │   ││  0x00007f3fe6ffd647:   mov    %ebx,%r8d
   0.66%   │    │   ╰│  0x00007f3fe6ffd64a:   jmp    0x00007f3fe6ffd5a0
   1.04%   │    ↘    │  0x00007f3fe6ffd64f:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
           │         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
           │         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.44%   │         │  0x00007f3fe6ffd657:   mov    %ebx,%r8d
   0.91%   │         ╰  0x00007f3fe6ffd65a:   jmp    0x00007f3fe6ffd5a0
   0.00%   ↘            0x00007f3fe6ffd65f:   mov    0x10(%rsp),%rbp
   0.01%                0x00007f3fe6ffd664:   add    $0x18,%rsp
                        0x00007f3fe6ffd668:   mov    0x348(%r15),%rcx
   0.00%                0x00007f3fe6ffd66f:   test   %eax,(%rcx)                  ;   {poll_return}
   0.03%                0x00007f3fe6ffd671:   ret    
                        0x00007f3fe6ffd672:   mov    $0x1,%r9d
                        0x00007f3fe6ffd678:   add    0x14(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 285)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                        0x00007f3fe6ffd680:   mov    %r9d,0x14(,%r8,8)            ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                        0x00007f3fe6ffd688:   jmp    0x00007f3fe6ffd568
                        0x00007f3fe6ffd68d:   mov    $0x1,%r9d
                        0x00007f3fe6ffd693:   add    0x10(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 743 
   0.68%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 743 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.92%  <...other 303 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 743 
   1.88%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 765 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  os::PlatformMonitor::wait 
   0.00%            libjvm.so  outputStream::update_position 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%            libjvm.so  LIR_Op1::emit_code 
   0.11%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.88%       jvmci, level 4
   1.88%               kernel
   0.11%            libjvm.so
   0.06%                     
   0.04%         libc-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 81.25% complete, ETA 00:05:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.835 ns/op
# Warmup Iteration   2: 2.776 ns/op
# Warmup Iteration   3: 2.766 ns/op
# Warmup Iteration   4: 2.770 ns/op
# Warmup Iteration   5: 2.751 ns/op
Iteration   1: 2.533 ns/op
Iteration   2: 2.752 ns/op
Iteration   3: 2.586 ns/op
Iteration   4: 2.752 ns/op
Iteration   5: 2.746 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.674 ±(99.9%) 0.408 ns/op [Average]
  (min, avg, max) = (2.533, 2.674, 2.752), stdev = 0.106
  CI (99.9%): [2.266, 3.082] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 193233 total address lines.
Perf output processed (skipped 58.603 seconds):
 Column 1: cycles (51009 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 761 

                          0x00007f921afff578:   dec    %r8d
                          0x00007f921afff57b:   movslq %r8d,%r8
                          0x00007f921afff57e:   mov    %r11d,%ecx
                          0x00007f921afff581:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
                          0x00007f921afff585:   cmp    %r8,%rcx
          ╭               0x00007f921afff588:   ja     0x00007f921afff598
          │               0x00007f921afff58e:   cmp    $0x2,%r11d
          │               0x00007f921afff592:   jae    0x00007f921afff71b           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.00%  ↘               0x00007f921afff598:   mov    $0x1,%r8d
   0.00%                  0x00007f921afff59e:   xchg   %ax,%ax                      ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   2.44%          ↗↗↗↗↗↗  0x00007f921afff5a0:   cmp    %r8d,%r11d
           ╭      ││││││  0x00007f921afff5a3:   jle    0x00007f921afff67f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   3.24%   │      ││││││  0x00007f921afff5a9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │      ││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │      ││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   5.84%   │      ││││││  0x00007f921afff5ae:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f921afff7a7
  17.21%   │      ││││││  0x00007f921afff5b6:   movabs $0x800000000,%rbx
   2.10%   │      ││││││  0x00007f921afff5c0:   lea    (%rbx,%rcx,1),%rcx
   5.10%   │      ││││││  0x00007f921afff5c4:   mov    %r8d,%ebx
   3.94%   │      ││││││  0x00007f921afff5c7:   inc    %ebx
   2.91%   │      ││││││  0x00007f921afff5c9:   cmp    -0x170(%rip),%rcx        # 0x00007f921afff460
           │      ││││││                                                            ;   {section_word}
   4.78%   │╭     ││││││  0x00007f921afff5d0:   je     0x00007f921afff61f
   4.56%   ││     ││││││  0x00007f921afff5d6:   cmp    -0x175(%rip),%rcx        # 0x00007f921afff468
           ││     ││││││                                                            ;   {section_word}
   3.05%   ││     ││││││  0x00007f921afff5dd:   data16 xchg %ax,%ax
   2.47%   ││╭    ││││││  0x00007f921afff5e0:   je     0x00007f921afff62f
   2.98%   │││    ││││││  0x00007f921afff5e6:   cmp    -0x17d(%rip),%rcx        # 0x00007f921afff470
           │││    ││││││                                                            ;   {section_word}
   2.70%   │││╭   ││││││  0x00007f921afff5ed:   je     0x00007f921afff63f
   2.49%   ││││   ││││││  0x00007f921afff5f3:   cmp    -0x182(%rip),%rcx        # 0x00007f921afff478
           ││││   ││││││                                                            ;   {section_word}
   1.45%   ││││╭  ││││││  0x00007f921afff5fa:   je     0x00007f921afff64f
   1.59%   │││││  ││││││  0x00007f921afff600:   cmp    -0x187(%rip),%rcx        # 0x00007f921afff480
           │││││  ││││││                                                            ;   {section_word}
   1.01%   │││││╭ ││││││  0x00007f921afff607:   je     0x00007f921afff65f
   0.88%   ││││││ ││││││  0x00007f921afff60d:   cmp    -0x18c(%rip),%rcx        # 0x00007f921afff488
           ││││││ ││││││                                                            ;   {section_word}
   0.37%   ││││││╭││││││  0x00007f921afff614:   je     0x00007f921afff66f
           │││││││││││││  0x00007f921afff61a:   jmp    0x00007f921afff753
   1.11%   │↘│││││││││││  0x00007f921afff61f:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
           │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.71%   │ │││││││││││  0x00007f921afff627:   mov    %ebx,%r8d
   0.49%   │ │││││╰│││││  0x00007f921afff62a:   jmp    0x00007f921afff5a0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ │││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.64%   │ ↘││││ │││││  0x00007f921afff62f:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           │  ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
           │  ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   4.16%   │  ││││ │││││  0x00007f921afff637:   mov    %ebx,%r8d
   0.51%   │  ││││ ╰││││  0x00007f921afff63a:   jmp    0x00007f921afff5a0
   0.71%   │  ↘│││  ││││  0x00007f921afff63f:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │   │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
           │   │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.02%   │   │││  ││││  0x00007f921afff647:   mov    %ebx,%r8d
   0.56%   │   │││  ╰│││  0x00007f921afff64a:   jmp    0x00007f921afff5a0
   0.75%   │   ↘││   │││  0x00007f921afff64f:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │    ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
           │    ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.49%   │    ││   │││  0x00007f921afff657:   mov    %ebx,%r8d
   0.58%   │    ││   ╰││  0x00007f921afff65a:   jmp    0x00007f921afff5a0
   0.76%   │    ↘│    ││  0x00007f921afff65f:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │     │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
           │     │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.94%   │     │    ││  0x00007f921afff667:   mov    %ebx,%r8d
   0.66%   │     │    ╰│  0x00007f921afff66a:   jmp    0x00007f921afff5a0
   0.83%   │     ↘     │  0x00007f921afff66f:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
           │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
           │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.63%   │           │  0x00007f921afff677:   mov    %ebx,%r8d
   0.72%   │           ╰  0x00007f921afff67a:   jmp    0x00007f921afff5a0
           ↘              0x00007f921afff67f:   mov    0x10(%rsp),%rbp
   0.03%                  0x00007f921afff684:   add    $0x18,%rsp
                          0x00007f921afff688:   mov    0x348(%r15),%rcx
   0.00%                  0x00007f921afff68f:   test   %eax,(%rcx)                  ;   {poll_return}
   0.03%                  0x00007f921afff691:   ret    
                          0x00007f921afff692:   mov    $0x1,%r9d
                          0x00007f921afff698:   add    0x18(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 291)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                          0x00007f921afff6a0:   mov    %r9d,0x18(,%r8,8)            ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                          0x00007f921afff6a8:   jmp    0x00007f921afff575
                          0x00007f921afff6ad:   mov    $0x1,%r9d
                          0x00007f921afff6b3:   add    0x14(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.47%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 761 
   1.15%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 761 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.83%  <...other 275 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 761 
   2.15%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.54%       jvmci, level 4
   2.15%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.03%                     
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%       perf-32765.map
   0.00%     Unknown, level 0
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 87.50% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.005 ns/op
# Warmup Iteration   2: 2.922 ns/op
# Warmup Iteration   3: 2.932 ns/op
# Warmup Iteration   4: 2.932 ns/op
# Warmup Iteration   5: 2.946 ns/op
Iteration   1: 2.951 ns/op
Iteration   2: 2.951 ns/op
Iteration   3: 2.950 ns/op
Iteration   4: 2.950 ns/op
Iteration   5: 2.951 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.950 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (2.950, 2.950, 2.951), stdev = 0.001
  CI (99.9%): [2.949, 2.952] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 195453 total address lines.
Perf output processed (skipped 58.590 seconds):
 Column 1: cycles (50590 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 761 

                            0x00007f5122fff0ae:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
                            0x00007f5122fff0b2:   cmp    %r8,%rcx
          ╭                 0x00007f5122fff0b5:   ja     0x00007f5122fff0ca
          │                 0x00007f5122fff0bb:   nopl   0x0(%rax,%rax,1)
          │                 0x00007f5122fff0c0:   cmp    $0x2,%r11d
          │                 0x00007f5122fff0c4:   jae    0x00007f5122fff2b8           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
          ↘                 0x00007f5122fff0ca:   mov    $0x1,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   1.51%           ↗↗↗↗↗↗↗  0x00007f5122fff0d0:   cmp    %r8d,%r11d
           ╭       │││││││  0x00007f5122fff0d3:   jle    0x00007f5122fff1c9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │       │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   3.48%   │       │││││││  0x00007f5122fff0d9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │       │││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │       │││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   5.54%   │       │││││││  0x00007f5122fff0de:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f5122fff30c
  18.41%   │       │││││││  0x00007f5122fff0e6:   movabs $0x800000000,%rbx
   1.25%   │       │││││││  0x00007f5122fff0f0:   lea    (%rbx,%rcx,1),%rcx
   5.41%   │       │││││││  0x00007f5122fff0f4:   mov    %r8d,%ebx
   3.39%   │       │││││││  0x00007f5122fff0f7:   inc    %ebx
   3.00%   │       │││││││  0x00007f5122fff0f9:   cmp    -0x180(%rip),%rcx        # 0x00007f5122ffef80
           │       │││││││                                                            ;   {section_word}
   4.58%   │╭      │││││││  0x00007f5122fff100:   je     0x00007f5122fff169
   5.22%   ││      │││││││  0x00007f5122fff106:   cmp    -0x185(%rip),%rcx        # 0x00007f5122ffef88
           ││      │││││││                                                            ;   {section_word}
   3.07%   ││╭     │││││││  0x00007f5122fff10d:   je     0x00007f5122fff159
   3.76%   │││     │││││││  0x00007f5122fff113:   cmp    -0x18a(%rip),%rcx        # 0x00007f5122ffef90
           │││     │││││││                                                            ;   {section_word}
   0.86%   │││╭    │││││││  0x00007f5122fff11a:   je     0x00007f5122fff179
   3.32%   ││││    │││││││  0x00007f5122fff120:   cmp    -0x18f(%rip),%rcx        # 0x00007f5122ffef98
           ││││    │││││││                                                            ;   {section_word}
   1.48%   ││││╭   │││││││  0x00007f5122fff127:   je     0x00007f5122fff199
   2.20%   │││││   │││││││  0x00007f5122fff12d:   cmp    -0x194(%rip),%rcx        # 0x00007f5122ffefa0
           │││││   │││││││                                                            ;   {section_word}
   0.62%   │││││╭  │││││││  0x00007f5122fff134:   je     0x00007f5122fff189
   1.61%   ││││││  │││││││  0x00007f5122fff13a:   cmp    -0x199(%rip),%rcx        # 0x00007f5122ffefa8
           ││││││  │││││││                                                            ;   {section_word}
   0.53%   ││││││╭ │││││││  0x00007f5122fff141:   je     0x00007f5122fff1a9
   0.70%   │││││││ │││││││  0x00007f5122fff147:   cmp    -0x19e(%rip),%rcx        # 0x00007f5122ffefb0
           │││││││ │││││││                                                            ;   {section_word}
   0.29%   │││││││╭│││││││  0x00007f5122fff14e:   je     0x00007f5122fff1b9
           │││││││││││││││  0x00007f5122fff154:   jmp    0x00007f5122fff280           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.75%   ││↘││││││││││││  0x00007f5122fff159:   incl   0x24(,%r9,8)                 ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
           ││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.68%   ││ ││││││││││││  0x00007f5122fff161:   mov    %ebx,%r8d
   0.58%   ││ │││││╰││││││  0x00007f5122fff164:   jmp    0x00007f5122fff0d0
   0.90%   │↘ │││││ ││││││  0x00007f5122fff169:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
           │  │││││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
           │  │││││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   5.00%   │  │││││ ││││││  0x00007f5122fff171:   mov    %ebx,%r8d
   0.30%   │  │││││ ╰│││││  0x00007f5122fff174:   jmp    0x00007f5122fff0d0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │  │││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.64%   │  ↘││││  │││││  0x00007f5122fff179:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │   ││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
           │   ││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.74%   │   ││││  │││││  0x00007f5122fff181:   mov    %ebx,%r8d
   0.39%   │   ││││  ╰││││  0x00007f5122fff184:   jmp    0x00007f5122fff0d0
   0.75%   │   │↘││   ││││  0x00007f5122fff189:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
           │   │ ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
           │   │ ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.27%   │   │ ││   ││││  0x00007f5122fff191:   mov    %ebx,%r8d
   0.63%   │   │ ││   ╰│││  0x00007f5122fff194:   jmp    0x00007f5122fff0d0
   0.67%   │   ↘ ││    │││  0x00007f5122fff199:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           │     ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
           │     ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.68%   │     ││    │││  0x00007f5122fff1a1:   mov    %ebx,%r8d
   0.52%   │     ││    ╰││  0x00007f5122fff1a4:   jmp    0x00007f5122fff0d0
   0.68%   │     ↘│     ││  0x00007f5122fff1a9:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │      │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
           │      │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.89%   │      │     ││  0x00007f5122fff1b1:   mov    %ebx,%r8d
   0.60%   │      │     ╰│  0x00007f5122fff1b4:   jmp    0x00007f5122fff0d0
   0.66%   │      ↘      │  0x00007f5122fff1b9:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
           │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.16%   │             │  0x00007f5122fff1c1:   mov    %ebx,%r8d
   0.51%   │             ╰  0x00007f5122fff1c4:   jmp    0x00007f5122fff0d0
           ↘                0x00007f5122fff1c9:   mov    0x10(%rsp),%rbp
   0.03%                    0x00007f5122fff1ce:   add    $0x18,%rsp
                            0x00007f5122fff1d2:   mov    0x348(%r15),%rcx
                            0x00007f5122fff1d9:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%                    0x00007f5122fff1db:   ret    
                            0x00007f5122fff1dc:   mov    $0x1,%r9d
                            0x00007f5122fff1e2:   add    0x20(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@6 (line 303)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                            0x00007f5122fff1ea:   mov    %r9d,0x20(,%r8,8)            ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                            0x00007f5122fff1f2:   jmp    0x00007f5122fff0a2
                            0x00007f5122fff1f7:   mov    $0x1,%r9d
                            0x00007f5122fff1fd:   add    0xc(,%r8,8),%r9d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.31%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 761 
   0.35%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 761 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.77%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 761 
   1.32%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  stringStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 783 
   0.01%            libjvm.so  event_to_env 
   0.01%         libc-2.31.so  __vfwprintf_internal 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%       hsdis-amd64.so  putop 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%            libjvm.so  os::elapsedTime 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.15%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.36%       jvmci, level 4
   1.32%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 93.75% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.115 ns/op
# Warmup Iteration   2: 3.069 ns/op
# Warmup Iteration   3: 3.077 ns/op
# Warmup Iteration   4: 3.077 ns/op
# Warmup Iteration   5: 3.079 ns/op
Iteration   1: 3.078 ns/op
Iteration   2: 3.072 ns/op
Iteration   3: 3.069 ns/op
Iteration   4: 3.071 ns/op
Iteration   5: 3.067 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  3.071 ±(99.9%) 0.016 ns/op [Average]
  (min, avg, max) = (3.067, 3.071, 3.078), stdev = 0.004
  CI (99.9%): [3.056, 3.087] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 194106 total address lines.
Perf output processed (skipped 58.566 seconds):
 Column 1: cycles (50711 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 763 

                                0x00007f0d5afff9a7:   mov    %r9d,0x18(,%r8,8)            ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                            ↗↗  0x00007f0d5afff9af:   mov    %r11d,%r8d
                            ││  0x00007f0d5afff9b2:   dec    %r8d
                            ││  0x00007f0d5afff9b5:   movslq %r8d,%r8
                            ││  0x00007f0d5afff9b8:   mov    %r11d,%ecx
                            ││  0x00007f0d5afff9bb:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
                            ││  0x00007f0d5afff9bf:   nop
   0.00%                    ││  0x00007f0d5afff9c0:   cmp    %r8,%rcx
          ╭                 ││  0x00007f0d5afff9c3:   ja     0x00007f0d5afff9d3
          │                 ││  0x00007f0d5afff9c9:   cmp    $0x2,%r11d
          │                 ││  0x00007f0d5afff9cd:   jae    0x00007f0d5afffbcc           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.00%  ↘                 ││  0x00007f0d5afff9d3:   mov    $0x1,%r8d
   0.00%                    ││  0x00007f0d5afff9d9:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   1.75%            ↗↗↗↗↗↗↗↗││  0x00007f0d5afff9e0:   cmp    %r8d,%r11d
           ╭        ││││││││││  0x00007f0d5afff9e3:   jle    0x00007f0d5afffaf9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │        ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   2.65%   │        ││││││││││  0x00007f0d5afff9e9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │        ││││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │        ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   5.65%   │        ││││││││││  0x00007f0d5afff9ee:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f0d5afffc66
  17.21%   │        ││││││││││  0x00007f0d5afff9f6:   movabs $0x800000000,%rbx
   1.63%   │        ││││││││││  0x00007f0d5afffa00:   lea    (%rbx,%rcx,1),%rcx
   4.67%   │        ││││││││││  0x00007f0d5afffa04:   mov    %r8d,%ebx
   3.44%   │        ││││││││││  0x00007f0d5afffa07:   inc    %ebx
   2.78%   │        ││││││││││  0x00007f0d5afffa09:   cmp    -0x190(%rip),%rcx        # 0x00007f0d5afff880
           │        ││││││││││                                                            ;   {section_word}
   4.35%   │╭       ││││││││││  0x00007f0d5afffa10:   je     0x00007f0d5afffa89
   4.62%   ││       ││││││││││  0x00007f0d5afffa16:   cmp    -0x195(%rip),%rcx        # 0x00007f0d5afff888
           ││       ││││││││││                                                            ;   {section_word}
   2.65%   ││       ││││││││││  0x00007f0d5afffa1d:   data16 xchg %ax,%ax
   2.28%   ││╭      ││││││││││  0x00007f0d5afffa20:   je     0x00007f0d5afffa79
   3.10%   │││      ││││││││││  0x00007f0d5afffa26:   cmp    -0x19d(%rip),%rcx        # 0x00007f0d5afff890
           │││      ││││││││││                                                            ;   {section_word}
   2.22%   │││╭     ││││││││││  0x00007f0d5afffa2d:   je     0x00007f0d5afffa99
   3.07%   ││││     ││││││││││  0x00007f0d5afffa33:   cmp    -0x1a2(%rip),%rcx        # 0x00007f0d5afff898
           ││││     ││││││││││                                                            ;   {section_word}
   1.74%   ││││╭    ││││││││││  0x00007f0d5afffa3a:   je     0x00007f0d5afffaa9
   1.78%   │││││    ││││││││││  0x00007f0d5afffa40:   cmp    -0x1a7(%rip),%rcx        # 0x00007f0d5afff8a0
           │││││    ││││││││││                                                            ;   {section_word}
   0.99%   │││││╭   ││││││││││  0x00007f0d5afffa47:   je     0x00007f0d5afffab9
   1.58%   ││││││   ││││││││││  0x00007f0d5afffa4d:   cmp    -0x1ac(%rip),%rcx        # 0x00007f0d5afff8a8
           ││││││   ││││││││││                                                            ;   {section_word}
   1.06%   ││││││╭  ││││││││││  0x00007f0d5afffa54:   je     0x00007f0d5afffac9
   0.80%   │││││││  ││││││││││  0x00007f0d5afffa5a:   cmp    -0x1b1(%rip),%rcx        # 0x00007f0d5afff8b0
           │││││││  ││││││││││                                                            ;   {section_word}
   0.81%   │││││││╭ ││││││││││  0x00007f0d5afffa61:   je     0x00007f0d5afffad9
   0.41%   ││││││││ ││││││││││  0x00007f0d5afffa67:   cmp    -0x1b6(%rip),%rcx        # 0x00007f0d5afff8b8
           ││││││││ ││││││││││                                                            ;   {section_word}
   0.42%   ││││││││╭││││││││││  0x00007f0d5afffa6e:   je     0x00007f0d5afffae9
           │││││││││││││││││││  0x00007f0d5afffa74:   jmp    0x00007f0d5afffc06           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.58%   ││↘││││││││││││││││  0x00007f0d5afffa79:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
           ││ ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.95%   ││ ││││││││││││││││  0x00007f0d5afffa81:   mov    %ebx,%r8d
   0.40%   ││ ││││││╰│││││││││  0x00007f0d5afffa84:   jmp    0x00007f0d5afff9e0
   0.79%   │↘ ││││││ │││││││││  0x00007f0d5afffa89:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │  ││││││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
           │  ││││││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.22%   │  ││││││ │││││││││  0x00007f0d5afffa91:   mov    %ebx,%r8d
   0.58%   │  ││││││ ╰││││││││  0x00007f0d5afffa94:   jmp    0x00007f0d5afff9e0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │  ││││││  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.33%   │  ↘│││││  ││││││││  0x00007f0d5afffa99:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │   │││││  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
           │   │││││  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.89%   │   │││││  ││││││││  0x00007f0d5afffaa1:   mov    %ebx,%r8d
   0.18%   │   │││││  ╰│││││││  0x00007f0d5afffaa4:   jmp    0x00007f0d5afff9e0
   0.49%   │   ↘││││   │││││││  0x00007f0d5afffaa9:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │    ││││   │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
           │    ││││   │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.39%   │    ││││   │││││││  0x00007f0d5afffab1:   mov    %ebx,%r8d
   0.29%   │    ││││   ╰││││││  0x00007f0d5afffab4:   jmp    0x00007f0d5afff9e0
   0.62%   │    ↘│││    ││││││  0x00007f0d5afffab9:   incl   0x24(,%r9,8)                 ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
           │     │││    ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
           │     │││    ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.03%   │     │││    ││││││  0x00007f0d5afffac1:   mov    %ebx,%r8d
   0.57%   │     │││    ╰│││││  0x00007f0d5afffac4:   jmp    0x00007f0d5afff9e0
   0.47%   │     ↘││     │││││  0x00007f0d5afffac9:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
           │      ││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
           │      ││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.51%   │      ││     │││││  0x00007f0d5afffad1:   mov    %ebx,%r8d
   0.35%   │      ││     ╰││││  0x00007f0d5afffad4:   jmp    0x00007f0d5afff9e0
   0.47%   │      ↘│      ││││  0x00007f0d5afffad9:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
           │       │      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
           │       │      ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.07%   │       │      ││││  0x00007f0d5afffae1:   mov    %ebx,%r8d
   0.46%   │       │      ╰│││  0x00007f0d5afffae4:   jmp    0x00007f0d5afff9e0
   0.54%   │       ↘       │││  0x00007f0d5afffae9:   incl   0x28(,%r9,8)                 ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
           │               │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 315)
           │               │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.52%   │               │││  0x00007f0d5afffaf1:   mov    %ebx,%r8d
   0.44%   │               ╰││  0x00007f0d5afffaf4:   jmp    0x00007f0d5afff9e0
   0.00%   ↘                ││  0x00007f0d5afffaf9:   mov    0x10(%rsp),%rbp
   0.01%                    ││  0x00007f0d5afffafe:   add    $0x18,%rsp
                            ││  0x00007f0d5afffb02:   mov    0x348(%r15),%rcx
   0.00%                    ││  0x00007f0d5afffb09:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%                    ││  0x00007f0d5afffb0b:   ret    
                            ││  0x00007f0d5afffb0c:   mov    $0x1,%r9d
                            ││  0x00007f0d5afffb12:   add    0x14(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 285)
                            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                            ││  0x00007f0d5afffb1a:   mov    %r9d,0x14(,%r8,8)            ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
                            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                            ╰│  0x00007f0d5afffb22:   jmp    0x00007f0d5afff9af
   0.00%                     │  0x00007f0d5afffb27:   mov    $0x1,%r9d
   0.00%                     │  0x00007f0d5afffb2d:   add    0xc(,%r8,8),%r9d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 273)
                             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.00%                     │  0x00007f0d5afffb35:   mov    %r9d,0xc(,%r8,8)             ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                             │  0x00007f0d5afffb3d:   data16 xchg %ax,%ax
                             ╰  0x00007f0d5afffb40:   jmp    0x00007f0d5afff9af
                                0x00007f0d5afffb45:   mov    $0x1,%r9d
                                0x00007f0d5afffb4b:   add    0x10(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 279)
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
....................................................................................................
  97.83%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 763 
   0.53%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 763 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.05%  <...other 353 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 763 
   1.75%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  os::current_thread_id 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.88%       jvmci, level 4
   1.75%               kernel
   0.16%            libjvm.so
   0.07%         libc-2.31.so
   0.05%                     
   0.03%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.00%          c1, level 3
   0.00%       perf-32931.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:29:39

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

Benchmark                                                         (targetType)  Mode  Cnt  Score   Error  Units
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic         MONOMORPHIC  avgt    5  1.969 ± 0.226  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm    MONOMORPHIC  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic           BIMORPHIC  avgt    5  2.346 ± 0.102  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm      BIMORPHIC  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_3  avgt    5  2.194 ± 0.234  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_3  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_4  avgt    5  2.667 ± 0.004  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_4  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_5  avgt    5  2.499 ± 0.001  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_5  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_6  avgt    5  2.686 ± 0.053  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_6  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_7  avgt    5  2.827 ± 0.082  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_7  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_8  avgt    5  3.019 ± 0.014  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_8  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                        MONOMORPHIC  avgt    5  1.889 ± 0.128  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                   MONOMORPHIC  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                          BIMORPHIC  avgt    5  2.500 ± 0.026  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                     BIMORPHIC  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_3  avgt    5  2.341 ± 0.122  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_3  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_4  avgt    5  2.472 ± 0.053  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_4  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_5  avgt    5  2.679 ± 0.017  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_5  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_6  avgt    5  2.674 ± 0.408  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_6  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_7  avgt    5  2.950 ± 0.001  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_7  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_8  avgt    5  3.071 ± 0.016  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_8  avgt         NaN            ---
