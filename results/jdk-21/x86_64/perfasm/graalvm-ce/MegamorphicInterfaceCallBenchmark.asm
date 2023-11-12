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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 0.00% complete, ETA 00:23:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.690 ns/op
# Warmup Iteration   2: 1.550 ns/op
# Warmup Iteration   3: 1.550 ns/op
# Warmup Iteration   4: 1.550 ns/op
# Warmup Iteration   5: 1.550 ns/op
Iteration   1: 1.550 ns/op
Iteration   2: 1.550 ns/op
Iteration   3: 1.550 ns/op
Iteration   4: 1.551 ns/op
Iteration   5: 1.550 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.550 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.550, 1.550, 1.551), stdev = 0.001
  CI (99.9%): [1.549, 1.552] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 237027 total address lines.
Perf output processed (skipped 60.418 seconds):
 Column 1: cycles (50793 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 983 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@6 (line 154)
              0x00007ff45b2400f7:   mov    %r9d,%ebx
              0x00007ff45b2400fa:   mov    $0x1,%r9d
          ╭   0x00007ff45b240100:   jmp    0x00007ff45b24015a           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
          │   0x00007ff45b240105:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007ff45b240110:   data16 data16 xchg %ax,%ax
          │   0x00007ff45b240114:   nopl   0x0(%rax,%rax,1)
          │   0x00007ff45b24011c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 155)
   4.17%  │↗  0x00007ff45b240120:   movsbl 0x10(%r9,%r8,8),%edi         ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
   5.21%  ││  0x00007ff45b240126:   test   %edi,%edi
          ││  0x00007ff45b240128:   jne    0x00007ff45b2401ee           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 157)
   6.34%  ││  0x00007ff45b24012e:   mov    0x10(%r10,%r9,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
   9.35%  ││  0x00007ff45b240133:   nopw   0x0(%rax,%rax,1)
   4.07%  ││  0x00007ff45b24013c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop r8=NarrowOop r10=Oop r11=Oop }
          ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   4.95%  ││  0x00007ff45b240140:   cmpl   $0x1080810,0x8(,%rdi,8)      ; implicit exception: dispatches to 0x00007ff45b2402bd
          ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
  30.07%  ││  0x00007ff45b24014b:   jne    0x00007ff45b2401b7           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   9.01%  ││  0x00007ff45b240151:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   4.04%  ││  0x00007ff45b240153:   mov    %ebx,0xc(%r11)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   5.03%  ││  0x00007ff45b240157:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   6.16%  ↘│  0x00007ff45b24015a:   nopw   0x0(%rax,%rax,1)
   9.22%   │  0x00007ff45b240160:   cmp    $0x1c20,%r9d
           ╰  0x00007ff45b240167:   jl     0x00007ff45b240120           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 155)
              0x00007ff45b240169:   mov    0x10(%rsp),%rbp
   0.07%      0x00007ff45b24016e:   add    $0x18,%rsp
              0x00007ff45b240172:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007ff45b240179:   ja     0x00007ff45b240240
   0.01%      0x00007ff45b24017f:   ret    
              0x00007ff45b240180:   mov    $0x0,%r11
              0x00007ff45b240187:   mov    $0xffffffe5,%r10d
              0x00007ff45b24018d:   mov    %r10d,0x484(%r15)            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
              0x00007ff45b240194:   mov    %r11,0x490(%r15)
              0x00007ff45b24019b:   call   0x00007ff45ac3517a           ; ImmutableOopMap {rsi=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 153)
                                                                        ;   {runtime_call DeoptimizationBlob}
              0x00007ff45b2401a0:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  97.69%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 983 
   0.54%               kernel  [unknown] 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1010 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 983 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 983 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.02%  <...other 334 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 983 
   1.78%               kernel  [unknown] 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1010 
   0.04%                       <unknown> 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  defaultStream::write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%            libjvm.so  os::write 
   0.19%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%       jvmci, level 4
   1.78%               kernel
   0.13%            libjvm.so
   0.10%         libc-2.31.so
   0.04%                     
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%          c1, level 3
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = BIMORPHIC)

# Run progress: 7.14% complete, ETA 00:24:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.454 ns/op
# Warmup Iteration   2: 1.423 ns/op
# Warmup Iteration   3: 1.425 ns/op
# Warmup Iteration   4: 1.424 ns/op
# Warmup Iteration   5: 1.425 ns/op
Iteration   1: 1.424 ns/op
Iteration   2: 1.423 ns/op
Iteration   3: 1.423 ns/op
Iteration   4: 1.423 ns/op
Iteration   5: 1.423 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.423 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (1.423, 1.423, 1.424), stdev = 0.001
  CI (99.9%): [1.422, 1.425] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 222819 total address lines.
Perf output processed (skipped 60.476 seconds):
 Column 1: cycles (50646 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 976 

                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@1 (line 153)
                 0x00007f7edb23f160:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@6 (line 154)
                 0x00007f7edb23f164:   cmp    $0x1c20,%r11d
                 0x00007f7edb23f16b:   jb     0x00007f7edb23f239           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
                 0x00007f7edb23f171:   cmp    $0x1c20,%r9d
                 0x00007f7edb23f178:   jb     0x00007f7edb23f239           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
                 0x00007f7edb23f17e:   mov    %edx,%r9d
   0.00%         0x00007f7edb23f181:   mov    $0x1,%r11d
   0.00%         0x00007f7edb23f187:   nopw   0x0(%rax,%rax,1)             ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   6.63%     ↗↗  0x00007f7edb23f190:   cmp    $0x1c20,%r11d
          ╭  ││  0x00007f7edb23f197:   jge    0x00007f7edb23f1ff           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 155)
   6.67%  │  ││  0x00007f7edb23f19d:   mov    0x10(%r10,%r11,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
   6.74%  │  ││  0x00007f7edb23f1a2:   movsbl 0x10(%r11,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
   6.79%  │  ││  0x00007f7edb23f1a8:   mov    %r11d,%esi
   6.81%  │  ││  0x00007f7edb23f1ab:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   6.50%  │  ││  0x00007f7edb23f1ad:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   6.70%  │  ││  0x00007f7edb23f1b0:   cmp    $0x0,%edx
          │╭ ││  0x00007f7edb23f1b3:   je     0x00007f7edb23f1cb
   3.35%  ││ ││  0x00007f7edb23f1b9:   cmp    $0x1,%edx
   3.33%  ││ ││  0x00007f7edb23f1bc:   nopl   0x0(%rax)
   3.54%  ││╭││  0x00007f7edb23f1c0:   je     0x00007f7edb23f1e5
          │││││  0x00007f7edb23f1c6:   jmp    0x00007f7edb23f284           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   3.31%  │↘│││  0x00007f7edb23f1cb:   cmpl   $0x1080a00,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f7edb23f393
          │ │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   6.76%  │ │││  0x00007f7edb23f1d6:   jne    0x00007f7edb23f2d9           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   3.35%  │ │││  0x00007f7edb23f1dc:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   3.26%  │ │││  0x00007f7edb23f1e0:   mov    %esi,%r11d
   3.39%  │ │╰│  0x00007f7edb23f1e3:   jmp    0x00007f7edb23f190           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ │ │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   3.55%  │ ↘ │  0x00007f7edb23f1e5:   cmpl   $0x1080ec0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f7edb23f3b6
          │   │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
   7.10%  │   │  0x00007f7edb23f1f0:   jne    0x00007f7edb23f25c           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   3.36%  │   │  0x00007f7edb23f1f6:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   3.30%  │   │  0x00007f7edb23f1fa:   mov    %esi,%r11d
   3.45%  │   ╰  0x00007f7edb23f1fd:   jmp    0x00007f7edb23f190           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.01%  ↘      0x00007f7edb23f1ff:   mov    0x10(%rsp),%rbp
   0.02%         0x00007f7edb23f204:   add    $0x18,%rsp
                 0x00007f7edb23f208:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                 0x00007f7edb23f20f:   ja     0x00007f7edb23f316
   0.09%         0x00007f7edb23f215:   ret                                 ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
                 0x00007f7edb23f216:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rsi=Oop rdi=Oop r8=NarrowOop r10=NarrowOop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 153)
                 0x00007f7edb23f220:   cmpl   $0x1080ec0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f7edb23f3d9
                                                                           ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
                 0x00007f7edb23f22b:   jne    0x00007f7edb23f293           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
                 0x00007f7edb23f231:   mov    %edx,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
....................................................................................................
  97.99%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 976 
   0.20%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1003 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 976 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.90%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 976 
   1.53%              kernel  [unknown] 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1003 
   0.08%                      <unknown> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%  libpthread-2.31.so  _pthread_cleanup_pop 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%      hsdis-amd64.so  print_insn 
   0.14%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.15%      jvmci, level 4
   1.53%              kernel
   0.12%           libjvm.so
   0.08%                    
   0.06%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%        runtime stub
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 14.29% complete, ETA 00:22:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.590 ns/op
# Warmup Iteration   2: 1.552 ns/op
# Warmup Iteration   3: 1.552 ns/op
# Warmup Iteration   4: 1.552 ns/op
# Warmup Iteration   5: 1.552 ns/op
Iteration   1: 1.552 ns/op
Iteration   2: 1.552 ns/op
Iteration   3: 1.552 ns/op
Iteration   4: 1.552 ns/op
Iteration   5: 1.552 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.552 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.552, 1.552, 1.552), stdev = 0.001
  CI (99.9%): [1.551, 1.553] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 221366 total address lines.
Perf output processed (skipped 60.342 seconds):
 Column 1: cycles (50521 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 967 

                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
                   0x00007f0bdf23fc80:   mov    %r8d,%ecx
                   0x00007f0bdf23fc83:   shl    $0x3,%rcx                    ;*getfield instanceIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@1 (line 153)
   0.00%           0x00007f0bdf23fc87:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@6 (line 154)
                   0x00007f0bdf23fc8b:   cmp    $0x1c20,%r11d
                   0x00007f0bdf23fc92:   jb     0x00007f0bdf23fdb9           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
   0.00%           0x00007f0bdf23fc98:   nopl   0x0(%rax,%rax,1)
                   0x00007f0bdf23fca0:   cmp    $0x1c20,%r9d
                   0x00007f0bdf23fca7:   jb     0x00007f0bdf23fdb9           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
                   0x00007f0bdf23fcad:   mov    %edx,%r9d
   0.00%           0x00007f0bdf23fcb0:   mov    $0x1,%r11d
                   0x00007f0bdf23fcb6:   data16 nopw 0x0(%rax,%rax,1)        ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.05%      ↗↗↗  0x00007f0bdf23fcc0:   cmp    $0x1c20,%r11d
          ╭   │││  0x00007f0bdf23fcc7:   jge    0x00007f0bdf23fd5d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 155)
  16.73%  │   │││  0x00007f0bdf23fccd:   mov    0x10(%r10,%r11,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
   0.20%  │   │││  0x00007f0bdf23fcd2:   movsbl 0x10(%r11,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
   7.99%  │   │││  0x00007f0bdf23fcd8:   mov    %r11d,%esi
   0.07%  │   │││  0x00007f0bdf23fcdb:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
  16.65%  │   │││  0x00007f0bdf23fcdd:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   0.09%  │   │││  0x00007f0bdf23fce0:   cmp    $0x0,%edx
          │╭  │││  0x00007f0bdf23fce3:   je     0x00007f0bdf23fd1a
   7.79%  ││  │││  0x00007f0bdf23fce9:   cmp    $0x1,%edx
          ││╭ │││  0x00007f0bdf23fcec:   je     0x00007f0bdf23fd00
   0.02%  │││ │││  0x00007f0bdf23fcf2:   cmp    $0x2,%edx
          │││╭│││  0x00007f0bdf23fcf5:   je     0x00007f0bdf23fd3a
          │││││││  0x00007f0bdf23fcfb:   jmp    0x00007f0bdf23fe92           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.03%  ││↘││││  0x00007f0bdf23fd00:   cmpl   $0x1080cd0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f0bdf23ff43
          ││ ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
   3.29%  ││ ││││  0x00007f0bdf23fd0b:   jne    0x00007f0bdf23fe22           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   7.79%  ││ ││││  0x00007f0bdf23fd11:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   0.02%  ││ ││││  0x00007f0bdf23fd15:   mov    %esi,%r11d
   0.14%  ││ │╰││  0x00007f0bdf23fd18:   jmp    0x00007f0bdf23fcc0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.12%  │↘ │ ││  0x00007f0bdf23fd1a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │  │ ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.02%  │  │ ││  0x00007f0bdf23fd20:   cmpl   $0x1080810,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f0bdf23ff66
          │  │ ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   9.81%  │  │ ││  0x00007f0bdf23fd2b:   jne    0x00007f0bdf23fea2           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   0.58%  │  │ ││  0x00007f0bdf23fd31:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   0.02%  │  │ ││  0x00007f0bdf23fd35:   mov    %esi,%r11d
   7.55%  │  │ ╰│  0x00007f0bdf23fd38:   jmp    0x00007f0bdf23fcc0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   8.44%  │  ↘  │  0x00007f0bdf23fd3a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │     │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.02%  │     │  0x00007f0bdf23fd40:   cmpl   $0x1080f90,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f0bdf23ff8d
          │     │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C3&apos;)}
   2.56%  │     │  0x00007f0bdf23fd4b:   jne    0x00007f0bdf23fe4d           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
   8.03%  │     │  0x00007f0bdf23fd51:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
   0.01%  │     │  0x00007f0bdf23fd55:   mov    %esi,%r11d
   0.12%  │     ╰  0x00007f0bdf23fd58:   jmp    0x00007f0bdf23fcc0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.01%  ↘        0x00007f0bdf23fd5d:   mov    0x10(%rsp),%rbp
   0.07%           0x00007f0bdf23fd62:   add    $0x18,%rsp
                   0x00007f0bdf23fd66:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                   0x00007f0bdf23fd6d:   ja     0x00007f0bdf23fec6
   0.01%           0x00007f0bdf23fd73:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 157)
   0.00%           0x00007f0bdf23fd74:   nopl   0x0(%rax,%rax,1)
   0.00%           0x00007f0bdf23fd7c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop rdi=Oop r8=NarrowOop r10=NarrowOop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 153)
                   0x00007f0bdf23fd80:   cmpl   $0x1080810,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f0bdf23ffb0
                                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   0.02%           0x00007f0bdf23fd8b:   jne    0x00007f0bdf23fe04           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
                   0x00007f0bdf23fd91:   mov    %edx,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
....................................................................................................
  98.26%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 967 
   0.19%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 991 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
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
   0.83%  <...other 266 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 967 
   1.27%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 991 
   0.03%                       <unknown> 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.00%         libc-2.31.so  __GI___libc_write 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.17%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.40%       jvmci, level 4
   1.27%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 21.43% complete, ETA 00:20:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.988 ns/op
# Warmup Iteration   2: 1.939 ns/op
# Warmup Iteration   3: 1.939 ns/op
# Warmup Iteration   4: 1.939 ns/op
# Warmup Iteration   5: 1.939 ns/op
Iteration   1: 1.939 ns/op
Iteration   2: 1.939 ns/op
Iteration   3: 1.939 ns/op
Iteration   4: 1.940 ns/op
Iteration   5: 1.939 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.939 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (1.939, 1.939, 1.940), stdev = 0.001
  CI (99.9%): [1.938, 1.941] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 222515 total address lines.
