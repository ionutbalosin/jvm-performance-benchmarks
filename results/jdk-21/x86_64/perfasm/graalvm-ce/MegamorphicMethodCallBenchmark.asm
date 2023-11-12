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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 0.00% complete, ETA 00:26:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.039 ns/op
# Warmup Iteration   2: 2.024 ns/op
# Warmup Iteration   3: 2.024 ns/op
# Warmup Iteration   4: 2.024 ns/op
# Warmup Iteration   5: 2.024 ns/op
Iteration   1: 2.024 ns/op
Iteration   2: 1.893 ns/op
Iteration   3: 1.894 ns/op
Iteration   4: 2.020 ns/op
Iteration   5: 1.895 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  1.945 ±(99.9%) 0.271 ns/op [Average]
  (min, avg, max) = (1.893, 1.945, 2.024), stdev = 0.070
  CI (99.9%): [1.675, 2.216] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 218307 total address lines.
Perf output processed (skipped 60.440 seconds):
 Column 1: cycles (51131 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 964 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 179)
              0x00007fcab723b863:   mov    $0x1,%r9d
          ╭   0x00007fcab723b869:   jmp    0x00007fcab723b8a9           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
          │   0x00007fcab723b86e:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fcab723b879:   data16 data16 xchg %ax,%ax
          │   0x00007fcab723b87d:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
          │↗  0x00007fcab723b880:   movsbl 0x10(%r9,%r8,8),%ecx         ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   0.27%  ││  0x00007fcab723b886:   test   %ecx,%ecx
          ││  0x00007fcab723b888:   jne    0x00007fcab723b905           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
  19.36%  ││  0x00007fcab723b88e:   mov    0x10(%r10,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.29%  ││  0x00007fcab723b893:   mov    $0x1,%ebx                    ; ImmutableOopMap {rcx=NarrowOop r8=NarrowOop r10=Oop r11=Oop }
          ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
          ││  0x00007fcab723b898:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007fcab723b9e3
  51.87%  ││  0x00007fcab723b89f:   mov    %ebx,0xc(,%rcx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
  24.37%  ││  0x00007fcab723b8a6:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
          ↘│  0x00007fcab723b8a9:   cmp    $0x9d80,%r9d
           ╰  0x00007fcab723b8b0:   jl     0x00007fcab723b880           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
              0x00007fcab723b8b2:   mov    0x10(%rsp),%rbp              ;   {no_reloc}
   0.00%      0x00007fcab723b8b7:   add    $0x18,%rsp
   0.00%      0x00007fcab723b8bb:   nopl   0x0(%rax,%rax,1)
              0x00007fcab723b8c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007fcab723b8c7:   ja     0x00007fcab723b966
              0x00007fcab723b8cd:   ret    
              0x00007fcab723b8ce:   mov    $0x0,%r11
              0x00007fcab723b8d5:   mov    $0xffffffe5,%r10d
              0x00007fcab723b8db:   mov    %r10d,0x484(%r15)            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
              0x00007fcab723b8e2:   mov    %r11,0x490(%r15)
              0x00007fcab723b8e9:   call   0x00007fcab6c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  97.16%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 964 
   1.10%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 964 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 991 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 964 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.95%  <...other 318 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 964 
   2.37%              kernel  [unknown] 
   0.12%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 991 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  nmethod::reloc_string_for 
   0.12%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.23%      jvmci, level 4
   2.37%              kernel
   0.12%                    
   0.12%           libjvm.so
   0.11%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%        libjimage.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = BIMORPHIC)

# Run progress: 6.25% complete, ETA 00:28:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.124 ns/op
# Warmup Iteration   2: 2.100 ns/op
# Warmup Iteration   3: 2.099 ns/op
# Warmup Iteration   4: 2.099 ns/op
# Warmup Iteration   5: 2.099 ns/op
Iteration   1: 2.099 ns/op
Iteration   2: 2.229 ns/op
Iteration   3: 2.228 ns/op
Iteration   4: 2.229 ns/op
Iteration   5: 2.229 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.203 ±(99.9%) 0.223 ns/op [Average]
  (min, avg, max) = (2.099, 2.203, 2.229), stdev = 0.058
  CI (99.9%): [1.980, 2.425] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 218580 total address lines.
Perf output processed (skipped 60.308 seconds):
 Column 1: cycles (50878 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 963 

                   0x00007ffb0323f2e3:   cmp    $0x9d80,%r11d
          ╭        0x00007ffb0323f2ea:   jb     0x00007ffb0323f3bd           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
          │        0x00007ffb0323f2f0:   cmp    $0x9d80,%r9d
          │╭       0x00007ffb0323f2f7:   jb     0x00007ffb0323f3bd           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
          ││       0x00007ffb0323f2fd:   mov    $0x1,%r11d
          ││       0x00007ffb0323f303:   nopw   0x0(%rax,%rax,1)
          ││       0x00007ffb0323f30c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   3.80%  ││   ↗↗  0x00007ffb0323f310:   cmp    $0x9d80,%r11d
          ││╭  ││  0x00007ffb0323f317:   jge    0x00007ffb0323f383           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   3.81%  │││  ││  0x00007ffb0323f31d:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   6.16%  │││  ││  0x00007ffb0323f322:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   5.07%  │││  ││  0x00007ffb0323f328:   mov    %r11d,%edi
   3.69%  │││  ││  0x00007ffb0323f32b:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   3.66%  │││  ││  0x00007ffb0323f32d:   cmp    $0x1,%ebx
          │││╭ ││  0x00007ffb0323f330:   je     0x00007ffb0323f345
   2.77%  ││││ ││  0x00007ffb0323f336:   cmp    $0x0,%ebx
          ││││╭││  0x00007ffb0323f339:   je     0x00007ffb0323f364
          │││││││  0x00007ffb0323f33f:   nop
          │││││││  0x00007ffb0323f340:   jmp    0x00007ffb0323f408           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   2.52%  │││↘│││  0x00007ffb0323f345:   cmpl   $0x102bcd8,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007ffb0323f517
          │││ │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
  18.46%  │││ │││  0x00007ffb0323f351:   jne    0x00007ffb0323f45d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   2.72%  │││ │││  0x00007ffb0323f357:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
  14.32%  │││ │││  0x00007ffb0323f35f:   mov    %edi,%r11d
   2.00%  │││ │╰│  0x00007ffb0323f362:   jmp    0x00007ffb0323f310           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │││ │ │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││ │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   2.17%  │││ ↘ │  0x00007ffb0323f364:   cmpl   $0x102bad0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007ffb0323f53a
          │││   │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
  13.11%  │││   │  0x00007ffb0323f370:   jne    0x00007ffb0323f3e0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   3.11%  │││   │  0x00007ffb0323f376:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   7.67%  │││   │  0x00007ffb0323f37e:   mov    %edi,%r11d
   2.57%  │││   ╰  0x00007ffb0323f381:   jmp    0x00007ffb0323f310           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   0.00%  ││↘      0x00007ffb0323f383:   mov    0x10(%rsp),%rbp
   0.01%  ││       0x00007ffb0323f388:   add    $0x18,%rsp
          ││       0x00007ffb0323f38c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││       0x00007ffb0323f393:   ja     0x00007ffb0323f49a
   0.00%  ││       0x00007ffb0323f399:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
          ││       0x00007ffb0323f39a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
          ││                                                                 ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 178)
          ││       0x00007ffb0323f3a0:   cmpl   $0x102bad0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007ffb0323f55d
          ││                                                                 ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.03%  ││       0x00007ffb0323f3ab:   jne    0x00007ffb0323f417           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
          ││       0x00007ffb0323f3b1:   incl   0xc(,%rbx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
          ││       0x00007ffb0323f3b8:   jmp    0x00007ffb0323f2d8           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
          ↘↘       0x00007ffb0323f3bd:   movl   $0xffffffe5,0x484(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                   0x00007ffb0323f3c8:   movq   $0x1698,0x490(%r15)
....................................................................................................
  97.66%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.66%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 963 
   0.24%              kernel  [unknown] 
   0.23%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 991 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.15%  <...other 359 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.68%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 963 
   1.89%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.04%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 991 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  Symbol::print_value_on 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  os::write 
   0.00%        libc-2.31.so  syscall 
   0.00%      hsdis-amd64.so  print_insn_i386 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.16%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.71%      jvmci, level 4
   1.89%              kernel
   0.14%           libjvm.so
   0.10%                    
   0.07%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 12.50% complete, ETA 00:26:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.350 ns/op
# Warmup Iteration   2: 2.182 ns/op
# Warmup Iteration   3: 2.182 ns/op
# Warmup Iteration   4: 2.182 ns/op
# Warmup Iteration   5: 2.182 ns/op
Iteration   1: 2.181 ns/op
Iteration   2: 2.182 ns/op
Iteration   3: 2.182 ns/op
Iteration   4: 2.181 ns/op
Iteration   5: 2.183 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.182 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (2.181, 2.182, 2.183), stdev = 0.001
  CI (99.9%): [2.179, 2.185] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 217508 total address lines.
Perf output processed (skipped 60.267 seconds):
 Column 1: cycles (50827 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 961 

                   0x00007f0c9723ea03:   cmp    $0x9d80,%r11d
                   0x00007f0c9723ea0a:   jb     0x00007f0c9723eb28           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                   0x00007f0c9723ea10:   cmp    $0x9d80,%r9d
                   0x00007f0c9723ea17:   jb     0x00007f0c9723eb28           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                   0x00007f0c9723ea1d:   mov    $0x1,%r11d
                   0x00007f0c9723ea23:   nopw   0x0(%rax,%rax,1)
                   0x00007f0c9723ea2c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   3.52%      ↗↗↗  0x00007f0c9723ea30:   cmp    $0x9d80,%r11d
          ╭   │││  0x00007f0c9723ea37:   jge    0x00007f0c9723eacd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   3.61%  │   │││  0x00007f0c9723ea3d:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   6.93%  │   │││  0x00007f0c9723ea42:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   4.71%  │   │││  0x00007f0c9723ea48:   mov    %r11d,%edi
   3.36%  │   │││  0x00007f0c9723ea4b:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   3.66%  │   │││  0x00007f0c9723ea4d:   cmp    $0x2,%ebx
          │╭  │││  0x00007f0c9723ea50:   je     0x00007f0c9723ea6d
   3.53%  ││  │││  0x00007f0c9723ea56:   cmp    $0x0,%ebx
          ││╭ │││  0x00007f0c9723ea59:   je     0x00007f0c9723ea8c
   1.71%  │││ │││  0x00007f0c9723ea5f:   cmp    $0x1,%ebx
          │││╭│││  0x00007f0c9723ea62:   je     0x00007f0c9723eaab
          │││││││  0x00007f0c9723ea68:   jmp    0x00007f0c9723ebfd           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   2.33%  │↘│││││  0x00007f0c9723ea6d:   cmpl   $0x1084000,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f0c9723eca8
          │ │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   9.02%  │ │││││  0x00007f0c9723ea79:   jne    0x00007f0c9723eb93           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   1.76%  │ │││││  0x00007f0c9723ea7f:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   8.83%  │ │││││  0x00007f0c9723ea87:   mov    %edi,%r11d
   1.24%  │ ││╰││  0x00007f0c9723ea8a:   jmp    0x00007f0c9723ea30           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ ││ ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.30%  │ ↘│ ││  0x00007f0c9723ea8c:   cmpl   $0x102bad0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f0c9723eccd
          │  │ ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   8.87%  │  │ ││  0x00007f0c9723ea98:   jne    0x00007f0c9723ec0c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   2.20%  │  │ ││  0x00007f0c9723ea9e:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   5.46%  │  │ ││  0x00007f0c9723eaa6:   mov    %edi,%r11d
   1.71%  │  │ ╰│  0x00007f0c9723eaa9:   jmp    0x00007f0c9723ea30           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │  │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │  │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.11%  │  ↘  │  0x00007f0c9723eaab:   cmpl   $0x102bcd8,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f0c9723ecf0
          │     │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
  10.74%  │     │  0x00007f0c9723eab7:   jne    0x00007f0c9723ebbb           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   2.22%  │     │  0x00007f0c9723eabd:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   8.36%  │     │  0x00007f0c9723eac5:   mov    %edi,%r11d
   1.52%  │     ╰  0x00007f0c9723eac8:   jmp    0x00007f0c9723ea30           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
          ↘        0x00007f0c9723eacd:   mov    0x10(%rsp),%rbp
   0.02%           0x00007f0c9723ead2:   add    $0x18,%rsp
                   0x00007f0c9723ead6:   data16 nopw 0x0(%rax,%rax,1)
                   0x00007f0c9723eae0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                   0x00007f0c9723eae7:   ja     0x00007f0c9723ec2b
                   0x00007f0c9723eaed:   ret                                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 178)
                   0x00007f0c9723eaee:   cmpl   $0x102bad0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f0c9723ed13
                                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.03%           0x00007f0c9723eaf9:   jne    0x00007f0c9723eb75           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
....................................................................................................
  97.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 961 
   0.49%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 961 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 961 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 991 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.88%  <...other 297 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.78%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 961 
   1.86%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 991 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_old_init 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.15%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.80%      jvmci, level 4
   1.86%              kernel
   0.12%           libjvm.so
   0.09%        libc-2.31.so
   0.07%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.00%         c1, level 1
   0.00%    perf-2115291.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 18.75% complete, ETA 00:24:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.149 ns/op
# Warmup Iteration   2: 3.100 ns/op
# Warmup Iteration   3: 3.099 ns/op
# Warmup Iteration   4: 3.099 ns/op
# Warmup Iteration   5: 3.100 ns/op
Iteration   1: 3.100 ns/op
Iteration   2: 3.100 ns/op
Iteration   3: 3.100 ns/op
Iteration   4: 3.100 ns/op
Iteration   5: 3.100 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  3.100 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (3.100, 3.100, 3.100), stdev = 0.001
  CI (99.9%): [3.099, 3.100] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 223682 total address lines.
Perf output processed (skipped 60.488 seconds):
 Column 1: cycles (50931 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 961 

                     0x00007f56db23ec15:   jb     0x00007f56db23ed85           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                     0x00007f56db23ec1b:   nopl   0x0(%rax,%rax,1)
                     0x00007f56db23ec20:   cmp    $0x9d80,%r9d
                     0x00007f56db23ec27:   jb     0x00007f56db23ed85           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                     0x00007f56db23ec2d:   mov    $0x1,%r11d
                     0x00007f56db23ec33:   nopw   0x0(%rax,%rax,1)
                     0x00007f56db23ec3c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.72%       ↗↗↗↗  0x00007f56db23ec40:   cmp    $0x9d80,%r11d
          ╭    ││││  0x00007f56db23ec47:   jge    0x00007f56db23ed10           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   0.70%  │    ││││  0x00007f56db23ec4d:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   8.32%  │    ││││  0x00007f56db23ec52:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   2.72%  │    ││││  0x00007f56db23ec58:   mov    %r11d,%edi
   1.90%  │    ││││  0x00007f56db23ec5b:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   0.68%  │    ││││  0x00007f56db23ec5d:   cmp    $0x0,%ebx
          │╭   ││││  0x00007f56db23ec60:   je     0x00007f56db23ecaa
   5.52%  ││   ││││  0x00007f56db23ec66:   cmp    $0x2,%ebx
          ││╭  ││││  0x00007f56db23ec69:   je     0x00007f56db23ec8b
   1.86%  │││  ││││  0x00007f56db23ec6f:   cmp    $0x1,%ebx
          │││╭ ││││  0x00007f56db23ec72:   je     0x00007f56db23ecee
   0.22%  ││││ ││││  0x00007f56db23ec78:   cmp    $0x3,%ebx
   0.22%  ││││ ││││  0x00007f56db23ec7b:   nopl   0x0(%rax,%rax,1)
   1.84%  ││││╭││││  0x00007f56db23ec80:   je     0x00007f56db23eccc
          │││││││││  0x00007f56db23ec86:   jmp    0x00007f56db23ee8e           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.27%  ││↘││││││  0x00007f56db23ec8b:   cmpl   $0x1084000,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f56db23ef33
          ││ ││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   2.18%  ││ ││││││  0x00007f56db23ec97:   jne    0x00007f56db23edd0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   2.60%  ││ ││││││  0x00007f56db23ec9d:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   6.28%  ││ ││││││  0x00007f56db23eca5:   mov    %edi,%r11d
   1.52%  ││ ││╰│││  0x00007f56db23eca8:   jmp    0x00007f56db23ec40           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          ││ ││ │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││ ││ │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.45%  │↘ ││ │││  0x00007f56db23ecaa:   cmpl   $0x102bad0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f56db23ef56
          │  ││ │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
  13.22%  │  ││ │││  0x00007f56db23ecb6:   jne    0x00007f56db23ee7c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.71%  │  ││ │││  0x00007f56db23ecbc:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │  ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   9.60%  │  ││ │││  0x00007f56db23ecc4:   mov    %edi,%r11d
   0.31%  │  ││ ╰││  0x00007f56db23ecc7:   jmp    0x00007f56db23ec40           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  ││  ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.95%  │  │↘  ││  0x00007f56db23eccc:   cmpl   $0x1084208,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f56db23ef79
          │  │   ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
   4.16%  │  │   ││  0x00007f56db23ecd8:   jne    0x00007f56db23ee25           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   1.60%  │  │   ││  0x00007f56db23ecde:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │  │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          │  │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   5.45%  │  │   ││  0x00007f56db23ece6:   mov    %edi,%r11d
   0.55%  │  │   ╰│  0x00007f56db23ece9:   jmp    0x00007f56db23ec40           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │    │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.68%  │  ↘    │  0x00007f56db23ecee:   cmpl   $0x102bcd8,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f56db23ef9c
          │       │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
   8.09%  │       │  0x00007f56db23ecfa:   jne    0x00007f56db23ee6a           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   1.12%  │       │  0x00007f56db23ed00:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   8.67%  │       │  0x00007f56db23ed08:   mov    %edi,%r11d
   0.25%  │       ╰  0x00007f56db23ed0b:   jmp    0x00007f56db23ec40           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   0.00%  ↘          0x00007f56db23ed10:   mov    0x10(%rsp),%rbp
   0.01%             0x00007f56db23ed15:   add    $0x18,%rsp
                     0x00007f56db23ed19:   nopl   0x0(%rax)
                     0x00007f56db23ed20:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                     0x00007f56db23ed27:   ja     0x00007f56db23eeb0
   0.01%             0x00007f56db23ed2d:   ret                                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 178)
                     0x00007f56db23ed2e:   cmpl   $0x102bad0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f56db23efbf
                                                                               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.01%             0x00007f56db23ed39:   jne    0x00007f56db23ee34           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
                     0x00007f56db23ed3f:   incl   0xc(,%rbx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
                     0x00007f56db23ed46:   jmp    0x00007f56db23ec03           ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 178)
                     0x00007f56db23ed4b:   cmpl   $0x1084208,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f56db23efe2
                                                                               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
....................................................................................................
  97.39%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 961 
   0.87%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
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
   0.02%          ld-2.31.so  __tls_get_addr 
   1.00%  <...other 305 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 961 
   2.27%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 992 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  fileStream::flush 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  Relocation::copy_into 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.12%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.41%      jvmci, level 4
   2.27%              kernel
   0.13%           libjvm.so
   0.07%                    
   0.07%        libc-2.31.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%    Unknown, level 0
   0.00%    perf-2115357.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 25.00% complete, ETA 00:22:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.586 ns/op
# Warmup Iteration   2: 2.543 ns/op
# Warmup Iteration   3: 2.543 ns/op
# Warmup Iteration   4: 2.543 ns/op
# Warmup Iteration   5: 2.543 ns/op
Iteration   1: 2.543 ns/op
Iteration   2: 2.543 ns/op
Iteration   3: 2.498 ns/op
Iteration   4: 2.499 ns/op
Iteration   5: 2.543 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.525 ±(99.9%) 0.094 ns/op [Average]
  (min, avg, max) = (2.498, 2.525, 2.543), stdev = 0.024
  CI (99.9%): [2.432, 2.619] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 224249 total address lines.
Perf output processed (skipped 60.667 seconds):
 Column 1: cycles (50449 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 978 

                        0x00007f225723ee2f:   jb     0x00007f225723f005           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                        0x00007f225723ee35:   data16 data16 nopw 0x0(%rax,%rax,1)
                        0x00007f225723ee40:   cmp    $0x9d80,%r9d
                        0x00007f225723ee47:   jb     0x00007f225723f005           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                        0x00007f225723ee4d:   mov    $0x1,%r11d
                        0x00007f225723ee53:   nopw   0x0(%rax,%rax,1)
                        0x00007f225723ee5c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   2.69%         ↗↗↗↗↗  0x00007f225723ee60:   cmp    $0x9d80,%r11d
          ╭      │││││  0x00007f225723ee67:   jge    0x00007f225723ef6f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   0.82%  │      │││││  0x00007f225723ee6d:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   9.10%  │      │││││  0x00007f225723ee72:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   3.91%  │      │││││  0x00007f225723ee78:   mov    %r11d,%edi
   2.70%  │      │││││  0x00007f225723ee7b:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   0.90%  │      │││││  0x00007f225723ee7d:   cmp    $0x3,%ebx
   7.83%  │╭     │││││  0x00007f225723ee80:   jge    0x00007f225723eeab
   3.03%  ││     │││││  0x00007f225723ee86:   cmp    $0x2,%ebx
          ││╭    │││││  0x00007f225723ee89:   jge    0x00007f225723ef4d
   0.51%  │││    │││││  0x00007f225723ee8f:   cmp    $0x0,%ebx
          │││╭   │││││  0x00007f225723ee92:   je     0x00007f225723eee7
   0.38%  ││││   │││││  0x00007f225723ee98:   cmp    $0x1,%ebx
   2.31%  ││││   │││││  0x00007f225723ee9b:   nopl   0x0(%rax,%rax,1)
   0.54%  ││││╭  │││││  0x00007f225723eea0:   je     0x00007f225723eec5
          │││││  │││││  0x00007f225723eea6:   jmp    0x00007f225723f028
   0.53%  │↘│││  │││││  0x00007f225723eeab:   cmp    $0x3,%ebx
          │ │││╭ │││││  0x00007f225723eeae:   je     0x00007f225723ef09
   2.49%  │ ││││ │││││  0x00007f225723eeb4:   cmp    $0x4,%ebx
          │ ││││╭│││││  0x00007f225723eeb7:   je     0x00007f225723ef2b
          │ ││││││││││  0x00007f225723eebd:   data16 xchg %ax,%ax
          │ ││││││││││  0x00007f225723eec0:   jmp    0x00007f225723f028           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ ││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
          │ ││↘│││││││  0x00007f225723eec5:   cmpl   $0x102bcd8,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f225723f1d3
          │ ││ │││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
   6.62%  │ ││ │││││││  0x00007f225723eed1:   jne    0x00007f225723f078           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.81%  │ ││ │││││││  0x00007f225723eed7:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   5.35%  │ ││ │││││││  0x00007f225723eedf:   mov    %edi,%r11d
   0.48%  │ ││ ││╰││││  0x00007f225723eee2:   jmp    0x00007f225723ee60           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ ││ ││ ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
          │ │↘ ││ ││││  0x00007f225723eee7:   cmpl   $0x102bad0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f225723f1f6
          │ │  ││ ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   5.30%  │ │  ││ ││││  0x00007f225723eef3:   jne    0x00007f225723f0e7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.78%  │ │  ││ ││││  0x00007f225723eef9:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   3.62%  │ │  ││ ││││  0x00007f225723ef01:   mov    %edi,%r11d
   0.49%  │ │  ││ ╰│││  0x00007f225723ef04:   jmp    0x00007f225723ee60           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ │  ││  │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │  ││  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   3.15%  │ │  ↘│  │││  0x00007f225723ef09:   cmpl   $0x1084208,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f225723f219
          │ │   │  │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
   3.02%  │ │   │  │││  0x00007f225723ef15:   jne    0x00007f225723f096           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │   │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   0.36%  │ │   │  │││  0x00007f225723ef1b:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │ │   │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          │ │   │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   5.93%  │ │   │  │││  0x00007f225723ef23:   mov    %edi,%r11d
   0.12%  │ │   │  ╰││  0x00007f225723ef26:   jmp    0x00007f225723ee60           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ │   │   ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │   │   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.79%  │ │   ↘   ││  0x00007f225723ef2b:   cmpl   $0x1084410,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f225723f23c
          │ │       ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
   2.96%  │ │       ││  0x00007f225723ef37:   jne    0x00007f225723f11d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   2.40%  │ │       ││  0x00007f225723ef3d:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │ │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          │ │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   4.07%  │ │       ││  0x00007f225723ef45:   mov    %edi,%r11d
   2.00%  │ │       ╰│  0x00007f225723ef48:   jmp    0x00007f225723ee60           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ │        │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │        │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
          │ ↘        │  0x00007f225723ef4d:   cmpl   $0x1084000,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f225723f25f
          │          │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   5.97%  │          │  0x00007f225723ef59:   jne    0x00007f225723f0c3           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   0.85%  │          │  0x00007f225723ef5f:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   5.17%  │          │  0x00007f225723ef67:   mov    %edi,%r11d
   0.47%  │          ╰  0x00007f225723ef6a:   jmp    0x00007f225723ee60           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
          ↘             0x00007f225723ef6f:   mov    0x10(%rsp),%rbp
   0.00%                0x00007f225723ef74:   add    $0x18,%rsp
                        0x00007f225723ef78:   nopl   0x0(%rax,%rax,1)
                        0x00007f225723ef80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                        0x00007f225723ef87:   ja     0x00007f225723f155
                        0x00007f225723ef8d:   ret                                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 178)
                        0x00007f225723ef8e:   cmpl   $0x102bad0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f225723f282
                                                                                  ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.02%                0x00007f225723ef99:   jne    0x00007f225723f10b           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
....................................................................................................
  98.47%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 978 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1007 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 978 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 978 
   0.01%               kernel  [unknown] 
   0.87%  <...other 265 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 978 
   1.14%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1007 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.16%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.53%       jvmci, level 4
   1.14%               kernel
   0.11%         libc-2.31.so
   0.11%            libjvm.so
   0.04%                     
   0.03%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%     perf-2115424.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 31.25% complete, ETA 00:20:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.602 ns/op
# Warmup Iteration   2: 3.550 ns/op
# Warmup Iteration   3: 3.549 ns/op
# Warmup Iteration   4: 3.550 ns/op
# Warmup Iteration   5: 3.550 ns/op
Iteration   1: 3.550 ns/op
Iteration   2: 3.550 ns/op
Iteration   3: 3.550 ns/op
Iteration   4: 3.550 ns/op
Iteration   5: 3.549 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  3.550 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (3.549, 3.550, 3.550), stdev = 0.001
  CI (99.9%): [3.548, 3.551] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 218871 total address lines.
Perf output processed (skipped 60.451 seconds):
 Column 1: cycles (51129 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 982 

                          0x00007faf43241d4a:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 179)
                          0x00007faf43241d4e:   cmp    $0x9d80,%r11d
                          0x00007faf43241d55:   jb     0x00007faf43241f85           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                          0x00007faf43241d5b:   nopl   0x0(%rax,%rax,1)
                          0x00007faf43241d60:   cmp    $0x9d80,%r9d
                          0x00007faf43241d67:   jb     0x00007faf43241f85           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                          0x00007faf43241d6d:   mov    $0x1,%r11d
   0.00%                  0x00007faf43241d73:   nopw   0x0(%rax,%rax,1)
                          0x00007faf43241d7c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   2.15%          ↗↗↗↗↗↗  0x00007faf43241d80:   cmp    $0x9d80,%r11d
          ╭       ││││││  0x00007faf43241d87:   jge    0x00007faf43241ecb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   1.37%  │       ││││││  0x00007faf43241d8d:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   7.19%  │       ││││││  0x00007faf43241d92:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.19%  │       ││││││  0x00007faf43241d98:   mov    %r11d,%edi
   2.18%  │       ││││││  0x00007faf43241d9b:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   1.36%  │       ││││││  0x00007faf43241d9d:   cmp    $0x3,%ebx
          │╭      ││││││  0x00007faf43241da0:   jge    0x00007faf43241dcb
   3.51%  ││      ││││││  0x00007faf43241da6:   cmp    $0x2,%ebx
          ││╭     ││││││  0x00007faf43241da9:   jge    0x00007faf43241e2f
   0.22%  │││     ││││││  0x00007faf43241daf:   cmp    $0x0,%ebx
          │││╭    ││││││  0x00007faf43241db2:   je     0x00007faf43241e0d
   0.52%  ││││    ││││││  0x00007faf43241db8:   cmp    $0x1,%ebx
          ││││    ││││││  0x00007faf43241dbb:   nopl   0x0(%rax,%rax,1)
   2.07%  ││││╭   ││││││  0x00007faf43241dc0:   je     0x00007faf43241deb
          │││││   ││││││  0x00007faf43241dc6:   jmp    0x00007faf43241fd0
   2.71%  │↘│││   ││││││  0x00007faf43241dcb:   cmp    $0x5,%ebx
          │ │││   ││││││  0x00007faf43241dce:   jg     0x00007faf43241fd0
   0.53%  │ │││   ││││││  0x00007faf43241dd4:   cmp    $0x5,%ebx
          │ │││╭  ││││││  0x00007faf43241dd7:   jge    0x00007faf43241ea9
   0.76%  │ ││││  ││││││  0x00007faf43241ddd:   cmp    $0x3,%ebx
          │ ││││╭ ││││││  0x00007faf43241de0:   je     0x00007faf43241e65
   0.01%  │ │││││╭││││││  0x00007faf43241de6:   jmp    0x00007faf43241e87           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ ││││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.25%  │ ││↘│││││││││  0x00007faf43241deb:   cmpl   $0x102bcd8,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007faf43242173
          │ ││ │││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
   7.22%  │ ││ │││││││││  0x00007faf43241df7:   jne    0x00007faf43241fa8           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   1.46%  │ ││ │││││││││  0x00007faf43241dfd:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   6.05%  │ ││ │││││││││  0x00007faf43241e05:   mov    %edi,%r11d
   0.18%  │ ││ │││╰│││││  0x00007faf43241e08:   jmp    0x00007faf43241d80           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │ ││ │││ │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││ │││ │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.72%  │ │↘ │││ │││││  0x00007faf43241e0d:   cmpl   $0x102bad0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007faf43242196
          │ │  │││ │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   1.78%  │ │  │││ │││││  0x00007faf43241e19:   jne    0x00007faf43242016           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.50%  │ │  │││ │││││  0x00007faf43241e1f:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.99%  │ │  │││ │││││  0x00007faf43241e27:   mov    %edi,%r11d
   0.14%  │ │  │││ ╰││││  0x00007faf43241e2a:   jmp    0x00007faf43241d80           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   0.17%  │ ↘  │││  ││││  0x00007faf43241e2f:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.06%  │    │││  ││││  0x00007faf43241e3a:   data16 data16 xchg %ax,%ax
   0.22%  │    │││  ││││  0x00007faf43241e3e:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │    │││  ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││  ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   2.25%  │    │││  ││││  0x00007faf43241e40:   cmpl   $0x1084000,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007faf432421b9
          │    │││  ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   3.55%  │    │││  ││││  0x00007faf43241e4c:   jne    0x00007faf43242088           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   0.71%  │    │││  ││││  0x00007faf43241e52:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   7.69%  │    │││  ││││  0x00007faf43241e5a:   mov    %edi,%r11d
   0.14%  │    │││  ││││  0x00007faf43241e5d:   data16 xchg %ax,%ax
   0.35%  │    │││  ╰│││  0x00007faf43241e60:   jmp    0x00007faf43241d80           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │    │││   │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││   │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.81%  │    │↘│   │││  0x00007faf43241e65:   cmpl   $0x1084208,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007faf432421dc
          │    │ │   │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
   2.30%  │    │ │   │││  0x00007faf43241e71:   jne    0x00007faf43242076           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   0.62%  │    │ │   │││  0x00007faf43241e77:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   3.59%  │    │ │   │││  0x00007faf43241e7f:   mov    %edi,%r11d
   0.18%  │    │ │   ╰││  0x00007faf43241e82:   jmp    0x00007faf43241d80           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │    │ │    ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │ │    ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.69%  │    │ ↘    ││  0x00007faf43241e87:   cmpl   $0x1084410,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007faf432421ff
          │    │      ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
   5.72%  │    │      ││  0x00007faf43241e93:   jne    0x00007faf43242034           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   0.72%  │    │      ││  0x00007faf43241e99:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   7.40%  │    │      ││  0x00007faf43241ea1:   mov    %edi,%r11d
   0.04%  │    │      ╰│  0x00007faf43241ea4:   jmp    0x00007faf43241d80           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │    │       │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.82%  │    ↘       │  0x00007faf43241ea9:   cmpl   $0x1084618,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007faf43242222
          │            │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
   2.18%  │            │  0x00007faf43241eb5:   jne    0x00007faf432420be           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   0.80%  │            │  0x00007faf43241ebb:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   7.00%  │            │  0x00007faf43241ec3:   mov    %edi,%r11d
   0.09%  │            ╰  0x00007faf43241ec6:   jmp    0x00007faf43241d80           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.00%  ↘               0x00007faf43241ecb:   mov    0x10(%rsp),%rbp
   0.02%                  0x00007faf43241ed0:   add    $0x18,%rsp
                          0x00007faf43241ed4:   nopl   0x0(%rax,%rax,1)
                          0x00007faf43241edc:   data16 data16 xchg %ax,%ax
                          0x00007faf43241ee0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                          0x00007faf43241ee7:   ja     0x00007faf432420f5
                          0x00007faf43241eed:   ret                                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 178)
                          0x00007faf43241eee:   cmpl   $0x102bad0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007faf43242245
                                                                                    ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.01%                  0x00007faf43241ef9:   jne    0x00007faf43242064           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 982 
   1.48%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1011 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 982 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.83%  <...other 274 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 982 
   2.48%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1011 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  os::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.11%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.23%      jvmci, level 4
   2.48%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.07%                    
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 37.50% complete, ETA 00:18:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.268 ns/op
# Warmup Iteration   2: 3.246 ns/op
# Warmup Iteration   3: 3.223 ns/op
# Warmup Iteration   4: 3.221 ns/op
# Warmup Iteration   5: 3.225 ns/op
Iteration   1: 3.223 ns/op
Iteration   2: 3.242 ns/op
Iteration   3: 3.228 ns/op
Iteration   4: 3.259 ns/op
Iteration   5: 3.212 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  3.233 ±(99.9%) 0.070 ns/op [Average]
  (min, avg, max) = (3.212, 3.233, 3.259), stdev = 0.018
  CI (99.9%): [3.162, 3.303] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 221056 total address lines.
Perf output processed (skipped 60.418 seconds):
 Column 1: cycles (50784 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 978 

                             0x00007f1df323ff63:   cmp    $0x9d80,%r11d
                             0x00007f1df323ff6a:   jb     0x00007f1df32401dd           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                             0x00007f1df323ff70:   cmp    $0x9d80,%r9d
                             0x00007f1df323ff77:   jb     0x00007f1df32401dd           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                             0x00007f1df323ff7d:   mov    $0x1,%r11d
                             0x00007f1df323ff83:   nopw   0x0(%rax,%rax,1)
                             0x00007f1df323ff8c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   3.67%            ↗↗↗↗↗↗↗  0x00007f1df323ff90:   cmp    $0x9d80,%r11d
          ╭         │││││││  0x00007f1df323ff97:   jge    0x00007f1df3240107           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   1.37%  │         │││││││  0x00007f1df323ff9d:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │         │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   6.57%  │         │││││││  0x00007f1df323ffa2:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │         │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.18%  │         │││││││  0x00007f1df323ffa8:   mov    %r11d,%edi
   3.62%  │         │││││││  0x00007f1df323ffab:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │         │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   1.34%  │         │││││││  0x00007f1df323ffad:   cmp    $0x4,%ebx
          │╭        │││││││  0x00007f1df323ffb0:   jge    0x00007f1df323ffe5
   3.39%  ││        │││││││  0x00007f1df323ffb6:   cmp    $0x2,%ebx
          ││╭       │││││││  0x00007f1df323ffb9:   jge    0x00007f1df323ffd6
   0.17%  │││       │││││││  0x00007f1df323ffbf:   cmp    $0x0,%ebx
          │││╭      │││││││  0x00007f1df323ffc2:   je     0x00007f1df3240027
   1.01%  ││││      │││││││  0x00007f1df323ffc8:   cmp    $0x1,%ebx
          ││││╭     │││││││  0x00007f1df323ffcb:   je     0x00007f1df3240005
          │││││     │││││││  0x00007f1df323ffd1:   jmp    0x00007f1df324034d
   0.44%  ││↘││     │││││││  0x00007f1df323ffd6:   cmp    $0x2,%ebx
          ││ ││╭    │││││││  0x00007f1df323ffd9:   je     0x00007f1df3240049
   0.89%  ││ │││    │││││││  0x00007f1df323ffdf:   nop
          ││ │││╭   │││││││  0x00007f1df323ffe0:   jmp    0x00007f1df324006b
   2.36%  │↘ ││││   │││││││  0x00007f1df323ffe5:   cmp    $0x6,%ebx
          │  ││││   │││││││  0x00007f1df323ffe8:   jg     0x00007f1df324034d
   0.41%  │  ││││   │││││││  0x00007f1df323ffee:   cmp    $0x6,%ebx
          │  ││││╭  │││││││  0x00007f1df323fff1:   jge    0x00007f1df32400e5
   1.14%  │  │││││  │││││││  0x00007f1df323fff7:   cmp    $0x4,%ebx
          │  │││││╭ │││││││  0x00007f1df323fffa:   je     0x00007f1df324008d
   0.00%  │  ││││││╭│││││││  0x00007f1df3240000:   jmp    0x00007f1df32400af           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  ││││││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.01%  │  │↘││││││││││││  0x00007f1df3240005:   cmpl   $0x102bcd8,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f1df32403f3
          │  │ ││││││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
   5.86%  │  │ ││││││││││││  0x00007f1df3240011:   jne    0x00007f1df3240200           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   1.16%  │  │ ││││││││││││  0x00007f1df3240017:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │  │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   5.35%  │  │ ││││││││││││  0x00007f1df324001f:   mov    %edi,%r11d
   0.30%  │  │ │││││╰││││││  0x00007f1df3240022:   jmp    0x00007f1df323ff90           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │ │││││ ││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │ │││││ ││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.21%  │  ↘ │││││ ││││││  0x00007f1df3240027:   cmpl   $0x102bad0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f1df3240416
          │    │││││ ││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   2.69%  │    │││││ ││││││  0x00007f1df3240033:   jne    0x00007f1df324028c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │    │││││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.50%  │    │││││ ││││││  0x00007f1df3240039:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │    │││││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │    │││││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   2.95%  │    │││││ ││││││  0x00007f1df3240041:   mov    %edi,%r11d
   0.06%  │    │││││ ╰│││││  0x00007f1df3240044:   jmp    0x00007f1df323ff90           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │    │││││  │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││││  │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.72%  │    ↘││││  │││││  0x00007f1df3240049:   cmpl   $0x1084000,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f1df3240439
          │     ││││  │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   2.59%  │     ││││  │││││  0x00007f1df3240055:   jne    0x00007f1df324027d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │     ││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   0.59%  │     ││││  │││││  0x00007f1df324005b:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │     ││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │     ││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   4.89%  │     ││││  │││││  0x00007f1df3240063:   mov    %edi,%r11d
   0.15%  │     ││││  ╰││││  0x00007f1df3240066:   jmp    0x00007f1df323ff90           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │     ││││   ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     ││││   ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.29%  │     ↘│││   ││││  0x00007f1df324006b:   cmpl   $0x1084208,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f1df324045c
          │      │││   ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
   3.03%  │      │││   ││││  0x00007f1df3240077:   jne    0x00007f1df3240317           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │      │││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   0.46%  │      │││   ││││  0x00007f1df324007d:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │      │││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          │      │││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   4.55%  │      │││   ││││  0x00007f1df3240085:   mov    %edi,%r11d
   0.17%  │      │││   ╰│││  0x00007f1df3240088:   jmp    0x00007f1df323ff90           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │      │││    │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │      │││    │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.53%  │      │↘│    │││  0x00007f1df324008d:   cmpl   $0x1084410,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f1df324047f
          │      │ │    │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
   2.15%  │      │ │    │││  0x00007f1df3240099:   jne    0x00007f1df324033b           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │      │ │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   0.69%  │      │ │    │││  0x00007f1df324009f:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │      │ │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          │      │ │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   4.42%  │      │ │    │││  0x00007f1df32400a7:   mov    %edi,%r11d
   0.22%  │      │ │    ╰││  0x00007f1df32400aa:   jmp    0x00007f1df323ff90           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   0.67%  │      │ ↘     ││  0x00007f1df32400af:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.33%  │      │       ││  0x00007f1df32400ba:   data16 data16 xchg %ax,%ax
   0.73%  │      │       ││  0x00007f1df32400be:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │      │       ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │      │       ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.00%  │      │       ││  0x00007f1df32400c0:   cmpl   $0x1084618,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f1df32404a2
          │      │       ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
   3.91%  │      │       ││  0x00007f1df32400cc:   jne    0x00007f1df3240305           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │      │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   0.96%  │      │       ││  0x00007f1df32400d2:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │      │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
          │      │       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   6.42%  │      │       ││  0x00007f1df32400da:   mov    %edi,%r11d
   0.37%  │      │       ││  0x00007f1df32400dd:   data16 xchg %ax,%ax
   0.01%  │      │       ╰│  0x00007f1df32400e0:   jmp    0x00007f1df323ff90           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │      │        │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │      │        │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   2.06%  │      ↘        │  0x00007f1df32400e5:   cmpl   $0x1084820,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f1df32404c5
          │               │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg7&apos;)}
   1.17%  │               │  0x00007f1df32400f1:   jne    0x00007f1df3240228           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
   0.30%  │               │  0x00007f1df32400f7:   incl   0x24(,%r9,8)                 ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
          │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
   4.44%  │               │  0x00007f1df32400ff:   mov    %edi,%r11d
   0.06%  │               ╰  0x00007f1df3240102:   jmp    0x00007f1df323ff90           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
          ↘                  0x00007f1df3240107:   mov    0x10(%rsp),%rbp
   0.01%                     0x00007f1df324010c:   add    $0x18,%rsp
                             0x00007f1df3240110:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                             0x00007f1df3240117:   ja     0x00007f1df324036f
   0.01%                     0x00007f1df324011d:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
                             0x00007f1df324011e:   xchg   %ax,%ax                      ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 178)
                             0x00007f1df3240120:   cmpl   $0x102bad0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f1df32404e8
                                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.03%                     0x00007f1df324012b:   jne    0x00007f1df324026e           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
                             0x00007f1df3240131:   incl   0xc(,%rbx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
                             0x00007f1df3240138:   jmp    0x00007f1df323ff58           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
                             0x00007f1df324013d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 178)