Perf output processed (skipped 60.520 seconds):
 Column 1: cycles (50692 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 973 

                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 168)
                     0x00007fa66b247494:   mov    %r8d,%ecx
                     0x00007fa66b247497:   shl    $0x3,%rcx                    ;*getfield instanceIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@1 (line 153)
   0.02%             0x00007fa66b24749b:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@6 (line 154)
                     0x00007fa66b24749f:   nop
                     0x00007fa66b2474a0:   cmp    $0x1c20,%r11d
                     0x00007fa66b2474a7:   jb     0x00007fa66b247619           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
                     0x00007fa66b2474ad:   cmp    $0x1c20,%r9d
                     0x00007fa66b2474b4:   jb     0x00007fa66b247619           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
   0.00%             0x00007fa66b2474ba:   mov    %edx,%r9d
                     0x00007fa66b2474bd:   mov    $0x1,%r11d
   0.01%             0x00007fa66b2474c3:   nopw   0x0(%rax,%rax,1)
                     0x00007fa66b2474cc:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   1.35%       ↗↗↗↗  0x00007fa66b2474d0:   cmp    $0x1c20,%r11d
          ╭    ││││  0x00007fa66b2474d7:   jge    0x00007fa66b24759d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 155)
   9.21%  │    ││││  0x00007fa66b2474dd:   mov    0x10(%r10,%r11,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
   5.47%  │    ││││  0x00007fa66b2474e2:   movsbl 0x10(%r11,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
   3.59%  │    ││││  0x00007fa66b2474e8:   mov    %r11d,%esi
   1.39%  │    ││││  0x00007fa66b2474eb:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   9.46%  │    ││││  0x00007fa66b2474ed:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   5.11%  │    ││││  0x00007fa66b2474f0:   cmp    $0x1,%edx
          │╭   ││││  0x00007fa66b2474f3:   je     0x00007fa66b24753a
   3.49%  ││   ││││  0x00007fa66b2474f9:   cmp    $0x2,%edx
   1.44%  ││   ││││  0x00007fa66b2474fc:   nopl   0x0(%rax)
   4.97%  ││╭  ││││  0x00007fa66b247500:   je     0x00007fa66b24755d
   8.35%  │││  ││││  0x00007fa66b247506:   cmp    $0x3,%edx
          │││╭ ││││  0x00007fa66b247509:   je     0x00007fa66b24751d
   0.02%  ││││ ││││  0x00007fa66b24750f:   cmp    $0x0,%edx
          ││││╭││││  0x00007fa66b247512:   je     0x00007fa66b24757d
          │││││││││  0x00007fa66b247518:   jmp    0x00007fa66b2476ff           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 157)
   0.00%  │││↘│││││  0x00007fa66b24751d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │││ │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││ │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   2.51%  │││ │││││  0x00007fa66b247520:   cmpl   $0x1081250,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007fa66b2477c4
          │││ │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C4&apos;)}
   4.01%  │││ │││││  0x00007fa66b24752b:   jne    0x00007fa66b247664           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 168)
   3.44%  │││ │││││  0x00007fa66b247531:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 168)
   1.35%  │││ │││││  0x00007fa66b247535:   mov    %esi,%r11d
   0.02%  │││ │╰│││  0x00007fa66b247538:   jmp    0x00007fa66b2474d0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.11%  │↘│ │ │││  0x00007fa66b24753a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ │ │ │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │ │ │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.02%  │ │ │ │││  0x00007fa66b247540:   cmpl   $0x1080cd0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007fa66b2477e7
          │ │ │ │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
   5.00%  │ │ │ │││  0x00007fa66b24754b:   jne    0x00007fa66b247711           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   1.33%  │ │ │ │││  0x00007fa66b247551:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   0.02%  │ │ │ │││  0x00007fa66b247555:   mov    %esi,%r11d
   3.50%  │ │ │ ╰││  0x00007fa66b247558:   jmp    0x00007fa66b2474d0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.03%  │ ↘ │  ││  0x00007fa66b24755d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │   │  ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   3.45%  │   │  ││  0x00007fa66b247560:   cmpl   $0x1080f90,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007fa66b24780d
          │   │  ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C3&apos;)}
   1.37%  │   │  ││  0x00007fa66b24756b:   jne    0x00007fa66b2476ba           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
   0.02%  │   │  ││  0x00007fa66b247571:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
   3.71%  │   │  ││  0x00007fa66b247575:   mov    %esi,%r11d
          │   │  ╰│  0x00007fa66b247578:   jmp    0x00007fa66b2474d0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.02%  │   ↘   │  0x00007fa66b24757d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │       │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   6.77%  │       │  0x00007fa66b247580:   cmpl   $0x1080810,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007fa66b247830
          │       │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   2.31%  │       │  0x00007fa66b24758b:   jne    0x00007fa66b247725           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   4.63%  │       │  0x00007fa66b247591:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   0.24%  │       │  0x00007fa66b247595:   mov    %esi,%r11d
   0.10%  │       ╰  0x00007fa66b247598:   jmp    0x00007fa66b2474d0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.01%  ↘          0x00007fa66b24759d:   mov    0x10(%rsp),%rbp
   0.04%             0x00007fa66b2475a2:   add    $0x18,%rsp
                     0x00007fa66b2475a6:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                     0x00007fa66b2475ad:   ja     0x00007fa66b247747
   0.01%             0x00007fa66b2475b3:   ret                                 ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
                     0x00007fa66b2475b4:   nopl   0x0(%rax,%rax,1)
                     0x00007fa66b2475bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop rdi=Oop r8=NarrowOop r10=NarrowOop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 153)
                     0x00007fa66b2475c0:   cmpl   $0x1080cd0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007fa66b247853
                                                                               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
                     0x00007fa66b2475cb:   jne    0x00007fa66b2476c9           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
                     0x00007fa66b2475d1:   mov    %edx,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.91%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 973 
   0.58%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 994 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 973 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 973 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.80%  <...other 264 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 973 
   1.63%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 994 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  __strncmp_avx2 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.00%            libjvm.so  HighResTimeSampler::take_sample 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%         libc-2.31.so  _IO_no_init 
   0.00%       hsdis-amd64.so  fetch_data 
   0.00%         libc-2.31.so  ___vsnprintf 
   0.00%            libjvm.so  MethodMatcher::matches 
   0.16%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.06%       jvmci, level 4
   1.63%               kernel
   0.10%            libjvm.so
   0.09%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.03%                     
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%          c1, level 2
   0.00%        librt-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 28.57% complete, ETA 00:18:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.469 ns/op
# Warmup Iteration   2: 2.405 ns/op
# Warmup Iteration   3: 2.404 ns/op
# Warmup Iteration   4: 2.404 ns/op
# Warmup Iteration   5: 2.404 ns/op
Iteration   1: 2.404 ns/op
Iteration   2: 2.405 ns/op
Iteration   3: 2.405 ns/op
Iteration   4: 2.407 ns/op
Iteration   5: 2.404 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  2.405 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (2.404, 2.405, 2.407), stdev = 0.001
  CI (99.9%): [2.400, 2.409] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 220180 total address lines.
Perf output processed (skipped 60.420 seconds):
 Column 1: cycles (50531 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 1003 

                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
                        0x00007f1b8f241920:   mov    %r8d,%ecx
                        0x00007f1b8f241923:   shl    $0x3,%rcx                    ;*getfield instanceIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@1 (line 153)
   0.01%                0x00007f1b8f241927:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@6 (line 154)
                        0x00007f1b8f24192b:   cmp    $0x1c20,%r11d
                        0x00007f1b8f241932:   jb     0x00007f1b8f241af9           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
   0.00%                0x00007f1b8f241938:   nopl   0x0(%rax,%rax,1)
                        0x00007f1b8f241940:   cmp    $0x1c20,%r9d
                        0x00007f1b8f241947:   jb     0x00007f1b8f241af9           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
   0.01%                0x00007f1b8f24194d:   mov    %edx,%r9d
                        0x00007f1b8f241950:   mov    $0x1,%r11d
                        0x00007f1b8f241956:   data16 nopw 0x0(%rax,%rax,1)        ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.50%         ↗↗↗↗↗  0x00007f1b8f241960:   cmp    $0x1c20,%r11d
          ╭      │││││  0x00007f1b8f241967:   jge    0x00007f1b8f241a5d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 155)
  13.21%  │      │││││  0x00007f1b8f24196d:   mov    0x10(%r10,%r11,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
   1.48%  │      │││││  0x00007f1b8f241972:   movsbl 0x10(%r11,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
   1.65%  │      │││││  0x00007f1b8f241978:   mov    %r11d,%esi
   0.50%  │      │││││  0x00007f1b8f24197b:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
  12.81%  │      │││││  0x00007f1b8f24197d:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   1.00%  │      │││││  0x00007f1b8f241980:   cmp    $0x3,%edx
          │╭     │││││  0x00007f1b8f241983:   jge    0x00007f1b8f2419ab
   1.34%  ││     │││││  0x00007f1b8f241989:   cmp    $0x2,%edx
          ││╭    │││││  0x00007f1b8f24198c:   jge    0x00007f1b8f2419fd
   0.00%  │││    │││││  0x00007f1b8f241992:   cmp    $0x0,%edx
          │││╭   │││││  0x00007f1b8f241995:   je     0x00007f1b8f2419df
   3.27%  ││││   │││││  0x00007f1b8f24199b:   cmp    $0x1,%edx
   0.02%  ││││   │││││  0x00007f1b8f24199e:   xchg   %ax,%ax
          ││││╭  │││││  0x00007f1b8f2419a0:   je     0x00007f1b8f2419c5
          │││││  │││││  0x00007f1b8f2419a6:   jmp    0x00007f1b8f241b1c
   0.11%  │↘│││  │││││  0x00007f1b8f2419ab:   cmp    $0x3,%edx
          │ │││╭ │││││  0x00007f1b8f2419ae:   je     0x00007f1b8f241a3d
   0.09%  │ ││││ │││││  0x00007f1b8f2419b4:   cmp    $0x4,%edx
          │ ││││╭│││││  0x00007f1b8f2419b7:   je     0x00007f1b8f241a1d
          │ ││││││││││  0x00007f1b8f2419bd:   data16 xchg %ax,%ax
          │ ││││││││││  0x00007f1b8f2419c0:   jmp    0x00007f1b8f241b1c           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ ││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
          │ ││↘│││││││  0x00007f1b8f2419c5:   cmpl   $0x1080cd0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f1b8f241cc4
          │ ││ │││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
   7.11%  │ ││ │││││││  0x00007f1b8f2419d0:   jne    0x00007f1b8f241b6d           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   1.98%  │ ││ │││││││  0x00007f1b8f2419d6:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
          │ ││ │││││││  0x00007f1b8f2419da:   mov    %esi,%r11d
   1.14%  │ ││ ││╰││││  0x00007f1b8f2419dd:   jmp    0x00007f1b8f241960           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   5.11%  │ │↘ ││ ││││  0x00007f1b8f2419df:   nop                                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ │  ││ ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │  ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.02%  │ │  ││ ││││  0x00007f1b8f2419e0:   cmpl   $0x1080810,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f1b8f241ce7
          │ │  ││ ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   5.06%  │ │  ││ ││││  0x00007f1b8f2419eb:   jne    0x00007f1b8f241bdc           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   3.28%  │ │  ││ ││││  0x00007f1b8f2419f1:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
          │ │  ││ ││││  0x00007f1b8f2419f5:   mov    %esi,%r11d
          │ │  ││ ╰│││  0x00007f1b8f2419f8:   jmp    0x00007f1b8f241960           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.01%  │ ↘  ││  │││  0x00007f1b8f2419fd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │    ││  │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    ││  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   3.07%  │    ││  │││  0x00007f1b8f241a00:   cmpl   $0x1080f90,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f1b8f241d0d
          │    ││  │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C3&apos;)}
   4.08%  │    ││  │││  0x00007f1b8f241a0b:   jne    0x00007f1b8f241b8b           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
   1.84%  │    ││  │││  0x00007f1b8f241a11:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
   0.84%  │    ││  │││  0x00007f1b8f241a15:   mov    %esi,%r11d
          │    ││  ╰││  0x00007f1b8f241a18:   jmp    0x00007f1b8f241960           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   4.73%  │    │↘   ││  0x00007f1b8f241a1d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │    │    ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │    ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
          │    │    ││  0x00007f1b8f241a20:   cmpl   $0x1081510,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f1b8f241d30
          │    │    ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C5&apos;)}
   5.14%  │    │    ││  0x00007f1b8f241a2b:   jne    0x00007f1b8f241c12           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 171)
   3.18%  │    │    ││  0x00007f1b8f241a31:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 171)
          │    │    ││  0x00007f1b8f241a35:   mov    %esi,%r11d
          │    │    ╰│  0x00007f1b8f241a38:   jmp    0x00007f1b8f241960           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │    │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   5.02%  │    ↘     │  0x00007f1b8f241a3d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │          │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
          │          │  0x00007f1b8f241a40:   cmpl   $0x1081250,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f1b8f241d53
          │          │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C4&apos;)}
   7.29%  │          │  0x00007f1b8f241a4b:   jne    0x00007f1b8f241bb8           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 168)
   3.27%  │          │  0x00007f1b8f241a51:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 168)
          │          │  0x00007f1b8f241a55:   mov    %esi,%r11d
          │          ╰  0x00007f1b8f241a58:   jmp    0x00007f1b8f241960           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.01%  ↘             0x00007f1b8f241a5d:   mov    0x10(%rsp),%rbp
   0.03%                0x00007f1b8f241a62:   add    $0x18,%rsp
                        0x00007f1b8f241a66:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                        0x00007f1b8f241a6d:   ja     0x00007f1b8f241c47
   0.01%                0x00007f1b8f241a73:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 157)
   0.03%                0x00007f1b8f241a74:   nopl   0x0(%rax,%rax,1)
   0.01%                0x00007f1b8f241a7c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop rdi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 153)
   0.01%                0x00007f1b8f241a80:   cmpl   $0x1080810,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f1b8f241d76
                                                                                  ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   0.02%                0x00007f1b8f241a8b:   jne    0x00007f1b8f241c00           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   0.00%                0x00007f1b8f241a91:   mov    %edx,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
....................................................................................................
  98.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 1003 
   0.21%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1023 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.85%  <...other 273 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 1003 
   1.31%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1023 
   0.05%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  syscall 
   0.00%      hsdis-amd64.so  print_insn_i386 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.38%      jvmci, level 4
   1.31%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.05%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 35.71% complete, ETA 00:17:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.724 ns/op
# Warmup Iteration   2: 2.649 ns/op
# Warmup Iteration   3: 2.651 ns/op
# Warmup Iteration   4: 2.649 ns/op
# Warmup Iteration   5: 2.650 ns/op
Iteration   1: 2.650 ns/op
Iteration   2: 2.651 ns/op
Iteration   3: 2.652 ns/op
Iteration   4: 2.650 ns/op
Iteration   5: 2.650 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  2.651 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (2.650, 2.651, 2.652), stdev = 0.001
  CI (99.9%): [2.648, 2.653] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 223141 total address lines.
Perf output processed (skipped 60.397 seconds):
 Column 1: cycles (50881 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 1007 

                          0x00007f21a7242067:   jb     0x00007f21a7242279           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
                          0x00007f21a724206d:   cmp    $0x1c20,%r9d
                          0x00007f21a7242074:   jb     0x00007f21a7242279           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
                          0x00007f21a724207a:   mov    %edx,%r9d
                          0x00007f21a724207d:   mov    $0x1,%r11d
                          0x00007f21a7242083:   nopw   0x0(%rax,%rax,1)
                          0x00007f21a724208c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   1.24%          ↗↗↗↗↗↗  0x00007f21a7242090:   cmp    $0x1c20,%r11d
          ╭       ││││││  0x00007f21a7242097:   jge    0x00007f21a72421bd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 155)
  10.50%  │       ││││││  0x00007f21a724209d:   mov    0x10(%r10,%r11,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
   1.62%  │       ││││││  0x00007f21a72420a2:   movsbl 0x10(%r11,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
   1.23%  │       ││││││  0x00007f21a72420a8:   mov    %r11d,%esi
   1.15%  │       ││││││  0x00007f21a72420ab:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
  10.23%  │       ││││││  0x00007f21a72420ad:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   1.61%  │       ││││││  0x00007f21a72420b0:   cmp    $0x3,%edx
          │╭      ││││││  0x00007f21a72420b3:   jge    0x00007f21a72420dd
   1.23%  ││      ││││││  0x00007f21a72420b9:   cmp    $0x2,%edx
   0.02%  ││      ││││││  0x00007f21a72420bc:   nopl   0x0(%rax)
   4.97%  ││╭     ││││││  0x00007f21a72420c0:   jge    0x00007f21a724213d
   0.02%  │││     ││││││  0x00007f21a72420c6:   cmp    $0x0,%edx
          │││╭    ││││││  0x00007f21a72420c9:   je     0x00007f21a72420fd
   2.25%  ││││    ││││││  0x00007f21a72420cf:   cmp    $0x1,%edx
          ││││╭   ││││││  0x00007f21a72420d2:   je     0x00007f21a724211d
          │││││   ││││││  0x00007f21a72420d8:   jmp    0x00007f21a7242355
   0.03%  │↘│││   ││││││  0x00007f21a72420dd:   cmp    $0x5,%edx
          │ │││   ││││││  0x00007f21a72420e0:   jg     0x00007f21a7242355
   1.19%  │ │││   ││││││  0x00007f21a72420e6:   cmp    $0x5,%edx
          │ │││╭  ││││││  0x00007f21a72420e9:   jge    0x00007f21a724219d
   4.57%  │ ││││  ││││││  0x00007f21a72420ef:   cmp    $0x3,%edx
          │ ││││╭ ││││││  0x00007f21a72420f2:   je     0x00007f21a724215d
   0.01%  │ │││││╭││││││  0x00007f21a72420f8:   jmp    0x00007f21a724217d           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 157)
   0.00%  │ │↘││││││││││  0x00007f21a72420fd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ │ ││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │ ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
          │ │ ││││││││││  0x00007f21a7242100:   cmpl   $0x1080810,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f21a7242464
          │ │ ││││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   3.80%  │ │ ││││││││││  0x00007f21a724210b:   jne    0x00007f21a724229c           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   1.21%  │ │ ││││││││││  0x00007f21a7242111:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
          │ │ ││││││││││  0x00007f21a7242115:   mov    %esi,%r11d
   1.25%  │ │ ││││╰│││││  0x00007f21a7242118:   jmp    0x00007f21a7242090           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
          │ │ ↘│││ │││││  0x00007f21a724211d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ │  │││ │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │  │││ │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   1.21%  │ │  │││ │││││  0x00007f21a7242120:   cmpl   $0x1080cd0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f21a7242487
          │ │  │││ │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
   6.56%  │ │  │││ │││││  0x00007f21a724212b:   jne    0x00007f21a724230a           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   1.22%  │ │  │││ │││││  0x00007f21a7242131:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   1.14%  │ │  │││ │││││  0x00007f21a7242135:   mov    %esi,%r11d
   0.01%  │ │  │││ ╰││││  0x00007f21a7242138:   jmp    0x00007f21a7242090           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   1.25%  │ ↘  │││  ││││  0x00007f21a724213d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │    │││  ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││  ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.00%  │    │││  ││││  0x00007f21a7242140:   cmpl   $0x1080f90,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f21a72424ad
          │    │││  ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C3&apos;)}
   1.42%  │    │││  ││││  0x00007f21a724214b:   jne    0x00007f21a7242379           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
   2.38%  │    │││  ││││  0x00007f21a7242151:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │    │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
   0.00%  │    │││  ││││  0x00007f21a7242155:   mov    %esi,%r11d
   0.01%  │    │││  ╰│││  0x00007f21a7242158:   jmp    0x00007f21a7242090           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.02%  │    │↘│   │││  0x00007f21a724215d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │    │ │   │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │ │   │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
          │    │ │   │││  0x00007f21a7242160:   cmpl   $0x1081250,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f21a72424d0
          │    │ │   │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C4&apos;)}
   6.81%  │    │ │   │││  0x00007f21a724216b:   jne    0x00007f21a72423af           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 168)
   1.16%  │    │ │   │││  0x00007f21a7242171:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 168)
          │    │ │   │││  0x00007f21a7242175:   mov    %esi,%r11d
   0.01%  │    │ │   ╰││  0x00007f21a7242178:   jmp    0x00007f21a7242090           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │ │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.01%  │    │ ↘    ││  0x00007f21a724217d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │    │      ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   2.08%  │    │      ││  0x00007f21a7242180:   cmpl   $0x1081510,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f21a72424f3
          │    │      ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C5&apos;)}
   4.40%  │    │      ││  0x00007f21a724218b:   jne    0x00007f21a72422c4           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 171)
   2.15%  │    │      ││  0x00007f21a7242191:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 171)
   0.28%  │    │      ││  0x00007f21a7242195:   mov    %esi,%r11d
   0.01%  │    │      ╰│  0x00007f21a7242198:   jmp    0x00007f21a7242090           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   3.94%  │    ↘       │  0x00007f21a724219d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │            │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │            │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
          │            │  0x00007f21a72421a0:   cmpl   $0x10817d0,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f21a7242516
          │            │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C6&apos;)}
  10.93%  │            │  0x00007f21a72421ab:   jne    0x00007f21a7242367           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 174)
   2.38%  │            │  0x00007f21a72421b1:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 174)
          │            │  0x00007f21a72421b5:   mov    %esi,%r11d
          │            ╰  0x00007f21a72421b8:   jmp    0x00007f21a7242090           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.03%  ↘               0x00007f21a72421bd:   mov    0x10(%rsp),%rbp
   0.02%                  0x00007f21a72421c2:   add    $0x18,%rsp
                          0x00007f21a72421c6:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                          0x00007f21a72421cd:   ja     0x00007f21a72423e7
   0.01%                  0x00007f21a72421d3:   ret                                 ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
                          0x00007f21a72421d4:   nopl   0x0(%rax,%rax,1)
                          0x00007f21a72421dc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop rdi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 153)
                          0x00007f21a72421e0:   cmpl   $0x1080f90,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007f21a7242539
                                                                                    ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C3&apos;)}
                          0x00007f21a72421eb:   jne    0x00007f21a7242328           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
                          0x00007f21a72421f1:   mov    %edx,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.58%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 1007 
   0.50%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1026 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 1007 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   1.16%  <...other 381 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 1007 
   1.89%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1026 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_no_init 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.15%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.70%      jvmci, level 4
   1.89%              kernel
   0.14%           libjvm.so
   0.11%                    
   0.09%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6_DOMINANT_TARGET)

# Run progress: 42.86% complete, ETA 00:15:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.311 ns/op
# Warmup Iteration   2: 3.236 ns/op
# Warmup Iteration   3: 3.241 ns/op
# Warmup Iteration   4: 3.256 ns/op
# Warmup Iteration   5: 3.246 ns/op
Iteration   1: 3.249 ns/op
Iteration   2: 3.248 ns/op
Iteration   3: 3.237 ns/op
Iteration   4: 3.248 ns/op
Iteration   5: 3.243 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  3.245 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (3.237, 3.245, 3.249), stdev = 0.005
  CI (99.9%): [3.226, 3.264] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 223704 total address lines.
Perf output processed (skipped 60.504 seconds):
 Column 1: cycles (50721 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 990 

                         0x00007f75df23fdd9:   mov    %r9d,0x24(%rsp)              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.01%                 0x00007f75df23fdde:   xchg   %ax,%ax
                         0x00007f75df23fde0:   cmp    $0x1c20,%r11d
                         0x00007f75df23fde7:   jb     0x00007f75df240165           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
                         0x00007f75df23fded:   mov    0x24(%rsp),%r9d
                         0x00007f75df23fdf2:   cmp    $0x1c20,%r9d
                         0x00007f75df23fdf9:   jb     0x00007f75df240165           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
   0.00%                 0x00007f75df23fdff:   mov    $0x1,%r10d
                         0x00007f75df23fe05:   movabs $0x7fec555d8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec555d8})}
                         0x00007f75df23fe0f:   mov    0x10(%rsp),%r11
                         0x00007f75df23fe14:   mov    0x1c(%rsp),%r8d
   0.00%                 0x00007f75df23fe19:   nopl   0x0(%rax)                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.45%         ↗↗↗↗↗↗  0x00007f75df23fe20:   cmp    $0x1c20,%r10d
          ╭      ││││││  0x00007f75df23fe27:   jge    0x00007f75df24000e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 155)
   0.57%  │      ││││││  0x00007f75df23fe2d:   mov    0x10(%r11,%r10,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
  13.42%  │      ││││││  0x00007f75df23fe32:   movsbl 0x10(%r10,%r8,8),%esi        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 157)
   1.60%  │      ││││││  0x00007f75df23fe38:   mov    %r9d,%ecx
   0.23%  │      ││││││  0x00007f75df23fe3b:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 156)
   0.60%  │      ││││││  0x00007f75df23fe3f:   mov    %r10d,%ebx
   9.57%  │      ││││││  0x00007f75df23fe42:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   1.25%  │      ││││││  0x00007f75df23fe44:   mov    %ebx,0x24(%rsp)
   0.25%  │      ││││││  0x00007f75df23fe48:   cmp    $0x0,%esi
          │╭     ││││││  0x00007f75df23fe4b:   je     0x00007f75df23fe8b
   0.09%  ││     ││││││  0x00007f75df23fe51:   cmp    $0x1,%esi
          ││╭    ││││││  0x00007f75df23fe54:   je     0x00007f75df23fea8
   0.27%  │││    ││││││  0x00007f75df23fe5a:   cmp    $0x2,%esi
   0.44%  │││    ││││││  0x00007f75df23fe5d:   data16 xchg %ax,%ax
          │││╭   ││││││  0x00007f75df23fe60:   je     0x00007f75df23feee
   0.19%  ││││   ││││││  0x00007f75df23fe66:   cmp    $0x3,%esi
          ││││╭  ││││││  0x00007f75df23fe69:   je     0x00007f75df23ff36
   0.18%  │││││  ││││││  0x00007f75df23fe6f:   cmp    $0x4,%esi
          │││││╭ ││││││  0x00007f75df23fe72:   je     0x00007f75df23ff7e
   0.25%  ││││││ ││││││  0x00007f75df23fe78:   cmp    $0x5,%esi
          ││││││ ││││││  0x00007f75df23fe7b:   nopl   0x0(%rax,%rax,1)
   0.02%  ││││││╭││││││  0x00007f75df23fe80:   je     0x00007f75df23ffc6
          │││││││││││││  0x00007f75df23fe86:   jmp    0x00007f75df240188           ; ImmutableOopMap {rax=Oop r8=NarrowOop r11=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
          │││││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.53%  │↘│││││││││││  0x00007f75df23fe8b:   cmpl   $0x1080810,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f75df2402b8
          │ │││││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
  10.50%  │ │││││││││││  0x00007f75df23fe97:   jne    0x00007f75df240202           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
   0.45%  │ │││││││││││  0x00007f75df23fe9d:   incl   0xc(%rax)                    ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
  21.03%  │ │││││││││││  0x00007f75df23fea0:   mov    %ebx,%r10d
   0.37%  │ │││││╰│││││  0x00007f75df23fea3:   jmp    0x00007f75df23fe20           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.01%  │ ↘││││ │││││  0x00007f75df23fea8:   mov    %r10d,0x20(%rsp)             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││││ │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.20%  │  ││││ │││││  0x00007f75df23fead:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
          │  ││││ │││││                                                            ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
   0.01%  │  ││││ │││││  0x00007f75df23feb5:   mov    %rcx,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │  ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
   0.00%  │  ││││ │││││  0x00007f75df23feb8:   nop
   0.23%  │  ││││ │││││  0x00007f75df23feb9:   movabs $0x7f7560080cd0,%rax
          │  ││││ │││││  0x00007f75df23fec3:   call   0x00007f75df23cf80           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop }
          │  ││││ │││││                                                            ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │  ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 162)
          │  ││││ │││││                                                            ;   {virtual_call}
   0.13%  │  ││││ │││││  0x00007f75df23fec8:   nopl   0x50003b8(%rax,%rax,1)       ;   {other}
          │  ││││ │││││  0x00007f75df23fed0:   mov    0x24(%rsp),%r10d
   0.83%  │  ││││ │││││  0x00007f75df23fed5:   movabs $0x7fec555d8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec555d8})}
   0.01%  │  ││││ │││││  0x00007f75df23fedf:   mov    0x10(%rsp),%r11
   0.07%  │  ││││ │││││  0x00007f75df23fee4:   mov    0x1c(%rsp),%r8d
   0.11%  │  ││││ ╰││││  0x00007f75df23fee9:   jmp    0x00007f75df23fe20           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.16%  │  ↘│││  ││││  0x00007f75df23feee:   mov    %r10d,0x20(%rsp)             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.03%  │   │││  ││││  0x00007f75df23fef3:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
          │   │││  ││││                                                            ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
   0.48%  │   │││  ││││  0x00007f75df23fefb:   mov    %rcx,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
          │   │││  ││││  0x00007f75df23fefe:   data16 xchg %ax,%ax
   0.00%  │   │││  ││││  0x00007f75df23ff01:   movabs $0x7f7560080f90,%rax
   0.00%  │   │││  ││││  0x00007f75df23ff0b:   call   0x00007f75df23cf80           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop }
          │   │││  ││││                                                            ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 165)
          │   │││  ││││                                                            ;   {virtual_call}
   0.03%  │   │││  ││││  0x00007f75df23ff10:   nopl   0x7000400(%rax,%rax,1)       ;   {other}
          │   │││  ││││  0x00007f75df23ff18:   mov    0x24(%rsp),%r10d
   0.22%  │   │││  ││││  0x00007f75df23ff1d:   movabs $0x7fec555d8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec555d8})}
   0.02%  │   │││  ││││  0x00007f75df23ff27:   mov    0x10(%rsp),%r11
          │   │││  ││││  0x00007f75df23ff2c:   mov    0x1c(%rsp),%r8d
   0.11%  │   │││  ╰│││  0x00007f75df23ff31:   jmp    0x00007f75df23fe20           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.19%  │   ↘││   │││  0x00007f75df23ff36:   mov    %r10d,0x20(%rsp)             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    ││   │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.03%  │    ││   │││  0x00007f75df23ff3b:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
          │    ││   │││                                                            ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
   0.24%  │    ││   │││  0x00007f75df23ff43:   mov    %rcx,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 168)
          │    ││   │││  0x00007f75df23ff46:   data16 xchg %ax,%ax
          │    ││   │││  0x00007f75df23ff49:   movabs $0x7f7560081250,%rax
          │    ││   │││  0x00007f75df23ff53:   call   0x00007f75df23cf80           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop }
          │    ││   │││                                                            ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 168)
          │    ││   │││                                                            ;   {virtual_call}
   0.00%  │    ││   │││  0x00007f75df23ff58:   nopl   0x9000448(%rax,%rax,1)       ;   {other}
   0.03%  │    ││   │││  0x00007f75df23ff60:   mov    0x24(%rsp),%r10d
   0.23%  │    ││   │││  0x00007f75df23ff65:   movabs $0x7fec555d8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec555d8})}
   0.00%  │    ││   │││  0x00007f75df23ff6f:   mov    0x10(%rsp),%r11
   0.02%  │    ││   │││  0x00007f75df23ff74:   mov    0x1c(%rsp),%r8d
   0.07%  │    ││   ╰││  0x00007f75df23ff79:   jmp    0x00007f75df23fe20           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.10%  │    ↘│    ││  0x00007f75df23ff7e:   mov    %r10d,0x20(%rsp)             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │    ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
          │     │    ││  0x00007f75df23ff83:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
          │     │    ││                                                            ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
   0.29%  │     │    ││  0x00007f75df23ff8b:   mov    %rcx,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │     │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 171)
   0.00%  │     │    ││  0x00007f75df23ff8e:   data16 xchg %ax,%ax
          │     │    ││  0x00007f75df23ff91:   movabs $0x7f7560081510,%rax
   0.01%  │     │    ││  0x00007f75df23ff9b:   call   0x00007f75df23cf80           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop }
          │     │    ││                                                            ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │     │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 171)
          │     │    ││                                                            ;   {virtual_call}
   0.02%  │     │    ││  0x00007f75df23ffa0:   nopl   0xb000490(%rax,%rax,1)       ;   {other}
          │     │    ││  0x00007f75df23ffa8:   mov    0x24(%rsp),%r10d
   0.20%  │     │    ││  0x00007f75df23ffad:   movabs $0x7fec555d8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec555d8})}
   0.02%  │     │    ││  0x00007f75df23ffb7:   mov    0x10(%rsp),%r11
          │     │    ││  0x00007f75df23ffbc:   mov    0x1c(%rsp),%r8d
   0.15%  │     │    ╰│  0x00007f75df23ffc1:   jmp    0x00007f75df23fe20           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │     │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
   0.05%  │     ↘     │  0x00007f75df23ffc6:   mov    %r10d,0x20(%rsp)             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.16%  │           │  0x00007f75df23ffcb:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
          │           │                                                            ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
   0.08%  │           │  0x00007f75df23ffd3:   mov    %rcx,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 174)
   0.03%  │           │  0x00007f75df23ffd6:   data16 xchg %ax,%ax
   0.13%  │           │  0x00007f75df23ffd9:   movabs $0x7f75600817d0,%rax
          │           │  0x00007f75df23ffe3:   call   0x00007f75df23cf80           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop }
          │           │                                                            ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 174)
          │           │                                                            ;   {virtual_call}
   0.00%  │           │  0x00007f75df23ffe8:   nopl   0xd0004d8(%rax,%rax,1)       ;   {other}
          │           │  0x00007f75df23fff0:   mov    0x24(%rsp),%r10d
   0.88%  │           │  0x00007f75df23fff5:   movabs $0x7fec555d8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec555d8})}
          │           │  0x00007f75df23ffff:   mov    0x10(%rsp),%r11
          │           │  0x00007f75df240004:   mov    0x1c(%rsp),%r8d
   0.20%  │           ╰  0x00007f75df240009:   jmp    0x00007f75df23fe20           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 155)
   0.00%  ↘              0x00007f75df24000e:   mov    0x30(%rsp),%rbp
                         0x00007f75df240013:   add    $0x38,%rsp
                         0x00007f75df240017:   nopw   0x0(%rax,%rax,1)
                         0x00007f75df240020:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                         0x00007f75df240027:   ja     0x00007f75df24023b
   0.00%                 0x00007f75df24002d:   ret                                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 155)
                         0x00007f75df24002e:   mov    %rdx,0x8(%rsp)
                         0x00007f75df240033:   mov    %r9d,0x24(%rsp)
                         0x00007f75df240038:   mov    %r11d,0x20(%rsp)             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 153)
                         0x00007f75df24003d:   test   %eax,0x0(,%rbx,8)            ; implicit exception: deoptimizes
                                                                                   ; ImmutableOopMap {rsi=Oop rdi=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
                         0x00007f75df240044:   mov    %rdi,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 174)
                         0x00007f75df240047:   xchg   %ax,%ax