....................................................................................................
  97.58%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 978 
   0.53%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1006 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.25%  <...other 393 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 978 
   1.99%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1006 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%  libpthread-2.31.so  __pthread_mutex_lock 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.15%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.61%      jvmci, level 4
   1.99%              kernel
   0.14%           libjvm.so
   0.11%                    
   0.09%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%         interpreter
   0.00%    perf-2115557.map
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 43.75% complete, ETA 00:16:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.009 ns/op
# Warmup Iteration   2: 2.951 ns/op
# Warmup Iteration   3: 2.950 ns/op
# Warmup Iteration   4: 2.951 ns/op
# Warmup Iteration   5: 2.951 ns/op
Iteration   1: 2.951 ns/op
Iteration   2: 2.952 ns/op
Iteration   3: 2.953 ns/op
Iteration   4: 2.952 ns/op
Iteration   5: 2.951 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.952 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (2.951, 2.952, 2.953), stdev = 0.001
  CI (99.9%): [2.949, 2.955] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 225190 total address lines.
Perf output processed (skipped 60.519 seconds):
 Column 1: cycles (50849 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1005 

                               0x00007fa003242164:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 179)
                               0x00007fa003242168:   cmp    $0x9d80,%r11d
                               0x00007fa00324216f:   jb     0x00007fa00324243d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                               0x00007fa003242175:   data16 data16 nopw 0x0(%rax,%rax,1)
                               0x00007fa003242180:   cmp    $0x9d80,%r9d
                               0x00007fa003242187:   jb     0x00007fa00324243d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                               0x00007fa00324218d:   mov    $0x1,%r11d
   0.00%                       0x00007fa003242193:   nopw   0x0(%rax,%rax,1)
                               0x00007fa00324219c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   4.18%             ↗↗↗↗↗↗↗↗  0x00007fa0032421a0:   cmp    $0x9d80,%r11d
          ╭          ││││││││  0x00007fa0032421a7:   jge    0x00007fa003242349           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 180)
   1.25%  │          ││││││││  0x00007fa0032421ad:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   6.53%  │          ││││││││  0x00007fa0032421b2:   movsbl 0x10(%r11,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   2.13%  │          ││││││││  0x00007fa0032421b8:   mov    %r11d,%edi
   4.14%  │          ││││││││  0x00007fa0032421bb:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   1.30%  │          ││││││││  0x00007fa0032421bd:   cmp    $0x5,%ebx
   5.56%  │╭         ││││││││  0x00007fa0032421c0:   jge    0x00007fa003242205
   0.85%  ││         ││││││││  0x00007fa0032421c6:   cmp    $0x3,%ebx
          ││╭        ││││││││  0x00007fa0032421c9:   jge    0x00007fa0032421f4
   1.52%  │││        ││││││││  0x00007fa0032421cf:   cmp    $0x2,%ebx
          │││╭       ││││││││  0x00007fa0032421d2:   jge    0x00007fa003242327
   0.03%  ││││       ││││││││  0x00007fa0032421d8:   cmp    $0x0,%ebx
   1.50%  ││││       ││││││││  0x00007fa0032421db:   nopl   0x0(%rax,%rax,1)
   0.37%  ││││╭      ││││││││  0x00007fa0032421e0:   je     0x00007fa003242247
   0.82%  │││││      ││││││││  0x00007fa0032421e6:   cmp    $0x1,%ebx
          │││││╭     ││││││││  0x00007fa0032421e9:   je     0x00007fa003242269
          ││││││     ││││││││  0x00007fa0032421ef:   jmp    0x00007fa003242569
   1.44%  ││↘│││     ││││││││  0x00007fa0032421f4:   cmp    $0x3,%ebx
          ││ │││╭    ││││││││  0x00007fa0032421f7:   je     0x00007fa00324228b
          ││ ││││    ││││││││  0x00007fa0032421fd:   data16 xchg %ax,%ax
   0.38%  ││ ││││╭   ││││││││  0x00007fa003242200:   jmp    0x00007fa0032422cf
   1.01%  │↘ │││││   ││││││││  0x00007fa003242205:   cmp    $0x7,%ebx
          │  │││││   ││││││││  0x00007fa003242208:   jg     0x00007fa003242569
   1.55%  │  │││││   ││││││││  0x00007fa00324220e:   cmp    $0x7,%ebx
          │  │││││╭  ││││││││  0x00007fa003242211:   jge    0x00007fa003242225
   0.52%  │  ││││││  ││││││││  0x00007fa003242217:   cmp    $0x5,%ebx
          │  ││││││╭ ││││││││  0x00007fa00324221a:   je     0x00007fa003242305
   1.43%  │  │││││││╭││││││││  0x00007fa003242220:   jmp    0x00007fa0032422ad           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  ││││││││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││││││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.79%  │  │││││↘││││││││││  0x00007fa003242225:   cmpl   $0x1084a28,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fa003242676
          │  │││││ ││││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg8&apos;)}
   0.11%  │  │││││ ││││││││││  0x00007fa003242231:   jne    0x00007fa003242460           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 205)
   0.29%  │  │││││ ││││││││││  0x00007fa003242237:   incl   0x28(,%r9,8)                 ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
          │  │││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 313)
          │  │││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 205)
   4.95%  │  │││││ ││││││││││  0x00007fa00324223f:   mov    %edi,%r11d
   0.10%  │  │││││ ││╰│││││││  0x00007fa003242242:   jmp    0x00007fa0032421a0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │││││ ││ │││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │││││ ││ │││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.86%  │  │↘│││ ││ │││││││  0x00007fa003242247:   cmpl   $0x102bad0,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fa003242699
          │  │ │││ ││ │││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   1.15%  │  │ │││ ││ │││││││  0x00007fa003242253:   jne    0x00007fa00324258d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.27%  │  │ │││ ││ │││││││  0x00007fa003242259:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │  │ │││ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   2.11%  │  │ │││ ││ │││││││  0x00007fa003242261:   mov    %edi,%r11d
   0.21%  │  │ │││ ││ ╰││││││  0x00007fa003242264:   jmp    0x00007fa0032421a0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │ │││ ││  ││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │ │││ ││  ││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.01%  │  │ ↘││ ││  ││││││  0x00007fa003242269:   cmpl   $0x102bcd8,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fa0032426bc
          │  │  ││ ││  ││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
   3.41%  │  │  ││ ││  ││││││  0x00007fa003242275:   jne    0x00007fa0032425d7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │  ││ ││  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   1.01%  │  │  ││ ││  ││││││  0x00007fa00324227b:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │  │  ││ ││  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          │  │  ││ ││  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   4.76%  │  │  ││ ││  ││││││  0x00007fa003242283:   mov    %edi,%r11d
   0.40%  │  │  ││ ││  ╰│││││  0x00007fa003242286:   jmp    0x00007fa0032421a0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │  ││ ││   │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │  ││ ││   │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   1.62%  │  │  ↘│ ││   │││││  0x00007fa00324228b:   cmpl   $0x1084208,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fa0032426df
          │  │   │ ││   │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
   0.40%  │  │   │ ││   │││││  0x00007fa003242297:   jne    0x00007fa0032424ec           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │   │ ││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   0.13%  │  │   │ ││   │││││  0x00007fa00324229d:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │  │   │ ││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          │  │   │ ││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   3.33%  │  │   │ ││   │││││  0x00007fa0032422a5:   mov    %edi,%r11d
   0.03%  │  │   │ ││   ╰││││  0x00007fa0032422a8:   jmp    0x00007fa0032421a0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │   │ ││    ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │   │ ││    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.35%  │  │   │ │↘    ││││  0x00007fa0032422ad:   cmpl   $0x1084820,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fa003242702
          │  │   │ │     ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg7&apos;)}
   1.80%  │  │   │ │     ││││  0x00007fa0032422b9:   jne    0x00007fa00324257b           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │   │ │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
   1.17%  │  │   │ │     ││││  0x00007fa0032422bf:   incl   0x24(,%r9,8)                 ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          │  │   │ │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
          │  │   │ │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
   4.83%  │  │   │ │     ││││  0x00007fa0032422c7:   mov    %edi,%r11d
   0.50%  │  │   │ │     ╰│││  0x00007fa0032422ca:   jmp    0x00007fa0032421a0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │   │ │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   1.24%  │  │   ↘ │      │││  0x00007fa0032422cf:   data16 data16 nopw 0x0(%rax,%rax,1)
          │  │     │      │││  0x00007fa0032422da:   data16 data16 xchg %ax,%ax
          │  │     │      │││  0x00007fa0032422de:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │     │      │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │     │      │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.52%  │  │     │      │││  0x00007fa0032422e0:   cmpl   $0x1084410,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fa003242725
          │  │     │      │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
   3.66%  │  │     │      │││  0x00007fa0032422ec:   jne    0x00007fa00324259f           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │     │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   0.32%  │  │     │      │││  0x00007fa0032422f2:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │  │     │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          │  │     │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   3.22%  │  │     │      │││  0x00007fa0032422fa:   mov    %edi,%r11d
   0.09%  │  │     │      │││  0x00007fa0032422fd:   data16 xchg %ax,%ax
   0.15%  │  │     │      ╰││  0x00007fa003242300:   jmp    0x00007fa0032421a0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │     │       ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │     │       ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.33%  │  │     ↘       ││  0x00007fa003242305:   cmpl   $0x1084618,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fa003242748
          │  │             ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
   3.24%  │  │             ││  0x00007fa003242311:   jne    0x00007fa00324250d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   0.79%  │  │             ││  0x00007fa003242317:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │  │             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
          │  │             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   4.50%  │  │             ││  0x00007fa00324231f:   mov    %edi,%r11d
   0.31%  │  │             ╰│  0x00007fa003242322:   jmp    0x00007fa0032421a0           ; ImmutableOopMap {rcx=Oop r8=NarrowOop r9=NarrowOop r10=Oop }
          │  │              │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │              │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 180)
   0.30%  │  ↘              │  0x00007fa003242327:   cmpl   $0x1084000,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fa00324276d
          │                 │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
   2.81%  │                 │  0x00007fa003242333:   jne    0x00007fa003242488           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   0.25%  │                 │  0x00007fa003242339:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   3.59%  │                 │  0x00007fa003242341:   mov    %edi,%r11d
   0.09%  │                 ╰  0x00007fa003242344:   jmp    0x00007fa0032421a0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   0.00%  ↘                    0x00007fa003242349:   mov    0x10(%rsp),%rbp
   0.01%                       0x00007fa00324234e:   add    $0x18,%rsp
                               0x00007fa003242352:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                               0x00007fa003242359:   ja     0x00007fa0032425f9
   0.00%                       0x00007fa00324235f:   ret                                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 178)
                               0x00007fa003242360:   cmpl   $0x102bad0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007fa003242790
                                                                                         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.03%                       0x00007fa00324236b:   jne    0x00007fa003242531           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.00%                       0x00007fa003242371:   incl   0xc(,%rbx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.00%                       0x00007fa003242378:   jmp    0x00007fa00324215d           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
                               0x00007fa00324237d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@0 (line 178)
                               0x00007fa003242380:   cmpl   $0x1084410,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007fa0032427b3
                                                                                         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
                               0x00007fa00324238b:   jne    0x00007fa0032424fe           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
....................................................................................................
  97.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1005 
   0.41%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1032 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1005 
   0.01%              kernel  [unknown] 
   1.26%  <...other 411 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 1005 
   2.00%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 1032 
   0.02%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_old_init 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.18%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.57%      jvmci, level 4
   2.00%              kernel
   0.17%           libjvm.so
   0.11%                    
   0.08%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%    perf-2115622.map
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 50.00% complete, ETA 00:15:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.952 ns/op
# Warmup Iteration   2: 1.939 ns/op
# Warmup Iteration   3: 1.939 ns/op
# Warmup Iteration   4: 1.939 ns/op
# Warmup Iteration   5: 1.943 ns/op
Iteration   1: 1.943 ns/op
Iteration   2: 1.943 ns/op
Iteration   3: 1.836 ns/op
Iteration   4: 1.836 ns/op
Iteration   5: 1.837 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.879 ±(99.9%) 0.225 ns/op [Average]
  (min, avg, max) = (1.836, 1.879, 1.943), stdev = 0.058
  CI (99.9%): [1.654, 2.104] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 218724 total address lines.
Perf output processed (skipped 60.439 seconds):
 Column 1: cycles (51081 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 986 

                0x00007f92e323d954:   mov    %r11d,%r8d
                0x00007f92e323d957:   dec    %r8d
                0x00007f92e323d95a:   movslq %r8d,%r8
                0x00007f92e323d95d:   mov    %r11d,%r9d
                0x00007f92e323d960:   cmp    %r8,%r9
          ╭     0x00007f92e323d963:   ja     0x00007f92e323d973
          │     0x00007f92e323d969:   cmp    $0x2,%r11d
          │╭    0x00007f92e323d96d:   jae    0x00007f92e323d9dc
          ↘│    0x00007f92e323d973:   mov    0x10(,%r10,8),%r8d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.00%   │    0x00007f92e323d97b:   mov    $0x1,%r9d                    ; ImmutableOopMap {rsi=Oop r8=NarrowOop r10=NarrowOop }
           │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@0 (line 166)
           │    0x00007f92e323d981:   add    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f92e323da4d
   0.03%   │    0x00007f92e323d989:   mov    %r9d,0xc(,%r8,8)             ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
           │    0x00007f92e323d991:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
           │    0x00007f92e323d995:   mov    $0x1,%r8d
           │╭   0x00007f92e323d99b:   jmp    0x00007f92e323d9bd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   3.43%   ││↗  0x00007f92e323d9a0:   mov    0x10(%r10,%r8,4),%r9d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   8.29%   │││  0x00007f92e323d9a5:   mov    $0x1,%ecx                    ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   4.86%   │││  0x00007f92e323d9aa:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f92e323da70
  59.34%   │││  0x00007f92e323d9b2:   mov    %ecx,0xc(,%r9,8)             ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  12.02%   │││  0x00007f92e323d9ba:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   5.08%   │↘│  0x00007f92e323d9bd:   data16 xchg %ax,%ax
   4.02%   │ │  0x00007f92e323d9c0:   cmp    %r8d,%r11d
           │ ╰  0x00007f92e323d9c3:   jg     0x00007f92e323d9a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   0.00%   │    0x00007f92e323d9c5:   mov    0x10(%rsp),%rbp
   0.00%   │    0x00007f92e323d9ca:   add    $0x18,%rsp
           │    0x00007f92e323d9ce:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │    0x00007f92e323d9d5:   ja     0x00007f92e323da0f
           │    0x00007f92e323d9db:   ret                                 ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@37 (line 170)
           ↘    0x00007f92e323d9dc:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@8 (line 167)
                0x00007f92e323d9e7:   movq   $0x18,0x490(%r15)
                0x00007f92e323d9f2:   call   0x00007f92e2c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                          ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@0 (line 166)
....................................................................................................
  97.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 986 
   1.13%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 986 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1014 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.13%  <...other 352 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 986 
   2.47%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 1014 
   0.02%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.17%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.13%      jvmci, level 4
   2.47%              kernel
   0.15%           libjvm.so
   0.10%        libc-2.31.so
   0.09%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%    perf-2115687.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = BIMORPHIC)

# Run progress: 56.25% complete, ETA 00:13:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.509 ns/op
# Warmup Iteration   2: 2.495 ns/op
# Warmup Iteration   3: 2.495 ns/op
# Warmup Iteration   4: 2.495 ns/op
# Warmup Iteration   5: 2.495 ns/op
Iteration   1: 2.492 ns/op
Iteration   2: 2.493 ns/op
Iteration   3: 2.493 ns/op
Iteration   4: 2.493 ns/op
Iteration   5: 2.493 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.493 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (2.492, 2.493, 2.493), stdev = 0.001
  CI (99.9%): [2.491, 2.495] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 220672 total address lines.
Perf output processed (skipped 60.628 seconds):
 Column 1: cycles (50697 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 963 

                  0x00007f9a2f2407f0:   mov    %r11d,%ecx
                  0x00007f9a2f2407f3:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
                  0x00007f9a2f2407f7:   cmp    %r8,%rcx
          ╭       0x00007f9a2f2407fa:   ja     0x00007f9a2f24080a
          │       0x00007f9a2f240800:   cmp    $0x2,%r11d
          │       0x00007f9a2f240804:   jae    0x00007f9a2f2408f0           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
          ↘       0x00007f9a2f24080a:   mov    $0x1,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   4.19%      ↗↗  0x00007f9a2f240810:   cmp    %r8d,%r11d
           ╭  ││  0x00007f9a2f240813:   jle    0x00007f9a2f240872           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   2.12%   │  ││  0x00007f9a2f240819:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │  ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   7.72%   │  ││  0x00007f9a2f24081e:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f9a2f240980
  28.89%   │  ││  0x00007f9a2f240826:   movabs $0x7f99b3000000,%rbx
   3.30%   │  ││  0x00007f9a2f240830:   lea    (%rbx,%rcx,1),%rcx
   4.96%   │  ││  0x00007f9a2f240834:   mov    %r8d,%ebx
   5.10%   │  ││  0x00007f9a2f240837:   inc    %ebx
   1.84%   │  ││  0x00007f9a2f240839:   cmp    -0x120(%rip),%rcx        # 0x00007f9a2f240720
           │  ││                                                            ;   {section_word}
   6.84%   │╭ ││  0x00007f9a2f240840:   je     0x00007f9a2f240858
   3.18%   ││ ││  0x00007f9a2f240846:   cmp    -0x125(%rip),%rcx        # 0x00007f9a2f240728
           ││ ││                                                            ;   {section_word}
   2.15%   ││╭││  0x00007f9a2f24084d:   je     0x00007f9a2f240865
           │││││  0x00007f9a2f240853:   jmp    0x00007f9a2f2408cd
   2.36%   │↘│││  0x00007f9a2f240858:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  10.06%   │ │││  0x00007f9a2f240860:   mov    %ebx,%r8d
   1.03%   │ │╰│  0x00007f9a2f240863:   jmp    0x00007f9a2f240810           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   1.83%   │ ↘ │  0x00007f9a2f240865:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  10.92%   │   │  0x00007f9a2f24086d:   mov    %ebx,%r8d
   1.28%   │   ╰  0x00007f9a2f240870:   jmp    0x00007f9a2f240810           ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@37 (line 170)
           ↘      0x00007f9a2f240872:   mov    0x10(%rsp),%rbp
   0.01%          0x00007f9a2f240877:   add    $0x18,%rsp
                  0x00007f9a2f24087b:   nopl   0x0(%rax,%rax,1)
                  0x00007f9a2f240880:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007f9a2f240887:   ja     0x00007f9a2f240926
   0.00%          0x00007f9a2f24088d:   ret    
                  0x00007f9a2f24088e:   mov    $0x1,%r9d
                  0x00007f9a2f240894:   add    0x10(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 277)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                  0x00007f9a2f24089c:   mov    %r9d,0x10(,%r8,8)            ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                  0x00007f9a2f2408a4:   jmp    0x00007f9a2f2407e7           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
                  0x00007f9a2f2408a9:   movl   $0xffffffcd,0x484(%r15)
....................................................................................................
  97.77%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.77%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 963 
   0.29%              kernel  [unknown] 
   0.27%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 963 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 989 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.03%  <...other 341 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 963 
   1.81%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 989 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  ___vsnprintf 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%      jvmci, level 4
   1.81%              kernel
   0.12%           libjvm.so
   0.10%                    
   0.08%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 62.50% complete, ETA 00:11:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.350 ns/op
# Warmup Iteration   2: 2.318 ns/op
# Warmup Iteration   3: 2.325 ns/op
# Warmup Iteration   4: 2.324 ns/op
# Warmup Iteration   5: 2.336 ns/op
Iteration   1: 2.322 ns/op
Iteration   2: 2.325 ns/op
Iteration   3: 2.326 ns/op
Iteration   4: 2.329 ns/op
Iteration   5: 2.330 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.327 ±(99.9%) 0.013 ns/op [Average]
  (min, avg, max) = (2.322, 2.327, 2.330), stdev = 0.003
  CI (99.9%): [2.314, 2.339] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 217360 total address lines.
Perf output processed (skipped 60.336 seconds):
 Column 1: cycles (50827 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 973 

                    0x00007f8c1b242ea0:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
                    0x00007f8c1b242ea4:   cmp    %r8,%rcx
          ╭         0x00007f8c1b242ea7:   ja     0x00007f8c1b242eb7
          │         0x00007f8c1b242ead:   cmp    $0x2,%r11d
          │         0x00007f8c1b242eb1:   jae    0x00007f8c1b242f8c           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
          ↘         0x00007f8c1b242eb7:   mov    $0x1,%r8d
                    0x00007f8c1b242ebd:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   3.62%       ↗↗↗  0x00007f8c1b242ec0:   cmp    %r8d,%r11d
           ╭   │││  0x00007f8c1b242ec3:   jle    0x00007f8c1b242f3f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   3.46%   │   │││  0x00007f8c1b242ec9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │   │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │   │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   6.87%   │   │││  0x00007f8c1b242ece:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f8c1b243060
  21.61%   │   │││  0x00007f8c1b242ed6:   movabs $0x7f8b9f000000,%rbx
   3.07%   │   │││  0x00007f8c1b242ee0:   lea    (%rbx,%rcx,1),%rcx
   5.31%   │   │││  0x00007f8c1b242ee4:   mov    %r8d,%ebx
   4.50%   │   │││  0x00007f8c1b242ee7:   inc    %ebx
   3.27%   │   │││  0x00007f8c1b242ee9:   cmp    -0x130(%rip),%rcx        # 0x00007f8c1b242dc0
           │   │││                                                            ;   {section_word}
   5.71%   │╭  │││  0x00007f8c1b242ef0:   je     0x00007f8c1b242f18
   4.09%   ││  │││  0x00007f8c1b242ef6:   cmp    -0x135(%rip),%rcx        # 0x00007f8c1b242dc8
           ││  │││                                                            ;   {section_word}
   3.13%   ││  │││  0x00007f8c1b242efd:   data16 xchg %ax,%ax
   2.03%   ││╭ │││  0x00007f8c1b242f00:   je     0x00007f8c1b242f25
   1.85%   │││ │││  0x00007f8c1b242f06:   cmp    -0x13d(%rip),%rcx        # 0x00007f8c1b242dd0
           │││ │││                                                            ;   {section_word}
   1.15%   │││╭│││  0x00007f8c1b242f0d:   je     0x00007f8c1b242f32
           │││││││  0x00007f8c1b242f13:   jmp    0x00007f8c1b242faf
   1.78%   │↘│││││  0x00007f8c1b242f18:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
           │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   7.79%   │ │││││  0x00007f8c1b242f20:   mov    %ebx,%r8d
   0.98%   │ ││╰││  0x00007f8c1b242f23:   jmp    0x00007f8c1b242ec0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   1.36%   │ ↘│ ││  0x00007f8c1b242f25:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
           │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   6.78%   │  │ ││  0x00007f8c1b242f2d:   mov    %ebx,%r8d
   1.10%   │  │ ╰│  0x00007f8c1b242f30:   jmp    0x00007f8c1b242ec0
   1.76%   │  ↘  │  0x00007f8c1b242f32:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   4.71%   │     │  0x00007f8c1b242f3a:   mov    %ebx,%r8d
   1.62%   │     ╰  0x00007f8c1b242f3d:   jmp    0x00007f8c1b242ec0           ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@37 (line 170)
           ↘        0x00007f8c1b242f3f:   mov    0x10(%rsp),%rbp
   0.02%            0x00007f8c1b242f44:   add    $0x18,%rsp
                    0x00007f8c1b242f48:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                    0x00007f8c1b242f4f:   ja     0x00007f8c1b243006
   0.00%            0x00007f8c1b242f55:   ret    
                    0x00007f8c1b242f56:   mov    $0x1,%r9d
                    0x00007f8c1b242f5c:   add    0x10(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 277)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                    0x00007f8c1b242f64:   mov    %r9d,0x10(,%r8,8)            ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                    0x00007f8c1b242f6c:   jmp    0x00007f8c1b242e94
   0.00%            0x00007f8c1b242f71:   mov    $0x1,%r9d
                    0x00007f8c1b242f77:   add    0xc(,%r8,8),%r9d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 271)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                    0x00007f8c1b242f7f:   mov    %r9d,0xc(,%r8,8)             ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                    0x00007f8c1b242f87:   jmp    0x00007f8c1b242e94           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                    0x00007f8c1b242f8c:   movl   $0xffffffe5,0x484(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
....................................................................................................
  97.56%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 973 
   0.77%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1003 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.09%  <...other 352 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 973 
   2.04%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1003 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  syscall 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%         libc-2.31.so  _IO_fflush 
   0.00%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.19%  <...other 95 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.60%       jvmci, level 4
   2.04%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%   libpthread-2.31.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 68.75% complete, ETA 00:09:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.554 ns/op
# Warmup Iteration   2: 2.544 ns/op
# Warmup Iteration   3: 2.583 ns/op
# Warmup Iteration   4: 2.576 ns/op
# Warmup Iteration   5: 2.572 ns/op
Iteration   1: 2.585 ns/op
Iteration   2: 2.551 ns/op
Iteration   3: 2.550 ns/op
Iteration   4: 2.544 ns/op
Iteration   5: 2.550 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.556 ±(99.9%) 0.064 ns/op [Average]
  (min, avg, max) = (2.544, 2.556, 2.585), stdev = 0.017
  CI (99.9%): [2.492, 2.620] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 219393 total address lines.
Perf output processed (skipped 60.493 seconds):
 Column 1: cycles (51003 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 987 

                      0x00007fd5d32405ad:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
                      0x00007fd5d32405b1:   cmp    %r8,%rcx
          ╭           0x00007fd5d32405b4:   ja     0x00007fd5d32405ca
          │           0x00007fd5d32405ba:   nopw   0x0(%rax,%rax,1)
          │           0x00007fd5d32405c0:   cmp    $0x2,%r11d
          │           0x00007fd5d32405c4:   jae    0x00007fd5d3240703           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
          ↘           0x00007fd5d32405ca:   mov    $0x1,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   2.44%        ↗↗↗↗  0x00007fd5d32405d0:   cmp    %r8d,%r11d
           ╭    ││││  0x00007fd5d32405d3:   jle    0x00007fd5d324066c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   2.79%   │    ││││  0x00007fd5d32405d9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │    ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   7.22%   │    ││││  0x00007fd5d32405de:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007fd5d32407b7
  22.84%   │    ││││  0x00007fd5d32405e6:   movabs $0x7fd557000000,%rbx
   2.21%   │    ││││  0x00007fd5d32405f0:   lea    (%rbx,%rcx,1),%rcx
   4.78%   │    ││││  0x00007fd5d32405f4:   mov    %r8d,%ebx
   4.29%   │    ││││  0x00007fd5d32405f7:   inc    %ebx
   3.26%   │    ││││  0x00007fd5d32405f9:   cmp    -0x140(%rip),%rcx        # 0x00007fd5d32404c0
           │    ││││                                                            ;   {section_word}
   4.93%   │╭   ││││  0x00007fd5d3240600:   je     0x00007fd5d324063f
   4.15%   ││   ││││  0x00007fd5d3240606:   cmp    -0x145(%rip),%rcx        # 0x00007fd5d32404c8
           ││   ││││                                                            ;   {section_word}
   3.65%   ││╭  ││││  0x00007fd5d324060d:   je     0x00007fd5d3240632
   3.19%   │││  ││││  0x00007fd5d3240613:   cmp    -0x14a(%rip),%rcx        # 0x00007fd5d32404d0
           │││  ││││                                                            ;   {section_word}
   0.69%   │││╭ ││││  0x00007fd5d324061a:   je     0x00007fd5d324064c
   1.49%   ││││ ││││  0x00007fd5d3240620:   cmp    -0x14f(%rip),%rcx        # 0x00007fd5d32404d8
           ││││ ││││                                                            ;   {section_word}
   0.89%   ││││╭││││  0x00007fd5d3240627:   je     0x00007fd5d324065c
           │││││││││  0x00007fd5d324062d:   jmp    0x00007fd5d32406e0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   1.24%   ││↘││││││  0x00007fd5d3240632:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
           ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   3.33%   ││ ││││││  0x00007fd5d324063a:   mov    %ebx,%r8d
   1.13%   ││ ││╰│││  0x00007fd5d324063d:   jmp    0x00007fd5d32405d0
   1.37%   │↘ ││ │││  0x00007fd5d324063f:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │  ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
           │  ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   6.96%   │  ││ │││  0x00007fd5d3240647:   mov    %ebx,%r8d
   0.81%   │  ││ ╰││  0x00007fd5d324064a:   jmp    0x00007fd5d32405d0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │  ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   1.02%   │  ↘│  ││  0x00007fd5d324064c:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
           │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   5.44%   │   │  ││  0x00007fd5d3240654:   mov    %ebx,%r8d
   0.66%   │   │  ╰│  0x00007fd5d3240657:   jmp    0x00007fd5d32405d0
   1.50%   │   ↘   │  0x00007fd5d324065c:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   4.00%   │       │  0x00007fd5d3240664:   mov    %ebx,%r8d
   1.09%   │       ╰  0x00007fd5d3240667:   jmp    0x00007fd5d32405d0           ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@37 (line 170)
           ↘          0x00007fd5d324066c:   mov    0x10(%rsp),%rbp
   0.02%              0x00007fd5d3240671:   add    $0x18,%rsp
                      0x00007fd5d3240675:   data16 data16 nopw 0x0(%rax,%rax,1)
                      0x00007fd5d3240680:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                      0x00007fd5d3240687:   ja     0x00007fd5d324075d
   0.00%              0x00007fd5d324068d:   ret    
                      0x00007fd5d324068e:   mov    $0x1,%r9d
                      0x00007fd5d3240694:   add    0x14(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 283)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                      0x00007fd5d324069c:   mov    %r9d,0x14(,%r8,8)            ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                      0x00007fd5d32406a4:   jmp    0x00007fd5d32405a1
                      0x00007fd5d32406a9:   mov    $0x1,%r9d
                      0x00007fd5d32406af:   add    0x10(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.39%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 987 
   0.89%               kernel  [unknown] 
   0.21%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 987 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1018 
   0.86%  <...other 297 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 987 
   2.20%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1018 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::flush 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%  libjvmcicompiler.so  java.lang.AbstractStringBuilder::ensureCapacityInternal 
   0.00%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%         libc-2.31.so  __stpcpy_avx2 
   0.00%  libjvmcicompiler.so  java.nio.MappedByteBuffer::limit 
   0.00%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.18%  <...other 87 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.47%       jvmci, level 4
   2.20%               kernel
   0.12%            libjvm.so
   0.07%  libjvmcicompiler.so
   0.07%         libc-2.31.so
   0.04%                     
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.00%       hsdis-amd64.so
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 75.00% complete, ETA 00:07:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.723 ns/op
# Warmup Iteration   2: 2.642 ns/op
# Warmup Iteration   3: 2.691 ns/op
# Warmup Iteration   4: 2.680 ns/op
# Warmup Iteration   5: 2.669 ns/op
Iteration   1: 2.678 ns/op
Iteration   2: 2.685 ns/op
Iteration   3: 2.673 ns/op
Iteration   4: 2.675 ns/op
Iteration   5: 2.680 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.678 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (2.673, 2.678, 2.685), stdev = 0.005
  CI (99.9%): [2.660, 2.697] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 225598 total address lines.
Perf output processed (skipped 60.644 seconds):
 Column 1: cycles (50669 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 987 

                        0x00007fed3f2474f4:   movslq %r8d,%r8
                        0x00007fed3f2474f7:   mov    %r11d,%ecx
                        0x00007fed3f2474fa:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
                        0x00007fed3f2474fe:   xchg   %ax,%ax
                        0x00007fed3f247500:   cmp    %r8,%rcx
          ╭             0x00007fed3f247503:   ja     0x00007fed3f247513
          │             0x00007fed3f247509:   cmp    $0x2,%r11d
          │             0x00007fed3f24750d:   jae    0x00007fed3f247688           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.00%  ↘             0x00007fed3f247513:   mov    $0x1,%r8d
   0.00%                0x00007fed3f247519:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   2.76%         ↗↗↗↗↗  0x00007fed3f247520:   cmp    %r8d,%r11d
           ╭     │││││  0x00007fed3f247523:   jle    0x00007fed3f2475df           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   2.96%   │     │││││  0x00007fed3f247529:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │     │││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │     │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   6.20%   │     │││││  0x00007fed3f24752e:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007fed3f24773a
  18.71%   │     │││││  0x00007fed3f247536:   movabs $0x7fecc3000000,%rbx
   2.31%   │     │││││  0x00007fed3f247540:   lea    (%rbx,%rcx,1),%rcx
   4.60%   │     │││││  0x00007fed3f247544:   mov    %r8d,%ebx
   4.25%   │     │││││  0x00007fed3f247547:   inc    %ebx
   3.03%   │     │││││  0x00007fed3f247549:   cmp    -0x170(%rip),%rcx        # 0x00007fed3f2473e0
           │     │││││                                                            ;   {section_word}
   4.78%   │╭    │││││  0x00007fed3f247550:   je     0x00007fed3f247592
   4.40%   ││    │││││  0x00007fed3f247556:   cmp    -0x175(%rip),%rcx        # 0x00007fed3f2473e8
           ││    │││││                                                            ;   {section_word}
   2.99%   ││    │││││  0x00007fed3f24755d:   data16 xchg %ax,%ax
   2.35%   ││╭   │││││  0x00007fed3f247560:   je     0x00007fed3f24759f
   2.72%   │││   │││││  0x00007fed3f247566:   cmp    -0x17d(%rip),%rcx        # 0x00007fed3f2473f0
           │││   │││││                                                            ;   {section_word}
   2.01%   │││╭  │││││  0x00007fed3f24756d:   je     0x00007fed3f2475af
   1.96%   ││││  │││││  0x00007fed3f247573:   cmp    -0x182(%rip),%rcx        # 0x00007fed3f2473f8
           ││││  │││││                                                            ;   {section_word}
   1.30%   ││││╭ │││││  0x00007fed3f24757a:   je     0x00007fed3f2475bf
   1.04%   │││││ │││││  0x00007fed3f247580:   cmp    -0x187(%rip),%rcx        # 0x00007fed3f247400
           │││││ │││││                                                            ;   {section_word}
   0.37%   │││││╭│││││  0x00007fed3f247587:   je     0x00007fed3f2475cf
           │││││││││││  0x00007fed3f24758d:   jmp    0x00007fed3f247665
   1.10%   │↘│││││││││  0x00007fed3f247592:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
           │ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   5.82%   │ │││││││││  0x00007fed3f24759a:   mov    %ebx,%r8d
   0.53%   │ ││││╰││││  0x00007fed3f24759d:   jmp    0x00007fed3f247520           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   0.77%   │ ↘│││ ││││  0x00007fed3f24759f:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │  │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           │  │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   3.24%   │  │││ ││││  0x00007fed3f2475a7:   mov    %ebx,%r8d
   0.67%   │  │││ ╰│││  0x00007fed3f2475aa:   jmp    0x00007fed3f247520
   0.88%   │  ↘││  │││  0x00007fed3f2475af:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
           │   ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
           │   ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   4.32%   │   ││  │││  0x00007fed3f2475b7:   mov    %ebx,%r8d
   0.77%   │   ││  ╰││  0x00007fed3f2475ba:   jmp    0x00007fed3f247520
   0.72%   │   ↘│   ││  0x00007fed3f2475bf:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           │    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
           │    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   3.90%   │    │   ││  0x00007fed3f2475c7:   mov    %ebx,%r8d
   0.64%   │    │   ╰│  0x00007fed3f2475ca:   jmp    0x00007fed3f247520
   1.13%   │    ↘    │  0x00007fed3f2475cf:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
           │         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   3.76%   │         │  0x00007fed3f2475d7:   mov    %ebx,%r8d
   1.04%   │         ╰  0x00007fed3f2475da:   jmp    0x00007fed3f247520           ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@37 (line 170)
   0.00%   ↘            0x00007fed3f2475df:   mov    0x10(%rsp),%rbp
   0.02%                0x00007fed3f2475e4:   add    $0x18,%rsp
                        0x00007fed3f2475e8:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                        0x00007fed3f2475ef:   ja     0x00007fed3f2476e0
   0.00%                0x00007fed3f2475f5:   ret    
   0.01%                0x00007fed3f2475f6:   mov    $0x1,%r9d
                        0x00007fed3f2475fc:   add    0xc(,%r8,8),%r9d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 271)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                        0x00007fed3f247604:   mov    %r9d,0xc(,%r8,8)             ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                        0x00007fed3f24760c:   jmp    0x00007fed3f2474ee
                        0x00007fed3f247611:   mov    $0x1,%r9d
                        0x00007fed3f247617:   add    0x1c(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@6 (line 295)
....................................................................................................
  98.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 987 
   0.35%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 987 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1015 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.94%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 987 
   1.49%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1015 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  defaultStream::hold 
   0.18%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.11%      jvmci, level 4
   1.49%              kernel
   0.16%           libjvm.so
   0.11%        libc-2.31.so
   0.08%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 81.25% complete, ETA 00:05:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.911 ns/op
# Warmup Iteration   2: 2.889 ns/op
# Warmup Iteration   3: 2.876 ns/op
# Warmup Iteration   4: 2.876 ns/op
# Warmup Iteration   5: 2.877 ns/op
Iteration   1: 2.873 ns/op
Iteration   2: 2.874 ns/op
Iteration   3: 2.889 ns/op
Iteration   4: 2.916 ns/op
Iteration   5: 2.915 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.894 ±(99.9%) 0.081 ns/op [Average]
  (min, avg, max) = (2.873, 2.894, 2.916), stdev = 0.021
  CI (99.9%): [2.813, 2.975] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 217067 total address lines.
Perf output processed (skipped 60.550 seconds):
 Column 1: cycles (50511 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 983 

                          0x00007ff443241ffe:   dec    %r8d
                          0x00007ff443242001:   movslq %r8d,%r8
                          0x00007ff443242004:   mov    %r11d,%ecx
                          0x00007ff443242007:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
                          0x00007ff44324200b:   cmp    %r8,%rcx
          ╭               0x00007ff44324200e:   ja     0x00007ff44324201e
          │               0x00007ff443242014:   cmp    $0x2,%r11d
          │               0x00007ff443242018:   jae    0x00007ff4432421b6           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.00%  ↘               0x00007ff44324201e:   mov    $0x1,%r8d
   0.01%                  0x00007ff443242024:   nopl   0x0(%rax,%rax,1)
   0.00%                  0x00007ff44324202c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   2.14%          ↗↗↗↗↗↗  0x00007ff443242030:   cmp    %r8d,%r11d
           ╭      ││││││  0x00007ff443242033:   jle    0x00007ff44324210c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   2.85%   │      ││││││  0x00007ff443242039:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │      ││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │      ││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   5.82%   │      ││││││  0x00007ff44324203e:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007ff443242290
  20.78%   │      ││││││  0x00007ff443242046:   movabs $0x7ff3c7000000,%rbx
   1.76%   │      ││││││  0x00007ff443242050:   lea    (%rbx,%rcx,1),%rcx
   5.09%   │      ││││││  0x00007ff443242054:   mov    %r8d,%ebx
   3.79%   │      ││││││  0x00007ff443242057:   inc    %ebx
   2.67%   │      ││││││  0x00007ff443242059:   cmp    -0x180(%rip),%rcx        # 0x00007ff443241ee0
           │      ││││││                                                            ;   {section_word}
   4.78%   │╭     ││││││  0x00007ff443242060:   je     0x00007ff4432420ac
   5.12%   ││     ││││││  0x00007ff443242066:   cmp    -0x185(%rip),%rcx        # 0x00007ff443241ee8
           ││     ││││││                                                            ;   {section_word}
   2.85%   ││╭    ││││││  0x00007ff44324206d:   je     0x00007ff4432420bc
   3.70%   │││    ││││││  0x00007ff443242073:   cmp    -0x18a(%rip),%rcx        # 0x00007ff443241ef0
           │││    ││││││                                                            ;   {section_word}
   0.96%   │││╭   ││││││  0x00007ff44324207a:   je     0x00007ff4432420cc
   2.75%   ││││   ││││││  0x00007ff443242080:   cmp    -0x18f(%rip),%rcx        # 0x00007ff443241ef8
           ││││   ││││││                                                            ;   {section_word}
   1.42%   ││││╭  ││││││  0x00007ff443242087:   je     0x00007ff4432420dc
   1.85%   │││││  ││││││  0x00007ff44324208d:   cmp    -0x194(%rip),%rcx        # 0x00007ff443241f00
           │││││  ││││││                                                            ;   {section_word}
   0.38%   │││││╭ ││││││  0x00007ff443242094:   je     0x00007ff4432420ec
   1.03%   ││││││ ││││││  0x00007ff44324209a:   cmp    -0x199(%rip),%rcx        # 0x00007ff443241f08
           ││││││ ││││││                                                            ;   {section_word}
   0.48%   ││││││╭││││││  0x00007ff4432420a1:   je     0x00007ff4432420fc
           │││││││││││││  0x00007ff4432420a7:   jmp    0x00007ff4432421fc
   0.80%   │↘│││││││││││  0x00007ff4432420ac:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.12%   │ │││││││││││  0x00007ff4432420b4:   mov    %ebx,%r8d
   0.39%   │ │││││╰│││││  0x00007ff4432420b7:   jmp    0x00007ff443242030           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ │││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   0.79%   │ ↘││││ │││││  0x00007ff4432420bc:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
           │  ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
           │  ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   5.11%   │  ││││ │││││  0x00007ff4432420c4:   mov    %ebx,%r8d
   0.51%   │  ││││ ╰││││  0x00007ff4432420c7:   jmp    0x00007ff443242030
   0.81%   │  ↘│││  ││││  0x00007ff4432420cc:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
           │   │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
           │   │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   4.38%   │   │││  ││││  0x00007ff4432420d4:   mov    %ebx,%r8d
   0.44%   │   │││  ╰│││  0x00007ff4432420d7:   jmp    0x00007ff443242030
   0.87%   │   ↘││   │││  0x00007ff4432420dc:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           │    ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
           │    ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.11%   │    ││   │││  0x00007ff4432420e4:   mov    %ebx,%r8d
   0.70%   │    ││   ╰││  0x00007ff4432420e7:   jmp    0x00007ff443242030
   0.81%   │    ↘│    ││  0x00007ff4432420ec:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │     │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
           │     │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   3.89%   │     │    ││  0x00007ff4432420f4:   mov    %ebx,%r8d
   0.56%   │     │    ╰│  0x00007ff4432420f7:   jmp    0x00007ff443242030
   0.90%   │     ↘     │  0x00007ff4432420fc:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
           │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.96%   │           │  0x00007ff443242104:   mov    %ebx,%r8d
   0.72%   │           ╰  0x00007ff443242107:   jmp    0x00007ff443242030           ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@37 (line 170)
   0.00%   ↘              0x00007ff44324210c:   mov    0x10(%rsp),%rbp
   0.01%                  0x00007ff443242111:   add    $0x18,%rsp
                          0x00007ff443242115:   data16 data16 nopw 0x0(%rax,%rax,1)
                          0x00007ff443242120:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                          0x00007ff443242127:   ja     0x00007ff44324222f
   0.00%                  0x00007ff44324212d:   ret    
                          0x00007ff44324212e:   mov    $0x1,%r9d
                          0x00007ff443242134:   add    0x20(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@6 (line 301)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                          0x00007ff44324213c:   mov    %r9d,0x20(,%r8,8)            ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                          0x00007ff443242144:   jmp    0x00007ff443241ffb
                          0x00007ff443242149:   mov    $0x1,%r9d
                          0x00007ff44324214f:   add    0x1c(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.13%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 983 
   0.25%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1013 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 983 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 983 
   0.90%  <...other 280 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 983 
   1.53%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1013 
   0.02%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  ___vsnprintf 
   0.00%           libjvm.so  resource_allocate_bytes 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  PcDescContainer::find_pc_desc_internal 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.10%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.20%      jvmci, level 4
   1.53%              kernel
   0.12%           libjvm.so
   0.06%                    
   0.06%        libc-2.31.so
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 87.50% complete, ETA 00:03:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.070 ns/op
# Warmup Iteration   2: 3.040 ns/op
# Warmup Iteration   3: 3.038 ns/op
# Warmup Iteration   4: 3.034 ns/op
# Warmup Iteration   5: 3.039 ns/op
Iteration   1: 3.039 ns/op
Iteration   2: 3.039 ns/op
Iteration   3: 3.038 ns/op
Iteration   4: 3.039 ns/op
Iteration   5: 3.057 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  3.042 ±(99.9%) 0.031 ns/op [Average]
  (min, avg, max) = (3.038, 3.042, 3.057), stdev = 0.008
  CI (99.9%): [3.011, 3.073] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 224091 total address lines.
Perf output processed (skipped 60.644 seconds):
 Column 1: cycles (50664 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 982 

                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
                            0x00007f9587241db8:   nopl   0x0(%rax,%rax,1)
                            0x00007f9587241dc0:   cmp    %r8,%rcx
          ╭                 0x00007f9587241dc3:   ja     0x00007f9587241dd3
          │                 0x00007f9587241dc9:   cmp    $0x2,%r11d
          │                 0x00007f9587241dcd:   jae    0x00007f9587241fdc           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
          ↘                 0x00007f9587241dd3:   mov    $0x1,%r8d
                            0x00007f9587241dd9:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   1.98%           ↗↗↗↗↗↗↗  0x00007f9587241de0:   cmp    %r8d,%r11d
           ╭       │││││││  0x00007f9587241de3:   jle    0x00007f9587241edc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │       │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   2.63%   │       │││││││  0x00007f9587241de9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │       │││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │       │││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   5.89%   │       │││││││  0x00007f9587241dee:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f9587242070
  19.53%   │       │││││││  0x00007f9587241df6:   movabs $0x7f9507000000,%rbx
   1.43%   │       │││││││  0x00007f9587241e00:   lea    (%rbx,%rcx,1),%rcx
   4.73%   │       │││││││  0x00007f9587241e04:   mov    %r8d,%ebx
   3.74%   │       │││││││  0x00007f9587241e07:   inc    %ebx
   2.42%   │       │││││││  0x00007f9587241e09:   cmp    -0x190(%rip),%rcx        # 0x00007f9587241c80
           │       │││││││                                                            ;   {section_word}
   4.59%   │╭      │││││││  0x00007f9587241e10:   je     0x00007f9587241e6c
   4.85%   ││      │││││││  0x00007f9587241e16:   cmp    -0x195(%rip),%rcx        # 0x00007f9587241c88
           ││      │││││││                                                            ;   {section_word}
   3.00%   ││      │││││││  0x00007f9587241e1d:   data16 xchg %ax,%ax
   1.91%   ││╭     │││││││  0x00007f9587241e20:   je     0x00007f9587241e7c
   2.72%   │││     │││││││  0x00007f9587241e26:   cmp    -0x19d(%rip),%rcx        # 0x00007f9587241c90
           │││     │││││││                                                            ;   {section_word}
   2.22%   │││╭    │││││││  0x00007f9587241e2d:   je     0x00007f9587241e8c
   2.69%   ││││    │││││││  0x00007f9587241e33:   cmp    -0x1a2(%rip),%rcx        # 0x00007f9587241c98
           ││││    │││││││                                                            ;   {section_word}
   1.49%   ││││╭   │││││││  0x00007f9587241e3a:   je     0x00007f9587241ebc
   1.57%   │││││   │││││││  0x00007f9587241e40:   cmp    -0x1a7(%rip),%rcx        # 0x00007f9587241ca0
           │││││   │││││││                                                            ;   {section_word}
   1.17%   │││││╭  │││││││  0x00007f9587241e47:   je     0x00007f9587241e9c
   1.49%   ││││││  │││││││  0x00007f9587241e4d:   cmp    -0x1ac(%rip),%rcx        # 0x00007f9587241ca8
           ││││││  │││││││                                                            ;   {section_word}
   0.76%   ││││││╭ │││││││  0x00007f9587241e54:   je     0x00007f9587241eac
   0.44%   │││││││ │││││││  0x00007f9587241e5a:   cmp    -0x1b1(%rip),%rcx        # 0x00007f9587241cb0
           │││││││ │││││││                                                            ;   {section_word}
   0.45%   │││││││╭│││││││  0x00007f9587241e61:   je     0x00007f9587241ecc
           │││││││││││││││  0x00007f9587241e67:   jmp    0x00007f9587241f96
   0.75%   │↘│││││││││││││  0x00007f9587241e6c:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.48%   │ │││││││││││││  0x00007f9587241e74:   mov    %ebx,%r8d
   0.20%   │ ││││││╰││││││  0x00007f9587241e77:   jmp    0x00007f9587241de0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   0.78%   │ ↘│││││ ││││││  0x00007f9587241e7c:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │  │││││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
           │  │││││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   3.76%   │  │││││ ││││││  0x00007f9587241e84:   mov    %ebx,%r8d
   0.52%   │  │││││ ╰│││││  0x00007f9587241e87:   jmp    0x00007f9587241de0
   0.47%   │  ↘││││  │││││  0x00007f9587241e8c:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │   ││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
           │   ││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.40%   │   ││││  │││││  0x00007f9587241e94:   mov    %ebx,%r8d
   0.43%   │   ││││  ╰││││  0x00007f9587241e97:   jmp    0x00007f9587241de0
   0.61%   │   │↘││   ││││  0x00007f9587241e9c:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
           │   │ ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
           │   │ ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.10%   │   │ ││   ││││  0x00007f9587241ea4:   mov    %ebx,%r8d
   0.59%   │   │ ││   ╰│││  0x00007f9587241ea7:   jmp    0x00007f9587241de0
   0.50%   │   │ ↘│    │││  0x00007f9587241eac:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
           │   │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
           │   │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.80%   │   │  │    │││  0x00007f9587241eb4:   mov    %ebx,%r8d
   0.42%   │   │  │    ╰││  0x00007f9587241eb7:   jmp    0x00007f9587241de0
   0.60%   │   ↘  │     ││  0x00007f9587241ebc:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           │      │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
           │      │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.57%   │      │     ││  0x00007f9587241ec4:   mov    %ebx,%r8d
   0.40%   │      │     ╰│  0x00007f9587241ec7:   jmp    0x00007f9587241de0
   0.73%   │      ↘      │  0x00007f9587241ecc:   incl   0x24(,%r9,8)                 ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
           │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
           │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.71%   │             │  0x00007f9587241ed4:   mov    %ebx,%r8d
   0.55%   │             ╰  0x00007f9587241ed7:   jmp    0x00007f9587241de0           ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@37 (line 170)
           ↘                0x00007f9587241edc:   mov    0x10(%rsp),%rbp
   0.02%                    0x00007f9587241ee1:   add    $0x18,%rsp
                            0x00007f9587241ee5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                            0x00007f9587241eec:   ja     0x00007f958724200f
                            0x00007f9587241ef2:   ret    
                            0x00007f9587241ef3:   mov    $0x1,%r9d
                            0x00007f9587241ef9:   add    0x10(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 277)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                            0x00007f9587241f01:   mov    %r9d,0x10(,%r8,8)            ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
....................................................................................................
  98.08%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 982 
   0.34%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 982 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  syscall 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1012 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.97%  <...other 304 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 982 
   1.48%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  syscall 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1012 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  event_to_env 
   0.14%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.12%      jvmci, level 4
   1.48%              kernel
   0.14%           libjvm.so
   0.10%        libc-2.31.so
   0.09%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 93.75% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.272 ns/op
# Warmup Iteration   2: 3.194 ns/op
# Warmup Iteration   3: 3.250 ns/op
# Warmup Iteration   4: 3.249 ns/op
# Warmup Iteration   5: 3.248 ns/op
Iteration   1: 3.247 ns/op
Iteration   2: 3.247 ns/op
Iteration   3: 3.251 ns/op
Iteration   4: 3.248 ns/op
Iteration   5: 3.224 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  3.243 ±(99.9%) 0.041 ns/op [Average]
  (min, avg, max) = (3.224, 3.243, 3.251), stdev = 0.011
  CI (99.9%): [3.202, 3.284] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 223397 total address lines.
Perf output processed (skipped 60.636 seconds):
 Column 1: cycles (50412 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1002 

                              0x00007f41c323dcc1:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
                              0x00007f41c323dcc5:   cmp    %r8,%rcx
          ╭                   0x00007f41c323dcc8:   ja     0x00007f41c323dcd8
          │                   0x00007f41c323dcce:   cmp    $0x2,%r11d
          │                   0x00007f41c323dcd2:   jae    0x00007f41c323ded1           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
          ↘                   0x00007f41c323dcd8:   mov    $0x1,%r8d
                              0x00007f41c323dcde:   xchg   %ax,%ax                      ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   1.88%            ↗↗↗↗↗↗↗↗  0x00007f41c323dce0:   cmp    %r8d,%r11d
           ╭        ││││││││  0x00007f41c323dce3:   jle    0x00007f41c323ddf9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   2.26%   │        ││││││││  0x00007f41c323dce9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
           │        ││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │        ││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   5.69%   │        ││││││││  0x00007f41c323dcee:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f41c323dfa4
  19.43%   │        ││││││││  0x00007f41c323dcf6:   movabs $0x7f4147000000,%rbx
   1.52%   │        ││││││││  0x00007f41c323dd00:   lea    (%rbx,%rcx,1),%rcx
   4.39%   │        ││││││││  0x00007f41c323dd04:   mov    %r8d,%ebx
   3.38%   │        ││││││││  0x00007f41c323dd07:   inc    %ebx
   2.33%   │        ││││││││  0x00007f41c323dd09:   cmp    -0x190(%rip),%rcx        # 0x00007f41c323db80
           │        ││││││││                                                            ;   {section_word}
   4.69%   │╭       ││││││││  0x00007f41c323dd10:   je     0x00007f41c323dd79
   4.59%   ││       ││││││││  0x00007f41c323dd16:   cmp    -0x195(%rip),%rcx        # 0x00007f41c323db88
           ││       ││││││││                                                            ;   {section_word}
   2.53%   ││       ││││││││  0x00007f41c323dd1d:   data16 xchg %ax,%ax
   2.07%   ││╭      ││││││││  0x00007f41c323dd20:   je     0x00007f41c323dd89
   3.08%   │││      ││││││││  0x00007f41c323dd26:   cmp    -0x19d(%rip),%rcx        # 0x00007f41c323db90
           │││      ││││││││                                                            ;   {section_word}
   1.78%   │││╭     ││││││││  0x00007f41c323dd2d:   je     0x00007f41c323dd99
   2.59%   ││││     ││││││││  0x00007f41c323dd33:   cmp    -0x1a2(%rip),%rcx        # 0x00007f41c323db98
           ││││     ││││││││                                                            ;   {section_word}
   1.64%   ││││╭    ││││││││  0x00007f41c323dd3a:   je     0x00007f41c323dda9
   2.59%   │││││    ││││││││  0x00007f41c323dd40:   cmp    -0x1a7(%rip),%rcx        # 0x00007f41c323dba0
           │││││    ││││││││                                                            ;   {section_word}
   1.02%   │││││╭   ││││││││  0x00007f41c323dd47:   je     0x00007f41c323ddb9
   1.60%   ││││││   ││││││││  0x00007f41c323dd4d:   cmp    -0x1ac(%rip),%rcx        # 0x00007f41c323dba8
           ││││││   ││││││││                                                            ;   {section_word}
   0.84%   ││││││╭  ││││││││  0x00007f41c323dd54:   je     0x00007f41c323ddc9
   1.01%   │││││││  ││││││││  0x00007f41c323dd5a:   cmp    -0x1b1(%rip),%rcx        # 0x00007f41c323dbb0
           │││││││  ││││││││                                                            ;   {section_word}
   0.53%   │││││││╭ ││││││││  0x00007f41c323dd61:   je     0x00007f41c323ddd9
   0.62%   ││││││││ ││││││││  0x00007f41c323dd67:   cmp    -0x1b6(%rip),%rcx        # 0x00007f41c323dbb8
           ││││││││ ││││││││                                                            ;   {section_word}
   0.21%   ││││││││╭││││││││  0x00007f41c323dd6e:   je     0x00007f41c323dde9
           │││││││││││││││││  0x00007f41c323dd74:   jmp    0x00007f41c323def4
   0.55%   │↘│││││││││││││││  0x00007f41c323dd79:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
           │ │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.61%   │ │││││││││││││││  0x00007f41c323dd81:   mov    %ebx,%r8d
   0.22%   │ │││││││╰│││││││  0x00007f41c323dd84:   jmp    0x00007f41c323dce0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 167)
   0.61%   │ ↘││││││ │││││││  0x00007f41c323dd89:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
           │  ││││││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
           │  ││││││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   4.17%   │  ││││││ │││││││  0x00007f41c323dd91:   mov    %ebx,%r8d
   0.29%   │  ││││││ ╰││││││  0x00007f41c323dd94:   jmp    0x00007f41c323dce0
   0.59%   │  ↘│││││  ││││││  0x00007f41c323dd99:   incl   0x24(,%r9,8)                 ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
           │   │││││  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
           │   │││││  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.54%   │   │││││  ││││││  0x00007f41c323dda1:   mov    %ebx,%r8d
   0.61%   │   │││││  ╰│││││  0x00007f41c323dda4:   jmp    0x00007f41c323dce0
   0.30%   │   ↘││││   │││││  0x00007f41c323dda9:   incl   0x28(,%r9,8)                 ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
           │    ││││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 313)
           │    ││││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.86%   │    ││││   │││││  0x00007f41c323ddb1:   mov    %ebx,%r8d
   0.27%   │    ││││   ╰││││  0x00007f41c323ddb4:   jmp    0x00007f41c323dce0
   0.61%   │    ↘│││    ││││  0x00007f41c323ddb9:   incl   0x1c(,%r9,8)                 ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
           │     │││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
           │     │││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.55%   │     │││    ││││  0x00007f41c323ddc1:   mov    %ebx,%r8d
   0.45%   │     │││    ╰│││  0x00007f41c323ddc4:   jmp    0x00007f41c323dce0
   0.48%   │     ↘││     │││  0x00007f41c323ddc9:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           │      ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
           │      ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   2.93%   │      ││     │││  0x00007f41c323ddd1:   mov    %ebx,%r8d
   0.36%   │      ││     ╰││  0x00007f41c323ddd4:   jmp    0x00007f41c323dce0
   0.44%   │      ↘│      ││  0x00007f41c323ddd9:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │       │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
           │       │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.86%   │       │      ││  0x00007f41c323dde1:   mov    %ebx,%r8d
   0.33%   │       │      ╰│  0x00007f41c323dde4:   jmp    0x00007f41c323dce0
   0.59%   │       ↘       │  0x00007f41c323dde9:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
           │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   1.55%   │               │  0x00007f41c323ddf1:   mov    %ebx,%r8d
   0.51%   │               ╰  0x00007f41c323ddf4:   jmp    0x00007f41c323dce0           ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@37 (line 170)
           ↘                  0x00007f41c323ddf9:   mov    0x10(%rsp),%rbp
   0.01%                      0x00007f41c323ddfe:   add    $0x18,%rsp
                              0x00007f41c323de02:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                              0x00007f41c323de09:   ja     0x00007f41c323df4a
                              0x00007f41c323de0f:   ret    
                              0x00007f41c323de10:   mov    $0x1,%r9d
                              0x00007f41c323de16:   add    0x24(,%r8,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@6 (line 307)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                              0x00007f41c323de1e:   mov    %r9d,0x24(,%r8,8)            ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
....................................................................................................
  98.57%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.57%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1002 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1002 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.78%  <...other 271 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 1002 
   1.09%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 1030 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  fileStream::write 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%           libjvm.so  outputStream::print 
   0.10%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.61%      jvmci, level 4
   1.09%              kernel
   0.11%           libjvm.so
   0.08%                    
   0.06%        libc-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:30:10

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

Benchmark                                                        (targetType)  Mode  Cnt  Score   Error  Units
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic        MONOMORPHIC  avgt    5  1.945 ± 0.271  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm    MONOMORPHIC  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic          BIMORPHIC  avgt    5  2.203 ± 0.223  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm      BIMORPHIC  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_3  avgt    5  2.182 ± 0.003  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_3  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_4  avgt    5  3.100 ± 0.001  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_4  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_5  avgt    5  2.525 ± 0.094  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_5  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_6  avgt    5  3.550 ± 0.002  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_6  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_7  avgt    5  3.233 ± 0.070  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_7  avgt         NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_8  avgt    5  2.952 ± 0.003  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_8  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                       MONOMORPHIC  avgt    5  1.879 ± 0.225  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                   MONOMORPHIC  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                         BIMORPHIC  avgt    5  2.493 ± 0.002  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                     BIMORPHIC  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_3  avgt    5  2.327 ± 0.013  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_3  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_4  avgt    5  2.556 ± 0.064  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_4  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_5  avgt    5  2.678 ± 0.019  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_5  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_6  avgt    5  2.894 ± 0.081  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_6  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_7  avgt    5  3.042 ± 0.031  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_7  avgt         NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_8  avgt    5  3.243 ± 0.041  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_8  avgt         NaN            ---