....................................................................................................
  68.03%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo, version 2, compile id 985 

                                       0x00007f75df23cf68:   0x600817d0      0x00007f75600817d0      
                                       0x00007f75df23cf6c:   0x00007f75                              
                                       0x00007f75df23cf70:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
                                       0x00007f75df23cf74:   0xf4f4f4f4                              
                                       0x00007f75df23cf78:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
                                       0x00007f75df23cf7c:   0xf4f4f4f4                              
                                     --------------------------------------------------------------------------------
                                     [Entry Point]
                                       # {method} {0x00007f755b4e57f8} &apos;foo&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;
                                       #           [sp+0x20]  (sp of caller)
   0.73%                               0x00007f75df23cf80:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   1.58%                               0x00007f75df23cf84:   movabs $0x7f755f000000,%r12
   0.01%                               0x00007f75df23cf8e:   add    %r12,%r10
   0.85%                               0x00007f75df23cf91:   xor    %r12,%r12
   0.02%                               0x00007f75df23cf94:   cmp    %r10,%rax
                                       0x00007f75df23cf97:   jne    0x00007f75dec2f080           ;   {runtime_call ic_miss_stub}
   0.56%                               0x00007f75df23cf9d:   data16 xchg %ax,%ax
                                     [Verified Entry Point]
   0.01%                               0x00007f75df23cfa0:   mov    %eax,-0x14000(%rsp)
   0.63%                               0x00007f75df23cfa7:   sub    $0x18,%rsp
   0.48%                               0x00007f75df23cfab:   nop
   0.00%                               0x00007f75df23cfac:   cmpl   $0x1,0x20(%r15)
   0.36%                               0x00007f75df23cfb4:   jne    0x00007f75df23d282
   0.13%                               0x00007f75df23cfba:   mov    %rbp,0x10(%rsp)
   0.53%                               0x00007f75df23cfbf:   mov    0x8(%rsi),%r10d
   0.08%                               0x00007f75df23cfc3:   movabs $0x7f755f000000,%r11
   0.34%                               0x00007f75df23cfcd:   lea    (%r11,%r10,1),%r8
   0.18%                               0x00007f75df23cfd1:   movabs $0x7f756002bc80,%r11         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;)}
   0.50%                               0x00007f75df23cfdb:   nopl   0x0(%rax,%rax,1)
   0.01%                               0x00007f75df23cfe0:   cmp    0x20(%r8),%r11
          ╭                            0x00007f75df23cfe4:   je     0x00007f75df23cff7
          │                            0x00007f75df23cfea:   cmp    $0x102bc80,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;)}
          │╭                           0x00007f75df23cff1:   jne    0x00007f75df23d1ce           ;*invokeinterface baz {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
   3.59%  ↘│                           0x00007f75df23cff7:   mov    0x8(%rsi),%r10d
   0.00%   │                           0x00007f75df23cffb:   movabs $0x7f755f000000,%r11
   0.07%   │                           0x00007f75df23d005:   lea    (%r11,%r10,1),%r10
   0.00%   │                           0x00007f75df23d009:   cmp    -0xd0(%rip),%r10        # 0x00007f75df23cf40
           │                                                                                     ;   {section_word}
   0.75%   │╭                          0x00007f75df23d010:   je     0x00007f75df23d05a
   0.41%   ││                          0x00007f75df23d016:   cmp    -0xd5(%rip),%r10        # 0x00007f75df23cf48
           ││                                                                                    ;   {section_word}
   0.08%   ││                          0x00007f75df23d01d:   data16 xchg %ax,%ax
   0.01%   ││╭                         0x00007f75df23d020:   je     0x00007f75df23d05a
   0.46%   │││                         0x00007f75df23d026:   cmp    -0xdd(%rip),%r10        # 0x00007f75df23cf50
           │││                                                                                   ;   {section_word}
   0.32%   │││╭                        0x00007f75df23d02d:   je     0x00007f75df23d05a
   0.11%   ││││                        0x00007f75df23d033:   cmp    -0xe2(%rip),%r10        # 0x00007f75df23cf58
           ││││                                                                                  ;   {section_word}
           ││││╭                       0x00007f75df23d03a:   je     0x00007f75df23d05a
   0.31%   │││││                       0x00007f75df23d040:   cmp    -0xe7(%rip),%r10        # 0x00007f75df23cf60
           │││││                                                                                 ;   {section_word}
   0.02%   │││││╭                      0x00007f75df23d047:   je     0x00007f75df23d05a
   0.04%   ││││││                      0x00007f75df23d04d:   cmp    -0xec(%rip),%r10        # 0x00007f75df23cf68
           ││││││                                                                                ;   {section_word}
           ││││││                      0x00007f75df23d054:   jne    0x00007f75df23d20e
   0.62%   │↘↘↘↘↘                      0x00007f75df23d05a:   cmp    -0x121(%rip),%r10        # 0x00007f75df23cf40
           │                                                                                     ;   {section_word}
   0.09%   │     ╭                     0x00007f75df23d061:   je     0x00007f75df23d0ad
   0.51%   │     │                     0x00007f75df23d067:   cmp    -0x126(%rip),%r10        # 0x00007f75df23cf48
           │     │                                                                               ;   {section_word}
   0.03%   │     │╭                    0x00007f75df23d06e:   je     0x00007f75df23d0ad
   0.49%   │     ││                    0x00007f75df23d074:   cmp    -0x12b(%rip),%r10        # 0x00007f75df23cf50
           │     ││                                                                              ;   {section_word}
   0.01%   │     ││                    0x00007f75df23d07b:   nopl   0x0(%rax,%rax,1)
   0.26%   │     ││╭                   0x00007f75df23d080:   je     0x00007f75df23d0ad
   0.12%   │     │││                   0x00007f75df23d086:   cmp    -0x135(%rip),%r10        # 0x00007f75df23cf58
           │     │││                                                                             ;   {section_word}
   0.46%   │     │││╭                  0x00007f75df23d08d:   je     0x00007f75df23d0ad
   0.21%   │     ││││                  0x00007f75df23d093:   cmp    -0x13a(%rip),%r10        # 0x00007f75df23cf60
           │     ││││                                                                            ;   {section_word}
   0.04%   │     ││││╭                 0x00007f75df23d09a:   je     0x00007f75df23d0ad
   0.10%   │     │││││                 0x00007f75df23d0a0:   cmp    -0x13f(%rip),%r10        # 0x00007f75df23cf68
           │     │││││                                                                           ;   {section_word}
   0.10%   │     │││││                 0x00007f75df23d0a7:   jne    0x00007f75df23d272
   0.52%   │     ↘↘↘↘↘                 0x00007f75df23d0ad:   cmp    -0x174(%rip),%r10        # 0x00007f75df23cf40
           │                                                                                     ;   {section_word}
   0.20%   │          ╭                0x00007f75df23d0b4:   je     0x00007f75df23d100
   0.56%   │          │                0x00007f75df23d0ba:   cmp    -0x179(%rip),%r10        # 0x00007f75df23cf48
           │          │                                                                          ;   {section_word}
   0.27%   │          │╭               0x00007f75df23d0c1:   je     0x00007f75df23d100
   0.30%   │          ││               0x00007f75df23d0c7:   cmp    -0x17e(%rip),%r10        # 0x00007f75df23cf50
           │          ││                                                                         ;   {section_word}
   0.08%   │          ││╭              0x00007f75df23d0ce:   je     0x00007f75df23d100
   0.28%   │          │││              0x00007f75df23d0d4:   cmp    -0x183(%rip),%r10        # 0x00007f75df23cf58
           │          │││                                                                        ;   {section_word}
   0.20%   │          │││              0x00007f75df23d0db:   nopl   0x0(%rax,%rax,1)
   0.08%   │          │││╭             0x00007f75df23d0e0:   je     0x00007f75df23d100
   0.14%   │          ││││             0x00007f75df23d0e6:   cmp    -0x18d(%rip),%r10        # 0x00007f75df23cf60
           │          ││││                                                                       ;   {section_word}
   0.14%   │          ││││╭            0x00007f75df23d0ed:   je     0x00007f75df23d100
   0.16%   │          │││││            0x00007f75df23d0f3:   cmp    -0x192(%rip),%r10        # 0x00007f75df23cf68
           │          │││││                                                                      ;   {section_word}
           │          │││││            0x00007f75df23d0fa:   jne    0x00007f75df23d263
   0.58%   │          ↘↘↘↘↘            0x00007f75df23d100:   cmp    -0x1c7(%rip),%r10        # 0x00007f75df23cf40
           │                                                                                     ;   {section_word}
   0.18%   │               ╭           0x00007f75df23d107:   je     0x00007f75df23d153
   0.59%   │               │           0x00007f75df23d10d:   cmp    -0x1cc(%rip),%r10        # 0x00007f75df23cf48
           │               │                                                                     ;   {section_word}
   0.07%   │               │╭          0x00007f75df23d114:   je     0x00007f75df23d153
   0.53%   │               ││          0x00007f75df23d11a:   cmp    -0x1d1(%rip),%r10        # 0x00007f75df23cf50
           │               ││                                                                    ;   {section_word}
   0.07%   │               ││╭         0x00007f75df23d121:   je     0x00007f75df23d153
   0.38%   │               │││         0x00007f75df23d127:   cmp    -0x1d6(%rip),%r10        # 0x00007f75df23cf58
           │               │││                                                                   ;   {section_word}
   0.04%   │               │││╭        0x00007f75df23d12e:   je     0x00007f75df23d153
   0.32%   │               ││││        0x00007f75df23d134:   cmp    -0x1db(%rip),%r10        # 0x00007f75df23cf60
           │               ││││                                                                  ;   {section_word}
   0.02%   │               ││││        0x00007f75df23d13b:   nopl   0x0(%rax,%rax,1)
   0.06%   │               ││││╭       0x00007f75df23d140:   je     0x00007f75df23d153
   0.17%   │               │││││       0x00007f75df23d146:   cmp    -0x1e5(%rip),%r10        # 0x00007f75df23cf68
           │               │││││                                                                 ;   {section_word}
   0.01%   │               │││││       0x00007f75df23d14d:   jne    0x00007f75df23d245
   0.51%   │               ↘↘↘↘↘       0x00007f75df23d153:   cmp    -0x21a(%rip),%r10        # 0x00007f75df23cf40
           │                                                                                     ;   {section_word}
   0.13%   │                    ╭      0x00007f75df23d15a:   je     0x00007f75df23d1a6
   0.59%   │                    │      0x00007f75df23d160:   cmp    -0x21f(%rip),%r10        # 0x00007f75df23cf48
           │                    │                                                                ;   {section_word}
   0.06%   │                    │╭     0x00007f75df23d167:   je     0x00007f75df23d1a6
   0.49%   │                    ││     0x00007f75df23d16d:   cmp    -0x224(%rip),%r10        # 0x00007f75df23cf50
           │                    ││                                                               ;   {section_word}
   0.07%   │                    ││╭    0x00007f75df23d174:   je     0x00007f75df23d1a6
   0.47%   │                    │││    0x00007f75df23d17a:   cmp    -0x229(%rip),%r10        # 0x00007f75df23cf58
           │                    │││                                                              ;   {section_word}
   0.02%   │                    │││╭   0x00007f75df23d181:   je     0x00007f75df23d1a6
   0.28%   │                    ││││   0x00007f75df23d187:   cmp    -0x22e(%rip),%r10        # 0x00007f75df23cf60
           │                    ││││                                                             ;   {section_word}
   0.01%   │                    ││││╭  0x00007f75df23d18e:   je     0x00007f75df23d1a6
   0.17%   │                    │││││  0x00007f75df23d194:   cmp    -0x233(%rip),%r10        # 0x00007f75df23cf68
           │                    │││││                                                            ;   {section_word}
   0.00%   │                    │││││  0x00007f75df23d19b:   nopl   0x0(%rax,%rax,1)
   0.00%   │                    │││││  0x00007f75df23d1a0:   jne    0x00007f75df23d254
   0.73%   │                    ↘↘↘↘↘  0x00007f75df23d1a6:   movabs $0x7fec555d8,%r10            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec555d8})}
   0.03%   │                           0x00007f75df23d1b0:   incl   0xc(%r10)                    ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
   3.21%   │                           0x00007f75df23d1b4:   mov    0x10(%rsp),%rbp
   0.02%   │                           0x00007f75df23d1b9:   add    $0x18,%rsp
   0.06%   │                           0x00007f75df23d1bd:   data16 xchg %ax,%ax
   0.00%   │                           0x00007f75df23d1c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │                           0x00007f75df23d1c7:   ja     0x00007f75df23d292
   0.88%   │                           0x00007f75df23d1cd:   ret    
           ↘                           0x00007f75df23d1ce:   mov    0x28(%r8),%r10
                                       0x00007f75df23d1d2:   mov    (%r10),%r9d
                                       0x00007f75df23d1d5:   mov    $0x0,%ecx
                                       0x00007f75df23d1da:   jmp    0x00007f75df23d1fa
                                       0x00007f75df23d1df:   nop
                                       0x00007f75df23d1e0:   mov    %ecx,%ebx
                                       0x00007f75df23d1e2:   shl    $0x3,%ebx
                                       0x00007f75df23d1e5:   lea    0x8(%rbx),%ebx
                                       0x00007f75df23d1e8:   movslq %ebx,%rbx
                                       0x00007f75df23d1eb:   mov    (%r10,%rbx,1),%rbx
....................................................................................................
  29.89%  <total for region 2>

....[Hottest Regions]...............................................................................
  68.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 990 
  29.89%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo, version 2, compile id 985 
   0.40%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 990 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1010 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  fileStream::write 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.05%  <...other 352 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 990 
  29.89%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo, version 2, compile id 985 
   1.53%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 1010 
   0.03%           libjvm.so  fileStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.17%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.01%      jvmci, level 4
   1.53%              kernel
   0.16%           libjvm.so
   0.11%                    
   0.10%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-2114530.map
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 50.00% complete, ETA 00:13:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.938 ns/op
# Warmup Iteration   2: 0.907 ns/op
# Warmup Iteration   3: 0.907 ns/op
# Warmup Iteration   4: 0.907 ns/op
# Warmup Iteration   5: 0.907 ns/op
Iteration   1: 0.907 ns/op
Iteration   2: 0.908 ns/op
Iteration   3: 0.907 ns/op
Iteration   4: 0.907 ns/op
Iteration   5: 0.907 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  0.907 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (0.907, 0.907, 0.908), stdev = 0.001
  CI (99.9%): [0.907, 0.908] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm":
PrintAssembly processed: 228662 total address lines.
Perf output processed (skipped 60.597 seconds):
 Column 1: cycles (50630 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 980 

                 #           [sp+0x20]  (sp of caller)
                 0x00007fbc4f243fa0:   mov    0x8(%rsi),%r10d
                 0x00007fbc4f243fa4:   movabs $0x7fbbd3000000,%r12
                 0x00007fbc4f243fae:   add    %r12,%r10
                 0x00007fbc4f243fb1:   xor    %r12,%r12
                 0x00007fbc4f243fb4:   cmp    %r10,%rax
                 0x00007fbc4f243fb7:   jne    0x00007fbc4ec2f080           ;   {runtime_call ic_miss_stub}
                 0x00007fbc4f243fbd:   data16 xchg %ax,%ax
               [Verified Entry Point]
                 0x00007fbc4f243fc0:   mov    %eax,-0x14000(%rsp)
   0.01%         0x00007fbc4f243fc7:   sub    $0x18,%rsp
                 0x00007fbc4f243fcb:   nop
                 0x00007fbc4f243fcc:   cmpl   $0x1,0x20(%r15)
   0.01%         0x00007fbc4f243fd4:   jne    0x00007fbc4f2440f6
                 0x00007fbc4f243fda:   mov    %rbp,0x10(%rsp)
                 0x00007fbc4f243fdf:   mov    0x10(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@0 (line 141)
                 0x00007fbc4f243fe3:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fbc4f24411a
   0.01%         0x00007fbc4f243feb:   test   %r11d,%r11d
          ╭      0x00007fbc4f243fee:   je     0x00007fbc4f244085           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   0.00%  │      0x00007fbc4f243ff4:   mov    %r11d,%r8d
          │      0x00007fbc4f243ff7:   dec    %r8d
          │      0x00007fbc4f243ffa:   movslq %r8d,%r8
   0.00%  │      0x00007fbc4f243ffd:   mov    %r11d,%r9d
          │      0x00007fbc4f244000:   cmp    %r8,%r9
          │╭     0x00007fbc4f244003:   ja     0x00007fbc4f244013
          ││     0x00007fbc4f244009:   cmp    $0x2,%r11d
          ││╭    0x00007fbc4f24400d:   jae    0x00007fbc4f24409c
   0.00%  │↘│    0x00007fbc4f244013:   mov    0x10(,%r10,8),%r8d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@22 (line 142)
   0.00%  │ │    0x00007fbc4f24401b:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
          │ │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@0 (line 141)
          │ │    0x00007fbc4f244020:   cmpl   $0x1080810,0x8(,%r8,8)       ; implicit exception: dispatches to 0x00007fbc4f24413d
          │ │                                                              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   0.02%  │ │    0x00007fbc4f24402c:   jne    0x00007fbc4f2440c4
   0.00%  │ │    0x00007fbc4f244032:   movabs $0x7fec55080,%r8             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec55080})}
          │ │    0x00007fbc4f24403c:   mov    $0x1,%r9d
          │ │    0x00007fbc4f244042:   add    0xc(%r8),%r9d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
          │ │    0x00007fbc4f244046:   mov    %r9d,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   0.00%  │ │    0x00007fbc4f24404a:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 141)
          │ │    0x00007fbc4f24404e:   mov    %r9d,%ecx
          │ │    0x00007fbc4f244051:   mov    $0x1,%r9d
          │ │╭   0x00007fbc4f244057:   jmp    0x00007fbc4f24407f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
          │ ││   0x00007fbc4f24405c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   9.54%  │ ││↗  0x00007fbc4f244060:   mov    0x10(%r10,%r9,4),%ebx        ; ImmutableOopMap {r8=Oop r10=Oop }
          │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
  10.48%  │ │││  0x00007fbc4f244065:   cmpl   $0x1080810,0x8(,%rbx,8)      ; implicit exception: dispatches to 0x00007fbc4f244160
          │ │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
  24.26%  │ │││  0x00007fbc4f244070:   jne    0x00007fbc4f2440d3           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
  11.43%  │ │││  0x00007fbc4f244076:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   9.66%  │ │││  0x00007fbc4f244078:   mov    %ecx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
  10.34%  │ │││  0x00007fbc4f24407c:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 142)
  10.78%  │ │↘│  0x00007fbc4f24407f:   nop
  11.37%  │ │ │  0x00007fbc4f244080:   cmp    %r9d,%r11d
          │ │ ╰  0x00007fbc4f244083:   jg     0x00007fbc4f244060           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   0.01%  ↘ │    0x00007fbc4f244085:   mov    0x10(%rsp),%rbp
   0.04%    │    0x00007fbc4f24408a:   add    $0x18,%rsp
            │    0x00007fbc4f24408e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │    0x00007fbc4f244095:   ja     0x00007fbc4f244106
   0.01%    │    0x00007fbc4f24409b:   ret    
            ↘    0x00007fbc4f24409c:   mov    $0x18,%r11
                 0x00007fbc4f2440a3:   mov    $0xffffffe5,%r10d
                 0x00007fbc4f2440a9:   mov    %r10d,0x484(%r15)            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@8 (line 142)
                 0x00007fbc4f2440b0:   mov    %r11,0x490(%r15)
                 0x00007fbc4f2440b7:   call   0x00007fbc4ec3517a           ; ImmutableOopMap {rsi=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@0 (line 141)
                                                                           ;   {runtime_call DeoptimizationBlob}
                 0x00007fbc4f2440bc:   nopl   0x0(%rax,%rax,1)             ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.99%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 980 
   0.38%               kernel  [unknown] 
   0.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1007 
   0.13%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
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
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.85%  <...other 293 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 980 
   1.46%               kernel  [unknown] 
   0.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1007 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strncmp_avx2 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  malloc 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.19%  <...other 91 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.17%       jvmci, level 4
   1.46%               kernel
   0.13%            libjvm.so
   0.12%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%           ld-2.31.so
   0.00%          c1, level 3
   0.00%           libjava.so
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = BIMORPHIC)

# Run progress: 57.14% complete, ETA 00:11:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.603 ns/op
# Warmup Iteration   2: 4.519 ns/op
# Warmup Iteration   3: 4.519 ns/op
# Warmup Iteration   4: 4.523 ns/op
# Warmup Iteration   5: 4.504 ns/op
Iteration   1: 4.522 ns/op
Iteration   2: 4.526 ns/op
Iteration   3: 4.521 ns/op
Iteration   4: 4.494 ns/op
Iteration   5: 4.517 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  4.516 ±(99.9%) 0.050 ns/op [Average]
  (min, avg, max) = (4.494, 4.516, 4.526), stdev = 0.013
  CI (99.9%): [4.466, 4.566] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm":
PrintAssembly processed: 226937 total address lines.
Perf output processed (skipped 60.656 seconds):
 Column 1: cycles (50773 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 989 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
                    0x00007fbb33243602:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 141)
                    0x00007fbb33243606:   mov    %r9d,%ecx
                    0x00007fbb33243609:   mov    $0x1,%r9d
          ╭         0x00007fbb3324360f:   jmp    0x00007fbb332436fc           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
          │         0x00007fbb33243614:   nopl   0x0(%rax,%rax,1)
          │         0x00007fbb3324361c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   3.59%  │      ↗  0x00007fbb33243620:   mov    0x10(%r10,%r9,4),%ebx        ; ImmutableOopMap {rbx=NarrowOop r8=Oop r10=Oop }
          │      │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
   0.47%  │      │  0x00007fbb33243625:   mov    0x8(,%rbx,8),%edi            ; implicit exception: dispatches to 0x00007fbb33243873
  14.99%  │      │  0x00007fbb3324362c:   movabs $0x7fbab7000000,%rdx
   4.04%  │      │  0x00007fbb33243636:   lea    (%rdx,%rdi,1),%rdi
   4.14%  │      │  0x00007fbb3324363a:   cmp    -0x1c1(%rip),%rdi        # 0x00007fbb33243480
          │      │                                                            ;   {section_word}
   3.36%  │╭     │  0x00007fbb33243641:   je     0x00007fbb33243654
   0.64%  ││     │  0x00007fbb33243647:   cmp    -0x1c6(%rip),%rdi        # 0x00007fbb33243488
          ││     │                                                            ;   {section_word}
   3.67%  ││     │  0x00007fbb3324364e:   jne    0x00007fbb33243798
   3.35%  │↘     │  0x00007fbb33243654:   mov    0x8(,%rbx,8),%ebx
   0.09%  │      │  0x00007fbb3324365b:   movabs $0x7fbab7000000,%rdi
   1.39%  │      │  0x00007fbb33243665:   lea    (%rdi,%rbx,1),%rbx
   5.51%  │      │  0x00007fbb33243669:   cmp    -0x1e8(%rip),%rbx        # 0x00007fbb33243488
          │      │                                                            ;   {section_word}
   4.34%  │ ╭    │  0x00007fbb33243670:   je     0x00007fbb33243686
   2.61%  │ │    │  0x00007fbb33243676:   cmp    -0x1fd(%rip),%rbx        # 0x00007fbb33243480
          │ │    │                                                            ;   {section_word}
   1.63%  │ │    │  0x00007fbb3324367d:   data16 xchg %ax,%ax
   0.08%  │ │    │  0x00007fbb33243680:   jne    0x00007fbb332437d8
   2.40%  │ ↘    │  0x00007fbb33243686:   cmp    -0x20d(%rip),%rbx        # 0x00007fbb33243480
          │      │                                                            ;   {section_word}
   1.04%  │  ╭   │  0x00007fbb3324368d:   je     0x00007fbb332436a0
   3.73%  │  │   │  0x00007fbb33243693:   cmp    -0x212(%rip),%rbx        # 0x00007fbb33243488
          │  │   │                                                            ;   {section_word}
   0.30%  │  │   │  0x00007fbb3324369a:   jne    0x00007fbb33243786
   2.26%  │  ↘   │  0x00007fbb332436a0:   cmp    -0x227(%rip),%rbx        # 0x00007fbb33243480
          │      │                                                            ;   {section_word}
   0.43%  │   ╭  │  0x00007fbb332436a7:   je     0x00007fbb332436ba
   3.76%  │   │  │  0x00007fbb332436ad:   cmp    -0x22c(%rip),%rbx        # 0x00007fbb33243488
          │   │  │                                                            ;   {section_word}
   0.24%  │   │  │  0x00007fbb332436b4:   jne    0x00007fbb3324377d
   4.50%  │   ↘  │  0x00007fbb332436ba:   cmp    -0x241(%rip),%rbx        # 0x00007fbb33243480
          │      │                                                            ;   {section_word}
   0.16%  │    ╭ │  0x00007fbb332436c1:   je     0x00007fbb332436d4
   3.63%  │    │ │  0x00007fbb332436c7:   cmp    -0x246(%rip),%rbx        # 0x00007fbb33243488
          │    │ │                                                            ;   {section_word}
   0.18%  │    │ │  0x00007fbb332436ce:   jne    0x00007fbb33243757
   4.63%  │    ↘ │  0x00007fbb332436d4:   cmp    -0x25b(%rip),%rbx        # 0x00007fbb33243480
          │      │                                                            ;   {section_word}
   0.11%  │      │  0x00007fbb332436db:   nopl   0x0(%rax,%rax,1)
   3.46%  │     ╭│  0x00007fbb332436e0:   je     0x00007fbb332436f3
   0.27%  │     ││  0x00007fbb332436e6:   cmp    -0x265(%rip),%rbx        # 0x00007fbb33243488
          │     ││                                                            ;   {section_word}
   0.19%  │     ││  0x00007fbb332436ed:   jne    0x00007fbb3324378f
   4.26%  │     ↘│  0x00007fbb332436f3:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   3.43%  │      │  0x00007fbb332436f5:   mov    %ecx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   0.26%  │      │  0x00007fbb332436f9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 142)
   0.25%  ↘      │  0x00007fbb332436fc:   nopl   0x0(%rax)
   4.38%         │  0x00007fbb33243700:   cmp    %r9d,%r11d
                 ╰  0x00007fbb33243703:   jg     0x00007fbb33243620           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   0.00%            0x00007fbb33243709:   mov    0x10(%rsp),%rbp
   0.01%            0x00007fbb3324370e:   add    $0x18,%rsp
                    0x00007fbb33243712:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                    0x00007fbb33243719:   ja     0x00007fbb33243819
   0.00%            0x00007fbb3324371f:   ret    
                    0x00007fbb33243720:   mov    $0x294,%r11
                    0x00007fbb33243727:   mov    $0xffffffcd,%r10d
                    0x00007fbb3324372d:   mov    %r10d,0x484(%r15)            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@8 (line 142)
                    0x00007fbb33243734:   mov    %r11,0x490(%r15)
                    0x00007fbb3324373b:   call   0x00007fbb32c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@0 (line 141)
                                                                              ;   {runtime_call DeoptimizationBlob}
                    0x00007fbb33243740:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  97.81%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 989 
   0.56%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1010 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.82%  <...other 275 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 989 
   1.75%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1010 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%    perf-2114657.map  [unknown] 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.11%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.91%      jvmci, level 4
   1.75%              kernel
   0.12%           libjvm.so
   0.09%                    
   0.08%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%    perf-2114657.map
   0.01%          ld-2.31.so
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 64.29% complete, ETA 00:09:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.663 ns/op
# Warmup Iteration   2: 5.591 ns/op
# Warmup Iteration   3: 5.534 ns/op
# Warmup Iteration   4: 5.533 ns/op
# Warmup Iteration   5: 5.639 ns/op
Iteration   1: 5.598 ns/op
Iteration   2: 5.609 ns/op
Iteration   3: 5.676 ns/op
Iteration   4: 5.593 ns/op
Iteration   5: 5.536 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  5.602 ±(99.9%) 0.192 ns/op [Average]
  (min, avg, max) = (5.536, 5.602, 5.676), stdev = 0.050
  CI (99.9%): [5.411, 5.794] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm":
PrintAssembly processed: 221424 total address lines.
Perf output processed (skipped 60.516 seconds):
 Column 1: cycles (50562 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 983 

                          0x00007f091f241695:   mov    %r9d,%ecx
                          0x00007f091f241698:   mov    $0x1,%r9d
                          0x00007f091f24169e:   xchg   %ax,%ax
          ╭               0x00007f091f2416a0:   jmp    0x00007f091f2417f0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
          │               0x00007f091f2416a5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │               0x00007f091f2416b0:   data16 data16 xchg %ax,%ax
          │               0x00007f091f2416b4:   nopl   0x0(%rax,%rax,1)
          │               0x00007f091f2416bc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   3.08%  │            ↗  0x00007f091f2416c0:   mov    0x10(%r10,%r9,4),%ebx        ; ImmutableOopMap {rbx=NarrowOop r8=Oop r10=Oop }
          │            │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │            │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
   2.60%  │            │  0x00007f091f2416c5:   mov    0x8(,%rbx,8),%edi            ; implicit exception: dispatches to 0x00007f091f241963
  18.01%  │            │  0x00007f091f2416cc:   movabs $0x7f08a3000000,%rdx
   0.30%  │            │  0x00007f091f2416d6:   lea    (%rdx,%rdi,1),%rdi
   4.95%  │            │  0x00007f091f2416da:   cmp    -0x221(%rip),%rdi        # 0x00007f091f2414c0
          │            │                                                            ;   {section_word}
   5.15%  │╭           │  0x00007f091f2416e1:   je     0x00007f091f241706
   3.40%  ││           │  0x00007f091f2416e7:   cmp    -0x226(%rip),%rdi        # 0x00007f091f2414c8
          ││           │                                                            ;   {section_word}
   0.59%  ││╭          │  0x00007f091f2416ee:   je     0x00007f091f241706
   1.15%  │││          │  0x00007f091f2416f4:   cmp    -0x22b(%rip),%rdi        # 0x00007f091f2414d0
          │││          │                                                            ;   {section_word}
   0.52%  │││          │  0x00007f091f2416fb:   nopl   0x0(%rax,%rax,1)
   0.61%  │││          │  0x00007f091f241700:   jne    0x00007f091f241888
   3.03%  │↘↘          │  0x00007f091f241706:   mov    0x8(,%rbx,8),%ebx
   2.49%  │            │  0x00007f091f24170d:   movabs $0x7f08a3000000,%rdi
   2.10%  │            │  0x00007f091f241717:   lea    (%rdi,%rbx,1),%rbx
   1.82%  │            │  0x00007f091f24171b:   cmp    -0x252(%rip),%rbx        # 0x00007f091f2414d0
          │            │                                                            ;   {section_word}
   3.68%  │  ╭         │  0x00007f091f241722:   je     0x00007f091f241746
   1.74%  │  │         │  0x00007f091f241728:   cmp    -0x267(%rip),%rbx        # 0x00007f091f2414c8
          │  │         │                                                            ;   {section_word}
   1.96%  │  │╭        │  0x00007f091f24172f:   je     0x00007f091f241746
   1.30%  │  ││        │  0x00007f091f241735:   cmp    -0x27c(%rip),%rbx        # 0x00007f091f2414c0
          │  ││        │                                                            ;   {section_word}
   0.09%  │  ││        │  0x00007f091f24173c:   nopl   0x0(%rax)
   0.24%  │  ││        │  0x00007f091f241740:   jne    0x00007f091f2418c9
   2.79%  │  ↘↘        │  0x00007f091f241746:   cmp    -0x28d(%rip),%rbx        # 0x00007f091f2414c0
          │            │                                                            ;   {section_word}
   1.92%  │    ╭       │  0x00007f091f24174d:   je     0x00007f091f24176d
   1.36%  │    │       │  0x00007f091f241753:   cmp    -0x28a(%rip),%rbx        # 0x00007f091f2414d0
          │    │       │                                                            ;   {section_word}
   0.71%  │    │╭      │  0x00007f091f24175a:   je     0x00007f091f24176d
   1.02%  │    ││      │  0x00007f091f241760:   cmp    -0x29f(%rip),%rbx        # 0x00007f091f2414c8
          │    ││      │                                                            ;   {section_word}
   0.38%  │    ││      │  0x00007f091f241767:   jne    0x00007f091f241876
   1.96%  │    ↘↘      │  0x00007f091f24176d:   cmp    -0x2ac(%rip),%rbx        # 0x00007f091f2414c8
          │            │                                                            ;   {section_word}
   1.14%  │      ╭     │  0x00007f091f241774:   je     0x00007f091f241794
   2.22%  │      │     │  0x00007f091f24177a:   cmp    -0x2c1(%rip),%rbx        # 0x00007f091f2414c0
          │      │     │                                                            ;   {section_word}
   0.91%  │      │╭    │  0x00007f091f241781:   je     0x00007f091f241794
   1.02%  │      ││    │  0x00007f091f241787:   cmp    -0x2be(%rip),%rbx        # 0x00007f091f2414d0
          │      ││    │                                                            ;   {section_word}
   0.46%  │      ││    │  0x00007f091f24178e:   jne    0x00007f091f24186d
   2.29%  │      ↘↘    │  0x00007f091f241794:   cmp    -0x2d3(%rip),%rbx        # 0x00007f091f2414c8
          │            │                                                            ;   {section_word}
   0.65%  │            │  0x00007f091f24179b:   nopl   0x0(%rax,%rax,1)
   2.42%  │        ╭   │  0x00007f091f2417a0:   je     0x00007f091f2417c0
   1.46%  │        │   │  0x00007f091f2417a6:   cmp    -0x2ed(%rip),%rbx        # 0x00007f091f2414c0
          │        │   │                                                            ;   {section_word}
   0.95%  │        │╭  │  0x00007f091f2417ad:   je     0x00007f091f2417c0
   0.43%  │        ││  │  0x00007f091f2417b3:   cmp    -0x2ea(%rip),%rbx        # 0x00007f091f2414d0
          │        ││  │                                                            ;   {section_word}
   0.60%  │        ││  │  0x00007f091f2417ba:   jne    0x00007f091f241847
   2.41%  │        ↘↘  │  0x00007f091f2417c0:   cmp    -0x2ff(%rip),%rbx        # 0x00007f091f2414c8
          │            │                                                            ;   {section_word}
   1.82%  │          ╭ │  0x00007f091f2417c7:   je     0x00007f091f2417e7
   1.20%  │          │ │  0x00007f091f2417cd:   cmp    -0x314(%rip),%rbx        # 0x00007f091f2414c0
          │          │ │                                                            ;   {section_word}
   0.66%  │          │╭│  0x00007f091f2417d4:   je     0x00007f091f2417e7
   0.86%  │          │││  0x00007f091f2417da:   cmp    -0x311(%rip),%rbx        # 0x00007f091f2414d0
          │          │││                                                            ;   {section_word}
   0.59%  │          │││  0x00007f091f2417e1:   jne    0x00007f091f24187f
   3.13%  │          ↘↘│  0x00007f091f2417e7:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   1.55%  │            │  0x00007f091f2417e9:   mov    %ecx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   1.43%  │            │  0x00007f091f2417ed:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 142)
   0.72%  ↘            │  0x00007f091f2417f0:   cmp    %r9d,%r11d
                       ╰  0x00007f091f2417f3:   jg     0x00007f091f2416c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   0.00%                  0x00007f091f2417f9:   mov    0x10(%rsp),%rbp
   0.02%                  0x00007f091f2417fe:   add    $0x18,%rsp
                          0x00007f091f241802:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                          0x00007f091f241809:   ja     0x00007f091f241909
                          0x00007f091f24180f:   ret    
                          0x00007f091f241810:   mov    $0x294,%r11
                          0x00007f091f241817:   mov    $0xffffffcd,%r10d
                          0x00007f091f24181d:   mov    %r10d,0x484(%r15)            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@8 (line 142)
                          0x00007f091f241824:   mov    %r11,0x490(%r15)
                          0x00007f091f24182b:   call   0x00007f091ec3517a           ; ImmutableOopMap {rsi=Oop }
                                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  97.91%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 983 
   0.25%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1007 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 983 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 983 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.13%  <...other 349 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 983 
   1.72%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1007 
   0.03%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strncmp_avx2 
   0.01%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%   libpthread-2.31.so  __libc_write 
   0.11%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.00%       jvmci, level 4
   1.72%               kernel
   0.12%            libjvm.so
   0.07%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 71.43% complete, ETA 00:07:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.603 ns/op
# Warmup Iteration   2: 6.479 ns/op
# Warmup Iteration   3: 6.495 ns/op
# Warmup Iteration   4: 6.450 ns/op
# Warmup Iteration   5: 6.540 ns/op
Iteration   1: 6.606 ns/op
Iteration   2: 6.734 ns/op
Iteration   3: 6.629 ns/op
Iteration   4: 6.604 ns/op
Iteration   5: 6.472 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  6.609 ±(99.9%) 0.359 ns/op [Average]
  (min, avg, max) = (6.472, 6.609, 6.734), stdev = 0.093
  CI (99.9%): [6.250, 6.968] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm":
PrintAssembly processed: 224963 total address lines.
Perf output processed (skipped 60.631 seconds):
 Column 1: cycles (50441 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 985 

                                 0x00007f704b23fd93:   movslq %r8d,%r8
                                 0x00007f704b23fd96:   mov    %r11d,%r9d
                                 0x00007f704b23fd99:   nopl   0x0(%rax)
                                 0x00007f704b23fda0:   cmp    %r8,%r9
          ╭                      0x00007f704b23fda3:   ja     0x00007f704b23fdb3           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@22 (line 142)
          │                      0x00007f704b23fda9:   cmp    $0x2,%r11d
          │                      0x00007f704b23fdad:   jae    0x00007f704b240011
          ↘                      0x00007f704b23fdb3:   movabs $0x7fec55618,%r8             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec55618})}
                                 0x00007f704b23fdbd:   mov    $0x1,%r9d
   0.00%                         0x00007f704b23fdc3:   add    0xc(%r8),%r9d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
                                 0x00007f704b23fdc7:   mov    %r9d,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   0.00%                         0x00007f704b23fdcb:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 141)
                                 0x00007f704b23fdcf:   mov    %r9d,%ecx
                                 0x00007f704b23fdd2:   mov    $0x1,%r9d
           ╭                     0x00007f704b23fdd8:   jmp    0x00007f704b23ff63           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
           │                     0x00007f704b23fddd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   2.27%   │                  ↗  0x00007f704b23fde0:   mov    0x10(%r10,%r9,4),%ebx        ; ImmutableOopMap {rbx=NarrowOop r8=Oop r10=Oop }
           │                  │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │                  │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
   1.13%   │                  │  0x00007f704b23fde5:   mov    0x8(,%rbx,8),%edi            ; implicit exception: dispatches to 0x00007f704b2400e3
  19.85%   │                  │  0x00007f704b23fdec:   movabs $0x7f6fcf000000,%rdx
   0.13%   │                  │  0x00007f704b23fdf6:   lea    (%rdx,%rdi,1),%rdi
   4.04%   │                  │  0x00007f704b23fdfa:   cmp    -0x261(%rip),%rdi        # 0x00007f704b23fba0
           │                  │                                                            ;   {section_word}
   3.29%   │╭                 │  0x00007f704b23fe01:   je     0x00007f704b23fe33
   2.42%   ││                 │  0x00007f704b23fe07:   cmp    -0x266(%rip),%rdi        # 0x00007f704b23fba8
           ││                 │                                                            ;   {section_word}
   0.33%   ││╭                │  0x00007f704b23fe0e:   je     0x00007f704b23fe33
   1.70%   │││                │  0x00007f704b23fe14:   cmp    -0x26b(%rip),%rdi        # 0x00007f704b23fbb0
           │││                │                                                            ;   {section_word}
   0.16%   │││                │  0x00007f704b23fe1b:   nopl   0x0(%rax,%rax,1)
   0.85%   │││╭               │  0x00007f704b23fe20:   je     0x00007f704b23fe33
   0.37%   ││││               │  0x00007f704b23fe26:   cmp    -0x275(%rip),%rdi        # 0x00007f704b23fbb8
           ││││               │                                                            ;   {section_word}
   1.12%   ││││               │  0x00007f704b23fe2d:   jne    0x00007f704b240008
   2.53%   │↘↘↘               │  0x00007f704b23fe33:   mov    0x8(,%rbx,8),%ebx
   0.26%   │                  │  0x00007f704b23fe3a:   movabs $0x7f6fcf000000,%rdi
   1.15%   │                  │  0x00007f704b23fe44:   lea    (%rdi,%rbx,1),%rbx
   3.24%   │                  │  0x00007f704b23fe48:   cmp    -0x2af(%rip),%rbx        # 0x00007f704b23fba0
           │                  │                                                            ;   {section_word}
   2.63%   │   ╭              │  0x00007f704b23fe4f:   je     0x00007f704b23fe80
   0.36%   │   │              │  0x00007f704b23fe55:   cmp    -0x2a4(%rip),%rbx        # 0x00007f704b23fbb8
           │   │              │                                                            ;   {section_word}
   1.12%   │   │              │  0x00007f704b23fe5c:   nopl   0x0(%rax)
   1.85%   │   │╭             │  0x00007f704b23fe60:   je     0x00007f704b23fe80
   1.12%   │   ││             │  0x00007f704b23fe66:   cmp    -0x2bd(%rip),%rbx        # 0x00007f704b23fbb0
           │   ││             │                                                            ;   {section_word}
   0.20%   │   ││╭            │  0x00007f704b23fe6d:   je     0x00007f704b23fe80
   0.84%   │   │││            │  0x00007f704b23fe73:   cmp    -0x2d2(%rip),%rbx        # 0x00007f704b23fba8
           │   │││            │                                                            ;   {section_word}
   0.00%   │   │││            │  0x00007f704b23fe7a:   jne    0x00007f704b240049
   2.83%   │   ↘↘↘            │  0x00007f704b23fe80:   cmp    -0x2e7(%rip),%rbx        # 0x00007f704b23fba0
           │                  │                                                            ;   {section_word}
   0.73%   │      ╭           │  0x00007f704b23fe87:   je     0x00007f704b23feb4
   1.87%   │      │           │  0x00007f704b23fe8d:   cmp    -0x2dc(%rip),%rbx        # 0x00007f704b23fbb8
           │      │           │                                                            ;   {section_word}
   1.15%   │      │╭          │  0x00007f704b23fe94:   je     0x00007f704b23feb4
   1.38%   │      ││          │  0x00007f704b23fe9a:   cmp    -0x2f1(%rip),%rbx        # 0x00007f704b23fbb0
           │      ││          │                                                            ;   {section_word}
   0.45%   │      ││╭         │  0x00007f704b23fea1:   je     0x00007f704b23feb4
   0.80%   │      │││         │  0x00007f704b23fea7:   cmp    -0x306(%rip),%rbx        # 0x00007f704b23fba8
           │      │││         │                                                            ;   {section_word}
           │      │││         │  0x00007f704b23feae:   jne    0x00007f704b23fff6
   3.07%   │      ↘↘↘         │  0x00007f704b23feb4:   cmp    -0x31b(%rip),%rbx        # 0x00007f704b23fba0
           │                  │                                                            ;   {section_word}
   0.18%   │                  │  0x00007f704b23febb:   nopl   0x0(%rax,%rax,1)
   1.09%   │         ╭        │  0x00007f704b23fec0:   je     0x00007f704b23feed
   2.40%   │         │        │  0x00007f704b23fec6:   cmp    -0x315(%rip),%rbx        # 0x00007f704b23fbb8
           │         │        │                                                            ;   {section_word}
   0.73%   │         │╭       │  0x00007f704b23fecd:   je     0x00007f704b23feed
   1.89%   │         ││       │  0x00007f704b23fed3:   cmp    -0x32a(%rip),%rbx        # 0x00007f704b23fbb0
           │         ││       │                                                            ;   {section_word}
   0.43%   │         ││╭      │  0x00007f704b23feda:   je     0x00007f704b23feed
   0.45%   │         │││      │  0x00007f704b23fee0:   cmp    -0x33f(%rip),%rbx        # 0x00007f704b23fba8
           │         │││      │                                                            ;   {section_word}
   0.19%   │         │││      │  0x00007f704b23fee7:   jne    0x00007f704b23ffed
   3.20%   │         ↘↘↘      │  0x00007f704b23feed:   cmp    -0x354(%rip),%rbx        # 0x00007f704b23fba0
           │                  │                                                            ;   {section_word}
   0.59%   │            ╭     │  0x00007f704b23fef4:   je     0x00007f704b23ff26
   2.90%   │            │     │  0x00007f704b23fefa:   cmp    -0x349(%rip),%rbx        # 0x00007f704b23fbb8
           │            │     │                                                            ;   {section_word}
   0.28%   │            │╭    │  0x00007f704b23ff01:   je     0x00007f704b23ff26
   1.65%   │            ││    │  0x00007f704b23ff07:   cmp    -0x35e(%rip),%rbx        # 0x00007f704b23fbb0
           │            ││    │                                                            ;   {section_word}
   0.32%   │            ││╭   │  0x00007f704b23ff0e:   je     0x00007f704b23ff26
   0.67%   │            │││   │  0x00007f704b23ff14:   cmp    -0x373(%rip),%rbx        # 0x00007f704b23fba8
           │            │││   │                                                            ;   {section_word}
   0.11%   │            │││   │  0x00007f704b23ff1b:   nopl   0x0(%rax,%rax,1)
   0.33%   │            │││   │  0x00007f704b23ff20:   jne    0x00007f704b23ffc5
   3.42%   │            ↘↘↘   │  0x00007f704b23ff26:   cmp    -0x38d(%rip),%rbx        # 0x00007f704b23fba0
           │                  │                                                            ;   {section_word}
   0.52%   │               ╭  │  0x00007f704b23ff2d:   je     0x00007f704b23ff5a
   1.94%   │               │  │  0x00007f704b23ff33:   cmp    -0x382(%rip),%rbx        # 0x00007f704b23fbb8
           │               │  │                                                            ;   {section_word}
   0.32%   │               │╭ │  0x00007f704b23ff3a:   je     0x00007f704b23ff5a
   1.92%   │               ││ │  0x00007f704b23ff40:   cmp    -0x397(%rip),%rbx        # 0x00007f704b23fbb0
           │               ││ │                                                            ;   {section_word}
   0.28%   │               ││╭│  0x00007f704b23ff47:   je     0x00007f704b23ff5a
   0.81%   │               ││││  0x00007f704b23ff4d:   cmp    -0x3ac(%rip),%rbx        # 0x00007f704b23fba8
           │               ││││                                                            ;   {section_word}
   0.14%   │               ││││  0x00007f704b23ff54:   jne    0x00007f704b23ffff
   2.93%   │               ↘↘↘│  0x00007f704b23ff5a:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   0.39%   │                  │  0x00007f704b23ff5c:   mov    %ecx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   2.89%   │                  │  0x00007f704b23ff60:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 142)
   0.28%   ↘                  │  0x00007f704b23ff63:   cmp    %r9d,%r11d
                              ╰  0x00007f704b23ff66:   jg     0x00007f704b23fde0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
                                 0x00007f704b23ff6c:   mov    0x10(%rsp),%rbp
   0.01%                         0x00007f704b23ff71:   add    $0x18,%rsp
                                 0x00007f704b23ff75:   data16 data16 nopw 0x0(%rax,%rax,1)
                                 0x00007f704b23ff80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                 0x00007f704b23ff87:   ja     0x00007f704b240089
   0.00%                         0x00007f704b23ff8d:   ret    
                                 0x00007f704b23ff8e:   mov    $0x294,%r11
                                 0x00007f704b23ff95:   mov    $0xffffffcd,%r10d
                                 0x00007f704b23ff9b:   mov    %r10d,0x484(%r15)            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@8 (line 142)
                                 0x00007f704b23ffa2:   mov    %r11,0x490(%r15)
                                 0x00007f704b23ffa9:   call   0x00007f704ac3517a           ; ImmutableOopMap {rsi=Oop }
                                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@0 (line 141)
                                                                                           ;   {runtime_call DeoptimizationBlob}
                                 0x00007f704b23ffae:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  98.49%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 985 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1012 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 985 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.77%  <...other 239 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 985 
   1.16%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1012 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.00%           libjvm.so  defaultStream::hold 
   0.10%  <...other 48 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.56%      jvmci, level 4
   1.16%              kernel
   0.10%           libjvm.so
   0.08%        libc-2.31.so
   0.06%                    
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 78.57% complete, ETA 00:05:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.052 ns/op
# Warmup Iteration   2: 7.966 ns/op
# Warmup Iteration   3: 7.992 ns/op
# Warmup Iteration   4: 7.984 ns/op
# Warmup Iteration   5: 7.965 ns/op
Iteration   1: 7.903 ns/op
Iteration   2: 7.957 ns/op
Iteration   3: 7.984 ns/op
Iteration   4: 7.862 ns/op
Iteration   5: 7.965 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  7.934 ±(99.9%) 0.193 ns/op [Average]
  (min, avg, max) = (7.862, 7.934, 7.984), stdev = 0.050
  CI (99.9%): [7.741, 8.128] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm":
PrintAssembly processed: 223719 total address lines.
Perf output processed (skipped 60.548 seconds):
 Column 1: cycles (50831 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 994 

                                      0x00007f464f2427f7:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 141)
                                      0x00007f464f2427fb:   mov    %r9d,%ecx
                                      0x00007f464f2427fe:   mov    $0x1,%r9d
          ╭                           0x00007f464f242804:   jmp    0x00007f464f2429f6           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
          │                           0x00007f464f242809:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                           0x00007f464f242814:   data16 data16 xchg %ax,%ax
          │                           0x00007f464f242818:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   2.21%  │                        ↗  0x00007f464f242820:   mov    0x10(%r10,%r9,4),%ebx        ; ImmutableOopMap {rbx=NarrowOop r8=Oop r10=Oop }
          │                        │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                        │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
   3.25%  │                        │  0x00007f464f242825:   mov    0x8(,%rbx,8),%edi            ; implicit exception: dispatches to 0x00007f464f242b67
  18.94%  │                        │  0x00007f464f24282c:   movabs $0x7f45d3000000,%rdx
   0.23%  │                        │  0x00007f464f242836:   lea    (%rdx,%rdi,1),%rdi
   4.05%  │                        │  0x00007f464f24283a:   cmp    -0x2e1(%rip),%rdi        # 0x00007f464f242560
          │                        │                                                            ;   {section_word}
   4.70%  │╭                       │  0x00007f464f242841:   je     0x00007f464f242880
   3.24%  ││                       │  0x00007f464f242847:   cmp    -0x2e6(%rip),%rdi        # 0x00007f464f242568
          ││                       │                                                            ;   {section_word}
   0.56%  ││╭                      │  0x00007f464f24284e:   je     0x00007f464f242880
   1.86%  │││                      │  0x00007f464f242854:   cmp    -0x2eb(%rip),%rdi        # 0x00007f464f242570
          │││                      │                                                            ;   {section_word}
   0.07%  │││                      │  0x00007f464f24285b:   nopl   0x0(%rax,%rax,1)
   0.80%  │││╭                     │  0x00007f464f242860:   je     0x00007f464f242880
   0.71%  ││││                     │  0x00007f464f242866:   cmp    -0x2f5(%rip),%rdi        # 0x00007f464f242578
          ││││                     │                                                            ;   {section_word}
   0.58%  ││││╭                    │  0x00007f464f24286d:   je     0x00007f464f242880
   0.35%  │││││                    │  0x00007f464f242873:   cmp    -0x2fa(%rip),%rdi        # 0x00007f464f242580
          │││││                    │                                                            ;   {section_word}
   0.18%  │││││                    │  0x00007f464f24287a:   jne    0x00007f464f242a8e
   1.83%  │↘↘↘↘                    │  0x00007f464f242880:   mov    0x8(,%rbx,8),%ebx
   2.13%  │                        │  0x00007f464f242887:   movabs $0x7f45d3000000,%rdi
   0.75%  │                        │  0x00007f464f242891:   lea    (%rdi,%rbx,1),%rbx
   1.40%  │                        │  0x00007f464f242895:   cmp    -0x32c(%rip),%rbx        # 0x00007f464f242570
          │                        │                                                            ;   {section_word}
   2.00%  │                        │  0x00007f464f24289c:   nopl   0x0(%rax)
   1.14%  │    ╭                   │  0x00007f464f2428a0:   je     0x00007f464f2428da
   1.62%  │    │                   │  0x00007f464f2428a6:   cmp    -0x345(%rip),%rbx        # 0x00007f464f242568
          │    │                   │                                                            ;   {section_word}
   0.59%  │    │╭                  │  0x00007f464f2428ad:   je     0x00007f464f2428da
   1.23%  │    ││                  │  0x00007f464f2428b3:   cmp    -0x35a(%rip),%rbx        # 0x00007f464f242560
          │    ││                  │                                                            ;   {section_word}
   0.40%  │    ││╭                 │  0x00007f464f2428ba:   je     0x00007f464f2428da
   0.64%  │    │││                 │  0x00007f464f2428c0:   cmp    -0x347(%rip),%rbx        # 0x00007f464f242580
          │    │││                 │                                                            ;   {section_word}
   0.29%  │    │││╭                │  0x00007f464f2428c7:   je     0x00007f464f2428da
   0.25%  │    ││││                │  0x00007f464f2428cd:   cmp    -0x35c(%rip),%rbx        # 0x00007f464f242578
          │    ││││                │                                                            ;   {section_word}
   0.23%  │    ││││                │  0x00007f464f2428d4:   jne    0x00007f464f242acd
   1.96%  │    ↘↘↘↘                │  0x00007f464f2428da:   cmp    -0x369(%rip),%rbx        # 0x00007f464f242578
          │                        │                                                            ;   {section_word}
   0.75%  │        ╭               │  0x00007f464f2428e1:   je     0x00007f464f242920
   1.54%  │        │               │  0x00007f464f2428e7:   cmp    -0x37e(%rip),%rbx        # 0x00007f464f242570
          │        │               │                                                            ;   {section_word}
   0.83%  │        │╭              │  0x00007f464f2428ee:   je     0x00007f464f242920
   1.59%  │        ││              │  0x00007f464f2428f4:   cmp    -0x393(%rip),%rbx        # 0x00007f464f242568
          │        ││              │                                                            ;   {section_word}
   0.30%  │        ││              │  0x00007f464f2428fb:   nopl   0x0(%rax,%rax,1)
   0.77%  │        ││╭             │  0x00007f464f242900:   je     0x00007f464f242920
   0.42%  │        │││             │  0x00007f464f242906:   cmp    -0x3ad(%rip),%rbx        # 0x00007f464f242560
          │        │││             │                                                            ;   {section_word}
   0.79%  │        │││╭            │  0x00007f464f24290d:   je     0x00007f464f242920
   0.23%  │        ││││            │  0x00007f464f242913:   cmp    -0x39a(%rip),%rbx        # 0x00007f464f242580
          │        ││││            │                                                            ;   {section_word}
   0.20%  │        ││││            │  0x00007f464f24291a:   jne    0x00007f464f242a7c
   1.24%  │        ↘↘↘↘            │  0x00007f464f242920:   cmp    -0x3af(%rip),%rbx        # 0x00007f464f242578
          │                        │                                                            ;   {section_word}
   1.24%  │            ╭           │  0x00007f464f242927:   je     0x00007f464f242966
   1.05%  │            │           │  0x00007f464f24292d:   cmp    -0x3c4(%rip),%rbx        # 0x00007f464f242570
          │            │           │                                                            ;   {section_word}
   1.27%  │            │╭          │  0x00007f464f242934:   je     0x00007f464f242966
   1.08%  │            ││          │  0x00007f464f24293a:   cmp    -0x3d9(%rip),%rbx        # 0x00007f464f242568
          │            ││          │                                                            ;   {section_word}
   0.68%  │            ││╭         │  0x00007f464f242941:   je     0x00007f464f242966
   0.64%  │            │││         │  0x00007f464f242947:   cmp    -0x3ee(%rip),%rbx        # 0x00007f464f242560
          │            │││         │                                                            ;   {section_word}
   0.36%  │            │││╭        │  0x00007f464f24294e:   je     0x00007f464f242966
   0.50%  │            ││││        │  0x00007f464f242954:   cmp    -0x3db(%rip),%rbx        # 0x00007f464f242580
          │            ││││        │                                                            ;   {section_word}
   0.15%  │            ││││        │  0x00007f464f24295b:   nopl   0x0(%rax,%rax,1)
   0.16%  │            ││││        │  0x00007f464f242960:   jne    0x00007f464f242a73
   1.78%  │            ↘↘↘↘        │  0x00007f464f242966:   cmp    -0x3f5(%rip),%rbx        # 0x00007f464f242578
          │                        │                                                            ;   {section_word}
   0.78%  │                ╭       │  0x00007f464f24296d:   je     0x00007f464f2429a7
   1.31%  │                │       │  0x00007f464f242973:   cmp    -0x40a(%rip),%rbx        # 0x00007f464f242570
          │                │       │                                                            ;   {section_word}
   1.16%  │                │╭      │  0x00007f464f24297a:   je     0x00007f464f2429a7
   1.06%  │                ││      │  0x00007f464f242980:   cmp    -0x41f(%rip),%rbx        # 0x00007f464f242568
          │                ││      │                                                            ;   {section_word}
   0.55%  │                ││╭     │  0x00007f464f242987:   je     0x00007f464f2429a7
   0.81%  │                │││     │  0x00007f464f24298d:   cmp    -0x434(%rip),%rbx        # 0x00007f464f242560
          │                │││     │                                                            ;   {section_word}
   0.30%  │                │││╭    │  0x00007f464f242994:   je     0x00007f464f2429a7
   0.49%  │                ││││    │  0x00007f464f24299a:   cmp    -0x421(%rip),%rbx        # 0x00007f464f242580
          │                ││││    │                                                            ;   {section_word}
   0.25%  │                ││││    │  0x00007f464f2429a1:   jne    0x00007f464f242a4d
   2.50%  │                ↘↘↘↘    │  0x00007f464f2429a7:   cmp    -0x436(%rip),%rbx        # 0x00007f464f242578
          │                        │                                                            ;   {section_word}
   0.56%  │                    ╭   │  0x00007f464f2429ae:   je     0x00007f464f2429ed
   1.70%  │                    │   │  0x00007f464f2429b4:   cmp    -0x44b(%rip),%rbx        # 0x00007f464f242570
          │                    │   │                                                            ;   {section_word}
   0.84%  │                    │   │  0x00007f464f2429bb:   nopl   0x0(%rax,%rax,1)
   0.72%  │                    │╭  │  0x00007f464f2429c0:   je     0x00007f464f2429ed
   1.10%  │                    ││  │  0x00007f464f2429c6:   cmp    -0x465(%rip),%rbx        # 0x00007f464f242568
          │                    ││  │                                                            ;   {section_word}
   0.52%  │                    ││╭ │  0x00007f464f2429cd:   je     0x00007f464f2429ed
   0.90%  │                    │││ │  0x00007f464f2429d3:   cmp    -0x47a(%rip),%rbx        # 0x00007f464f242560
          │                    │││ │                                                            ;   {section_word}
   0.28%  │                    │││╭│  0x00007f464f2429da:   je     0x00007f464f2429ed
   0.63%  │                    │││││  0x00007f464f2429e0:   cmp    -0x467(%rip),%rbx        # 0x00007f464f242580
          │                    │││││                                                            ;   {section_word}
   0.05%  │                    │││││  0x00007f464f2429e7:   jne    0x00007f464f242a85
   2.65%  │                    ↘↘↘↘│  0x00007f464f2429ed:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   0.64%  │                        │  0x00007f464f2429ef:   mov    %ecx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   1.44%  │                        │  0x00007f464f2429f3:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 142)
   0.51%  ↘                        │  0x00007f464f2429f6:   cmp    %r9d,%r11d
                                   ╰  0x00007f464f2429f9:   jg     0x00007f464f242820           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   0.01%                              0x00007f464f2429ff:   mov    0x10(%rsp),%rbp
   0.01%                              0x00007f464f242a04:   add    $0x18,%rsp
                                      0x00007f464f242a08:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                      0x00007f464f242a0f:   ja     0x00007f464f242b0d
   0.00%                              0x00007f464f242a15:   ret    
                                      0x00007f464f242a16:   mov    $0x294,%r11
                                      0x00007f464f242a1d:   mov    $0xffffffcd,%r10d
                                      0x00007f464f242a23:   mov    %r10d,0x484(%r15)            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@8 (line 142)
                                      0x00007f464f242a2a:   mov    %r11,0x490(%r15)
                                      0x00007f464f242a31:   call   0x00007f464ec3517a           ; ImmutableOopMap {rsi=Oop }
                                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@0 (line 141)
                                                                                                ;   {runtime_call DeoptimizationBlob}
                                      0x00007f464f242a36:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  97.51%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 994 
   0.77%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1018 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 994 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.05%  <...other 334 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 994 
   2.07%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1018 
   0.02%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  _IO_setb 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  os::pd_write 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  fileStream::write 
   0.17%  <...other 80 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.58%       jvmci, level 4
   2.07%               kernel
   0.15%            libjvm.so
   0.09%         libc-2.31.so
   0.02%                     
   0.02%       hsdis-amd64.so
   0.02%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%     perf-2114853.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 85.71% complete, ETA 00:03:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.624 ns/op
# Warmup Iteration   2: 9.491 ns/op
# Warmup Iteration   3: 9.481 ns/op
# Warmup Iteration   4: 9.508 ns/op
# Warmup Iteration   5: 9.487 ns/op
Iteration   1: 9.521 ns/op
Iteration   2: 9.486 ns/op
Iteration   3: 9.482 ns/op
Iteration   4: 9.484 ns/op
Iteration   5: 9.475 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  9.489 ±(99.9%) 0.069 ns/op [Average]
  (min, avg, max) = (9.475, 9.489, 9.521), stdev = 0.018
  CI (99.9%): [9.420, 9.558] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm":
PrintAssembly processed: 223244 total address lines.
Perf output processed (skipped 60.574 seconds):
 Column 1: cycles (51034 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 989 

   0.00%                                       0x00007f6c272443a7:   cmp    -0x266(%rip),%r8        # 0x00007f6c27244148
                                                                                                         ;   {section_word}
          ╭                                    0x00007f6c272443ae:   je     0x00007f6c272443d3
          │                                    0x00007f6c272443b4:   cmp    -0x27b(%rip),%r8        # 0x00007f6c27244140
          │                                                                                              ;   {section_word}
          │                                    0x00007f6c272443bb:   nopl   0x0(%rax,%rax,1)
          │╭                                   0x00007f6c272443c0:   je     0x00007f6c272443d3
          ││                                   0x00007f6c272443c6:   cmp    -0x295(%rip),%r8        # 0x00007f6c27244138
          ││                                                                                             ;   {section_word}
          ││                                   0x00007f6c272443cd:   jne    0x00007f6c27244696
   0.00%  ↘↘                                   0x00007f6c272443d3:   mov    %r11d,%r8d
                                               0x00007f6c272443d6:   dec    %r8d
                                               0x00007f6c272443d9:   movslq %r8d,%r8
                                               0x00007f6c272443dc:   mov    %r11d,%r9d
                                               0x00007f6c272443df:   nop
                                               0x00007f6c272443e0:   cmp    %r8,%r9
            ╭                                  0x00007f6c272443e3:   ja     0x00007f6c272443f3           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@22 (line 142)
            │                                  0x00007f6c272443e9:   cmp    $0x2,%r11d
            │                                  0x00007f6c272443ed:   jae    0x00007f6c272446f1
   0.01%    ↘                                  0x00007f6c272443f3:   movabs $0x7fec55618,%r8             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec55618})}
   0.00%                                       0x00007f6c272443fd:   mov    $0x1,%r9d
                                               0x00007f6c27244403:   add    0xc(%r8),%r9d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   0.00%                                       0x00007f6c27244407:   mov    %r9d,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
                                               0x00007f6c2724440b:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 141)
                                               0x00007f6c2724440f:   mov    %r9d,%ecx
                                               0x00007f6c27244412:   mov    $0x1,%r9d
             ╭                                 0x00007f6c27244418:   jmp    0x00007f6c27244643           ;*iload {reexecute=0 rethrow=0 return_oop=0}
             │                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
             │                                 0x00007f6c2724441d:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   1.60%     │                              ↗  0x00007f6c27244420:   mov    0x10(%r10,%r9,4),%ebx        ; ImmutableOopMap {rbx=NarrowOop r8=Oop r10=Oop }
             │                              │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
             │                              │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
   1.71%     │                              │  0x00007f6c27244425:   mov    0x8(,%rbx,8),%edi            ; implicit exception: dispatches to 0x00007f6c272447c3
  18.20%     │                              │  0x00007f6c2724442c:   movabs $0x7f6bab000000,%rdx
   0.16%     │                              │  0x00007f6c27244436:   lea    (%rdx,%rdi,1),%rdi
   3.52%     │                              │  0x00007f6c2724443a:   cmp    -0x321(%rip),%rdi        # 0x00007f6c27244120
             │                              │                                                            ;   {section_word}
   3.84%     │╭                             │  0x00007f6c27244441:   je     0x00007f6c2724448d
   2.80%     ││                             │  0x00007f6c27244447:   cmp    -0x326(%rip),%rdi        # 0x00007f6c27244128
             ││                             │                                                            ;   {section_word}
   0.43%     ││╭                            │  0x00007f6c2724444e:   je     0x00007f6c2724448d
   1.53%     │││                            │  0x00007f6c27244454:   cmp    -0x32b(%rip),%rdi        # 0x00007f6c27244130
             │││                            │                                                            ;   {section_word}
   0.06%     │││                            │  0x00007f6c2724445b:   nopl   0x0(%rax,%rax,1)
   0.87%     │││╭                           │  0x00007f6c27244460:   je     0x00007f6c2724448d
   0.93%     ││││                           │  0x00007f6c27244466:   cmp    -0x335(%rip),%rdi        # 0x00007f6c27244138
             ││││                           │                                                            ;   {section_word}
   0.55%     ││││╭                          │  0x00007f6c2724446d:   je     0x00007f6c2724448d
   0.46%     │││││                          │  0x00007f6c27244473:   cmp    -0x33a(%rip),%rdi        # 0x00007f6c27244140
             │││││                          │                                                            ;   {section_word}
   0.16%     │││││╭                         │  0x00007f6c2724447a:   je     0x00007f6c2724448d
   0.27%     ││││││                         │  0x00007f6c27244480:   cmp    -0x33f(%rip),%rdi        # 0x00007f6c27244148
             ││││││                         │                                                            ;   {section_word}
   0.12%     ││││││                         │  0x00007f6c27244487:   jne    0x00007f6c272446e8
   1.26%     │↘↘↘↘↘                         │  0x00007f6c2724448d:   mov    0x8(,%rbx,8),%ebx
   1.77%     │                              │  0x00007f6c27244494:   movabs $0x7f6bab000000,%rdi
   1.15%     │                              │  0x00007f6c2724449e:   lea    (%rdi,%rbx,1),%rbx
   0.99%     │                              │  0x00007f6c272444a2:   cmp    -0x379(%rip),%rbx        # 0x00007f6c27244130
             │                              │                                                            ;   {section_word}
   1.80%     │     ╭                        │  0x00007f6c272444a9:   je     0x00007f6c272444f3
   1.37%     │     │                        │  0x00007f6c272444af:   cmp    -0x396(%rip),%rbx        # 0x00007f6c27244120
             │     │                        │                                                            ;   {section_word}
   1.16%     │     │╭                       │  0x00007f6c272444b6:   je     0x00007f6c272444f3
   1.03%     │     ││                       │  0x00007f6c272444bc:   cmp    -0x39b(%rip),%rbx        # 0x00007f6c27244128
             │     ││                       │                                                            ;   {section_word}
   0.42%     │     ││╭                      │  0x00007f6c272444c3:   je     0x00007f6c272444f3
   0.96%     │     │││                      │  0x00007f6c272444c9:   cmp    -0x388(%rip),%rbx        # 0x00007f6c27244148
             │     │││                      │                                                            ;   {section_word}
   0.33%     │     │││╭                     │  0x00007f6c272444d0:   je     0x00007f6c272444f3
   0.58%     │     ││││                     │  0x00007f6c272444d6:   cmp    -0x39d(%rip),%rbx        # 0x00007f6c27244140
             │     ││││                     │                                                            ;   {section_word}
   0.06%     │     ││││                     │  0x00007f6c272444dd:   data16 xchg %ax,%ax
   0.49%     │     ││││╭                    │  0x00007f6c272444e0:   je     0x00007f6c272444f3
   0.13%     │     │││││                    │  0x00007f6c272444e6:   cmp    -0x3b5(%rip),%rbx        # 0x00007f6c27244138
             │     │││││                    │                                                            ;   {section_word}
   0.23%     │     │││││                    │  0x00007f6c272444ed:   jne    0x00007f6c27244729
   1.41%     │     ↘↘↘↘↘                    │  0x00007f6c272444f3:   cmp    -0x3ca(%rip),%rbx        # 0x00007f6c27244130
             │                              │                                                            ;   {section_word}
   0.63%     │          ╭                   │  0x00007f6c272444fa:   je     0x00007f6c27244546
   1.34%     │          │                   │  0x00007f6c27244500:   cmp    -0x3e7(%rip),%rbx        # 0x00007f6c27244120
             │          │                   │                                                            ;   {section_word}
   0.69%     │          │╭                  │  0x00007f6c27244507:   je     0x00007f6c27244546
   1.16%     │          ││                  │  0x00007f6c2724450d:   cmp    -0x3ec(%rip),%rbx        # 0x00007f6c27244128
             │          ││                  │                                                            ;   {section_word}
   0.46%     │          ││╭                 │  0x00007f6c27244514:   je     0x00007f6c27244546
   0.81%     │          │││                 │  0x00007f6c2724451a:   cmp    -0x3d9(%rip),%rbx        # 0x00007f6c27244148
             │          │││                 │                                                            ;   {section_word}
   0.37%     │          │││╭                │  0x00007f6c27244521:   je     0x00007f6c27244546
   0.39%     │          ││││                │  0x00007f6c27244527:   cmp    -0x3ee(%rip),%rbx        # 0x00007f6c27244140
             │          ││││                │                                                            ;   {section_word}
   0.36%     │          ││││╭               │  0x00007f6c2724452e:   je     0x00007f6c27244546
   0.29%     │          │││││               │  0x00007f6c27244534:   cmp    -0x403(%rip),%rbx        # 0x00007f6c27244138
             │          │││││               │                                                            ;   {section_word}
   0.15%     │          │││││               │  0x00007f6c2724453b:   nopl   0x0(%rax,%rax,1)
   0.11%     │          │││││               │  0x00007f6c27244540:   jne    0x00007f6c272446d6
   2.42%     │          ↘↘↘↘↘               │  0x00007f6c27244546:   cmp    -0x41d(%rip),%rbx        # 0x00007f6c27244130
             │                              │                                                            ;   {section_word}
   0.28%     │               ╭              │  0x00007f6c2724454d:   je     0x00007f6c27244594
   1.33%     │               │              │  0x00007f6c27244553:   cmp    -0x43a(%rip),%rbx        # 0x00007f6c27244120
             │               │              │                                                            ;   {section_word}
   0.60%     │               │╭             │  0x00007f6c2724455a:   je     0x00007f6c27244594
   1.76%     │               ││             │  0x00007f6c27244560:   cmp    -0x43f(%rip),%rbx        # 0x00007f6c27244128
             │               ││             │                                                            ;   {section_word}
   0.25%     │               ││╭            │  0x00007f6c27244567:   je     0x00007f6c27244594
   1.15%     │               │││            │  0x00007f6c2724456d:   cmp    -0x42c(%rip),%rbx        # 0x00007f6c27244148
             │               │││            │                                                            ;   {section_word}
   0.21%     │               │││╭           │  0x00007f6c27244574:   je     0x00007f6c27244594
   0.94%     │               ││││           │  0x00007f6c2724457a:   cmp    -0x441(%rip),%rbx        # 0x00007f6c27244140
             │               ││││           │                                                            ;   {section_word}
   0.12%     │               ││││╭          │  0x00007f6c27244581:   je     0x00007f6c27244594
   0.58%     │               │││││          │  0x00007f6c27244587:   cmp    -0x456(%rip),%rbx        # 0x00007f6c27244138
             │               │││││          │                                                            ;   {section_word}
   0.01%     │               │││││          │  0x00007f6c2724458e:   jne    0x00007f6c272446cd
   2.76%     │               ↘↘↘↘↘          │  0x00007f6c27244594:   cmp    -0x46b(%rip),%rbx        # 0x00007f6c27244130
             │                              │                                                            ;   {section_word}
   0.12%     │                              │  0x00007f6c2724459b:   nopl   0x0(%rax,%rax,1)
   0.75%     │                    ╭         │  0x00007f6c272445a0:   je     0x00007f6c272445e7
   1.60%     │                    │         │  0x00007f6c272445a6:   cmp    -0x48d(%rip),%rbx        # 0x00007f6c27244120
             │                    │         │                                                            ;   {section_word}
   0.77%     │                    │╭        │  0x00007f6c272445ad:   je     0x00007f6c272445e7
   1.31%     │                    ││        │  0x00007f6c272445b3:   cmp    -0x492(%rip),%rbx        # 0x00007f6c27244128
             │                    ││        │                                                            ;   {section_word}
   0.55%     │                    ││╭       │  0x00007f6c272445ba:   je     0x00007f6c272445e7
   1.47%     │                    │││       │  0x00007f6c272445c0:   cmp    -0x47f(%rip),%rbx        # 0x00007f6c27244148
             │                    │││       │                                                            ;   {section_word}
   0.30%     │                    │││╭      │  0x00007f6c272445c7:   je     0x00007f6c272445e7
   1.21%     │                    ││││      │  0x00007f6c272445cd:   cmp    -0x494(%rip),%rbx        # 0x00007f6c27244140
             │                    ││││      │                                                            ;   {section_word}
   0.04%     │                    ││││╭     │  0x00007f6c272445d4:   je     0x00007f6c272445e7
   0.62%     │                    │││││     │  0x00007f6c272445da:   cmp    -0x4a9(%rip),%rbx        # 0x00007f6c27244138
             │                    │││││     │                                                            ;   {section_word}
   0.01%     │                    │││││     │  0x00007f6c272445e1:   jne    0x00007f6c272446a5
   2.56%     │                    ↘↘↘↘↘     │  0x00007f6c272445e7:   cmp    -0x4be(%rip),%rbx        # 0x00007f6c27244130
             │                              │                                                            ;   {section_word}
   0.53%     │                         ╭    │  0x00007f6c272445ee:   je     0x00007f6c2724463a
   2.07%     │                         │    │  0x00007f6c272445f4:   cmp    -0x4db(%rip),%rbx        # 0x00007f6c27244120
             │                         │    │                                                            ;   {section_word}
   0.74%     │                         │    │  0x00007f6c272445fb:   nopl   0x0(%rax,%rax,1)
   0.31%     │                         │╭   │  0x00007f6c27244600:   je     0x00007f6c2724463a
   1.37%     │                         ││   │  0x00007f6c27244606:   cmp    -0x4e5(%rip),%rbx        # 0x00007f6c27244128
             │                         ││   │                                                            ;   {section_word}
   0.78%     │                         ││╭  │  0x00007f6c2724460d:   je     0x00007f6c2724463a
   1.56%     │                         │││  │  0x00007f6c27244613:   cmp    -0x4d2(%rip),%rbx        # 0x00007f6c27244148
             │                         │││  │                                                            ;   {section_word}
   0.10%     │                         │││╭ │  0x00007f6c2724461a:   je     0x00007f6c2724463a
   1.21%     │                         ││││ │  0x00007f6c27244620:   cmp    -0x4e7(%rip),%rbx        # 0x00007f6c27244140
             │                         ││││ │                                                            ;   {section_word}
   0.06%     │                         ││││╭│  0x00007f6c27244627:   je     0x00007f6c2724463a
   0.59%     │                         ││││││  0x00007f6c2724462d:   cmp    -0x4fc(%rip),%rbx        # 0x00007f6c27244138
             │                         ││││││                                                            ;   {section_word}
   0.03%     │                         ││││││  0x00007f6c27244634:   jne    0x00007f6c272446df
   2.86%     │                         ↘↘↘↘↘│  0x00007f6c2724463a:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   0.24%     │                              │  0x00007f6c2724463c:   mov    %ecx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   1.76%     │                              │  0x00007f6c27244640:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 142)
   0.33%     ↘                              │  0x00007f6c27244643:   cmp    %r9d,%r11d
                                            ╰  0x00007f6c27244646:   jg     0x00007f6c27244420           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   0.01%                                       0x00007f6c2724464c:   mov    0x10(%rsp),%rbp
   0.02%                                       0x00007f6c27244651:   add    $0x18,%rsp
                                               0x00007f6c27244655:   data16 data16 nopw 0x0(%rax,%rax,1)
                                               0x00007f6c27244660:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                               0x00007f6c27244667:   ja     0x00007f6c27244769
                                               0x00007f6c2724466d:   ret    
                                               0x00007f6c2724466e:   mov    $0x294,%r11
                                               0x00007f6c27244675:   mov    $0xffffffcd,%r10d
                                               0x00007f6c2724467b:   mov    %r10d,0x484(%r15)            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@8 (line 142)
                                               0x00007f6c27244682:   mov    %r11,0x490(%r15)
                                               0x00007f6c27244689:   call   0x00007f6c26c3517a           ; ImmutableOopMap {rsi=Oop }
....................................................................................................
  97.36%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 989 
   1.25%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1008 
   0.01%           libjvm.so  xmlStream::write_text 
   0.82%  <...other 277 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 989 
   2.21%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1008 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __stpcpy_avx2 
   0.01%           libjvm.so  stringStream::write 
   0.14%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.41%      jvmci, level 4
   2.21%              kernel
   0.14%           libjvm.so
   0.07%                    
   0.07%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.03%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.00%    perf-2114920.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_6_DOMINANT_TARGET)

# Run progress: 92.86% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.897 ns/op
# Warmup Iteration   2: 4.783 ns/op
# Warmup Iteration   3: 4.778 ns/op
# Warmup Iteration   4: 4.778 ns/op
# Warmup Iteration   5: 4.784 ns/op
Iteration   1: 4.785 ns/op
Iteration   2: 4.784 ns/op
Iteration   3: 4.784 ns/op
Iteration   4: 4.782 ns/op
Iteration   5: 4.784 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  4.784 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (4.782, 4.784, 4.785), stdev = 0.001
  CI (99.9%): [4.780, 4.788] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm":
PrintAssembly processed: 224637 total address lines.
Perf output processed (skipped 60.541 seconds):
 Column 1: cycles (51053 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 980 

                                             0x00007fcd97242cd9:   movslq %r8d,%r8
                                             0x00007fcd97242cdc:   mov    %r11d,%r9d
                                             0x00007fcd97242cdf:   nop
                                             0x00007fcd97242ce0:   cmp    %r8,%r9
          ╭                                  0x00007fcd97242ce3:   ja     0x00007fcd97242cf3           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@22 (line 142)
          │                                  0x00007fcd97242ce9:   cmp    $0x2,%r11d
          │                                  0x00007fcd97242ced:   jae    0x00007fcd97242ff1
          ↘                                  0x00007fcd97242cf3:   movabs $0x7fec55618,%r8             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fec55618})}
                                             0x00007fcd97242cfd:   mov    $0x1,%r9d
   0.00%                                     0x00007fcd97242d03:   add    0xc(%r8),%r9d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
                                             0x00007fcd97242d07:   mov    %r9d,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
                                             0x00007fcd97242d0b:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 141)
                                             0x00007fcd97242d0f:   mov    %r9d,%ecx
                                             0x00007fcd97242d12:   mov    $0x1,%r9d
           ╭                                 0x00007fcd97242d18:   jmp    0x00007fcd97242f43           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
           │                                 0x00007fcd97242d1d:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   7.39%   │                              ↗  0x00007fcd97242d20:   mov    0x10(%r10,%r9,4),%ebx        ; ImmutableOopMap {rbx=NarrowOop r8=Oop r10=Oop }
           │                              │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │                              │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 142)
   0.61%   │                              │  0x00007fcd97242d25:   mov    0x8(,%rbx,8),%edi            ; implicit exception: dispatches to 0x00007fcd972430c3
  20.91%   │                              │  0x00007fcd97242d2c:   movabs $0x7fcd1b000000,%rdx
   0.02%   │                              │  0x00007fcd97242d36:   lea    (%rdx,%rdi,1),%rdi
   7.98%   │                              │  0x00007fcd97242d3a:   cmp    -0x321(%rip),%rdi        # 0x00007fcd97242a20
           │                              │                                                            ;   {section_word}
   4.35%   │╭                             │  0x00007fcd97242d41:   je     0x00007fcd97242d8d
   0.55%   ││                             │  0x00007fcd97242d47:   cmp    -0x326(%rip),%rdi        # 0x00007fcd97242a28
           ││                             │                                                            ;   {section_word}
   0.03%   ││╭                            │  0x00007fcd97242d4e:   je     0x00007fcd97242d8d
   0.36%   │││                            │  0x00007fcd97242d54:   cmp    -0x32b(%rip),%rdi        # 0x00007fcd97242a30
           │││                            │                                                            ;   {section_word}
   0.01%   │││                            │  0x00007fcd97242d5b:   nopl   0x0(%rax,%rax,1)
   0.12%   │││╭                           │  0x00007fcd97242d60:   je     0x00007fcd97242d8d
   0.13%   ││││                           │  0x00007fcd97242d66:   cmp    -0x335(%rip),%rdi        # 0x00007fcd97242a38
           ││││                           │                                                            ;   {section_word}
   0.15%   ││││╭                          │  0x00007fcd97242d6d:   je     0x00007fcd97242d8d
   0.09%   │││││                          │  0x00007fcd97242d73:   cmp    -0x33a(%rip),%rdi        # 0x00007fcd97242a40
           │││││                          │                                                            ;   {section_word}
   0.04%   │││││╭                         │  0x00007fcd97242d7a:   je     0x00007fcd97242d8d
   0.06%   ││││││                         │  0x00007fcd97242d80:   cmp    -0x33f(%rip),%rdi        # 0x00007fcd97242a48
           ││││││                         │                                                            ;   {section_word}
   0.05%   ││││││                         │  0x00007fcd97242d87:   jne    0x00007fcd97242fe8
   4.53%   │↘↘↘↘↘                         │  0x00007fcd97242d8d:   mov    0x8(,%rbx,8),%ebx
   0.45%   │                              │  0x00007fcd97242d94:   movabs $0x7fcd1b000000,%rdi
   2.97%   │                              │  0x00007fcd97242d9e:   lea    (%rdi,%rbx,1),%rbx
   1.97%   │                              │  0x00007fcd97242da2:   cmp    -0x389(%rip),%rbx        # 0x00007fcd97242a20
           │                              │                                                            ;   {section_word}
   4.60%   │     ╭                        │  0x00007fcd97242da9:   je     0x00007fcd97242df3
   0.25%   │     │                        │  0x00007fcd97242daf:   cmp    -0x38e(%rip),%rbx        # 0x00007fcd97242a28
           │     │                        │                                                            ;   {section_word}
   0.13%   │     │╭                       │  0x00007fcd97242db6:   je     0x00007fcd97242df3
   0.28%   │     ││                       │  0x00007fcd97242dbc:   cmp    -0x37b(%rip),%rbx        # 0x00007fcd97242a48
           │     ││                       │                                                            ;   {section_word}
   0.08%   │     ││╭                      │  0x00007fcd97242dc3:   je     0x00007fcd97242df3
   0.23%   │     │││                      │  0x00007fcd97242dc9:   cmp    -0x390(%rip),%rbx        # 0x00007fcd97242a40
           │     │││                      │                                                            ;   {section_word}
   0.04%   │     │││╭                     │  0x00007fcd97242dd0:   je     0x00007fcd97242df3
   0.15%   │     ││││                     │  0x00007fcd97242dd6:   cmp    -0x3a5(%rip),%rbx        # 0x00007fcd97242a38
           │     ││││                     │                                                            ;   {section_word}
   0.01%   │     ││││                     │  0x00007fcd97242ddd:   data16 xchg %ax,%ax
   0.06%   │     ││││╭                    │  0x00007fcd97242de0:   je     0x00007fcd97242df3
   0.04%   │     │││││                    │  0x00007fcd97242de6:   cmp    -0x3bd(%rip),%rbx        # 0x00007fcd97242a30
           │     │││││                    │                                                            ;   {section_word}
   0.05%   │     │││││                    │  0x00007fcd97242ded:   jne    0x00007fcd97243029
   2.18%   │     ↘↘↘↘↘                    │  0x00007fcd97242df3:   cmp    -0x3da(%rip),%rbx        # 0x00007fcd97242a20
           │                              │                                                            ;   {section_word}
   3.18%   │          ╭                   │  0x00007fcd97242dfa:   je     0x00007fcd97242e46
   0.22%   │          │                   │  0x00007fcd97242e00:   cmp    -0x3bf(%rip),%rbx        # 0x00007fcd97242a48
           │          │                   │                                                            ;   {section_word}
   0.11%   │          │╭                  │  0x00007fcd97242e07:   je     0x00007fcd97242e46
   0.20%   │          ││                  │  0x00007fcd97242e0d:   cmp    -0x3d4(%rip),%rbx        # 0x00007fcd97242a40
           │          ││                  │                                                            ;   {section_word}
   0.08%   │          ││╭                 │  0x00007fcd97242e14:   je     0x00007fcd97242e46
   0.14%   │          │││                 │  0x00007fcd97242e1a:   cmp    -0x3e9(%rip),%rbx        # 0x00007fcd97242a38
           │          │││                 │                                                            ;   {section_word}
   0.08%   │          │││╭                │  0x00007fcd97242e21:   je     0x00007fcd97242e46
   0.10%   │          ││││                │  0x00007fcd97242e27:   cmp    -0x3fe(%rip),%rbx        # 0x00007fcd97242a30
           │          ││││                │                                                            ;   {section_word}
   0.02%   │          ││││╭               │  0x00007fcd97242e2e:   je     0x00007fcd97242e46
   0.07%   │          │││││               │  0x00007fcd97242e34:   cmp    -0x413(%rip),%rbx        # 0x00007fcd97242a28
           │          │││││               │                                                            ;   {section_word}
   0.02%   │          │││││               │  0x00007fcd97242e3b:   nopl   0x0(%rax,%rax,1)
   0.04%   │          │││││               │  0x00007fcd97242e40:   jne    0x00007fcd97242fd6
   4.43%   │          ↘↘↘↘↘               │  0x00007fcd97242e46:   cmp    -0x42d(%rip),%rbx        # 0x00007fcd97242a20
           │                              │                                                            ;   {section_word}
   0.13%   │               ╭              │  0x00007fcd97242e4d:   je     0x00007fcd97242e94
   0.30%   │               │              │  0x00007fcd97242e53:   cmp    -0x412(%rip),%rbx        # 0x00007fcd97242a48
           │               │              │                                                            ;   {section_word}
   0.14%   │               │╭             │  0x00007fcd97242e5a:   je     0x00007fcd97242e94
   0.23%   │               ││             │  0x00007fcd97242e60:   cmp    -0x427(%rip),%rbx        # 0x00007fcd97242a40
           │               ││             │                                                            ;   {section_word}
   0.09%   │               ││╭            │  0x00007fcd97242e67:   je     0x00007fcd97242e94
   0.09%   │               │││            │  0x00007fcd97242e6d:   cmp    -0x43c(%rip),%rbx        # 0x00007fcd97242a38
           │               │││            │                                                            ;   {section_word}
   0.07%   │               │││╭           │  0x00007fcd97242e74:   je     0x00007fcd97242e94
   0.12%   │               ││││           │  0x00007fcd97242e7a:   cmp    -0x451(%rip),%rbx        # 0x00007fcd97242a30
           │               ││││           │                                                            ;   {section_word}
   0.05%   │               ││││╭          │  0x00007fcd97242e81:   je     0x00007fcd97242e94
   0.03%   │               │││││          │  0x00007fcd97242e87:   cmp    -0x466(%rip),%rbx        # 0x00007fcd97242a28
           │               │││││          │                                                            ;   {section_word}
   0.03%   │               │││││          │  0x00007fcd97242e8e:   jne    0x00007fcd97242fcd
   7.39%   │               ↘↘↘↘↘          │  0x00007fcd97242e94:   cmp    -0x47b(%rip),%rbx        # 0x00007fcd97242a20
           │                              │                                                            ;   {section_word}
   0.10%   │                              │  0x00007fcd97242e9b:   nopl   0x0(%rax,%rax,1)
   0.13%   │                    ╭         │  0x00007fcd97242ea0:   je     0x00007fcd97242ee7
   0.16%   │                    │         │  0x00007fcd97242ea6:   cmp    -0x465(%rip),%rbx        # 0x00007fcd97242a48
           │                    │         │                                                            ;   {section_word}
   0.27%   │                    │╭        │  0x00007fcd97242ead:   je     0x00007fcd97242ee7
   0.18%   │                    ││        │  0x00007fcd97242eb3:   cmp    -0x47a(%rip),%rbx        # 0x00007fcd97242a40
           │                    ││        │                                                            ;   {section_word}
   0.09%   │                    ││╭       │  0x00007fcd97242eba:   je     0x00007fcd97242ee7
   0.19%   │                    │││       │  0x00007fcd97242ec0:   cmp    -0x48f(%rip),%rbx        # 0x00007fcd97242a38
           │                    │││       │                                                            ;   {section_word}
   0.11%   │                    │││╭      │  0x00007fcd97242ec7:   je     0x00007fcd97242ee7
   0.11%   │                    ││││      │  0x00007fcd97242ecd:   cmp    -0x4a4(%rip),%rbx        # 0x00007fcd97242a30
           │                    ││││      │                                                            ;   {section_word}
   0.04%   │                    ││││╭     │  0x00007fcd97242ed4:   je     0x00007fcd97242ee7
   0.08%   │                    │││││     │  0x00007fcd97242eda:   cmp    -0x4b9(%rip),%rbx        # 0x00007fcd97242a28
           │                    │││││     │                                                            ;   {section_word}
   0.02%   │                    │││││     │  0x00007fcd97242ee1:   jne    0x00007fcd97242fa5
   7.57%   │                    ↘↘↘↘↘     │  0x00007fcd97242ee7:   cmp    -0x4ce(%rip),%rbx        # 0x00007fcd97242a20
           │                              │                                                            ;   {section_word}
   0.22%   │                         ╭    │  0x00007fcd97242eee:   je     0x00007fcd97242f3a
   0.32%   │                         │    │  0x00007fcd97242ef4:   cmp    -0x4b3(%rip),%rbx        # 0x00007fcd97242a48
           │                         │    │                                                            ;   {section_word}
   0.12%   │                         │    │  0x00007fcd97242efb:   nopl   0x0(%rax,%rax,1)
   0.07%   │                         │╭   │  0x00007fcd97242f00:   je     0x00007fcd97242f3a
   0.22%   │                         ││   │  0x00007fcd97242f06:   cmp    -0x4cd(%rip),%rbx        # 0x00007fcd97242a40
           │                         ││   │                                                            ;   {section_word}
   0.16%   │                         ││╭  │  0x00007fcd97242f0d:   je     0x00007fcd97242f3a
   0.29%   │                         │││  │  0x00007fcd97242f13:   cmp    -0x4e2(%rip),%rbx        # 0x00007fcd97242a38
           │                         │││  │                                                            ;   {section_word}
   0.04%   │                         │││╭ │  0x00007fcd97242f1a:   je     0x00007fcd97242f3a
   0.23%   │                         ││││ │  0x00007fcd97242f20:   cmp    -0x4f7(%rip),%rbx        # 0x00007fcd97242a30
           │                         ││││ │                                                            ;   {section_word}
   0.01%   │                         ││││╭│  0x00007fcd97242f27:   je     0x00007fcd97242f3a
   0.13%   │                         ││││││  0x00007fcd97242f2d:   cmp    -0x50c(%rip),%rbx        # 0x00007fcd97242a28
           │                         ││││││                                                            ;   {section_word}
   0.01%   │                         ││││││  0x00007fcd97242f34:   jne    0x00007fcd97242fdf
   7.51%   │                         ↘↘↘↘↘│  0x00007fcd97242f3a:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 206)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   0.04%   │                              │  0x00007fcd97242f3c:   mov    %ecx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 206)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 210)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 216)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 220)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 226)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 230)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 236)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 240)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 143)
   0.30%   │                              │  0x00007fcd97242f40:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 142)
   0.08%   ↘                              │  0x00007fcd97242f43:   cmp    %r9d,%r11d
                                          ╰  0x00007fcd97242f46:   jg     0x00007fcd97242d20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 142)
   0.00%                                     0x00007fcd97242f4c:   mov    0x10(%rsp),%rbp
   0.06%                                     0x00007fcd97242f51:   add    $0x18,%rsp
                                             0x00007fcd97242f55:   data16 data16 nopw 0x0(%rax,%rax,1)
                                             0x00007fcd97242f60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                             0x00007fcd97242f67:   ja     0x00007fcd97243069
                                             0x00007fcd97242f6d:   ret    
                                             0x00007fcd97242f6e:   mov    $0x294,%r11
                                             0x00007fcd97242f75:   mov    $0xffffffcd,%r10d
                                             0x00007fcd97242f7b:   mov    %r10d,0x484(%r15)            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@8 (line 142)
                                             0x00007fcd97242f82:   mov    %r11,0x490(%r15)
                                             0x00007fcd97242f89:   call   0x00007fcd96c3517a           ; ImmutableOopMap {rsi=Oop }
....................................................................................................
  97.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 980 
   0.88%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1006 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 980 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 980 
   0.02%              kernel  [unknown] 
   1.14%  <...other 360 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 980 
   2.55%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 1006 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.12%      jvmci, level 4
   2.55%              kernel
   0.12%           libjvm.so
   0.09%        libc-2.31.so
   0.08%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:26:25

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

Benchmark                                                                           (targetType)  Mode  Cnt  Score   Error  Units
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                        MONOMORPHIC  avgt    5  1.550 ± 0.001  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm                    MONOMORPHIC  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                          BIMORPHIC  avgt    5  1.423 ± 0.002  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm                      BIMORPHIC  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                      MEGAMORPHIC_3  avgt    5  1.552 ± 0.001  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm                  MEGAMORPHIC_3  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                      MEGAMORPHIC_4  avgt    5  1.939 ± 0.002  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm                  MEGAMORPHIC_4  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                      MEGAMORPHIC_5  avgt    5  2.405 ± 0.005  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm                  MEGAMORPHIC_5  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                      MEGAMORPHIC_6  avgt    5  2.651 ± 0.002  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm                  MEGAMORPHIC_6  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_6_DOMINANT_TARGET  avgt    5  3.245 ± 0.019  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_6_DOMINANT_TARGET  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                                MONOMORPHIC  avgt    5  0.907 ± 0.001  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm                            MONOMORPHIC  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                                  BIMORPHIC  avgt    5  4.516 ± 0.050  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm                              BIMORPHIC  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                              MEGAMORPHIC_3  avgt    5  5.602 ± 0.192  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm                          MEGAMORPHIC_3  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                              MEGAMORPHIC_4  avgt    5  6.609 ± 0.359  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm                          MEGAMORPHIC_4  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                              MEGAMORPHIC_5  avgt    5  7.934 ± 0.193  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm                          MEGAMORPHIC_5  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                              MEGAMORPHIC_6  avgt    5  9.489 ± 0.069  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm                          MEGAMORPHIC_6  avgt         NaN            ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain              MEGAMORPHIC_6_DOMINANT_TARGET  avgt    5  4.784 ± 0.004  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:asm          MEGAMORPHIC_6_DOMINANT_TARGET  avgt         NaN            ---
